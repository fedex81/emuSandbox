/*
 * Ym2612Nuke
 * Copyright (c) 2018-2019 Federico Berti
 * Last modified: 25/10/19 16:39
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

package fm.ym2612.nukeykt;

import fm.MdFmProvider;
import fm.VariableSampleRateSource;
import fm.ym2612.Ym2612RegSupport;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import util.SoundProvider;
import util.Util;

import java.io.Serializable;
import java.util.Arrays;

/**
 * NTSC_MCLOCK_MHZ = 53693175;
 * PAL_MCLOCK_MHZ = 53203424;
 * <p>
 * NTSC:
 * FM CLOCK = MCLOCK/7 = 7670453
 * NUKE_CLOCK = FM_CLOCK/6 = 1278409
 * CHIP_OUTPUT_RATE = NUKE_CLOCK/24 = 53267
 * <p>
 */
public class Ym2612Nuke extends VariableSampleRateSource implements MdFmProvider {

    private static final Logger LOG = LogManager.getLogger(Ym2612Nuke.class.getSimpleName());

    private IYm3438 ym3438;
    private IYm3438.IYm3438_Type chip;
    private Ym3438Context state;
    private Ym2612RegSupport regSupport;

    private double cycleAccum = 0;

    public Ym2612Nuke(int bufferSize) {
        this(new IYm3438.IYm3438_Type(), bufferSize);
    }

    private Ym2612Nuke(IYm3438.IYm3438_Type chip, int bufferSize) {
        super(1278409, SoundProvider.SAMPLE_RATE_HZ, bufferSize, "fmNuke");
        this.ym3438 = new Ym3438();
        this.chip = chip;
        this.ym3438.OPN2_SetChipType(IYm3438.ym3438_mode_readmode);
        this.state = new Ym3438Context();
        state.chip = chip;
        this.regSupport = new Ym2612RegSupport();
    }

    @Override
    public void init(int clock, int rate) {
        LOG.info("Init with clock {}hz, sampleRate {}hz", clock, rate);
    }

    @Override
    public void reset() {
        super.reset();
        ym3438.OPN2_Reset(chip);
        state.reset();
    }

    @Override
    public void write(int addr, int data) {
        ym3438.OPN2_Write(chip, addr, data);
        regSupport.write(addr, data);
    }

    @Override
    public int readRegister(int type, int regNumber) {
        return regSupport.readRegister(type, regNumber);
    }

    @Override
    public int read() {
        return ym3438.OPN2_Read(chip, 0x4000);
    }

    private void addSample() {
        if (cycleAccum > fmCalcsPerMicros) {
            super.addSample(Util.getFromIntegerCache(state.ym3438_sample));
            cycleAccum -= fmCalcsPerMicros;
        }
    }

    //Output frequency: 53.267 kHz (NTSC), 52.781 kHz (PAL)
    @Override
    public void tick(double microsPerTick) {
        cycleAccum += microsPerTick;
        spinOnce();
        addSample();
    }

    @Override
    protected void spinOnce() {
        ym3438.OPN2_Clock(chip, state.ym3438_accm[state.ym3438_cycles]);
        state.ym3438_cycles = (state.ym3438_cycles + 1) % 24;
        if (state.ym3438_cycles == 0) {
//            chipRate++;
            int sampleL = 0;
            int sampleR = 0;
            for (int j = 0; j < 24; j++) {
                sampleL += state.ym3438_accm[j][0];
                sampleR += state.ym3438_accm[j][1];
            }
            //mono
            state.ym3438_sample = (sampleL + sampleR) >> 1;
        }
    }

    public void setState(Ym3438Context state) {
        if (state != null) {
            this.state = state;
            this.chip = state.chip;
        } else {
            LOG.warn("Unable to restore state, FM will not work");
            this.chip.reset();
            this.state.reset();
        }
    }

    public Ym3438Context getState() {
        return state;
    }

    public static class Ym3438Context implements Serializable {

        private static final long serialVersionUID = -2921159132727518547L;

        int ym3438_cycles = 0;
        int ym3438_sample = 0;
        int[][] ym3438_accm = new int[24][2];
        IYm3438.IYm3438_Type chip;

        public void reset() {
            ym3438_cycles = 0;
            ym3438_sample = 0;
            Arrays.stream(ym3438_accm).forEach(row -> Arrays.fill(row, 0));
        }
    }
}
