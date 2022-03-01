package m68k;

import m68k.jna.m68kcpu.M68kcpuLibrary;
import m68k.jna.m68kcpu.m68ki_cpu_core;
import omegadrive.Device;
import omegadrive.bus.model.BaseBusProvider;
import omegadrive.memory.MemoryProvider;
import omegadrive.util.Size;
import omegadrive.util.Util;

import java.util.Optional;
import java.util.Set;

import static m68k.jna.m68kcpu.M68kcpuLibrary.*;
import static m68k.jna.m68kcpu.M68kcpuLibrary.CFLAG_SET;
import static m68k.jna.m68kcpu.M68kcpuLibrary.m68k_register_t.*;
import static m68k.jna.m68kcpu.M68kcpuLibrary.m68k_register_t.M68K_REG_A7;

/**
 * Federico Berti
 * <p>
 * Copyright 2020
 */
public class MusHelper {

    public static BaseBusProvider createSimpleBusProvider(MemoryProvider memoryProvider, int RAM_START){
        return new BaseBusProvider() {
            @Override
            public long read(long addressL, Size size) {
                int address = (int) (addressL & 0xFF_FFFF);
                long res = -1;
                if(address >= RAM_START){ //0xE0_0000){
                    res = Util.readDataMask(memoryProvider.getRamData(), size, address & 0xFFFF, 0xFFFF);
                } else {
                    res = Util.readDataMask(memoryProvider.getRomData(), size, address, memoryProvider.getRomMask());
                }
                System.out.println(String.format("Data read: addr %x, %x %s", address, res, size));
                return res;
            }

            @Override
            public void write(long addressL, long data, Size size) {
                int address = (int) (addressL & 0xFF_FFFF);
                if(address >= RAM_START){
                    Util.writeDataMask(memoryProvider.getRamData(), size, address, data, 0xFFFF);
                    System.out.println(String.format("RAM write: addr %x, %x %s", address, data, size));
                } else {
                    System.err.println("Unexpected write: " + address + ", data: " + data + " " + size);
                }
            }

            @Override
            public void writeIoPort(int port, int value) {
                System.err.println("Unexpected writeIoPort: " + port + ", data: " + value);
            }

            @Override
            public int readIoPort(int port) {
                System.err.println("Unexpected readIoPort: " + port);
                return 0xFF;
            }

            @Override
            public BaseBusProvider attachDevice(Device device) {
                return null;
            }

            @Override
            public <T extends Device> Optional<T> getBusDeviceIfAny(Class<T> clazz) {
                return Optional.empty();
            }

            @Override
            public <T extends Device> Set<T> getAllDevices(Class<T> clazz) {
                return null;
            }
        };
    }
}
