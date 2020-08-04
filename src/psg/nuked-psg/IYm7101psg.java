/*
 Copyright (C) 2018 Alexey Khokholov (Nuke.YKT)

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.


  Yamaha YM7101 PSG
  Thanks:
      Fritzchens Fritz for YM7101 decap and die shot.

 version: 1.0.1
 */
/*
 * 2020 Federico Berti
 * - Java translation
 */
package psg.nuked;

public interface IYm7101psg {

    class psg_t {
        int latch; //Bit8u
        int[] volume = new int[4]; //Bit8u
        int[] output = new int[4]; //Bit8u
        int[] freq = new int[4]; //Bit16u
        int[] counter = new int[4]; //Bit16u
        int sign; //Bit8u
        int noise_data; //Bit8u
        int noise_reset; //Bit8u
        int noise_update; //Bit8u
        int noise_type; //Bit8u
        int noise; //Bit16u
        int inverse; //Bit8u
        int cycle; //Bit8u
        int debug; //Bit8u
    }

    void PSG_Reset(psg_t chip);

    void PSG_Write(psg_t chip, int data); //Bit8u

    int PSG_Read(psg_t chip); //Bit16u

    void PSG_SetDebugBits(psg_t chip, int data); //Bit16u

    double PSG_GetSample(psg_t chip); //float *sample

    void PSG_Cycle(psg_t chip);

}