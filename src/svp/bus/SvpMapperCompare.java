/*
 * GenesisBus
 * Copyright (c) 2018-2019 Federico Berti
 * Last modified: 21/10/19 13:52
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

package svp.bus;

import omegadrive.util.Size;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import svp.Ssp16;
import svp.Ssp16Jna;
import svp.Ssp16Types;

import java.util.Arrays;
import java.util.stream.IntStream;

import static svp.Ssp16Types.*;

public class SvpMapperCompare extends SvpMapper {

    private static final Logger LOG = LogManager.getLogger(SvpMapperCompare.class.getSimpleName());

    private Ssp16 ssp16Java;
    private final Svp_t svpCtxJava;
    private final Ssp1601_t sspCtxJava;

    public SvpMapperCompare(RomMapper baseMapper, byte[] romData) {
        super(baseMapper, Ssp16Jna.createInstance(romData));
        this.ssp16Java = Ssp16.createSvp(romData);
        svpCtxJava = ssp16Java.getSvpContext();
        sspCtxJava = svpCtxJava.ssp1601;
        SvpMapper.ssp16 = createMux();
    }

    private Ssp16 createMux(){
        return new Ssp16() {
            @Override
            public void ssp1601_reset(Ssp1601_t ssp) {
                ssp16Java.ssp1601_reset(sspCtxJava);
                ssp16Int.ssp1601_reset(sspCtx);
            }

            Ssp16Reg[] regs = Ssp16Reg.values();
            int[] dramNative = new int[svpCtxJava.dram.length];
            int[] regNative = new int[regs.length];
            int[] regJava = new int[regs.length];
            long cycleCounter = 0;

            @Override
            public void ssp1601_run(int cycles) {
                ssp16Java.ssp1601_run(cycles);
                ssp16Int.ssp1601_run(cycles);
                compareState();
                cycleCounter += cycles;
            }

            int freq = 10_000;

            private final void compareState() {
                if (cycleCounter % freq != 0) {
                    return;
                }
                Arrays.stream(regs).forEach(r -> {
                    int res = sspCtxJava.gr[r.ordinal()].h;
                    res = res < 0 ? res + 0x1_0000 : res;
                    regJava[r.ordinal()] = res;
                    regNative[r.ordinal()] = sspCtx.getRegisterValue(r);
                });

                boolean allGood = Arrays.equals(regNative, regJava);
                byte[] rn = sspCtx.getR();
                allGood &= Arrays.equals(new int[]{rn[0] & 0xFF, rn[1]& 0xFF, rn[2]& 0xFF, rn[3]& 0xFF},
                        sspCtxJava.getR(true));
                allGood &= Arrays.equals(new int[]{rn[4] & 0xFF, rn[5]& 0xFF, rn[6]& 0xFF, rn[7]& 0xFF},
                        sspCtxJava.getR(false));
                if(allGood){
                    IntStream.range(0, dramNative.length).forEach(i -> dramNative[i] = svpCtx.readRamWord(i));
                    allGood &= Arrays.equals(dramNative, svpCtxJava.dram);
                    if(!allGood){
                        StringBuilder sb = new StringBuilder("DRAM\n");
                        for (int i = 0; i < dramNative.length; i++) {
                            if(dramNative[i] != svpCtxJava.dram[i]){
                                sb.append(Integer.toHexString(i) +
                                        ": n " + Integer.toHexString(dramNative[i]) +
                                        ", j " + Integer.toHexString(svpCtxJava.dram[i]) + "\n");
                            }
                        }
                        LOG.info(sb.toString());
                    }
                }
                if (!allGood) {
                    LOG.info("{} regNative: {}, regJava: {}", cycleCounter, Arrays.toString(regNative), Arrays.toString(regJava));
                }
            }
        };
    }

    @Override
    public long readData(long addressL, Size size) {
        return m68kSvpReadData(addressL, size);
    }

    //68k writing data
    @Override
    public void writeData(long addressL, long data, Size size) {
        m68kSvpWriteData(addressL, data, size);
    }

    @Override
    public long m68kSvpRegRead(int address, Size size) {
        m68kSvpRegRead(sspCtxJava, address, size);
        return super.m68kSvpRegRead(address, size);
    }

    @Override
    public void m68kSvpRegWrite(int address, long data, Size size) {
        super.m68kSvpRegWrite(address, data, size);
        m68kSvpRegWrite(sspCtxJava, address, data, size);
    }

    //68k writing data
    @Override
    public void m68kSvpWriteData(long addressL, long data, Size size) {
        int address = (int) (addressL & 0xFF_FFFF);
        if (address >= SVP_MAP_DRAM_START_ADDR_BYTE && address < SVP_MAP_DRAM_END_ADDR_BYTE) {
            m68kSvpWriteData(svpCtxJava, addressL, data, size);
        }
        super.m68kSvpWriteData(addressL, data, size);
    }

    @Override
    public long m68kSvpReadData(long addressL, Size size) {
        m68kSvpReadData(svpCtxJava, addressL, size);
        return super.m68kSvpReadData(addressL, size);
    }
}
