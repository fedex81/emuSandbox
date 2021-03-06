package fm.ym2612.compare;
import org.bridj.BridJ;
import org.bridj.Pointer;
import org.bridj.StructObject;
import org.bridj.ann.Array;
import org.bridj.ann.Field;
import org.bridj.ann.Library;

/**
 * <i>native declaration : ym3438.h</i><br>
 * This file was autogenerated by <a href="http://jnaerator.googlecode.com/">JNAerator</a>,<br>
 * a tool written by <a href="http://ochafik.com/">Olivier Chafik</a> that <a href="http://code.google.com/p/jnaerator/wiki/CreditsAndLicense">uses a few opensource projects.</a>.<br>
 * For help, please visit <a href="http://nativelibs4java.googlecode.com/">NativeLibs4Java</a> or <a href="http://bridj.googlecode.com/">BridJ</a> .
 */
@Library("ym3438") 
public class ym3438_t extends StructObject {
	static {
		BridJ.register();
	}
	/** C type : Bit32u */
	@Field(0) 
	public int cycles() {
		return this.io.getIntField(this, 0);
	}
	/** C type : Bit32u */
	@Field(0) 
	public ym3438_t cycles(int cycles) {
		this.io.setIntField(this, 0, cycles);
		return this;
	}
	/** C type : Bit32u */
	@Field(1) 
	public int channel() {
		return this.io.getIntField(this, 1);
	}
	/** C type : Bit32u */
	@Field(1) 
	public ym3438_t channel(int channel) {
		this.io.setIntField(this, 1, channel);
		return this;
	}
	/** C type : Bit16s */
	@Field(2) 
	public short mol() {
		return this.io.getShortField(this, 2);
	}
	/** C type : Bit16s */
	@Field(2) 
	public ym3438_t mol(short mol) {
		this.io.setShortField(this, 2, mol);
		return this;
	}
	/** C type : Bit16s */
	@Field(3) 
	public short mor() {
		return this.io.getShortField(this, 3);
	}
	/** C type : Bit16s */
	@Field(3) 
	public ym3438_t mor(short mor) {
		this.io.setShortField(this, 3, mor);
		return this;
	}
	/** C type : Bit16u */
	@Field(4) 
	public short write_data() {
		return this.io.getShortField(this, 4);
	}
	/** C type : Bit16u */
	@Field(4) 
	public ym3438_t write_data(short write_data) {
		this.io.setShortField(this, 4, write_data);
		return this;
	}
	/** C type : Bit8u */
	@Field(5) 
	public byte write_a() {
		return this.io.getByteField(this, 5);
	}
	/** C type : Bit8u */
	@Field(5) 
	public ym3438_t write_a(byte write_a) {
		this.io.setByteField(this, 5, write_a);
		return this;
	}
	/** C type : Bit8u */
	@Field(6) 
	public byte write_d() {
		return this.io.getByteField(this, 6);
	}
	/** C type : Bit8u */
	@Field(6) 
	public ym3438_t write_d(byte write_d) {
		this.io.setByteField(this, 6, write_d);
		return this;
	}
	/** C type : Bit8u */
	@Field(7) 
	public byte write_a_en() {
		return this.io.getByteField(this, 7);
	}
	/** C type : Bit8u */
	@Field(7) 
	public ym3438_t write_a_en(byte write_a_en) {
		this.io.setByteField(this, 7, write_a_en);
		return this;
	}
	/** C type : Bit8u */
	@Field(8) 
	public byte write_d_en() {
		return this.io.getByteField(this, 8);
	}
	/** C type : Bit8u */
	@Field(8) 
	public ym3438_t write_d_en(byte write_d_en) {
		this.io.setByteField(this, 8, write_d_en);
		return this;
	}
	/** C type : Bit8u */
	@Field(9) 
	public byte write_busy() {
		return this.io.getByteField(this, 9);
	}
	/** C type : Bit8u */
	@Field(9) 
	public ym3438_t write_busy(byte write_busy) {
		this.io.setByteField(this, 9, write_busy);
		return this;
	}
	/** C type : Bit8u */
	@Field(10) 
	public byte write_busy_cnt() {
		return this.io.getByteField(this, 10);
	}
	/** C type : Bit8u */
	@Field(10) 
	public ym3438_t write_busy_cnt(byte write_busy_cnt) {
		this.io.setByteField(this, 10, write_busy_cnt);
		return this;
	}
	/** C type : Bit8u */
	@Field(11) 
	public byte write_fm_address() {
		return this.io.getByteField(this, 11);
	}
	/** C type : Bit8u */
	@Field(11) 
	public ym3438_t write_fm_address(byte write_fm_address) {
		this.io.setByteField(this, 11, write_fm_address);
		return this;
	}
	/** C type : Bit8u */
	@Field(12) 
	public byte write_fm_data() {
		return this.io.getByteField(this, 12);
	}
	/** C type : Bit8u */
	@Field(12) 
	public ym3438_t write_fm_data(byte write_fm_data) {
		this.io.setByteField(this, 12, write_fm_data);
		return this;
	}
	/** C type : Bit8u */
	@Field(13) 
	public byte write_fm_mode_a() {
		return this.io.getByteField(this, 13);
	}
	/** C type : Bit8u */
	@Field(13) 
	public ym3438_t write_fm_mode_a(byte write_fm_mode_a) {
		this.io.setByteField(this, 13, write_fm_mode_a);
		return this;
	}
	/** C type : Bit16u */
	@Field(14) 
	public short address() {
		return this.io.getShortField(this, 14);
	}
	/** C type : Bit16u */
	@Field(14) 
	public ym3438_t address(short address) {
		this.io.setShortField(this, 14, address);
		return this;
	}
	/** C type : Bit8u */
	@Field(15) 
	public byte data() {
		return this.io.getByteField(this, 15);
	}
	/** C type : Bit8u */
	@Field(15) 
	public ym3438_t data(byte data) {
		this.io.setByteField(this, 15, data);
		return this;
	}
	/** C type : Bit8u */
	@Field(16) 
	public byte pin_test_in() {
		return this.io.getByteField(this, 16);
	}
	/** C type : Bit8u */
	@Field(16) 
	public ym3438_t pin_test_in(byte pin_test_in) {
		this.io.setByteField(this, 16, pin_test_in);
		return this;
	}
	/** C type : Bit8u */
	@Field(17) 
	public byte pin_irq() {
		return this.io.getByteField(this, 17);
	}
	/** C type : Bit8u */
	@Field(17) 
	public ym3438_t pin_irq(byte pin_irq) {
		this.io.setByteField(this, 17, pin_irq);
		return this;
	}
	/** C type : Bit8u */
	@Field(18) 
	public byte busy() {
		return this.io.getByteField(this, 18);
	}
	/** C type : Bit8u */
	@Field(18) 
	public ym3438_t busy(byte busy) {
		this.io.setByteField(this, 18, busy);
		return this;
	}
	/** C type : Bit8u */
	@Field(19) 
	public byte lfo_en() {
		return this.io.getByteField(this, 19);
	}
	/** C type : Bit8u */
	@Field(19) 
	public ym3438_t lfo_en(byte lfo_en) {
		this.io.setByteField(this, 19, lfo_en);
		return this;
	}
	/** C type : Bit8u */
	@Field(20) 
	public byte lfo_freq() {
		return this.io.getByteField(this, 20);
	}
	/** C type : Bit8u */
	@Field(20) 
	public ym3438_t lfo_freq(byte lfo_freq) {
		this.io.setByteField(this, 20, lfo_freq);
		return this;
	}
	/** C type : Bit8u */
	@Field(21) 
	public byte lfo_pm() {
		return this.io.getByteField(this, 21);
	}
	/** C type : Bit8u */
	@Field(21) 
	public ym3438_t lfo_pm(byte lfo_pm) {
		this.io.setByteField(this, 21, lfo_pm);
		return this;
	}
	/** C type : Bit8u */
	@Field(22) 
	public byte lfo_am() {
		return this.io.getByteField(this, 22);
	}
	/** C type : Bit8u */
	@Field(22) 
	public ym3438_t lfo_am(byte lfo_am) {
		this.io.setByteField(this, 22, lfo_am);
		return this;
	}
	/** C type : Bit8u */
	@Field(23) 
	public byte lfo_cnt() {
		return this.io.getByteField(this, 23);
	}
	/** C type : Bit8u */
	@Field(23) 
	public ym3438_t lfo_cnt(byte lfo_cnt) {
		this.io.setByteField(this, 23, lfo_cnt);
		return this;
	}
	/** C type : Bit8u */
	@Field(24) 
	public byte lfo_inc() {
		return this.io.getByteField(this, 24);
	}
	/** C type : Bit8u */
	@Field(24) 
	public ym3438_t lfo_inc(byte lfo_inc) {
		this.io.setByteField(this, 24, lfo_inc);
		return this;
	}
	/** C type : Bit8u */
	@Field(25) 
	public byte lfo_quotient() {
		return this.io.getByteField(this, 25);
	}
	/** C type : Bit8u */
	@Field(25) 
	public ym3438_t lfo_quotient(byte lfo_quotient) {
		this.io.setByteField(this, 25, lfo_quotient);
		return this;
	}
	/** C type : Bit16u */
	@Field(26) 
	public short pg_fnum() {
		return this.io.getShortField(this, 26);
	}
	/** C type : Bit16u */
	@Field(26) 
	public ym3438_t pg_fnum(short pg_fnum) {
		this.io.setShortField(this, 26, pg_fnum);
		return this;
	}
	/** C type : Bit8u */
	@Field(27) 
	public byte pg_block() {
		return this.io.getByteField(this, 27);
	}
	/** C type : Bit8u */
	@Field(27) 
	public ym3438_t pg_block(byte pg_block) {
		this.io.setByteField(this, 27, pg_block);
		return this;
	}
	/** C type : Bit8u */
	@Field(28) 
	public byte pg_kcode() {
		return this.io.getByteField(this, 28);
	}
	/** C type : Bit8u */
	@Field(28) 
	public ym3438_t pg_kcode(byte pg_kcode) {
		this.io.setByteField(this, 28, pg_kcode);
		return this;
	}
	/** C type : Bit32u[24] */
	@Array({24}) 
	@Field(29) 
	public Pointer<Integer > pg_inc() {
		return this.io.getPointerField(this, 29);
	}
	/** C type : Bit32u[24] */
	@Array({24}) 
	@Field(30) 
	public Pointer<Integer > pg_phase() {
		return this.io.getPointerField(this, 30);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(31) 
	public Pointer<Byte > pg_reset() {
		return this.io.getPointerField(this, 31);
	}
	/** C type : Bit32u */
	@Field(32) 
	public int pg_read() {
		return this.io.getIntField(this, 32);
	}
	/** C type : Bit32u */
	@Field(32) 
	public ym3438_t pg_read(int pg_read) {
		this.io.setIntField(this, 32, pg_read);
		return this;
	}
	/** C type : Bit8u */
	@Field(33) 
	public byte eg_cycle() {
		return this.io.getByteField(this, 33);
	}
	/** C type : Bit8u */
	@Field(33) 
	public ym3438_t eg_cycle(byte eg_cycle) {
		this.io.setByteField(this, 33, eg_cycle);
		return this;
	}
	/** C type : Bit8u */
	@Field(34) 
	public byte eg_cycle_stop() {
		return this.io.getByteField(this, 34);
	}
	/** C type : Bit8u */
	@Field(34) 
	public ym3438_t eg_cycle_stop(byte eg_cycle_stop) {
		this.io.setByteField(this, 34, eg_cycle_stop);
		return this;
	}
	/** C type : Bit8u */
	@Field(35) 
	public byte eg_shift() {
		return this.io.getByteField(this, 35);
	}
	/** C type : Bit8u */
	@Field(35) 
	public ym3438_t eg_shift(byte eg_shift) {
		this.io.setByteField(this, 35, eg_shift);
		return this;
	}
	/** C type : Bit8u */
	@Field(36) 
	public byte eg_shift_lock() {
		return this.io.getByteField(this, 36);
	}
	/** C type : Bit8u */
	@Field(36) 
	public ym3438_t eg_shift_lock(byte eg_shift_lock) {
		this.io.setByteField(this, 36, eg_shift_lock);
		return this;
	}
	/** C type : Bit8u */
	@Field(37) 
	public byte eg_timer_low_lock() {
		return this.io.getByteField(this, 37);
	}
	/** C type : Bit8u */
	@Field(37) 
	public ym3438_t eg_timer_low_lock(byte eg_timer_low_lock) {
		this.io.setByteField(this, 37, eg_timer_low_lock);
		return this;
	}
	/** C type : Bit16u */
	@Field(38) 
	public short eg_timer() {
		return this.io.getShortField(this, 38);
	}
	/** C type : Bit16u */
	@Field(38) 
	public ym3438_t eg_timer(short eg_timer) {
		this.io.setShortField(this, 38, eg_timer);
		return this;
	}
	/** C type : Bit8u */
	@Field(39) 
	public byte eg_timer_inc() {
		return this.io.getByteField(this, 39);
	}
	/** C type : Bit8u */
	@Field(39) 
	public ym3438_t eg_timer_inc(byte eg_timer_inc) {
		this.io.setByteField(this, 39, eg_timer_inc);
		return this;
	}
	/** C type : Bit16u */
	@Field(40) 
	public short eg_quotient() {
		return this.io.getShortField(this, 40);
	}
	/** C type : Bit16u */
	@Field(40) 
	public ym3438_t eg_quotient(short eg_quotient) {
		this.io.setShortField(this, 40, eg_quotient);
		return this;
	}
	/** C type : Bit8u */
	@Field(41) 
	public byte eg_custom_timer() {
		return this.io.getByteField(this, 41);
	}
	/** C type : Bit8u */
	@Field(41) 
	public ym3438_t eg_custom_timer(byte eg_custom_timer) {
		this.io.setByteField(this, 41, eg_custom_timer);
		return this;
	}
	/** C type : Bit8u */
	@Field(42) 
	public byte eg_rate() {
		return this.io.getByteField(this, 42);
	}
	/** C type : Bit8u */
	@Field(42) 
	public ym3438_t eg_rate(byte eg_rate) {
		this.io.setByteField(this, 42, eg_rate);
		return this;
	}
	/** C type : Bit8u */
	@Field(43) 
	public byte eg_ksv() {
		return this.io.getByteField(this, 43);
	}
	/** C type : Bit8u */
	@Field(43) 
	public ym3438_t eg_ksv(byte eg_ksv) {
		this.io.setByteField(this, 43, eg_ksv);
		return this;
	}
	/** C type : Bit8u */
	@Field(44) 
	public byte eg_inc() {
		return this.io.getByteField(this, 44);
	}
	/** C type : Bit8u */
	@Field(44) 
	public ym3438_t eg_inc(byte eg_inc) {
		this.io.setByteField(this, 44, eg_inc);
		return this;
	}
	/** C type : Bit8u */
	@Field(45) 
	public byte eg_ratemax() {
		return this.io.getByteField(this, 45);
	}
	/** C type : Bit8u */
	@Field(45) 
	public ym3438_t eg_ratemax(byte eg_ratemax) {
		this.io.setByteField(this, 45, eg_ratemax);
		return this;
	}
	/** C type : Bit8u[2] */
	@Array({2}) 
	@Field(46) 
	public Pointer<Byte > eg_sl() {
		return this.io.getPointerField(this, 46);
	}
	/** C type : Bit8u */
	@Field(47) 
	public byte eg_lfo_am() {
		return this.io.getByteField(this, 47);
	}
	/** C type : Bit8u */
	@Field(47) 
	public ym3438_t eg_lfo_am(byte eg_lfo_am) {
		this.io.setByteField(this, 47, eg_lfo_am);
		return this;
	}
	/** C type : Bit8u[2] */
	@Array({2}) 
	@Field(48) 
	public Pointer<Byte > eg_tl() {
		return this.io.getPointerField(this, 48);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(49) 
	public Pointer<Byte > eg_state() {
		return this.io.getPointerField(this, 49);
	}
	/** C type : Bit16u[24] */
	@Array({24}) 
	@Field(50) 
	public Pointer<Short > eg_level() {
		return this.io.getPointerField(this, 50);
	}
	/** C type : Bit16u[24] */
	@Array({24}) 
	@Field(51) 
	public Pointer<Short > eg_out() {
		return this.io.getPointerField(this, 51);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(52) 
	public Pointer<Byte > eg_kon() {
		return this.io.getPointerField(this, 52);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(53) 
	public Pointer<Byte > eg_kon_csm() {
		return this.io.getPointerField(this, 53);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(54) 
	public Pointer<Byte > eg_kon_latch() {
		return this.io.getPointerField(this, 54);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(55) 
	public Pointer<Byte > eg_csm_mode() {
		return this.io.getPointerField(this, 55);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(56) 
	public Pointer<Byte > eg_ssg_enable() {
		return this.io.getPointerField(this, 56);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(57) 
	public Pointer<Byte > eg_ssg_pgrst_latch() {
		return this.io.getPointerField(this, 57);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(58) 
	public Pointer<Byte > eg_ssg_repeat_latch() {
		return this.io.getPointerField(this, 58);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(59) 
	public Pointer<Byte > eg_ssg_hold_up_latch() {
		return this.io.getPointerField(this, 59);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(60) 
	public Pointer<Byte > eg_ssg_dir() {
		return this.io.getPointerField(this, 60);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(61) 
	public Pointer<Byte > eg_ssg_inv() {
		return this.io.getPointerField(this, 61);
	}
	/** C type : Bit32u[2] */
	@Array({2}) 
	@Field(62) 
	public Pointer<Integer > eg_read() {
		return this.io.getPointerField(this, 62);
	}
	/** C type : Bit8u */
	@Field(63) 
	public byte eg_read_inc() {
		return this.io.getByteField(this, 63);
	}
	/** C type : Bit8u */
	@Field(63) 
	public ym3438_t eg_read_inc(byte eg_read_inc) {
		this.io.setByteField(this, 63, eg_read_inc);
		return this;
	}
	/** C type : Bit16s[6][2] */
	@Array({6, 2}) 
	@Field(64) 
	public Pointer<Short > fm_op1() {
		return this.io.getPointerField(this, 64);
	}
	/** C type : Bit16s[6] */
	@Array({6}) 
	@Field(65) 
	public Pointer<Short > fm_op2() {
		return this.io.getPointerField(this, 65);
	}
	/** C type : Bit16s[24] */
	@Array({24}) 
	@Field(66) 
	public Pointer<Short > fm_out() {
		return this.io.getPointerField(this, 66);
	}
	/** C type : Bit16u[24] */
	@Array({24}) 
	@Field(67) 
	public Pointer<Short > fm_mod() {
		return this.io.getPointerField(this, 67);
	}
	/** C type : Bit16s[6] */
	@Array({6}) 
	@Field(68) 
	public Pointer<Short > ch_acc() {
		return this.io.getPointerField(this, 68);
	}
	/** C type : Bit16s[6] */
	@Array({6}) 
	@Field(69) 
	public Pointer<Short > ch_out() {
		return this.io.getPointerField(this, 69);
	}
	/** C type : Bit16s */
	@Field(70) 
	public short ch_lock() {
		return this.io.getShortField(this, 70);
	}
	/** C type : Bit16s */
	@Field(70) 
	public ym3438_t ch_lock(short ch_lock) {
		this.io.setShortField(this, 70, ch_lock);
		return this;
	}
	/** C type : Bit8u */
	@Field(71) 
	public byte ch_lock_l() {
		return this.io.getByteField(this, 71);
	}
	/** C type : Bit8u */
	@Field(71) 
	public ym3438_t ch_lock_l(byte ch_lock_l) {
		this.io.setByteField(this, 71, ch_lock_l);
		return this;
	}
	/** C type : Bit8u */
	@Field(72) 
	public byte ch_lock_r() {
		return this.io.getByteField(this, 72);
	}
	/** C type : Bit8u */
	@Field(72) 
	public ym3438_t ch_lock_r(byte ch_lock_r) {
		this.io.setByteField(this, 72, ch_lock_r);
		return this;
	}
	/** C type : Bit16s */
	@Field(73) 
	public short ch_read() {
		return this.io.getShortField(this, 73);
	}
	/** C type : Bit16s */
	@Field(73) 
	public ym3438_t ch_read(short ch_read) {
		this.io.setShortField(this, 73, ch_read);
		return this;
	}
	/** C type : Bit16u */
	@Field(74) 
	public short timer_a_cnt() {
		return this.io.getShortField(this, 74);
	}
	/** C type : Bit16u */
	@Field(74) 
	public ym3438_t timer_a_cnt(short timer_a_cnt) {
		this.io.setShortField(this, 74, timer_a_cnt);
		return this;
	}
	/** C type : Bit16u */
	@Field(75) 
	public short timer_a_reg() {
		return this.io.getShortField(this, 75);
	}
	/** C type : Bit16u */
	@Field(75) 
	public ym3438_t timer_a_reg(short timer_a_reg) {
		this.io.setShortField(this, 75, timer_a_reg);
		return this;
	}
	/** C type : Bit8u */
	@Field(76) 
	public byte timer_a_load_lock() {
		return this.io.getByteField(this, 76);
	}
	/** C type : Bit8u */
	@Field(76) 
	public ym3438_t timer_a_load_lock(byte timer_a_load_lock) {
		this.io.setByteField(this, 76, timer_a_load_lock);
		return this;
	}
	/** C type : Bit8u */
	@Field(77) 
	public byte timer_a_load() {
		return this.io.getByteField(this, 77);
	}
	/** C type : Bit8u */
	@Field(77) 
	public ym3438_t timer_a_load(byte timer_a_load) {
		this.io.setByteField(this, 77, timer_a_load);
		return this;
	}
	/** C type : Bit8u */
	@Field(78) 
	public byte timer_a_enable() {
		return this.io.getByteField(this, 78);
	}
	/** C type : Bit8u */
	@Field(78) 
	public ym3438_t timer_a_enable(byte timer_a_enable) {
		this.io.setByteField(this, 78, timer_a_enable);
		return this;
	}
	/** C type : Bit8u */
	@Field(79) 
	public byte timer_a_reset() {
		return this.io.getByteField(this, 79);
	}
	/** C type : Bit8u */
	@Field(79) 
	public ym3438_t timer_a_reset(byte timer_a_reset) {
		this.io.setByteField(this, 79, timer_a_reset);
		return this;
	}
	/** C type : Bit8u */
	@Field(80) 
	public byte timer_a_load_latch() {
		return this.io.getByteField(this, 80);
	}
	/** C type : Bit8u */
	@Field(80) 
	public ym3438_t timer_a_load_latch(byte timer_a_load_latch) {
		this.io.setByteField(this, 80, timer_a_load_latch);
		return this;
	}
	/** C type : Bit8u */
	@Field(81) 
	public byte timer_a_overflow_flag() {
		return this.io.getByteField(this, 81);
	}
	/** C type : Bit8u */
	@Field(81) 
	public ym3438_t timer_a_overflow_flag(byte timer_a_overflow_flag) {
		this.io.setByteField(this, 81, timer_a_overflow_flag);
		return this;
	}
	/** C type : Bit8u */
	@Field(82) 
	public byte timer_a_overflow() {
		return this.io.getByteField(this, 82);
	}
	/** C type : Bit8u */
	@Field(82) 
	public ym3438_t timer_a_overflow(byte timer_a_overflow) {
		this.io.setByteField(this, 82, timer_a_overflow);
		return this;
	}
	/** C type : Bit16u */
	@Field(83) 
	public short timer_b_cnt() {
		return this.io.getShortField(this, 83);
	}
	/** C type : Bit16u */
	@Field(83) 
	public ym3438_t timer_b_cnt(short timer_b_cnt) {
		this.io.setShortField(this, 83, timer_b_cnt);
		return this;
	}
	/** C type : Bit8u */
	@Field(84) 
	public byte timer_b_subcnt() {
		return this.io.getByteField(this, 84);
	}
	/** C type : Bit8u */
	@Field(84) 
	public ym3438_t timer_b_subcnt(byte timer_b_subcnt) {
		this.io.setByteField(this, 84, timer_b_subcnt);
		return this;
	}
	/** C type : Bit16u */
	@Field(85) 
	public short timer_b_reg() {
		return this.io.getShortField(this, 85);
	}
	/** C type : Bit16u */
	@Field(85) 
	public ym3438_t timer_b_reg(short timer_b_reg) {
		this.io.setShortField(this, 85, timer_b_reg);
		return this;
	}
	/** C type : Bit8u */
	@Field(86) 
	public byte timer_b_load_lock() {
		return this.io.getByteField(this, 86);
	}
	/** C type : Bit8u */
	@Field(86) 
	public ym3438_t timer_b_load_lock(byte timer_b_load_lock) {
		this.io.setByteField(this, 86, timer_b_load_lock);
		return this;
	}
	/** C type : Bit8u */
	@Field(87) 
	public byte timer_b_load() {
		return this.io.getByteField(this, 87);
	}
	/** C type : Bit8u */
	@Field(87) 
	public ym3438_t timer_b_load(byte timer_b_load) {
		this.io.setByteField(this, 87, timer_b_load);
		return this;
	}
	/** C type : Bit8u */
	@Field(88) 
	public byte timer_b_enable() {
		return this.io.getByteField(this, 88);
	}
	/** C type : Bit8u */
	@Field(88) 
	public ym3438_t timer_b_enable(byte timer_b_enable) {
		this.io.setByteField(this, 88, timer_b_enable);
		return this;
	}
	/** C type : Bit8u */
	@Field(89) 
	public byte timer_b_reset() {
		return this.io.getByteField(this, 89);
	}
	/** C type : Bit8u */
	@Field(89) 
	public ym3438_t timer_b_reset(byte timer_b_reset) {
		this.io.setByteField(this, 89, timer_b_reset);
		return this;
	}
	/** C type : Bit8u */
	@Field(90) 
	public byte timer_b_load_latch() {
		return this.io.getByteField(this, 90);
	}
	/** C type : Bit8u */
	@Field(90) 
	public ym3438_t timer_b_load_latch(byte timer_b_load_latch) {
		this.io.setByteField(this, 90, timer_b_load_latch);
		return this;
	}
	/** C type : Bit8u */
	@Field(91) 
	public byte timer_b_overflow_flag() {
		return this.io.getByteField(this, 91);
	}
	/** C type : Bit8u */
	@Field(91) 
	public ym3438_t timer_b_overflow_flag(byte timer_b_overflow_flag) {
		this.io.setByteField(this, 91, timer_b_overflow_flag);
		return this;
	}
	/** C type : Bit8u */
	@Field(92) 
	public byte timer_b_overflow() {
		return this.io.getByteField(this, 92);
	}
	/** C type : Bit8u */
	@Field(92) 
	public ym3438_t timer_b_overflow(byte timer_b_overflow) {
		this.io.setByteField(this, 92, timer_b_overflow);
		return this;
	}
	/** C type : Bit8u[8] */
	@Array({8}) 
	@Field(93) 
	public Pointer<Byte > mode_test_21() {
		return this.io.getPointerField(this, 93);
	}
	/** C type : Bit8u[8] */
	@Array({8}) 
	@Field(94) 
	public Pointer<Byte > mode_test_2c() {
		return this.io.getPointerField(this, 94);
	}
	/** C type : Bit8u */
	@Field(95) 
	public byte mode_ch3() {
		return this.io.getByteField(this, 95);
	}
	/** C type : Bit8u */
	@Field(95) 
	public ym3438_t mode_ch3(byte mode_ch3) {
		this.io.setByteField(this, 95, mode_ch3);
		return this;
	}
	/** C type : Bit8u */
	@Field(96) 
	public byte mode_kon_channel() {
		return this.io.getByteField(this, 96);
	}
	/** C type : Bit8u */
	@Field(96) 
	public ym3438_t mode_kon_channel(byte mode_kon_channel) {
		this.io.setByteField(this, 96, mode_kon_channel);
		return this;
	}
	/** C type : Bit8u[4] */
	@Array({4}) 
	@Field(97) 
	public Pointer<Byte > mode_kon_operator() {
		return this.io.getPointerField(this, 97);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(98) 
	public Pointer<Byte > mode_kon() {
		return this.io.getPointerField(this, 98);
	}
	/** C type : Bit8u */
	@Field(99) 
	public byte mode_csm() {
		return this.io.getByteField(this, 99);
	}
	/** C type : Bit8u */
	@Field(99) 
	public ym3438_t mode_csm(byte mode_csm) {
		this.io.setByteField(this, 99, mode_csm);
		return this;
	}
	/** C type : Bit8u */
	@Field(100) 
	public byte mode_kon_csm() {
		return this.io.getByteField(this, 100);
	}
	/** C type : Bit8u */
	@Field(100) 
	public ym3438_t mode_kon_csm(byte mode_kon_csm) {
		this.io.setByteField(this, 100, mode_kon_csm);
		return this;
	}
	/** C type : Bit8u */
	@Field(101) 
	public byte dacen() {
		return this.io.getByteField(this, 101);
	}
	/** C type : Bit8u */
	@Field(101) 
	public ym3438_t dacen(byte dacen) {
		this.io.setByteField(this, 101, dacen);
		return this;
	}
	/** C type : Bit16s */
	@Field(102) 
	public short dacdata() {
		return this.io.getShortField(this, 102);
	}
	/** C type : Bit16s */
	@Field(102) 
	public ym3438_t dacdata(short dacdata) {
		this.io.setShortField(this, 102, dacdata);
		return this;
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(103) 
	public Pointer<Byte > ks() {
		return this.io.getPointerField(this, 103);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(104) 
	public Pointer<Byte > ar() {
		return this.io.getPointerField(this, 104);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(105) 
	public Pointer<Byte > sr() {
		return this.io.getPointerField(this, 105);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(106) 
	public Pointer<Byte > dt() {
		return this.io.getPointerField(this, 106);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(107) 
	public Pointer<Byte > multi() {
		return this.io.getPointerField(this, 107);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(108) 
	public Pointer<Byte > sl() {
		return this.io.getPointerField(this, 108);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(109) 
	public Pointer<Byte > rr() {
		return this.io.getPointerField(this, 109);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(110) 
	public Pointer<Byte > dr() {
		return this.io.getPointerField(this, 110);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(111) 
	public Pointer<Byte > am() {
		return this.io.getPointerField(this, 111);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(112) 
	public Pointer<Byte > tl() {
		return this.io.getPointerField(this, 112);
	}
	/** C type : Bit8u[24] */
	@Array({24}) 
	@Field(113) 
	public Pointer<Byte > ssg_eg() {
		return this.io.getPointerField(this, 113);
	}
	/** C type : Bit16u[6] */
	@Array({6}) 
	@Field(114) 
	public Pointer<Short > fnum() {
		return this.io.getPointerField(this, 114);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(115) 
	public Pointer<Byte > block() {
		return this.io.getPointerField(this, 115);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(116) 
	public Pointer<Byte > kcode() {
		return this.io.getPointerField(this, 116);
	}
	/** C type : Bit16u[6] */
	@Array({6}) 
	@Field(117) 
	public Pointer<Short > fnum_3ch() {
		return this.io.getPointerField(this, 117);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(118) 
	public Pointer<Byte > block_3ch() {
		return this.io.getPointerField(this, 118);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(119) 
	public Pointer<Byte > kcode_3ch() {
		return this.io.getPointerField(this, 119);
	}
	/** C type : Bit8u */
	@Field(120) 
	public byte reg_a4() {
		return this.io.getByteField(this, 120);
	}
	/** C type : Bit8u */
	@Field(120) 
	public ym3438_t reg_a4(byte reg_a4) {
		this.io.setByteField(this, 120, reg_a4);
		return this;
	}
	/** C type : Bit8u */
	@Field(121) 
	public byte reg_ac() {
		return this.io.getByteField(this, 121);
	}
	/** C type : Bit8u */
	@Field(121) 
	public ym3438_t reg_ac(byte reg_ac) {
		this.io.setByteField(this, 121, reg_ac);
		return this;
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(122) 
	public Pointer<Byte > connect() {
		return this.io.getPointerField(this, 122);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(123) 
	public Pointer<Byte > fb() {
		return this.io.getPointerField(this, 123);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(124) 
	public Pointer<Byte > pan_l() {
		return this.io.getPointerField(this, 124);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(125) 
	public Pointer<Byte > pan_r() {
		return this.io.getPointerField(this, 125);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(126) 
	public Pointer<Byte > ams() {
		return this.io.getPointerField(this, 126);
	}
	/** C type : Bit8u[6] */
	@Array({6}) 
	@Field(127) 
	public Pointer<Byte > pms() {
		return this.io.getPointerField(this, 127);
	}
	/** C type : Bit8u */
	@Field(128) 
	public byte status() {
		return this.io.getByteField(this, 128);
	}
	/** C type : Bit8u */
	@Field(128) 
	public ym3438_t status(byte status) {
		this.io.setByteField(this, 128, status);
		return this;
	}
	/** C type : Bit32u */
	@Field(129) 
	public int status_time() {
		return this.io.getIntField(this, 129);
	}
	/** C type : Bit32u */
	@Field(129) 
	public ym3438_t status_time(int status_time) {
		this.io.setIntField(this, 129, status_time);
		return this;
	}
	public ym3438_t() {
		super();
	}
	public ym3438_t(Pointer pointer) {
		super(pointer);
	}
}
