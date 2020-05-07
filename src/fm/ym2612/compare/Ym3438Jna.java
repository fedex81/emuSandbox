package fm.ym2612.compare;

import fm.ym2612.nukeykt.IYm3438;
import org.bridj.Pointer;

/**
 * ${FILE}
 * <p>
 * Federico Berti
 * <p>
 * Copyright 2019
 */
public class Ym3438Jna implements IYm3438 {

    Pointer<ym3438_t> chipPointer = Pointer.allocate(ym3438_t.class);
    Pointer<Short> bufferPointer = Pointer.allocateShorts(2);

    {
        chipPointer.set(new ym3438_t());
    }

    public ym3438_t getChip(){
        return chipPointer.get();
    }

    @Override
    public void OPN2_Reset(IYm3438_Type chip) {
        Ym3438Library.OPN2_Reset(chipPointer);
    }

    @Override
    public void OPN2_SetChipType(int type) {
        Ym3438Library.OPN2_SetChipType(type);
    }

    @Override
    public void OPN2_Clock(IYm3438_Type chip, int[] buffer) {
        Ym3438Library.OPN2_Clock(chipPointer, bufferPointer);
        buffer[0] = bufferPointer.get(0);
        buffer[1] = bufferPointer.get(1);
    }

    @Override
    public void OPN2_Write(IYm3438_Type chip, int port, int data) {
        Ym3438Library.OPN2_Write(chipPointer, port, (byte) data);
    }

    @Override
    public void OPN2_SetTestPin(IYm3438_Type chip, int value) {
        Ym3438Library.OPN2_SetTestPin(chipPointer, value);
    }

    @Override
    public boolean OPN2_ReadTestPin(IYm3438_Type chip) {
        return Ym3438Library.OPN2_ReadTestPin(chipPointer) != 0;
    }

    @Override
    public boolean OPN2_ReadIRQPin(IYm3438_Type chip) {
        return Ym3438Library.OPN2_ReadIRQPin(chipPointer) != 0;
    }

    @Override
    public int OPN2_Read(IYm3438_Type chip, int port) {
        return Ym3438Library.OPN2_Read(chipPointer, port);
    }

    @Override
    public boolean isWriteAddrEn(IYm3438_Type chip) {
        return chipPointer.get().write_a_en() != 0;
    }

    @Override
    public boolean isWriteDataEn(IYm3438_Type chip) {
        return chipPointer.get().write_d_en() != 0;
    }
}
