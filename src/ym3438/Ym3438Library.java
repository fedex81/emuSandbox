package ym3438;

import org.bridj.BridJ;
import org.bridj.CRuntime;
import org.bridj.Pointer;
import org.bridj.ann.Library;
import org.bridj.ann.Ptr;
import org.bridj.ann.Runtime;

/**
 * Wrapper for library <b>ym3438</b><br>
 * This file was autogenerated by <a href="http://jnaerator.googlecode.com/">JNAerator</a>,<br>
 * a tool written by <a href="http://ochafik.com/">Olivier Chafik</a> that <a href="http://code.google.com/p/jnaerator/wiki/CreditsAndLicense">uses a few opensource projects.</a>.<br>
 * For help, please visit <a href="http://nativelibs4java.googlecode.com/">NativeLibs4Java</a> or <a href="http://bridj.googlecode.com/">BridJ</a> .
 */
@Library("ym3438") 
@Runtime(CRuntime.class) 
public class Ym3438Library {
	static {
		BridJ.register();
	}
	/** Enables YM2612 emulation (MD1, MD2 VA2) */
	public static final int ym3438_mode_ym2612 = 0x01;
	/** Enables status read on any port (TeraDrive, MD1 VA7, MD2, etc) */
	public static final int ym3438_mode_readmode = 0x02;
	/**
	 * Original signature : <code>void OPN2_Reset(ym3438_t*)</code><br>
	 * <i>native declaration : ym3438.h:195</i>
	 */
	public static void OPN2_Reset(Pointer<ym3438_t> chip) {
		OPN2_Reset(Pointer.getPeer(chip));
	}
	protected native static void OPN2_Reset(@Ptr long chip);
	/**
	 * Original signature : <code>void OPN2_SetChipType(Bit32u)</code><br>
	 * <i>native declaration : ym3438.h:196</i>
	 */
	public static native void OPN2_SetChipType(int type);
	/**
	 * Original signature : <code>void OPN2_Clock(ym3438_t*, Bit16s*)</code><br>
	 * <i>native declaration : ym3438.h:197</i>
	 */
	public static void OPN2_Clock(Pointer<ym3438_t> chip, Pointer<Short > buffer) {
		OPN2_Clock(Pointer.getPeer(chip), Pointer.getPeer(buffer));
	}
	protected native static void OPN2_Clock(@Ptr long chip, @Ptr long buffer);
	/**
	 * Original signature : <code>void OPN2_Write(ym3438_t*, Bit32u, Bit8u)</code><br>
	 * <i>native declaration : ym3438.h:198</i>
	 */
	public static void OPN2_Write(Pointer<ym3438_t> chip, int port, byte data) {
		OPN2_Write(Pointer.getPeer(chip), port, data);
	}
	protected native static void OPN2_Write(@Ptr long chip, int port, byte data);
	/**
	 * Original signature : <code>void OPN2_SetTestPin(ym3438_t*, Bit32u)</code><br>
	 * <i>native declaration : ym3438.h:199</i>
	 */
	public static void OPN2_SetTestPin(Pointer<ym3438_t> chip, int value) {
		OPN2_SetTestPin(Pointer.getPeer(chip), value);
	}
	protected native static void OPN2_SetTestPin(@Ptr long chip, int value);
	/**
	 * Original signature : <code>Bit32u OPN2_ReadTestPin(ym3438_t*)</code><br>
	 * <i>native declaration : ym3438.h:200</i>
	 */
	public static int OPN2_ReadTestPin(Pointer<ym3438_t> chip) {
		return OPN2_ReadTestPin(Pointer.getPeer(chip));
	}
	protected native static int OPN2_ReadTestPin(@Ptr long chip);
	/**
	 * Original signature : <code>Bit32u OPN2_ReadIRQPin(ym3438_t*)</code><br>
	 * <i>native declaration : ym3438.h:201</i>
	 */
	public static int OPN2_ReadIRQPin(Pointer<ym3438_t> chip) {
		return OPN2_ReadIRQPin(Pointer.getPeer(chip));
	}
	protected native static int OPN2_ReadIRQPin(@Ptr long chip);
	/**
	 * Original signature : <code>Bit8u OPN2_Read(ym3438_t*, Bit32u)</code><br>
	 * <i>native declaration : ym3438.h:202</i>
	 */
	public static byte OPN2_Read(Pointer<ym3438_t> chip, int port) {
		return OPN2_Read(Pointer.getPeer(chip), port);
	}
	protected native static byte OPN2_Read(@Ptr long chip, int port);
}
