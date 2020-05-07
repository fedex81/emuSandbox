package fm.ym2612.compare;

import fm.MdFmProvider;
import fm.ym2612.nukeykt.IYm3438;
import fm.ym2612.nukeykt.Ym2612Nuke;


/**
 * ${FILE}
 * <p>
 * Federico Berti
 * <p>
 * Copyright 2019
 */
public class Ym2612NukeParallel implements MdFmProvider {

    private Ym2612Nuke nuke;
    private Ym2612Nuke nukeJna;

    private IYm3438.IYm3438_Type chip;
    private Ym3438Jna ym3438Jna;
    private INukeCompare compare;

    private boolean doCompare = true;

    public Ym2612NukeParallel(){
        chip = new IYm3438.IYm3438_Type();
        ym3438Jna = new Ym3438Jna();
        //TODO fix
        nuke = null; //new Ym2612Nuke(chip);
        nukeJna = null; //new Ym2612Nuke(ym3438Jna);
        //TODO fix
        compare = doCompare ? new NukeCompareHelper(chip, ym3438Jna.getChip()) : NukeCompareHelper.NO_OP;
    }

    @Override
    public void reset() {
        nuke.reset();
        nukeJna.reset();
        compare.compareState();
    }

    @Override
    public void init(int clock, int rate) {
        compare.compareState();
    }

    @Override
    public int update(int[] buf_lr, int offset, int end) {
//        nukeJna.update(buf_lr, offset, end);
        nuke.update(buf_lr, offset, end);
        nukeJna.update(buf_lr, offset, end);
        compare.compareState();
        return 0;
    }

    @Override
    public int readRegister(int type, int regNumber) {
        return 0;
    }

    @Override
    public void write(int addr, int data) {
        nuke.write(addr, data);
        nukeJna.write(addr, data);
        compare.compareState();
    }

    @Override
    public void tick(double microsPerTick) {

    }

    @Override
    public int read() {
        int res1 = nuke.read();
        int res2 = nukeJna.read();
        if(doCompare && res1 != res2){
            System.out.println("read: " + res1 + "," + res2);
        }
        compare.compareState();
        return res1;
    }
}
