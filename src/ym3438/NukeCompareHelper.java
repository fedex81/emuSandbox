package ym3438;

import org.bridj.Pointer;
import uk.co.omgdrv.simplevgm.fm.nukeykt.IYm3438;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.stream.IntStream;

/**
 * ${FILE}
 * <p>
 * Federico Berti
 * <p>
 * Copyright 2019
 */
public class NukeCompareHelper implements INukeCompare {

    private ym3438_t ref;
    private IYm3438.IYm3438_Type chip;

    private Field[] fields;

    private Map<String, Method> methodMap = new HashMap<>();

    public static final INukeCompare NO_OP = () -> {};

    public NukeCompareHelper(IYm3438.IYm3438_Type chip1, ym3438_t chip2){
        this.ref = chip2;
        this.chip = chip1;
        init();
    }

    public void init(){
        fields = chip.getClass().getDeclaredFields();
        for (Field field: fields) {
            field.setAccessible(true);
        }
        Arrays.stream(fields).forEach(f -> {
            try {
                methodMap.put(f.getName(), ref.getClass().getDeclaredMethod(f.getName()));
            } catch (Exception e){
                e.printStackTrace();
            }
        });

    }

    public void compareState(){
        try {
            for (Field field: fields) {
                Object value1 = field.get(chip);
                Object value2 = methodMap.get(field.getName()).invoke(ref, null);
                if(!compareValues(value2, value1)){
                    System.out.println(field.getName() + ", ref: " + Objects.toString(value2) +
                            ", impl: " + Objects.toString(value1));
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    private boolean compareValues(Object ref, Object chip){
        boolean match = false;
        if(ref instanceof Integer && chip instanceof Integer){
            int v1 = (int) ref;
            int v2 = (int) chip;
            match = v1 == v2;
        } else if(ref instanceof Short && chip instanceof Integer){
            int v1 = (short) ref;
            int v2 = (int) chip;
            match = v1 == v2;
        } else if(ref instanceof Byte && chip instanceof Integer){
            int v1 = ((byte) ref) & 0xFF;
            int v2 = (int) chip;
            match = v1 == v2;
        } else if(ref instanceof Byte && chip instanceof Boolean){
            boolean v1 = ((byte)ref) != 0;
            boolean v2 = (boolean) chip;
            match = v1 == v2;
        } else if(chip instanceof int[] && ref instanceof Pointer<?>){
            match = handleArrays(ref, chip);
        } else if(chip instanceof boolean[] && ref instanceof Pointer<?>) {
            match = handleArrays(ref, chip);
        } else if(chip instanceof int[][]){
            match = handleMatrix(ref, chip);
        }
        return match;
    }

    private boolean handleArrays(Object ref, Object chip){
        boolean match = false;
        if(chip instanceof int[]){
            int[] v1 = (int[]) chip;
            Pointer<?> pv2 = (Pointer<?>) ref;
            Object ov2 = pv2.getArray(v1.length);
            if(ov2 instanceof int[]){
                int[] v2 = (int[]) ov2;
                match = Arrays.equals(v2, v1);
            } else if(ov2 instanceof byte[]){
                byte[] bv2 = (byte[]) ov2;
                int[] v2 = IntStream.range(0, bv2.length).map(i -> bv2[i] & 0xFF).toArray();
                match = Arrays.equals(v2, v1);
            } else if(ov2 instanceof short[]){
                short[] bv2 = (short[]) ov2;
                int[] v2 = IntStream.range(0, bv2.length).map(i -> bv2[i]).toArray();
                match = Arrays.equals(v2, v1);
            }
        } else if(chip instanceof boolean[]){
            boolean[] v1 = (boolean[]) chip;
            Pointer<?> pv2 = (Pointer<?>) ref;
            Object ov2 = pv2.getArray(v1.length);
            if(ov2 instanceof byte[]) {
                byte[] bv2 = (byte[]) ov2;
                boolean[] v2 = new boolean[bv2.length];
                for (int i = 0; i < bv2.length; i++) {
                    v2[i] = bv2[i] != 0;
                }
                match = Arrays.equals(v2, v1);
            }
        }
        return match;
    }

    private boolean handleMatrix(Object ref, Object chip){
        boolean match = false;
        if(chip instanceof int[][]){
            int[][] v1m = (int[][]) chip;
            int[] v1 = Arrays.stream(v1m).flatMapToInt(Arrays::stream).toArray();
            Pointer<?> pv2 = (Pointer<?>) ref;
            Object ov2 = pv2.getArray(v1.length);
            if(ov2 instanceof short[]) {
                short[] bv2 = (short[]) ov2;
                int[] v2 = IntStream.range(0, bv2.length).map(i -> bv2[i]).toArray();
                match = Arrays.equals(v2, v1);
            }
        }
        return match;
    }
}
