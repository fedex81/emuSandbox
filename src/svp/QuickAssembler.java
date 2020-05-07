package svp;

import com.google.common.io.Files;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class QuickAssembler {

    static String binFile = "test_loads.bin";
    static String file = "./docs/test_loads.sc";
    static int codeLine = 0;
    static List<String> sourceCode = new ArrayList<>();
    static List<Long> binaryCode = new ArrayList<>();

    static int BYTE_ENTRY_POINT = 0x800;
    static int WORD_ENTRY_POINT = BYTE_ENTRY_POINT >> 1;
    static int size = BYTE_ENTRY_POINT * 2;
    static ByteBuffer buffer = ByteBuffer.allocate(size);

    public static void main(String[] args) throws IOException {
        List<String> lines = Files.readLines(Paths.get(file).toFile(), Charset.defaultCharset());
        buffer.position(BYTE_ENTRY_POINT);
        lines.forEach(QuickAssembler::processLine);
        writeToFile();
    }

    private static void writeToFile() throws IOException {
        Files.write(buffer.array(), Paths.get(".", binFile).toFile());
    }

    private static Function<String, String> getRegNumber = s -> {
        s = s.toLowerCase();
        s = "x".equals(s) ? "1" : s;
        s = "y".equals(s) ? "2" : s;
        s = "st".equalsIgnoreCase(s) ? "4" : s;
        s = "stack".equalsIgnoreCase(s) ? "5" : s;
        if(s.startsWith("ext")){
            s = String.valueOf(Integer.parseInt(s.replace("ext", "")) + 8);
        }
        if(s.startsWith("pm")){
            s = String.valueOf(Integer.parseInt(s.replace("pm", "")) + 8);
        }
        return s;
    };


    private static void processLine(String line) {
        line = line.trim();
        if(line.startsWith("#") || line.isEmpty()){
            return;
        }
        int commentIdx = line.indexOf("#");
        if(commentIdx > 0){
            line = line.substring(0, commentIdx).trim();
        }
        String src = Integer.toHexString(codeLine) + "\t" +  line;
        sourceCode.add(src);
        int idx = line.indexOf(":");
        if(idx > 0){
            line = line.substring(idx + 1, line.length()).trim();
        }
//        System.out.println(Integer.toHexString(codeLine) + "\t" + line);
        codeLine++;

        String[] tok = line.split(" ");
        String inst = tok[0].trim();
        String opStr, op1 = null, op2= null;
        String[] opTok;
        long val = -1;
        int sizeBytes = 4;
        try {
            switch (inst) {
                //e0xy       eor    r_3, r_y
                case "eor":
                    opStr = line.replace(tok[0], "").trim();
                    opTok = opStr.split(",");
                    op1 = getRegNumber.apply(opTok[0].trim());
                    op2 = getRegNumber.apply(opTok[1].trim());
                    val = (0xE0 << 8) | (Integer.parseInt(op1, 16) << 4) | (Integer.parseInt(op2, 16));
                    break;
                case "ldi":
//                08xy nnnn  ldi     r_x, nnnn
                    opStr = line.replace(tok[0], "").trim();
                    opTok = opStr.split(",");
                    op1 = getRegNumber.apply(opTok[0].trim());
                    op2 = opTok[1].trim();
                    val = (0x08 << 24) | (Integer.parseInt(op1, 16) << 20) | (Integer.parseInt(op2, 16));
                    sizeBytes = 8;
                    break;
                case "unknown":
                default:
//                System.out.println("Unknown instruction: " + line);
            }
        }catch (Exception e){
            System.out.println("Unable to process line: " + src);
        }
        if(val >= 0){
            System.out.println(codeLine + "\t" + inst + "," + op1 + "," + op2 + "=>" + Long.toHexString(val));
            binaryCode.add(val);
            switch (sizeBytes){
                case 4:
                    buffer.putShort((short) val);
                    break;
                case 8:
                    buffer.putInt((int) val);
                    break;
            }
        }
    }
}
