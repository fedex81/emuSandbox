package util;/*
 * SoundUtil
 * Copyright (c) 2018-2019 Federico Berti
 * Last modified: 05/10/19 14:15
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.sound.sampled.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Field;

public class SoundUtil {

    private static Logger LOG = LogManager.getLogger(SoundUtil.class.getSimpleName());

    public static byte ZERO_BYTE = (byte) 0;
    public static long DEFAULT_BUFFER_SIZE_MS = 50; //was 100 check

    private static int DEFAULT_PSG_SHIFT_BITS = 6;
    public static double PSG_ATTENUATION = Double.valueOf(System.getProperty("sound.psg.attenuation", "1.0"));
    private static int USER_PSG_ATT_BITS;
    private static int PSG_SHIFT_BITS;

    static {
        double val = PSG_ATTENUATION;
        double res = 4; // start from 2 bit volume increase
        int shift = -2;
        while (res > val && shift < 16) {
            res /= 2;
            shift++;
        }
        USER_PSG_ATT_BITS = shift;
        PSG_SHIFT_BITS = DEFAULT_PSG_SHIFT_BITS - USER_PSG_ATT_BITS;
        LOG.info("PSG attenuation: {}, in bits: {}", PSG_ATTENUATION, USER_PSG_ATT_BITS);
    }

    public static int writeBufferInternal(SourceDataLine line, byte[] buffer, int start, int end) {
        int res = 0;
        try {
            // Output Stream write(byte[] b, int off, int len)
            // Small buffer to avoid latency, but more intensive CPU usage
            res = line.write(buffer, start, end);
            if (res < (end - start)) {
                LOG.warn("bytes written: " + res + "/" + (end - start));
            }
        } catch (IllegalArgumentException iae) {
            LOG.error("Error writing to the audio line. "
                    + "The bytes do not represent complete frames.");
        } catch (ArrayIndexOutOfBoundsException aiobe) {
            LOG.error("Error writing to the audio line. "
                    + "The buffer does not contain the number of bytes specified.");

        }
        return res;
    }

    public static int writeBufferInternal(SourceDataLine line, byte[] buffer, int samplesPerFrame) {
        return writeBufferInternal(line, buffer, 0, samplesPerFrame);
    }

    /*
     * gets the number of bytes needed to play the specified number of milliseconds
     * @see com.sun.media.sound.Toolkit
     */
    private static long millis2bytes(AudioFormat format, long millis) {
        long result = (long) (millis * format.getFrameRate() / 1000.0f * format.getFrameSize());
        return align(result, format.getFrameSize());
    }

    /*
     * returns bytes aligned to a multiple of blocksize
     * the return value will be in the range of (bytes-blocksize+1) ... bytes
     */
    static long align(long bytes, int blockSize) {
        // prevent null pointers
        if (blockSize <= 1) {
            return bytes;
        }
        return bytes - (bytes % blockSize);
    }

    public static int getAudioLineBufferSize(AudioFormat audioFormat) {
        return (int) millis2bytes(audioFormat, DEFAULT_BUFFER_SIZE_MS);
    }

    public static SourceDataLine createDataLine(AudioFormat audioFormat) {
        SourceDataLine line = null;
        DataLine.Info info = new DataLine.Info(SourceDataLine.class, audioFormat);

        if (!AudioSystem.isLineSupported(info)) {
            LOG.error("Audio not supported...");
        } else {
            try {
                line = (SourceDataLine) AudioSystem.getLine(info);
                line.open(audioFormat, getAudioLineBufferSize(audioFormat));
                lowerLatencyHack(line);
                line.start();
                LOG.info("SourceDataLine buffer: " + line.getBufferSize());
            } catch (LineUnavailableException lue) {
                LOG.error("Unable to open audio line.");
            }
        }
        return line;
    }

    private static void lowerLatencyHack(SourceDataLine line) {
        String sname = line.getClass().getSuperclass().getCanonicalName();
        if ("com.sun.media.sound.DirectAudioDevice.DirectDL".equalsIgnoreCase(sname)) {
            try {
                Field f = line.getClass().getSuperclass().getDeclaredField("waitTime");
                f.setAccessible(true);
                f.set(line, 1);
                LOG.info("Setting waitTime to 1ms for SourceDataLine: {}", line.getClass().getCanonicalName());
            } catch (Exception e) {
                LOG.warn("Unable to set waitTime for SourceDataLine: {}", line.getClass().getCanonicalName());
            }
        }
    }

    private static void intStereo14ToByteMono16Mix(int[] input, byte[] output, int inputLen) {
        int j = 0;
        for (int i = 0; i < inputLen; i += 2) {
            //fm: avg 2 channels -> mono
            // avg = (16 bit + 16 bit) >> (1 + 1) = 15 bit
            int out16 = (input[i] + input[i + 1]) >> 2;
            output[i] = (byte) (out16 & 0xFF); //lsb
            output[i + 1] = (byte) ((out16 >> 8) & 0xFF); //msb
            j++;
        }
    }

    public static void mixFmPsg(int[] fmMono16, byte[] outputMono16, byte[] psgMono8, int inputLen) {
        if (fmMono16.length == 0) {
            byteMono8ToByteMono16Mix(psgMono8, outputMono16);
        } else if (psgMono8.length == 0) {
            intStereo14ToByteMono16Mix(fmMono16, outputMono16, inputLen);
        } else {
            intStereo14ToByteMono16Mix(fmMono16, outputMono16, psgMono8, inputLen);
        }
    }

    private static void intStereo14ToByteMono16Mix(int[] input, byte[] output, byte[] psgMono8, int inputLen) {
        int j = 0;
        for (int i = 0; i < inputLen; i += 2) {
            //fm: avg 2 channels -> mono
            // avg = (16 bit + 16 bit) >> (1 + 1) = 15 bit
            int fm = (input[i] + input[i + 1]) >> 2;
            //PSG: 8 bit -> 13 bit (attenuate by 2 bit)
            int psg = psgMono8[j];
            //TODO check this
            psg = PSG_SHIFT_BITS > 0 ? psg << PSG_SHIFT_BITS : psg >> -PSG_SHIFT_BITS;
            //avg fm and psg
            int out16 = Math.min(Math.max(fm + psg, Short.MIN_VALUE), Short.MAX_VALUE);
            output[i] = (byte) (out16 & 0xFF); //lsb
            output[i + 1] = (byte) ((out16 >> 8) & 0xFF); //msb
            j++;
        }
    }

    private static void byteMono8ToByteMono16Mix(byte[] psgMono8, byte[] output) {
        int i = 0;
        for (int j = 0; j < psgMono8.length; j++, i+=2) {
            //PSG: 8 bit -> 13 bit (attenuate by 2 bit)
            int psg16 = ((int) psgMono8[j]) << 7;
            output[i] = (byte) (psg16 & 0xFF); //lsb
            output[i + 1] = (byte) ((psg16 >> 8) & 0xFF); //msb
        }
    }

    public static void convertToWav(AudioFormat audioFormat, String fileName) {
        File input = new File(fileName);
        File output = new File(fileName + ".wav");

        try (
            FileInputStream fileInputStream = new FileInputStream(input);
            AudioInputStream audioInputStream = new AudioInputStream(fileInputStream, audioFormat
                    , input.length());
        ) {
            AudioSystem.write(audioInputStream, AudioFileFormat.Type.WAVE, output);
            audioInputStream.close();
            LOG.info(output.getAbsolutePath() + " saved");
        } catch (IOException ioe) {
            LOG.error("Error writing WAV file: " + output.getAbsolutePath());
            ioe.printStackTrace();
            System.out.println("Error writing WAV file");
        }
    }
}