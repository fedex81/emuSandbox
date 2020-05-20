package svp;

import org.bridj.Pointer;
import svp.jna.*;

import static svp.Ssp16Types.*;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class Ssp16Jna implements Ssp16 {

    static SvpLibrary svpLibrary;
    static {
        try {
            svpLibrary = new SvpLibrary();
        } catch (Exception|Error e){
            e.printStackTrace();
        }
    }

    public Pointer<svp_t> svp_ptr;
    public Pointer<ssp1601_t> ssp1601_ptr;
    public ssp_reg_t[] ssp_reg;

    public static Ssp16 createInstance(byte[] romData) {
        Ssp16Jna s = new Ssp16Jna();
        cart_hw_t cart = svpLibrary.cart();

        cart = s.loadCartMemory(cart, romData);
        svpLibrary = svpLibrary.cart(cart);
        SvpLibrary.svp_init();
        s.svp_ptr = svpLibrary.svp();
        s.loadSvpMemory(s.svp_ptr.get(), 0x800, romData);
        s.ssp1601_reset(null);
        s.ssp1601_ptr = svpLibrary.ssp1601();
        s.ssp_reg = (ssp_reg_t[]) s.ssp1601_ptr.get().gr().getArray();
        return s;
    }

    private cart_hw_t loadCartMemory(cart_hw_t cart, byte[] romBytes) {
        byte[] rom = new byte[romBytes.length];
        for (int i = 0; i < romBytes.length; i+= 2) {
            rom[i] = (byte) (romBytes[i + 1] & 0xFF);
            rom[i + 1] = (byte) (romBytes[i] & 0xFF);
        }
        cart.rom().setBytes(rom);
        return cart;
    }

    private svp_t loadSvpMemory(svp_t svpT, int startAddrRomByte, byte[] romBytes) {
        byte[] iram_rom = svpT.iram_rom().getBytes();
        for (int i = 0; i < romBytes.length; i+=2) {
            if (i >= startAddrRomByte && i < iram_rom.length) {
                iram_rom[i] = (byte) (romBytes[i + 1] & 0xFF);
                iram_rom[i + 1] = (byte) (romBytes[i] & 0xFF);
            }
        }
        svpT.iram_rom().setBytes(iram_rom);
        return svpT;
    }

    @Override
    public Svp_t getSvpContext() {
        Ssp1601_t sspCtx = new Ssp1601_t(){
            @Override
            public void setEmu_status(int emu_status) {
                ssp1601_ptr.get().emu_status(emu_status);
            }

            @Override
            public int getEmu_status() {
                return ssp1601_ptr.get().emu_status();
            }

            @Override
            public int getRegisterValue(Ssp16Reg reg) {
                return ssp_reg[reg.ordinal()].byte$().h() & 0xFFFF;
            }

            @Override
            public void setRegisterValue(Ssp16Reg reg, int value) {
                ssp_reg[reg.ordinal()].byte$().h((short) value);
            }

            @Override
            public byte[] getR() {
                return  (byte[]) ssp1601_ptr.get().ptr().r().getArray();
            }
        };
        Svp_t svpCtx =  new Svp_t(null){

            @Override
            public void writeRamWord(int addressWord, int value) {
                int addressByte = (addressWord << 1) & 0x1FFFF;
                svp_ptr.get().dram().setByteAtIndex(addressByte + 1, (byte) (value >> 8));
                svp_ptr.get().dram().setByteAtIndex(addressByte, (byte) (value & 0xFF));
            }

            @Override
            public int readRamWord(int addressWord) {
                int addressByte = (addressWord << 1) & 0x1FFFF;
                int b1 = svp_ptr.get().dram().getByteAtIndex(addressByte) & 0xFF;
                int b2 = svp_ptr.get().dram().getByteAtIndex(addressByte + 1) & 0xFF;
                return b1 | (b2 << 8);
            }
        };
        svpCtx.ssp1601 = sspCtx;
        return svpCtx;
    }

    @Override
    public void ssp1601_reset(Ssp1601_t ssp) {
        SvpLibrary.svp_reset();
    }

    long cyclesAcc = 0;

    @Override
    public void ssp1601_run(int cycles) {
        SvpLibrary.ssp1601_run(cycles);
        cyclesAcc += cycles;
    }
}
