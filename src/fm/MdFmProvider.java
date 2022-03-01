/*
 * MdFmProvider
 * Copyright (c) 2018-2019 Federico Berti
 * Last modified: 04/10/19 11:10
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

package fm;

import fm.ym2612.YM2612;
import fm.ym2612.nukeykt.Ym2612Nuke;
import omegadrive.sound.SoundProvider;
import omegadrive.sound.fm.FmProvider;
import omegadrive.util.RegionDetector;
import omegadrive.util.SoundUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.sound.sampled.AudioFormat;

public interface MdFmProvider extends FmProvider {

    Logger LOG = LogManager.getLogger(MdFmProvider.class.getSimpleName());

    int FM_ADDRESS_PORT0 = 0;
    int FM_ADDRESS_PORT1 = 2;
    int FM_DATA_PORT0 = 1;
    int FM_DATA_PORT1 = 3;

    // Note Maxim doc on YM2612 is wrong: overflowB is bit 1 and overflowA is bit 0
//    Status
//    D7	D6	D5	D4	D3	D2	 D1	        D0
//    Busy		              Overflow B  Overflow A
    int FM_STATUS_TIMER_A_BIT_MASK = 0x1;
    int FM_STATUS_TIMER_B_BIT_MASK = 0x2;
    int FM_STATUS_BUSY_BIT_MASK = 0x80;

    // 27H
// D7	D6	  D5	  D4	        D3	      D2	      D1	D0
//Ch3 mode	Reset B	Reset A	  Enable B	Enable A	Load B	Load A
    int FM_MODE_LOAD_A_MASK = 0x1;
    int FM_MODE_LOAD_B_MASK = 0x2;
    int FM_MODE_ENABLE_A_MASK = 0x4;
    int FM_MODE_ENABLE_B_MASK = 0x8;
    int FM_MODE_RESET_A_MASK = 0x10;
    int FM_MODE_RESET_B_MASK = 0x20;

    int OUTPUT_SAMPLE_SIZE = 16;
    int OUTPUT_CHANNELS = 1;

    boolean MD_NUKE_AUDIO = Boolean.valueOf(System.getProperty("md.nuke.audio", "false"));

    AudioFormat audioFormat = new AudioFormat(SoundProvider.SAMPLE_RATE_HZ, OUTPUT_SAMPLE_SIZE,
            OUTPUT_CHANNELS, true, false);

    static MdFmProvider createInstance(RegionDetector.Region region, int sampleRate) {
        double clock = SoundProvider.getFmSoundClock(region);
        int bufferSize = SoundUtil.getAudioLineBufferSize(audioFormat);
        MdFmProvider fmProvider = MD_NUKE_AUDIO ? new Ym2612Nuke(bufferSize) : new YM2612();
        fmProvider.init((int) clock, sampleRate);
        LOG.info("FM instance, clock: " + clock + ", sampleRate: " + sampleRate);
        return fmProvider;
    }

    void init(int clock, int rate);

}
