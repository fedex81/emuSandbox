package svp;

import java.util.stream.IntStream;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public interface Ssp16 {

      int SSP_PMC_HAVE_ADDR = 0x0001; /* address written to PMAC, waiting for mode */
      int SSP_PMC_SET =       0x0002; /* PMAC is set */
      int SSP_HANG  =         0x1000; /* 68000 hangs SVP */
      int SSP_WAIT_PM0 =      0x2000; /* bit1 in PM0 */
      int SSP_WAIT_30FE06 =   0x4000; /* ssp tight loops on 30FE08 to become non-zero */
      int SSP_WAIT_30FE08 =   0x8000; /* same for 30FE06 */
      int SSP_WAIT_MASK =     0xf000;

      //logging
      int EL_SVP  =    0x00004000; /* SVP stuff  */
      int EL_ANOMALY = 0x80000000; /* some unexpected conditions (during emulation) */

    /* register names */
    enum Ssp16Reg {
        SSP_GR0, SSP_X,     SSP_Y,   SSP_A,
                SSP_ST,  SSP_STACK, SSP_PC,  SSP_P,
                SSP_PM0, SSP_PM1,   SSP_PM2, SSP_XST,
                SSP_PM4, SSP_gr13,  SSP_PMC, SSP_AL
    };

    class ssp_reg_t {
        int v; //unsigned int
        //TODO these could be swapped
        short l; //unsigned short
        short h; //unsigned short
    }

    class ssp1601_t {
        class mem {
            class bank {
                short[] RAM0 = new short[256];
                short[] RAM1 = new short[256];
            }

            short[] RAM = new short[256 * 2];  /* 2 internal RAM banks */
            bank bank = new bank();
        }

        class ptr {
            class bank {
                short[] r0 = new short[4];
                short[] r1 = new short[4];
            }
            bank bank = new bank();
            int[] r = new int[8];  /* BANK pointers */
        }

        mem mem = new mem();
        ptr ptr = new ptr();
        ssp_reg_t[] gr = new ssp_reg_t[16];  /* general registers */
        short[] stack = new short[6];
        int[][] pmac = new int[2][6];  /* read/write modes/addrs for PM0-PM5 */
        int emu_status;
        int[] pad = new int[30];

        {
            IntStream.range(0, gr.length).forEach(i -> gr[i] = new ssp_reg_t());
        }
    }

    class svp_t {
        int[] iram_rom = new int[0x20000]; /* IRAM (0-0x7ff) and program ROM (0x800-0x1ffff) */
        int[] dram = new int[0x20000];
        ssp1601_t ssp1601;
    }


    class cart {
        int[] rom;
    }

    void ssp1601_reset(ssp1601_t ssp);
    void ssp1601_run(int cycles);
}
