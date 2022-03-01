package m68k;

import m68k.jna.m68kcpu.M68kcpuLibrary;
import m68k.jna.m68kcpu.m68ki_cpu_core;
import omegadrive.bus.model.BaseBusProvider;
import omegadrive.util.Size;
import org.bridj.Pointer;


import java.util.function.Function;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class MusashiProvider implements M68kProvider {

    static M68kcpuLibrary library;
    static {
        try {
            library = new M68kcpuLibrary();
        } catch (Exception|Error e){
            e.printStackTrace();
        }
    }

    private BaseBusProvider busProvider;

    public MusashiProvider(BaseBusProvider busProvider) {
        this.busProvider = busProvider;
        addReadWriteHandlers(busProvider);
        M68kcpuLibrary.m68k_set_cpu_type(M68kcpuLibrary.M68K_CPU_TYPE_68000);
        M68kcpuLibrary.m68k_init();
    }

    private static void addReadWriteHandlers(BaseBusProvider busProvider){
        Function<Integer, Size> sizeFn = sz -> sz == 8 ? Size.BYTE : ( sz == 16 ? Size.WORD : Size.LONG);
        M68kcpuLibrary.M68K_BUS_READ read = new M68kcpuLibrary.M68K_BUS_READ() {
            @Override
            public int apply(int address, int bits) {
                return (int) busProvider.read(address, sizeFn.apply(bits));
            }
        };
        M68kcpuLibrary.M68K_BUS_WRITE write = new M68kcpuLibrary.M68K_BUS_WRITE() {
            @Override
            public void apply(int address, int value, int bits) {
                busProvider.write(address, value, sizeFn.apply(bits));
            }
        };
        Pointer<M68kcpuLibrary.M68K_BUS_READ> readPointer = Pointer.getPointer(read);
        Pointer<M68kcpuLibrary.M68K_BUS_WRITE> writePointer = Pointer.getPointer(write);

        library.m68k_set_bus_read_callback(readPointer);
        library.m68k_set_bus_write_callback(writePointer);
    }

    @Override
    public void reset() {
        M68kcpuLibrary.m68k_pulse_reset();
        //supervisor mode, interrupts enabled
//        library.m68ki_cpu().sr_mask(0x2700);
    }

    @Override
    public long getPC() {
        return library.m68ki_cpu().pc();
    }

    @Override
    public boolean isStopped() {
        return library.m68ki_cpu().stopped() > 0;
    }

    @Override
    public boolean raiseInterrupt(int level) {
        int l1 = library.m68ki_cpu().int_level();
        if(level < l1) {
            library.m68ki_cpu().int_level(level);
        }
        return level > l1;
    }

    @Override
    public int runInstruction() {
        return M68kcpuLibrary.m68k_execute(1);
    }

    @Override
    public void addCyclePenalty(int value) {
        //TODO
    }

    public BaseBusProvider getBusProvider() {
        return busProvider;
    }

    public m68ki_cpu_core getCpu(){
        return library.m68ki_cpu();
    }
}
