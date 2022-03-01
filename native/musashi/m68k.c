/* ======================================================================== */
/* ====================== FUNCTIONS CALLED BY THE CPU ===================== */
/* ======================================================================== */

/* You will have to implement these functions */

/* read/write functions called by the CPU to access memory.
 * while values used are 32 bits, only the appropriate number
 * of bits are relevant (i.e. in write_memory_8, only the lower 8 bits
 * of value should be written to memory).
 *
 * NOTE: I have separated the immediate and PC-relative memory fetches
 *       from the other memory fetches because some systems require
 *       differentiation between PROGRAM and DATA fetches (usually
 *       for security setups such as encryption).
 *       This separation can either be achieved by setting
 *       M68K_SEPARATE_READS in m68kconf.h and defining
 *       the read functions, or by setting M68K_EMULATE_FC and
 *       making a function code callback function.
 *       Using the callback offers better emulation coverage
 *       because you can also monitor whether the CPU is in SYSTEM or
 *       USER mode, but it is also slower.
 */

#include "m68k.h"

M68K_BUS_WRITE writeFn;
M68K_BUS_READ readFn;

 static int default_m68k_set_bus_read_callback(unsigned int address, int bits)
  {
  	printf("Bus read %x, bits %d", address, bits);
  	return 0xFF;
  }

 static void default_m68k_set_bus_write_callback(unsigned int address, unsigned int value, int bits)
   {
   	printf("Bus write addr: %x, data: %x, bits %d", address, value, bits);
   }

void init()
{
    writeFn = default_m68k_set_bus_write_callback;
    readFn = default_m68k_set_bus_read_callback;
 }

void m68k_set_bus_read_callback(M68K_BUS_READ rf)
{
      readFn = rf;
}

void m68k_set_bus_write_callback(M68K_BUS_WRITE wf)
{
    writeFn = wf;
}


 /* Write to anywhere */
 void m68k_write_memory_8(unsigned int address, unsigned int value)
 {
     (* writeFn)(address, value, 8);
 }
 void m68k_write_memory_16(unsigned int address, unsigned int value)
 {
     (* writeFn)(address, value, 16);
 }
 void m68k_write_memory_32(unsigned int address, unsigned int value)
 {
     (* writeFn)(address, value, 32);
 }

/* Read from anywhere */
unsigned int  m68k_read_memory_8(unsigned int address){
    return (* readFn)(address, 8);
}
unsigned int  m68k_read_memory_16(unsigned int address){
    return (* readFn)(address, 16);
}
unsigned int  m68k_read_memory_32(unsigned int address){
    return (* readFn)(address & 0xFFFFFF, 32);
}

unsigned int m68k_read_disassembler_8  (unsigned int address){
    return (* readFn)(address, 8);
}
unsigned int m68k_read_disassembler_16 (unsigned int address){
    return (* readFn)(address, 16);
}
unsigned int m68k_read_disassembler_32 (unsigned int address){
    return (* readFn)(address, 32);
}

/* Special call to simulate undocumented 68k behavior when move.l with a
 * predecrement destination mode is executed.
 * To simulate real 68k behavior, first write the high word to
 * [address+2], and then write the low word to [address].
 *
 * Enable this functionality with M68K_SIMULATE_PD_WRITES in m68kconf.h.
 */
void m68k_write_memory_32_pd(unsigned int address, unsigned int value){
    printf("m68k_write_memory_32_pd: addr %x, value %x", address, value);
    m68k_write_memory_16(address + 2, value >> 16);
    m68k_write_memory_16(address, value & 0xFFFF);
}



///* ======================================================================== */
///* ============================== CALLBACKS =============================== */
///* ======================================================================== */
//
///* These functions allow you to set callbacks to the host when specific events
// * occur.  Note that you must enable the corresponding value in m68kconf.h
// * in order for these to do anything useful.
// * Note: I have defined default callbacks which are used if you have enabled
// * the corresponding #define in m68kconf.h but either haven't assigned a
// * callback or have assigned a callback of NULL.
// */
//
///* Set the callback for an interrupt acknowledge.
// * You must enable M68K_EMULATE_INT_ACK in m68kconf.h.
// * The CPU will call the callback with the interrupt level being acknowledged.
// * The host program must return either a vector from 0x02-0xff, or one of the
// * special interrupt acknowledge values specified earlier in this header.
// * If this is not implemented, the CPU will always assume an autovectored
// * interrupt, and will automatically clear the interrupt request when it
// * services the interrupt.
// * Default behavior: return M68K_INT_ACK_AUTOVECTOR.
// */
//void m68k_set_int_ack_callback(int  (*callback)(int int_level));
//
//
///* Set the callback for a breakpoint acknowledge (68010+).
// * You must enable M68K_EMULATE_BKPT_ACK in m68kconf.h.
// * The CPU will call the callback with whatever was in the data field of the
// * BKPT instruction for 68020+, or 0 for 68010.
// * Default behavior: do nothing.
// */
//void m68k_set_bkpt_ack_callback(void (*callback)(unsigned int data));
//
//
///* Set the callback for the RESET instruction.
// * You must enable M68K_EMULATE_RESET in m68kconf.h.
// * The CPU calls this callback every time it encounters a RESET instruction.
// * Default behavior: do nothing.
// */
//void m68k_set_reset_instr_callback(void  (*callback)(void));
//
//
///* Set the callback for informing of a large PC change.
// * You must enable M68K_MONITOR_PC in m68kconf.h.
// * The CPU calls this callback with the new PC value every time the PC changes
// * by a large value (currently set for changes by longwords).
// * Default behavior: do nothing.
// */
//void m68k_set_pc_changed_callback(void  (*callback)(unsigned int new_pc));
//
///* Set the callback for the TAS instruction.
// * You must enable M68K_TAS_HAS_CALLBACK in m68kconf.h.
// * The CPU calls this callback every time it encounters a TAS instruction.
// * Default behavior: return 1, allow writeback.
// */
//void m68k_set_tas_instr_callback(int  (*callback)(void));
//
///* Set the callback for illegal instructions.
// * You must enable M68K_ILLG_HAS_CALLBACK in m68kconf.h.
// * The CPU calls this callback every time it encounters an illegal instruction
// * which must return 1 if it handles the instruction normally or 0 if it's really an illegal instruction.
// * Default behavior: return 0, exception will occur.
// */
//void m68k_set_illg_instr_callback(int  (*callback)(int));
//
///* Set the callback for CPU function code changes.
// * You must enable M68K_EMULATE_FC in m68kconf.h.
// * The CPU calls this callback with the function code before every memory
// * access to set the CPU's function code according to what kind of memory
// * access it is (supervisor/user, program/data and such).
// * Default behavior: do nothing.
// */
//void m68k_set_fc_callback(void  (*callback)(unsigned int new_fc));
//
//
///* Set a callback for the instruction cycle of the CPU.
// * You must enable M68K_INSTRUCTION_HOOK in m68kconf.h.
// * The CPU calls this callback just before fetching the opcode in the
// * instruction cycle.
// * Default behavior: do nothing.
// */
//void m68k_set_instr_hook_callback(void  (*callback)(unsigned int pc));
