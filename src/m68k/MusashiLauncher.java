package m68k;

import com.sun.org.apache.bcel.internal.generic.Instruction;
import m68k.jna.m68kcpu.M68kcpuLibrary;
import m68k.jna.m68kcpu.M68kcpuLibrary.m68k_register_t;
import m68k.jna.m68kcpu.m68ki_cpu_core;
import omegadrive.bus.model.BaseBusProvider;
import omegadrive.memory.MemoryProvider;
import omegadrive.util.Util;
import org.apache.logging.log4j.Level;
import org.bridj.IntValuedEnum;
import org.bridj.Pointer;
import org.bridj.TypedPointer;
import svp.jna.SvpLibrary;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Objects;
import java.util.stream.Collectors;

import static m68k.jna.m68kcpu.M68kcpuLibrary.*;
import static m68k.jna.m68kcpu.M68kcpuLibrary.m68k_register_t.*;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class MusashiLauncher {

    static M68kcpuLibrary library;
    static {
        try {
            library = new M68kcpuLibrary();
        } catch (Exception|Error e){
            e.printStackTrace();
        }
    }

    static Path file = Paths.get("./native/musashi/test", "test_div.bin");
    static int[] rom;

    public static void main(String[] args) throws IOException {
//        runFile(file);
//        testMOVE_PD();
        testCHK();
    }

    private static void runFile(Path file) throws IOException {
        MusashiProvider musashiProvider = setup(Files.readAllBytes(file), 0xE0_0000);

        long pc;
        int cycles = 0;
        do {
            cycles = musashiProvider.runInstruction();
            System.out.println(cycles);
            pc = musashiProvider.getPC();
            Pointer<Byte> p1 = Pointer.allocateBytes(400);
            M68kcpuLibrary.dump_info(p1);
            System.out.println(pc + "," + toHashNumber(p1.getCString()) + "\n--");
        } while (pc < rom.length);
    }

    private static MusashiProvider setup(byte[] dataRom, int RAM_START){
        MemoryProvider memoryProvider = (MemoryProvider) MemoryProvider.createGenesisInstance();
        rom = Util.toUnsignedIntArray(dataRom);
        memoryProvider.setRomData(rom);
        BaseBusProvider busProvider = MusHelper.createSimpleBusProvider(memoryProvider, RAM_START);
        MusashiProvider musashiProvider = new MusashiProvider(busProvider);
        musashiProvider.reset();
        library.m68ki_cpu().sr_mask(0x2700);
        return musashiProvider;
    }

    public static int toHashNumber(String info){
        System.out.println(info);
        String[] lines = info.trim().split("\n");
        String str = Arrays.stream(lines).filter(l -> !l.startsWith("==>") && !l.isEmpty()).
                collect(Collectors.joining());
        return Objects.hashCode(str);
    }

    /**
     * 00000100   4183                     chk      d0,d3
     *
     * M68kState{sr=2705, pc=100, ssp=436015c6, usp=32f41616, opcode=4183,
     * d0=7D7B2ECA
     * d3=12C880BA
     */
    public static void testCHK(){
        byte[] data = new byte[0x1000];

        //203C 7D7B 2ECA move.l 0x7D7B2ECA d0
        //263C 12C8 80BA move.l 0x12C880BA d3
        //4183           chk   d0,d3
        //4e71           nop
        setUInt32BE(0x203C_7D7B, data, 4);
        setUInt32BE(0x2ECA_263C, data, 0x8);
        setUInt32BE(0x12C8_80BA, data, 0xC);
        setUInt32BE(0x4183_4e71, data, 0x10);

        MusashiProvider musashiProvider = setup(data, 0x100);
        BaseBusProvider bus = musashiProvider.getBusProvider();
        m68ki_cpu_core cpu = musashiProvider.getCpu();

        cpu.pc(4);
        long pc;
        int cycles = 0;
        int inst = 0;
        do {
            cycles = musashiProvider.runInstruction();
//            System.out.println(cycles);
            pc = musashiProvider.getPC();
            Pointer<Byte> p1 = Pointer.allocateBytes(400);
            M68kcpuLibrary.dump_info(p1);
            System.out.println(pc + "," + toHashNumber(p1.getCString()) + "\n--");
            inst++;
        } while (inst < 4);
        if(pc == 0x12){
            System.out.println("CHK OK");
        } else {
            System.out.println("CHK exception");
        }
    }

    public static void testMOVE_PD(){
        int lsw = 0x2222;
        int msw = 0x1111;
        int value = msw << 16 | lsw;
        int startPos = 0x116;
        byte[] data = new byte[0x1000];
        setUInt32BE(0x2e3c_0000 | msw, data, 4);
        setUInt32BE(lsw << 16, data, 8); //2e39 1111 2222 move.l 0x11112222 d7
        setUInt32BE(0x327C_0000 | startPos, data, 10); //3278 0104 movea.w 0x104 a1

        setUInt32BE(0x48e1_8100, data, 14); //48e1 8100  movem.l  d0/d7,-(a1)

        setUInt32BE(0x2307_0000, data, 18); //2307  move.l  d7,-(a1)

        MusashiProvider musashiProvider = setup(data, 0x100);
        BaseBusProvider bus = musashiProvider.getBusProvider();
        m68ki_cpu_core cpu = musashiProvider.getCpu();


        int endPos = startPos - 8; // 2 longs
        int valuePos = startPos - 4;
        cpu.pc(4);

        long pc;
        int cycles = 0;
        do {
            cycles = musashiProvider.runInstruction();
//            System.out.println(cycles);
            pc = musashiProvider.getPC();
            Pointer<Byte> p1 = Pointer.allocateBytes(400);
            M68kcpuLibrary.dump_info(p1);
            System.out.println(pc + "," + toHashNumber(p1.getCString()) + "\n--");
        } while (pc < 20);

    }

    public static void setUInt32BE(int value, byte[] data, int startIndex) {
        data[startIndex] = (byte) ((value >> 24) & 0xFF);
        data[startIndex + 1] = (byte) ((value >> 16) & 0xFF);
        data[startIndex + 2] = (byte) ((value >> 8) & 0xFF);
        data[startIndex + 3] = (byte) ((value) & 0xFF);
    }
}
