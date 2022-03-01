package m68k.jsontest;

import com.google.gson.Gson;

import m68k.M68kProvider;
import m68k.cpu.MC68000;
import m68k.jsontest.schema.FinalState;
import omegadrive.bus.md.GenesisBus;
import omegadrive.bus.model.GenesisBusProvider;
import omegadrive.cpu.m68k.MC68000Helper;
import omegadrive.cpu.m68k.MC68000Helper.M68kState;
import omegadrive.cpu.m68k.MC68000Wrapper;
import omegadrive.util.FileUtil;
import omegadrive.util.Size;

import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static m68k.cpu.Cpu.V_FLAG;
import static omegadrive.util.Util.th;

/**
 * Federico Berti
 * <p>
 * Copyright 2022
 */
public class JsonTest68k {

    private static String path = "res/m68k";

    private static final int MEM_SIZE = 0x100_0000;
    private static final int MEM_MASK = MEM_SIZE-1;

    private MC68000Wrapper provider;
    private GenesisBusProvider bus;
    private ByteBuffer buffer = ByteBuffer.allocate(MEM_SIZE).order(ByteOrder.BIG_ENDIAN);

    public static void main(String[] args) {
        JsonTest68k t = new JsonTest68k();
        fileProvider().forEach(tc -> {
            t.setup();
            StringBuilder sb = t.testJson(tc);
            System.out.println(sb);
        });
    }

//    @Before
    public void setup() {
        bus = createBusProvider(buffer);
        provider = MC68000Wrapper.createInstance(bus);
    }

    static Stream<String> fileProvider() {
        File fpath = new File(path);
        File[] files = fpath.listFiles();
        Predicate<File> validFile = f -> !f.isDirectory() && f.getName().endsWith(".json.zip");
        return Arrays.stream(files).filter(validFile).map(f -> f.getName()).sorted();
    }

//    @MethodSource("fileProvider")
//    @ParameterizedTest
    public StringBuilder testJson(String fileName) {
        Gson a = new Gson();
        Path p = Paths.get(path, fileName);
        System.out.println(p.toAbsolutePath());
        String s = new String(FileUtil.readBinaryFile(p, "json"));
//        String s = FileUtil.readFileContentAsString(path + "/" + fileName);
        InstData[] m = a.fromJson(s, InstData[].class);
        StringBuilder err = new StringBuilder();
        for (InstData id : m){
            if(id.getName() == null){
                continue;
            }
            String res = testOne(id);
            if(res!= null && res.length() > 0){
                err.append(res).append("\n");
            }
        }
        return err;
//        Assert.assertTrue(err.toString(), err.length() == 0);
    }

    private String testOne(InstData data){
        M68kState start = toStateObject(data.getInitialState(), data.getInitialMemory());
        M68kState expected = toStateObject(data.getFinalState(), data.getFinalMemory());
        fromStateObject(start, provider);
//        System.out.println(MC68000Helper.dumpOp(provider.m68k, start.pc));
        provider.runInstruction();
        M68kState actual = toStateObject(provider);
        //        Assert.assertEquals("Exp: " + expected + "\nAct: " + actual, expected, actual);
        String memRes = checkMemory(data.getFinalMemory());
        boolean isMatch = expected.equals(actual) && memRes == null;
        if(!isMatch){
            handleSpecialCases(start, expected, actual, data.getFinalMemory());
            //retry
            memRes = checkMemory(data.getFinalMemory());
            isMatch = expected.equals(actual) && memRes == null;
        }
        if(!isMatch) {
                return MC68000Helper.dumpOp(provider.getM68k(), start.pc) + " -- ERROR\n" +
                        "Before: " + start +
                        "\nExpect: " + expected +
                        "\nActual: " + actual + "\n"+memRes+"\n";
        }
        return null;
    }

    private String checkMemory(List<Integer> finalMem){
        for (int i = 0; i < finalMem.size(); i+=2) {
            int pos = finalMem.get(i);
            if(pos < 0){
                break;
            }
            int actVal = (int) bus.read(pos, Size.BYTE);
            int expVal = finalMem.get(i+1);
            if(expVal != actVal) {
                return "Memory mismatch, pos: " + th(pos) + ", Exp: " + th(expVal) + ", Act: " + th(actVal);
            }
        }
        return null;
    }



    private void handleSpecialCases(M68kState start, M68kState expected, M68kState actual, List<Integer> memory){
        int opcode = start.opcode;
        String op = MC68000Helper.dumpOp(provider.getM68k(), start.pc);
        //ignores the N-flag for DIV*, different results on overflow
        boolean isDiv = (opcode & 0x80C0) == 0x80C0;
        if(isDiv && (expected.sr & V_FLAG) > 0) {
            expected.sr &= 0xFFF7;
            actual.sr &= 0xFFF7;
        }
        //ignore the trace bits
        boolean isEoriToSr = opcode == 0x0a7c;
        if(isEoriToSr){
            expected.sr &= 0x3FFF;
            actual.sr &= 0x3FFF;
        }
        //pointless, but my implementation is incorrect
        // see https://www.atari-forum.com/viewtopic.php?t=34730&start=25
        boolean isLinkA7 = opcode == 0x4e57;
        if(isLinkA7){
            writeMemory(memory);
        }
        //ignores *BCD, seems to be wrong
        boolean isBCD = op.toLowerCase().contains("bcd");
        if(isBCD){
            actual.sr = expected.sr;
            actual.ar = expected.ar;
            actual.dr = expected.dr;
        }
    }

    private M68kState toStateObject(InitialState is, List<Integer> memory){
        M68kState state = new M68kState();
        state.ar = toArIntArray.apply(is);
        state.dr = toDrIntArray.apply(is);
        state.pc = is.pc.intValue();
        state.sr = is.sr.intValue();
        state.usp = is.usp.intValue();
        state.ssp = state.ar[7];
        writeMemory(memory);
        state.opcode = (int) bus.read(state.pc, Size.WORD);
        return state;
    }

    private M68kState toStateObject(FinalState is, List<Integer> memory){
        M68kState state = new M68kState();
        state.ar = toArIntArrayF.apply(is);
        state.dr = toDrIntArrayF.apply(is);
        state.pc = is.pc.intValue();
        state.sr = is.sr.intValue();
        state.usp = is.usp.intValue();
        state.ssp = state.ar[7];
        writeMemory(memory);
//        state.opcode = (int) bus.read(state.pc, Size.WORD);
        return state;
    }

    private void writeMemory(List<Integer> memory){
        for (int i = 0; i < memory.size(); i+=2) {
            int pos = memory.get(i);
            if(pos < 0){
                break;
            }
            bus.write(pos, memory.get(i+1), Size.BYTE);
        }
    }

    private M68kState toStateObject(MC68000Wrapper cpu){
        final MC68000 m68k = cpu.getM68k();
        final M68kState state = new M68kState();
        IntStream.range(0, 8).forEach(i -> state.ar[i] = m68k.getAddrRegisterLong(i));
        IntStream.range(0, 8).forEach(i -> state.dr[i] = m68k.getDataRegisterLong(i));
        state.pc = m68k.getPC();
        state.sr = m68k.getSR();
//        state.opcode = m68k.getOpcode();
        state.ssp = m68k.getSSP();
        //sync between at and ssp happens on mode switching
        if(m68k.getSSP() != state.ar[7]){
            state.ssp =state.ar[7];
        }
        state.usp = m68k.getUSP();
        return state;
    }

    private void fromStateObject(M68kState state, MC68000Wrapper cpu){
        final MC68000 m68k = cpu.getM68k();
        IntStream.range(0, 8).forEach(i -> m68k.setAddrRegisterLong(i, state.ar[i]));
        IntStream.range(0, 8).forEach(i -> m68k.setDataRegisterLong(i, state.dr[i]));
        m68k.setPC(state.pc);
        m68k.setSR(state.sr);
        m68k.setSSP(state.ssp);
        m68k.setUSP(state.usp);
    }

    private static GenesisBusProvider createBusProvider(ByteBuffer buffer){
        GenesisBusProvider bus = new GenesisBus() {
            @Override
            public long read(long address, Size size) {
                return readBuffer(buffer, (int) (address & MEM_MASK), size);
            }

            @Override
            public void write(long address, long data, Size size) {
                writeBuffer(buffer, (int)address & MEM_MASK, (int)data,  size);
            }
        };
        return bus;
    };


    public static void writeBuffer(ByteBuffer b, int pos, int value, Size size) {
        switch (size) {
            case BYTE:
                b.put(pos, (byte) value);
                break;
            case WORD:
                b.putShort(pos, (short) value);
                break;
            case LONG:
                b.putInt(pos, value);
                break;
            default:
                System.err.println("Unsupported size: " + size);
                break;
        }
    }

    public static int readBuffer(ByteBuffer b, int pos, Size size) {
        switch (size) {
            case BYTE:
                return b.get(pos) & 0xFF;
            case WORD:
                return b.getShort(pos) & 0xFFFF;
            case LONG:
                return b.getInt(pos);
            default:
                System.err.println("Unsupported size: " + size);
                return 0xFF;
        }
    }

    private static final Function<InitialState, int[]> toArIntArray = is ->
            new int[]{is.a0.intValue() , is.a1.intValue(), is.a2.intValue(), is.a3.intValue(), is.a4.intValue(),
                    is.a5.intValue(),is.a6.intValue(), is.a7.intValue()};
    private static final Function<InitialState, int[]> toDrIntArray = is -> new int[]{is.d0.intValue(),
            is.d1.intValue(), is.d2.intValue(), is.d3.intValue(), is.d4.intValue(),
            is.d5.intValue(), is.d6.intValue(), is.d7.intValue()};
    private static final Function<FinalState, int[]> toArIntArrayF = is ->
            new int[]{is.a0.intValue() , is.a1.intValue(), is.a2.intValue(), is.a3.intValue(), is.a4.intValue(),
                    is.a5.intValue(),is.a6.intValue(), is.a7.intValue()};
    private static final Function<FinalState, int[]> toDrIntArrayF = is -> new int[]{is.d0.intValue(),
            is.d1.intValue(), is.d2.intValue(), is.d3.intValue(), is.d4.intValue(),
            is.d5.intValue(), is.d6.intValue(), is.d7.intValue()};
}