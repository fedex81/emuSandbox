package ym3438;

import org.bridj.Pointer;

/**
 * ${FILE}
 * <p>
 * Federico Berti
 * <p>
 * Copyright 2019
 */
public class JnaTest {

    public static void main(String[] args){
        ym3438_t chip = new ym3438_t();
        Ym3438Library.OPN2_SetChipType(1);
        Pointer<ym3438_t> chipPointer = Pointer.allocate(ym3438_t.class);
        chipPointer.set(chip);
        Ym3438Library.OPN2_Reset(chipPointer);
        int res = Ym3438Library.OPN2_ReadTestPin(chipPointer);
        System.out.println(res);
    }
}
