// license:BSD-3-Clause
// copyright-holders:David Haywood

//#include "emu.h"
//#include "sh.h"
//#include "sh_dasm.h"

#include "string.h"
#include "types.h"
#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"
//#include "sh.h"

#define Rn  ((opcode>>8)&15)
#define Rm  ((opcode>>4)&15)

/* Bits in SR */
#define SH_T   0x00000001
#define SH_S   0x00000002
#define SH_I   0x000000f0
#define SH_Q   0x00000100
#define SH_M   0x00000200

#define SH_FLAGS   (SH_M|SH_Q|SH_I|SH_S|SH_T)

/* SR shift values */
#define T_SHIFT 0
#define S_SHIFT 1
#define I_SHIFT 4
#define Q_SHIFT 8
#define M_SHIFT 9

#define REGFLAG_R(n)                    (1 << (n))

/* register flags 1 */
#define REGFLAG_PR                      (1 << 0)
#define REGFLAG_MACL                    (1 << 1)
#define REGFLAG_MACH                    (1 << 2)
#define REGFLAG_GBR                     (1 << 3)
#define REGFLAG_VBR                     (1 << 4)
#define REGFLAG_SR                      (1 << 5)

#define offs_t  uint32

void ADD(uint32 m, uint32 n);
	void ADDI(uint32 i, uint32 n);
	void ADDC(uint32 m, uint32 n);
	void ADDV(uint32 m, uint32 n);
	void AND(uint32 m, uint32 n);
	void ANDI(uint32 i);
	void ANDM(uint32 i);
	void BF(uint32 d);
	void BFS(uint32 d);
	void BRA(uint32 d);
	void BRAF(uint32 m);
	void BSR(uint32 d);
	void BSRF(uint32 m);
	void BT(uint32 d);
	void BTS(uint32 d);
	void CLRMAC();
	void CLRT();
	void CMPEQ(uint32 m, uint32 n);
	void CMPGE(uint32 m, uint32 n);
	void CMPGT(uint32 m, uint32 n);
	void CMPHI(uint32 m, uint32 n);
	void CMPHS(uint32 m, uint32 n);
	void CMPPL(uint32 n);
	void CMPPZ(uint32 n);
	void CMPSTR(uint32 m, uint32 n);
	void CMPIM(uint32 i);
	void DIV0S(uint32 m, uint32 n);
	void DIV0U();
	void DIV1(uint32 m, uint32 n);
	void DMULS(uint32 m, uint32 n);
	void DMULU(uint32 m, uint32 n);
	void DT(uint32 n);
	void EXTSB(uint32 m, uint32 n);
	void EXTSW(uint32 m, uint32 n);
	void EXTUB(uint32 m, uint32 n);
	void EXTUW(uint32 m, uint32 n);
	void JMP(uint32 m);
	void JSR(uint32 m);
	void LDCGBR(uint32 m);
	void LDCVBR(uint32 m);
	void LDCMGBR(uint32 m);
	void LDCMVBR(uint32 m);
	void LDSMACH(uint32 m);
	void LDSMACL(uint32 m);
	void LDSPR(uint32 m);
	void LDSMMACH(uint32 m);
	void LDSMMACL(uint32 m);
	void LDSMPR(uint32 m);
	void MAC_L(uint32 m, uint32 n);
	void MAC_W(uint32 m, uint32 n);
	void MOV(uint32 m, uint32 n);
	void MOVBS(uint32 m, uint32 n);
	void MOVWS(uint32 m, uint32 n);
	void MOVLS(uint32 m, uint32 n);
	void MOVBL(uint32 m, uint32 n);
	void MOVWL(uint32 m, uint32 n);
	void MOVLL(uint32 m, uint32 n);
	void MOVBM(uint32 m, uint32 n);
	void MOVWM(uint32 m, uint32 n);
	void MOVLM(uint32 m, uint32 n);
	void MOVBP(uint32 m, uint32 n);
	void MOVWP(uint32 m, uint32 n);
	void MOVLP(uint32 m, uint32 n);
	void MOVBS0(uint32 m, uint32 n);
	void MOVWS0(uint32 m, uint32 n);
	void MOVLS0(uint32 m, uint32 n);
	void MOVBL0(uint32 m, uint32 n);
	void MOVWL0(uint32 m, uint32 n);
	void MOVLL0(uint32 m, uint32 n);
	void MOVI(uint32 i, uint32 n);
	void MOVWI(uint32 d, uint32 n);
	void MOVLI(uint32 d, uint32 n);
	void MOVBLG(uint32 d);
	void MOVWLG(uint32 d);
	void MOVLLG(uint32 d);
	void MOVBSG(uint32 d);
	void MOVWSG(uint32 d);
	void MOVLSG(uint32 d);
	void MOVBS4(uint32 d, uint32 n);
	void MOVWS4(uint32 d, uint32 n);
	void MOVLS4(uint32 m, uint32 d, uint32 n);
	void MOVBL4(uint32 m, uint32 d);
	void MOVWL4(uint32 m, uint32 d);
	void MOVLL4(uint32 m, uint32 d, uint32 n);
	void MOVA(uint32 d);
	void MOVT(uint32 n);
	void MULL(uint32 m, uint32 n);
	void MULS(uint32 m, uint32 n);
	void MULU(uint32 m, uint32 n);
	void NEG(uint32 m, uint32 n);
	void NEGC(uint32 m, uint32 n);
	void NOP(void);
	void NOT(uint32 m, uint32 n);
	void OR(uint32 m, uint32 n);
	void ORI(uint32 i);
	void ORM(uint32 i);
	void ROTCL(uint32 n);
	void ROTCR(uint32 n);
	void ROTL(uint32 n);
	void ROTR(uint32 n);
	void RTS();
	void SETT();
	void SHAL(uint32 n);
	void SHAR(uint32 n);
	void SHLL(uint32 n);
	void SHLL2(uint32 n);
	void SHLL8(uint32 n);
	void SHLL16(uint32 n);
	void SHLR(uint32 n);
	void SHLR2(uint32 n);
	void SHLR8(uint32 n);
	void SHLR16(uint32 n);
	void SLEEP();
	void STCSR(uint32 n);
	void STCGBR(uint32 n);
	void STCVBR(uint32 n);
	void STCMSR(uint32 n);
	void STCMGBR(uint32 n);
	void STCMVBR(uint32 n);
	void STSMACH(uint32 n);
	void STSMACL(uint32 n);
	void STSPR(uint32 n);
	void STSMMACH(uint32 n);
	void STSMMACL(uint32 n);
	void STSMPR(uint32 n);
	void SUB(uint32 m, uint32 n);
	void SUBC(uint32 m, uint32 n);
	void SUBV(uint32 m, uint32 n);
	void SWAPB(uint32 m, uint32 n);
	void SWAPW(uint32 m, uint32 n);
	void TAS(uint32 n);
	void TST(uint32 m, uint32 n);
	void TSTI(uint32 i);
	void TSTM(uint32 i);
	void XOR(uint32 m, uint32 n);
	void XORI(uint32 i);
	void XORM(uint32 i);
	void XTRCT(uint32 m, uint32 n);

	void op0010(uint16 opcode);
	void op0011(uint16 opcode);
	void op0110(uint16 opcode);
	void op1000(uint16 opcode);
	void op1100(uint16 opcode);

	void execute_one(const uint16 opcode);

	void execute_one_0000(uint16 opcode);
	void execute_one_4000(uint16 opcode);
	void execute_one_f000(uint16 opcode);

	void RTE();
	void LDCSR(const uint16 opcode);
	void LDCMSR(const uint16 opcode);
	void TRAPA(uint32 i);
	void ILLEGAL();

	uint8 RB(offs_t A);
    uint16 RW(offs_t A);
    uint32 RL(offs_t A);
    void WB(offs_t A, uint8 V);
    void WW(offs_t A, uint16 V);
    void WL(offs_t A, uint32 V);

	// Data that needs to be stored close to the generated DRC code
	typedef struct internal_sh2_state
	{
		uint32  pc;
		uint32  pr;
		uint32  sr;
		uint32  mach;
		uint32  macl;
		uint32  r[16];
		uint32  ea;

		uint32  pending_irq;
		uint32  pending_nmi;
		int32   irqline;
		uint32  evec;               // exception vector for DRC
		uint32  irqsr;              // IRQ-time old SR for DRC
		uint32  target;             // target for jmp/jsr/etc so the delay slot can't kill it
		int     internal_irq_level;
		int     icount;
		uint8   sleep_mode;
		uint32  arg0;              /* print_debug argument 1 */
		uint32  arg1;
		uint32  gbr;
		uint32  vbr;

		uint32  m_delay;

		// SH3/4 additional DRC "near" state
		uint32  m_ppc;
		uint32  m_spc;
		uint32  m_ssr;
		uint32  m_rbnk[2][8];
		uint32  m_sgr;
		uint32  m_fr[16];
		uint32  m_xf[16];
		uint32  m_cpu_off;
		uint32  m_pending_irq;
		uint32  m_test_irq;
		uint32  m_fpscr;
		uint32  m_fpul;
		uint32  m_dbr;

		int     m_frt_input;
		int     m_fpu_sz;
		int     m_fpu_pr;
};

	struct internal_sh2_state *m_sh2_state;

int main (void) {
    m_sh2_state = malloc(sizeof *m_sh2_state);
    printf("Init done\n");
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 1100  1       -
 *  ADD     Rm,Rn
 */
void ADD(uint32 m, uint32 n)
{
	m_sh2_state->r[n] += m_sh2_state->r[m];
}

/*  code                 cycles  t-bit
 *  0111 nnnn iiii iiii  1       -
 *  ADD     #imm,Rn
 */
void ADDI(uint32 i, uint32 n)
{
	m_sh2_state->r[n] += (int32)(int16)(int8)i;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 1110  1       carry
 *  ADDC    Rm,Rn
 */
void ADDC(uint32 m, uint32 n)
{
	uint32 tmp0, tmp1;

	tmp1 = m_sh2_state->r[n] + m_sh2_state->r[m];
	tmp0 = m_sh2_state->r[n];
	m_sh2_state->r[n] = tmp1 + (m_sh2_state->sr & SH_T);
	if (tmp0 > tmp1)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
	if (tmp1 > m_sh2_state->r[n])
		m_sh2_state->sr |= SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 1111  1       overflow
 *  ADDV    Rm,Rn
 */
void ADDV(uint32 m, uint32 n)
{
	int32 dest, src, ans;

	if ((int32) m_sh2_state->r[n] >= 0)
		dest = 0;
	else
		dest = 1;
	if ((int32) m_sh2_state->r[m] >= 0)
		src = 0;
	else
		src = 1;
	src += dest;
	m_sh2_state->r[n] += m_sh2_state->r[m];
	if ((int32) m_sh2_state->r[n] >= 0)
		ans = 0;
	else
		ans = 1;
	ans += dest;
	if (src == 0 || src == 2)
	{
		if (ans == 1)
			m_sh2_state->sr |= SH_T;
		else
			m_sh2_state->sr &= ~SH_T;
	}
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0010 nnnn mmmm 1001  1       -
 *  AND     Rm,Rn
 */
void AND(uint32 m, uint32 n)
{
	m_sh2_state->r[n] &= m_sh2_state->r[m];
}

/*  code                 cycles  t-bit
 *  1100 1001 iiii iiii  1       -
 *  AND     #imm,R0
 */
void ANDI(uint32 i)
{
	m_sh2_state->r[0] &= i;
}

/*  code                 cycles  t-bit
 *  1100 1101 iiii iiii  1       -
 *  AND.B   #imm,@(R0,GBR)
 */
void ANDM(uint32 i)
{
	uint32 temp;

	m_sh2_state->ea = m_sh2_state->gbr + m_sh2_state->r[0];
	temp = i & RB( m_sh2_state->ea );
	WB( m_sh2_state->ea, temp );
	m_sh2_state->icount -= 2;
}

/*  code                 cycles  t-bit
 *  1000 1011 dddd dddd  3/1     -
 *  BF      disp8
 */
void BF(uint32 d)
{
	if ((m_sh2_state->sr & SH_T) == 0)
	{
		int32 disp = ((int32)d << 24) >> 24;
		m_sh2_state->pc = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
		m_sh2_state->icount -= 2;
	}
}

/*  code                 cycles  t-bit
 *  1000 1111 dddd dddd  3/1     -
 *  BFS     disp8
 */
void BFS(uint32 d)
{
	if ((m_sh2_state->sr & SH_T) == 0)
	{
		int32 disp = ((int32)d << 24) >> 24;
		m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
		m_sh2_state->icount--;
	}
}

/*  code                 cycles  t-bit
 *  1010 dddd dddd dddd  2       -
 *  BRA     disp12
 */
void BRA(uint32 d)
{
	int32 disp = ((int32)d << 20) >> 20;

#if BUSY_LOOP_HACKS
	if (disp == -2)
	{
		uint32 next_opcode = RW(m_sh2_state->pc & AM);
		/* BRA  $
		 * NOP
		 */
		if (next_opcode == 0x0009)
			m_sh2_state->icount %= 3;   /* cycles for BRA $ and NOP taken (3) */
	}
#endif
	m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
	m_sh2_state->icount--;
}

/*  code                 cycles  t-bit
 *  0000 mmmm 0010 0011  2       -
 *  BRAF    Rm
 */
void BRAF(uint32 m)
{
	m_sh2_state->m_delay = m_sh2_state->pc + m_sh2_state->r[m] + 2;
	m_sh2_state->icount--;
}

/*  code                 cycles  t-bit
 *  1011 dddd dddd dddd  2       -
 *  BSR     disp12
 */
void BSR(uint32 d)
{
	int32 disp = ((int32)d << 20) >> 20;

	m_sh2_state->pr = m_sh2_state->pc + 2;
	m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
	m_sh2_state->icount--;
}

/*  code                 cycles  t-bit
 *  0000 mmmm 0000 0011  2       -
 *  BSRF    Rm
 */
void BSRF(uint32 m)
{
	m_sh2_state->pr = m_sh2_state->pc + 2;
	m_sh2_state->m_delay = m_sh2_state->pc + m_sh2_state->r[m] + 2;
	m_sh2_state->icount--;
}

/*  code                 cycles  t-bit
 *  1000 1001 dddd dddd  3/1     -
 *  BT      disp8
 */
void BT(uint32 d)
{
	if ((m_sh2_state->sr & SH_T) != 0)
	{
		int32 disp = ((int32)d << 24) >> 24;
		m_sh2_state->pc = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
		m_sh2_state->icount -= 2;
	}
}

/*  code                 cycles  t-bit
 *  1000 1101 dddd dddd  2/1     -
 *  BTS     disp8
 */
void BTS(uint32 d)
{
	if ((m_sh2_state->sr & SH_T) != 0)
	{
		int32 disp = ((int32)d << 24) >> 24;
		m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
		m_sh2_state->icount--;
	}
}

/*  code                 cycles  t-bit
 *  0000 0000 0010 1000  1       -
 *  CLRMAC
 */
void CLRMAC()
{
	m_sh2_state->mach = 0;
	m_sh2_state->macl = 0;
}

/*  code                 cycles  t-bit
 *  0000 0000 0000 1000  1       -
 *  CLRT
 */
void CLRT()
{
	m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0000  1       comparison result
 *  CMP_EQ  Rm,Rn
 */
void CMPEQ(uint32 m, uint32 n)
{
	if (m_sh2_state->r[n] == m_sh2_state->r[m])
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0011  1       comparison result
 *  CMP_GE  Rm,Rn
 */
void CMPGE(uint32 m, uint32 n)
{
	if ((int32) m_sh2_state->r[n] >= (int32) m_sh2_state->r[m])
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0111  1       comparison result
 *  CMP_GT  Rm,Rn
 */
void CMPGT(uint32 m, uint32 n)
{
	if ((int32) m_sh2_state->r[n] > (int32) m_sh2_state->r[m])
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0110  1       comparison result
 *  CMP_HI  Rm,Rn
 */
void CMPHI(uint32 m, uint32 n)
{
	if ((uint32) m_sh2_state->r[n] > (uint32) m_sh2_state->r[m])
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0010  1       comparison result
 *  CMP_HS  Rm,Rn
 */
void CMPHS(uint32 m, uint32 n)
{
	if ((uint32) m_sh2_state->r[n] >= (uint32) m_sh2_state->r[m])
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0100 nnnn 0001 0101  1       comparison result
 *  CMP_PL  Rn
 */
void CMPPL(uint32 n)
{
	if ((int32) m_sh2_state->r[n] > 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0100 nnnn 0001 0001  1       comparison result
 *  CMP_PZ  Rn
 */
void CMPPZ(uint32 n)
{
	if ((int32) m_sh2_state->r[n] >= 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0010 nnnn mmmm 1100  1       comparison result
 * CMP_STR  Rm,Rn
 */
void CMPSTR(uint32 m, uint32 n)
{
	uint32 temp;
	int32 HH, HL, LH, LL;
	temp = m_sh2_state->r[n] ^ m_sh2_state->r[m];
	HH = (temp >> 24) & 0xff;
	HL = (temp >> 16) & 0xff;
	LH = (temp >> 8) & 0xff;
	LL = temp & 0xff;
	if (HH && HL && LH && LL)
		m_sh2_state->sr &= ~SH_T;
	else
		m_sh2_state->sr |= SH_T;
}

/*  code                 cycles  t-bit
 *  1000 1000 iiii iiii  1       comparison result
 *  CMP/EQ #imm,R0
 */
void CMPIM(uint32 i)
{
	uint32 imm = (uint32)(int32)(int16)(int8)i;

	if (m_sh2_state->r[0] == imm)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0010 nnnn mmmm 0111  1       calculation result
 *  DIV0S   Rm,Rn
 */
void DIV0S(uint32 m, uint32 n)
{
	if ((m_sh2_state->r[n] & 0x80000000) == 0)
		m_sh2_state->sr &= ~SH_Q;
	else
		m_sh2_state->sr |= SH_Q;
	if ((m_sh2_state->r[m] & 0x80000000) == 0)
		m_sh2_state->sr &= ~SH_M;
	else
		m_sh2_state->sr |= SH_M;
	if ((m_sh2_state->r[m] ^ m_sh2_state->r[n]) & 0x80000000)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  code                 cycles  t-bit
 *  0000 0000 0001 1001  1       0
 *  DIV0U
 */
void DIV0U()
{
	m_sh2_state->sr &= ~(SH_M | SH_Q | SH_T);
}

/*  code                 cycles  t-bit
 *  0011 nnnn mmmm 0100  1       calculation result
 *  DIV1 Rm,Rn
 */
void DIV1(uint32 m, uint32 n)
{
	uint32 tmp0;
	uint32 old_q;

	old_q = m_sh2_state->sr & SH_Q;
	if (0x80000000 & m_sh2_state->r[n])
		m_sh2_state->sr |= SH_Q;
	else
		m_sh2_state->sr &= ~SH_Q;

	m_sh2_state->r[n] = (m_sh2_state->r[n] << 1) | (m_sh2_state->sr & SH_T);

	if (!old_q)
	{
		if (!(m_sh2_state->sr & SH_M))
		{
			tmp0 = m_sh2_state->r[n];
			m_sh2_state->r[n] -= m_sh2_state->r[m];
			if(!(m_sh2_state->sr & SH_Q))
				if(m_sh2_state->r[n] > tmp0)
					m_sh2_state->sr |= SH_Q;
				else
					m_sh2_state->sr &= ~SH_Q;
			else
				if(m_sh2_state->r[n] > tmp0)
					m_sh2_state->sr &= ~SH_Q;
				else
					m_sh2_state->sr |= SH_Q;
		}
		else
		{
			tmp0 = m_sh2_state->r[n];
			m_sh2_state->r[n] += m_sh2_state->r[m];
			if(!(m_sh2_state->sr & SH_Q))
			{
				if(m_sh2_state->r[n] < tmp0)
					m_sh2_state->sr &= ~SH_Q;
				else
					m_sh2_state->sr |= SH_Q;
			}
			else
			{
				if(m_sh2_state->r[n] < tmp0)
					m_sh2_state->sr |= SH_Q;
				else
					m_sh2_state->sr &= ~SH_Q;
			}
		}
	}
	else
	{
		if (!(m_sh2_state->sr & SH_M))
		{
			tmp0 = m_sh2_state->r[n];
			m_sh2_state->r[n] += m_sh2_state->r[m];
			if(!(m_sh2_state->sr & SH_Q))
				if(m_sh2_state->r[n] < tmp0)
					m_sh2_state->sr |= SH_Q;
				else
					m_sh2_state->sr &= ~SH_Q;
			else
				if(m_sh2_state->r[n] < tmp0)
					m_sh2_state->sr &= ~SH_Q;
				else
					m_sh2_state->sr |= SH_Q;
		}
		else
		{
			tmp0 = m_sh2_state->r[n];
			m_sh2_state->r[n] -= m_sh2_state->r[m];
			if(!(m_sh2_state->sr & SH_Q))
				if(m_sh2_state->r[n] > tmp0)
					m_sh2_state->sr &= ~SH_Q;
				else
					m_sh2_state->sr |= SH_Q;
			else
				if(m_sh2_state->r[n] > tmp0)
					m_sh2_state->sr |= SH_Q;
				else
					m_sh2_state->sr &= ~SH_Q;
		}
	}

	tmp0 = (m_sh2_state->sr & (SH_Q | SH_M));
	if((!tmp0) || (tmp0 == 0x300)) /* if Q == M set T else clear T */
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  DMULS.L Rm,Rn */
void DMULS(uint32 m, uint32 n)
{
	uint32 RnL, RnH, RmL, RmH, Res0, Res1, Res2;
	uint32 temp0, temp1, temp2, temp3;
	int32 tempm, tempn, fnLmL;

	tempn = (int32) m_sh2_state->r[n];
	tempm = (int32) m_sh2_state->r[m];
	if (tempn < 0)
		tempn = 0 - tempn;
	if (tempm < 0)
		tempm = 0 - tempm;
	if ((int32) (m_sh2_state->r[n] ^ m_sh2_state->r[m]) < 0)
		fnLmL = -1;
	else
		fnLmL = 0;
	temp1 = (uint32) tempn;
	temp2 = (uint32) tempm;
	RnL = temp1 & 0x0000ffff;
	RnH = (temp1 >> 16) & 0x0000ffff;
	RmL = temp2 & 0x0000ffff;
	RmH = (temp2 >> 16) & 0x0000ffff;
	temp0 = RmL * RnL;
	temp1 = RmH * RnL;
	temp2 = RmL * RnH;
	temp3 = RmH * RnH;
	Res2 = 0;
	Res1 = temp1 + temp2;
	if (Res1 < temp1)
		Res2 += 0x00010000;
	temp1 = (Res1 << 16) & 0xffff0000;
	Res0 = temp0 + temp1;
	if (Res0 < temp0)
		Res2++;
	Res2 = Res2 + ((Res1 >> 16) & 0x0000ffff) + temp3;
	if (fnLmL < 0)
	{
		Res2 = ~Res2;
		if (Res0 == 0)
			Res2++;
		else
			Res0 = (~Res0) + 1;
	}
	m_sh2_state->mach = Res2;
	m_sh2_state->macl = Res0;
	m_sh2_state->icount--;
}

/*  DMULU.L Rm,Rn */
void DMULU(uint32 m, uint32 n)
{
	uint32 RnL, RnH, RmL, RmH, Res0, Res1, Res2;
	uint32 temp0, temp1, temp2, temp3;

	RnL = m_sh2_state->r[n] & 0x0000ffff;
	RnH = (m_sh2_state->r[n] >> 16) & 0x0000ffff;
	RmL = m_sh2_state->r[m] & 0x0000ffff;
	RmH = (m_sh2_state->r[m] >> 16) & 0x0000ffff;
	temp0 = RmL * RnL;
	temp1 = RmH * RnL;
	temp2 = RmL * RnH;
	temp3 = RmH * RnH;
	Res2 = 0;
	Res1 = temp1 + temp2;
	if (Res1 < temp1)
		Res2 += 0x00010000;
	temp1 = (Res1 << 16) & 0xffff0000;
	Res0 = temp0 + temp1;
	if (Res0 < temp0)
		Res2++;
	Res2 = Res2 + ((Res1 >> 16) & 0x0000ffff) + temp3;
	m_sh2_state->mach = Res2;
	m_sh2_state->macl = Res0;
	m_sh2_state->icount--;
}

/*  DT      Rn */
void DT(uint32 n)
{
	m_sh2_state->r[n]--;
	if (m_sh2_state->r[n] == 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
#if BUSY_LOOP_HACKS
	{
		uint32 next_opcode = RW(m_sh2_state->pc & AM);
		/* DT   Rn
		 * BF   $-2
		 */
		if (next_opcode == 0x8bfd)
		{
			while (m_sh2_state->r[n] > 1 && m_sh2_state->icount > 4)
			{
				m_sh2_state->r[n]--;
				m_sh2_state->icount -= 4;   /* cycles for DT (1) and BF taken (3) */
			}
		}
	}
#endif
}

/*  EXTS.B  Rm,Rn */
void EXTSB(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = ((int32)m_sh2_state->r[m] << 24) >> 24;
}

/*  EXTS.W  Rm,Rn */
void EXTSW(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = ((int32)m_sh2_state->r[m] << 16) >> 16;
}

/*  EXTU.B  Rm,Rn */
void EXTUB(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->r[m] & 0x000000ff;
}

/*  EXTU.W  Rm,Rn */
void EXTUW(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->r[m] & 0x0000ffff;
}

/*  JMP     @Rm */
void JMP(uint32 m)
{
	m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->r[m];
	//m_sh2_state->icount--; // not in SH4 implementation?
}

/*  JSR     @Rm */
void JSR(uint32 m)
{
	m_sh2_state->pr = m_sh2_state->pc + 2;
	m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->icount--;
}

/*  LDC     Rm,GBR */
void LDCGBR(uint32 m)
{
	m_sh2_state->gbr = m_sh2_state->r[m];
}

/*  LDC     Rm,VBR */
void LDCVBR(uint32 m)
{
	m_sh2_state->vbr = m_sh2_state->r[m];
}

/*  LDC.L   @Rm+,GBR */
void LDCMGBR(uint32 m)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->gbr = RL( m_sh2_state->ea );
	m_sh2_state->r[m] += 4;
	m_sh2_state->icount -= 2;
}

/*  LDC.L   @Rm+,VBR */
void LDCMVBR(uint32 m)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->vbr = RL( m_sh2_state->ea );
	m_sh2_state->r[m] += 4;
	m_sh2_state->icount -= 2;
}

/*  LDS     Rm,MACH */
void LDSMACH(uint32 m)
{
	m_sh2_state->mach = m_sh2_state->r[m];
}

/*  LDS     Rm,MACL */
void LDSMACL(uint32 m)
{
	m_sh2_state->macl = m_sh2_state->r[m];
}

/*  LDS     Rm,PR */
void LDSPR(uint32 m)
{
	m_sh2_state->pr = m_sh2_state->r[m];
}

/*  LDS.L   @Rm+,MACH */
void LDSMMACH(uint32 m)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->mach = RL( m_sh2_state->ea );
	m_sh2_state->r[m] += 4;
}

/*  LDS.L   @Rm+,MACL */
void LDSMMACL(uint32 m)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->macl = RL( m_sh2_state->ea );
	m_sh2_state->r[m] += 4;
}

/*  LDS.L   @Rm+,PR */
void LDSMPR(uint32 m)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->pr = RL( m_sh2_state->ea );
	m_sh2_state->r[m] += 4;
}

/*  MAC.L   @Rm+,@Rn+ */
void MAC_L(uint32 m, uint32 n)
{
	uint32 RnL, RnH, RmL, RmH, Res0, Res1, Res2;
	uint32 temp0, temp1, temp2, temp3;
	int32 tempm, tempn, fnLmL;

	tempn = (int32) RL( m_sh2_state->r[n] );
	m_sh2_state->r[n] += 4;
	tempm = (int32) RL( m_sh2_state->r[m] );
	m_sh2_state->r[m] += 4;
	if ((int32) (tempn ^ tempm) < 0)
		fnLmL = -1;
	else
		fnLmL = 0;
	if (tempn < 0)
		tempn = 0 - tempn;
	if (tempm < 0)
		tempm = 0 - tempm;
	temp1 = (uint32) tempn;
	temp2 = (uint32) tempm;
	RnL = temp1 & 0x0000ffff;
	RnH = (temp1 >> 16) & 0x0000ffff;
	RmL = temp2 & 0x0000ffff;
	RmH = (temp2 >> 16) & 0x0000ffff;
	temp0 = RmL * RnL;
	temp1 = RmH * RnL;
	temp2 = RmL * RnH;
	temp3 = RmH * RnH;
	Res2 = 0;
	Res1 = temp1 + temp2;
	if (Res1 < temp1)
		Res2 += 0x00010000;
	temp1 = (Res1 << 16) & 0xffff0000;
	Res0 = temp0 + temp1;
	if (Res0 < temp0)
		Res2++;
	Res2 = Res2 + ((Res1 >> 16) & 0x0000ffff) + temp3;
	if (fnLmL < 0)
	{
		Res2 = ~Res2;
		if (Res0 == 0)
			Res2++;
		else
			Res0 = (~Res0) + 1;
	}
	if (m_sh2_state->sr & SH_S)
	{
		Res0 = m_sh2_state->macl + Res0;
		if (m_sh2_state->macl > Res0)
			Res2++;
		Res2 += (m_sh2_state->mach & 0x0000ffff);
		if (((int32) Res2 < 0) && (Res2 < 0xffff8000))
		{
			Res2 = 0x00008000;
			Res0 = 0x00000000;
		}
		else if (((int32) Res2 > 0) && (Res2 > 0x00007fff))
		{
			Res2 = 0x00007fff;
			Res0 = 0xffffffff;
		}
		m_sh2_state->mach = Res2;
		m_sh2_state->macl = Res0;
	}
	else
	{
		Res0 = m_sh2_state->macl + Res0;
		if (m_sh2_state->macl > Res0)
			Res2++;
		Res2 += m_sh2_state->mach;
		m_sh2_state->mach = Res2;
		m_sh2_state->macl = Res0;
	}
	m_sh2_state->icount -= 2;
}

/*  MAC.W   @Rm+,@Rn+ */
void MAC_W(uint32 m, uint32 n)
{
	int32 tempm, tempn, dest, src, ans;
	uint32 templ;

	tempn = (int32) RW( m_sh2_state->r[n] );
	m_sh2_state->r[n] += 2;
	tempm = (int32) RW( m_sh2_state->r[m] );
	m_sh2_state->r[m] += 2;
	templ = m_sh2_state->macl;
	tempm = ((int32) (short) tempn * (int32) (short) tempm);
	if ((int32) m_sh2_state->macl >= 0)
		dest = 0;
	else
		dest = 1;
	if ((int32) tempm >= 0)
	{
		src = 0;
		tempn = 0;
	}
	else
	{
		src = 1;
		tempn = 0xffffffff;
	}
	src += dest;
	m_sh2_state->macl += tempm;
	if ((int32) m_sh2_state->macl >= 0)
		ans = 0;
	else
		ans = 1;
	ans += dest;
	if (m_sh2_state->sr & SH_S)
	{
		if (ans == 1)
			{
				if (src == 0)
					m_sh2_state->macl = 0x7fffffff;
				if (src == 2)
					m_sh2_state->macl = 0x80000000;
			}
	}
	else
	{
		m_sh2_state->mach += tempn;
		if (templ > m_sh2_state->macl)
			m_sh2_state->mach += 1;
	}
	m_sh2_state->icount -= 2;
}

/*  MOV     Rm,Rn */
void MOV(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->r[m];
}

/*  MOV.B   Rm,@Rn */
void MOVBS(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n];
	WB( m_sh2_state->ea, m_sh2_state->r[m] & 0x000000ff);
}

/*  MOV.W   Rm,@Rn */
void MOVWS(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n];
	WW( m_sh2_state->ea, m_sh2_state->r[m] & 0x0000ffff);
}

/*  MOV.L   Rm,@Rn */
void MOVLS(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->r[m] );
}

/*  MOV.B   @Rm,Rn */
void MOVBL(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->r[n] = (uint32)(int32)(int16)(int8) RB( m_sh2_state->ea );
}

/*  MOV.W   @Rm,Rn */
void MOVWL(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->r[n] = (uint32)(int32)(int16) RW( m_sh2_state->ea );
}

/*  MOV.L   @Rm,Rn */
void MOVLL(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m];
	m_sh2_state->r[n] = RL( m_sh2_state->ea );
}

/*  MOV.B   Rm,@-Rn */
void MOVBM(uint32 m, uint32 n)
{
	/* SMG : bug fix, was reading m_sh2_state->r[n] */
	uint32 data = m_sh2_state->r[m] & 0x000000ff;

	m_sh2_state->r[n] -= 1;
	WB( m_sh2_state->r[n], data );
}

/*  MOV.W   Rm,@-Rn */
void MOVWM(uint32 m, uint32 n)
{
	uint32 data = m_sh2_state->r[m] & 0x0000ffff;

	m_sh2_state->r[n] -= 2;
	WW( m_sh2_state->r[n], data );
}

/*  MOV.L   Rm,@-Rn */
void MOVLM(uint32 m, uint32 n)
{
	uint32 data = m_sh2_state->r[m];

	m_sh2_state->r[n] -= 4;
	WL( m_sh2_state->r[n], data );
}

/*  MOV.B   @Rm+,Rn */
void MOVBP(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = (uint32)(int32)(int16)(int8) RB( m_sh2_state->r[m] );
	if (n != m)
		m_sh2_state->r[m] += 1;
}

/*  MOV.W   @Rm+,Rn */
void MOVWP(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = (uint32)(int32)(int16) RW( m_sh2_state->r[m] );
	if (n != m)
		m_sh2_state->r[m] += 2;
}

/*  MOV.L   @Rm+,Rn */
void MOVLP(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = RL( m_sh2_state->r[m] );
	if (n != m)
		m_sh2_state->r[m] += 4;
}

/*  MOV.B   Rm,@(R0,Rn) */
void MOVBS0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n] + m_sh2_state->r[0];
	WB( m_sh2_state->ea, m_sh2_state->r[m] & 0x000000ff );
}

/*  MOV.W   Rm,@(R0,Rn) */
void MOVWS0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n] + m_sh2_state->r[0];
	WW( m_sh2_state->ea, m_sh2_state->r[m] & 0x0000ffff );
}

/*  MOV.L   Rm,@(R0,Rn) */
void MOVLS0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[n] + m_sh2_state->r[0];
	WL( m_sh2_state->ea, m_sh2_state->r[m] );
}

/*  MOV.B   @(R0,Rm),Rn */
void MOVBL0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m] + m_sh2_state->r[0];
	m_sh2_state->r[n] = (uint32)(int32)(int16)(int8) RB( m_sh2_state->ea );
}

/*  MOV.W   @(R0,Rm),Rn */
void MOVWL0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m] + m_sh2_state->r[0];
	m_sh2_state->r[n] = (uint32)(int32)(int16) RW( m_sh2_state->ea );
}

/*  MOV.L   @(R0,Rm),Rn */
void MOVLL0(uint32 m, uint32 n)
{
	m_sh2_state->ea = m_sh2_state->r[m] + m_sh2_state->r[0];
	m_sh2_state->r[n] = RL( m_sh2_state->ea );
}

/*  MOV     #imm,Rn */
void MOVI(uint32 i, uint32 n)
{
	m_sh2_state->r[n] = (uint32)(int32)(int16)(int8) i;
}

/*  MOV.W   @(disp8,PC),Rn */
void MOVWI(uint32 d, uint32 n)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->pc + disp * 2 + 2;
	m_sh2_state->r[n] = (uint32)(int32)(int16) RW( m_sh2_state->ea );
}

/*  MOV.L   @(disp8,PC),Rn */
void MOVLI(uint32 d, uint32 n)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = ((m_sh2_state->pc + 2) & ~3) + disp * 4;
	m_sh2_state->r[n] = RL( m_sh2_state->ea );
}

/*  MOV.B   @(disp8,GBR),R0 */
void MOVBLG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp;
	m_sh2_state->r[0] = (uint32)(int32)(int16)(int8) RB( m_sh2_state->ea );
}

/*  MOV.W   @(disp8,GBR),R0 */
void MOVWLG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp * 2;
	m_sh2_state->r[0] = (int32)(int16) RW( m_sh2_state->ea );
}

/*  MOV.L   @(disp8,GBR),R0 */
void MOVLLG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp * 4;
	m_sh2_state->r[0] = RL( m_sh2_state->ea );
}

/*  MOV.B   R0,@(disp8,GBR) */
void MOVBSG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp;
	WB( m_sh2_state->ea, m_sh2_state->r[0] & 0x000000ff );
}

/*  MOV.W   R0,@(disp8,GBR) */
void MOVWSG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp * 2;
	WW( m_sh2_state->ea, m_sh2_state->r[0] & 0x0000ffff );
}

/*  MOV.L   R0,@(disp8,GBR) */
void MOVLSG(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = m_sh2_state->gbr + disp * 4;
	WL( m_sh2_state->ea, m_sh2_state->r[0] );
}

/*  MOV.B   R0,@(disp4,Rn) */
void MOVBS4(uint32 d, uint32 n)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[n] + disp;
	WB( m_sh2_state->ea, m_sh2_state->r[0] & 0x000000ff );
}

/*  MOV.W   R0,@(disp4,Rn) */
void MOVWS4(uint32 d, uint32 n)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[n] + disp * 2;
	WW( m_sh2_state->ea, m_sh2_state->r[0] & 0x0000ffff );
}

/* MOV.L Rm,@(disp4,Rn) */
void MOVLS4(uint32 m, uint32 d, uint32 n)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[n] + disp * 4;
	WL( m_sh2_state->ea, m_sh2_state->r[m] );
}

/*  MOV.B   @(disp4,Rm),R0 */
void MOVBL4(uint32 m, uint32 d)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[m] + disp;
	m_sh2_state->r[0] = (uint32)(int32)(int16)(int8) RB( m_sh2_state->ea );
}

/*  MOV.W   @(disp4,Rm),R0 */
void MOVWL4(uint32 m, uint32 d)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[m] + disp * 2;
	m_sh2_state->r[0] = (uint32)(int32)(int16) RW( m_sh2_state->ea );
}

/*  MOV.L   @(disp4,Rm),Rn */
void MOVLL4(uint32 m, uint32 d, uint32 n)
{
	uint32 disp = d & 0x0f;
	m_sh2_state->ea = m_sh2_state->r[m] + disp * 4;
	m_sh2_state->r[n] = RL( m_sh2_state->ea );
}

/*  MOVA    @(disp8,PC),R0 */
void MOVA(uint32 d)
{
	uint32 disp = d & 0xff;
	m_sh2_state->ea = ((m_sh2_state->pc + 2) & ~3) + disp * 4;
	m_sh2_state->r[0] = m_sh2_state->ea;
}

/*  MOVT    Rn */
void MOVT(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->sr & SH_T;
}

/*  MUL.L   Rm,Rn */
void MULL(uint32 m, uint32 n)
{
	m_sh2_state->macl = m_sh2_state->r[n] * m_sh2_state->r[m];
	m_sh2_state->icount--;
}

/*  MULS    Rm,Rn */
void MULS(uint32 m, uint32 n)
{
	m_sh2_state->macl = (int16) m_sh2_state->r[n] * (int16) m_sh2_state->r[m];
}

/*  MULU    Rm,Rn */
void MULU(uint32 m, uint32 n)
{
	m_sh2_state->macl = (uint16) m_sh2_state->r[n] * (uint16) m_sh2_state->r[m];
}

/*  NEG     Rm,Rn */
void NEG(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = 0 - m_sh2_state->r[m];
}

/*  NEGC    Rm,Rn */
void NEGC(uint32 m, uint32 n)
{
	uint32 temp;

	temp = m_sh2_state->r[m];
	m_sh2_state->r[n] = -temp - (m_sh2_state->sr & SH_T);
	if (temp || (m_sh2_state->sr & SH_T))
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  NOP */
void NOP(void)
{
}

/*  NOT     Rm,Rn */
void NOT(uint32 m, uint32 n)
{
	m_sh2_state->r[n] = ~m_sh2_state->r[m];
}

/*  OR      Rm,Rn */
void OR(uint32 m, uint32 n)
{
	m_sh2_state->r[n] |= m_sh2_state->r[m];
}

/*  OR      #imm,R0 */
void ORI(uint32 i)
{
	m_sh2_state->r[0] |= i;
	m_sh2_state->icount -= 2; // not in SH2 implementation?
}

/*  OR.B    #imm,@(R0,GBR) */
void ORM(uint32 i)
{
	uint32 temp;

	m_sh2_state->ea = m_sh2_state->gbr + m_sh2_state->r[0];
	temp = RB( m_sh2_state->ea );
	temp |= i;
	WB( m_sh2_state->ea, temp );
	//m_sh2_state->icount -= 2; // not in SH4 implementation?
}

/*  ROTCL   Rn */
void ROTCL(uint32 n)
{
	uint32 temp;

	temp = (m_sh2_state->r[n] >> 31) & SH_T;
	m_sh2_state->r[n] = (m_sh2_state->r[n] << 1) | (m_sh2_state->sr & SH_T);
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | temp;
}

/*  ROTCR   Rn */
void ROTCR(uint32 n)
{
	uint32 temp;
	temp = (m_sh2_state->sr & SH_T) << 31;
	if (m_sh2_state->r[n] & SH_T)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
	m_sh2_state->r[n] = (m_sh2_state->r[n] >> 1) | temp;
}

/*  ROTL    Rn */
void ROTL(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | ((m_sh2_state->r[n] >> 31) & SH_T);
	m_sh2_state->r[n] = (m_sh2_state->r[n] << 1) | (m_sh2_state->r[n] >> 31);
}

/*  ROTR    Rn */
void ROTR(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | (m_sh2_state->r[n] & SH_T);
	m_sh2_state->r[n] = (m_sh2_state->r[n] >> 1) | (m_sh2_state->r[n] << 31);
}

/*  RTS */
void RTS()
{
	m_sh2_state->m_delay = m_sh2_state->ea = m_sh2_state->pr;
	m_sh2_state->icount--;
}

/*  SETT */
void SETT()
{
	m_sh2_state->sr |= SH_T;
}

/*  SHAL    Rn      (same as SHLL) */
void SHAL(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | ((m_sh2_state->r[n] >> 31) & SH_T);
	m_sh2_state->r[n] <<= 1;
}

/*  SHAR    Rn */
void SHAR(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | (m_sh2_state->r[n] & SH_T);
	m_sh2_state->r[n] = (uint32)((int32)m_sh2_state->r[n] >> 1);
}

/*  SHLL    Rn      (same as SHAL) */
void SHLL(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | ((m_sh2_state->r[n] >> 31) & SH_T);
	m_sh2_state->r[n] <<= 1;
}

/*  SHLL2   Rn */
void SHLL2(uint32 n)
{
	m_sh2_state->r[n] <<= 2;
}

/*  SHLL8   Rn */
void SHLL8(uint32 n)
{
	m_sh2_state->r[n] <<= 8;
}

/*  SHLL16  Rn */
void SHLL16(uint32 n)
{
	m_sh2_state->r[n] <<= 16;
}

/*  SHLR    Rn */
void SHLR(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | (m_sh2_state->r[n] & SH_T);
	m_sh2_state->r[n] >>= 1;
}

/*  SHLR2   Rn */
void SHLR2(uint32 n)
{
	m_sh2_state->r[n] >>= 2;
}

/*  SHLR8   Rn */
void SHLR8(uint32 n)
{
	m_sh2_state->r[n] >>= 8;
}

/*  SHLR16  Rn */
void SHLR16(uint32 n)
{
	m_sh2_state->r[n] >>= 16;
}


/*  STC     SR,Rn */
void STCSR(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->sr;
}

/*  STC     GBR,Rn */
void STCGBR(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->gbr;
}

/*  STC     VBR,Rn */
void STCVBR(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->vbr;
}

/*  STC.L   SR,@-Rn */
void STCMSR(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->sr );
	m_sh2_state->icount--;
}

/*  STC.L   GBR,@-Rn */
void STCMGBR(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->gbr );
	m_sh2_state->icount--;
}

/*  STC.L   VBR,@-Rn */
void STCMVBR(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->vbr );
	m_sh2_state->icount--;
}

/*  STS     MACH,Rn */
void STSMACH(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->mach;
}

/*  STS     MACL,Rn */
void STSMACL(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->macl;
}

/*  STS     PR,Rn */
void STSPR(uint32 n)
{
	m_sh2_state->r[n] = m_sh2_state->pr;
}

/*  STS.L   MACH,@-Rn */
void STSMMACH(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->mach );
}

/*  STS.L   MACL,@-Rn */
void STSMMACL(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->macl );
}

/*  STS.L   PR,@-Rn */
void STSMPR(uint32 n)
{
	m_sh2_state->r[n] -= 4;
	m_sh2_state->ea = m_sh2_state->r[n];
	WL( m_sh2_state->ea, m_sh2_state->pr );
}

/*  SUB     Rm,Rn */
void SUB(uint32 m, uint32 n)
{
	m_sh2_state->r[n] -= m_sh2_state->r[m];
}

/*  SUBC    Rm,Rn */
void SUBC(uint32 m, uint32 n)
{
	uint32 tmp0, tmp1;

	tmp1 = m_sh2_state->r[n] - m_sh2_state->r[m];
	tmp0 = m_sh2_state->r[n];
	m_sh2_state->r[n] = tmp1 - (m_sh2_state->sr & SH_T);
	if (tmp0 < tmp1)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
	if (tmp1 < m_sh2_state->r[n])
		m_sh2_state->sr |= SH_T;
}

/*  SUBV    Rm,Rn */
void SUBV(uint32 m, uint32 n)
{
	int32 dest, src, ans;

	if ((int32) m_sh2_state->r[n] >= 0)
		dest = 0;
	else
		dest = 1;
	if ((int32) m_sh2_state->r[m] >= 0)
		src = 0;
	else
		src = 1;
	src += dest;
	m_sh2_state->r[n] -= m_sh2_state->r[m];
	if ((int32) m_sh2_state->r[n] >= 0)
		ans = 0;
	else
		ans = 1;
	ans += dest;
	if (src == 1)
	{
		if (ans == 1)
			m_sh2_state->sr |= SH_T;
		else
			m_sh2_state->sr &= ~SH_T;
	}
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  SWAP.B  Rm,Rn */
void SWAPB(uint32 m, uint32 n)
{
	uint32 temp0, temp1;

	temp0 = m_sh2_state->r[m] & 0xffff0000;
	temp1 = (m_sh2_state->r[m] & 0x000000ff) << 8;
	m_sh2_state->r[n] = (m_sh2_state->r[m] >> 8) & 0x000000ff;
	m_sh2_state->r[n] = m_sh2_state->r[n] | temp1 | temp0;
}

/*  SWAP.W  Rm,Rn */
void SWAPW(uint32 m, uint32 n)
{
	uint32 temp;

	temp = (m_sh2_state->r[m] >> 16) & 0x0000ffff;
	m_sh2_state->r[n] = (m_sh2_state->r[m] << 16) | temp;
}

/*  TAS.B   @Rn */
void TAS(uint32 n)
{
	uint32 temp;
	m_sh2_state->ea = m_sh2_state->r[n];
	/* Bus Lock enable */
	temp = RB( m_sh2_state->ea );
	if (temp == 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
	temp |= 0x80;
	/* Bus Lock disable */
	WB( m_sh2_state->ea, temp );
	m_sh2_state->icount -= 3;
}

/*  TST     Rm,Rn */
void TST(uint32 m, uint32 n)
{
	if ((m_sh2_state->r[n] & m_sh2_state->r[m]) == 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  TST     #imm,R0 */
void TSTI(uint32 i)
{
	uint32 imm = i & 0xff;

	if ((imm & m_sh2_state->r[0]) == 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
}

/*  TST.B   #imm,@(R0,GBR) */
void TSTM(uint32 i)
{
	uint32 imm = i & 0xff;

	m_sh2_state->ea = m_sh2_state->gbr + m_sh2_state->r[0];
	if ((imm & RB( m_sh2_state->ea )) == 0)
		m_sh2_state->sr |= SH_T;
	else
		m_sh2_state->sr &= ~SH_T;
	m_sh2_state->icount -= 2;
}

/*  XOR     Rm,Rn */
void XOR(uint32 m, uint32 n)
{
	m_sh2_state->r[n] ^= m_sh2_state->r[m];
}

/*  XOR     #imm,R0 */
void XORI(uint32 i)
{
	uint32 imm = i & 0xff;
	m_sh2_state->r[0] ^= imm;
}

/*  XOR.B   #imm,@(R0,GBR) */
void XORM(uint32 i)
{
	uint32 imm = i & 0xff;
	uint32 temp;

	m_sh2_state->ea = m_sh2_state->gbr + m_sh2_state->r[0];
	temp = RB( m_sh2_state->ea );
	temp ^= imm;
	WB( m_sh2_state->ea, temp );
	m_sh2_state->icount -= 2;
}

/*  XTRCT   Rm,Rn */
void XTRCT(uint32 m, uint32 n)
{
	uint32 temp;

	temp = (m_sh2_state->r[m] << 16) & 0xffff0000;
	m_sh2_state->r[n] = (m_sh2_state->r[n] >> 16) & 0x0000ffff;
	m_sh2_state->r[n] |= temp;
}

/*  SLEEP */
void SLEEP()
{
	/* 0 = normal mode */
	/* 1 = enters into power-down mode */
	/* 2 = go out the power-down mode after an exception */
	if(m_sh2_state->sleep_mode != 2)
		m_sh2_state->pc -= 2;
	m_sh2_state->icount -= 2;
	/* Wait_for_exception; */
	if(m_sh2_state->sleep_mode == 0)
		m_sh2_state->sleep_mode = 1;
	else if(m_sh2_state->sleep_mode == 2)
		m_sh2_state->sleep_mode = 0;
}

/* Common dispatch */

void op0010(uint16 opcode)
{
	switch (opcode & 15)
	{
	case  0: MOVBS(Rm, Rn);                break;
	case  1: MOVWS(Rm, Rn);                break;
	case  2: MOVLS(Rm, Rn);                break;
	case  3: ILLEGAL();                         break;
	case  4: MOVBM(Rm, Rn);                break;
	case  5: MOVWM(Rm, Rn);                break;
	case  6: MOVLM(Rm, Rn);                break;
	case  7: DIV0S(Rm, Rn);                break;
	case  8: TST(Rm, Rn);                  break;
	case  9: AND(Rm, Rn);                  break;
	case 10: XOR(Rm, Rn);                  break;
	case 11: OR(Rm, Rn);                   break;
	case 12: CMPSTR(Rm, Rn);               break;
	case 13: XTRCT(Rm, Rn);                break;
	case 14: MULU(Rm, Rn);                 break;
	case 15: MULS(Rm, Rn);                 break;
	}
}

void op0011(uint16 opcode)
{
	switch (opcode & 15)
	{
	case  0: CMPEQ(Rm, Rn);                break;
	case  1: ILLEGAL();                         break;
	case  2: CMPHS(Rm, Rn);                break;
	case  3: CMPGE(Rm, Rn);                break;
	case  4: DIV1(Rm, Rn);                 break;
	case  5: DMULU(Rm, Rn);                break;
	case  6: CMPHI(Rm, Rn);                break;
	case  7: CMPGT(Rm, Rn);                break;
	case  8: SUB(Rm, Rn);                  break;
	case  9: ILLEGAL();                         break;
	case 10: SUBC(Rm, Rn);                 break;
	case 11: SUBV(Rm, Rn);                 break;
	case 12: ADD(Rm, Rn);                  break;
	case 13: DMULS(Rm, Rn);                break;
	case 14: ADDC(Rm, Rn);                 break;
	case 15: ADDV(Rm, Rn);                 break;
	}
}

void op0110(uint16 opcode)
{
	switch (opcode & 15)
	{
	case  0: MOVBL(Rm, Rn);                break;
	case  1: MOVWL(Rm, Rn);                break;
	case  2: MOVLL(Rm, Rn);                break;
	case  3: MOV(Rm, Rn);                  break;
	case  4: MOVBP(Rm, Rn);                break;
	case  5: MOVWP(Rm, Rn);                break;
	case  6: MOVLP(Rm, Rn);                break;
	case  7: NOT(Rm, Rn);                  break;
	case  8: SWAPB(Rm, Rn);                break;
	case  9: SWAPW(Rm, Rn);                break;
	case 10: NEGC(Rm, Rn);                 break;
	case 11: NEG(Rm, Rn);                  break;
	case 12: EXTUB(Rm, Rn);                break;
	case 13: EXTUW(Rm, Rn);                break;
	case 14: EXTSB(Rm, Rn);                break;
	case 15: EXTSW(Rm, Rn);                break;
	}
}

void op1000(uint16 opcode)
{
	switch ( opcode  & (15<<8) )
	{
	case  0 << 8: MOVBS4(opcode & 0x0f, Rm);   break;
	case  1 << 8: MOVWS4(opcode & 0x0f, Rm);   break;
	case  2<< 8: ILLEGAL();                 break;
	case  3<< 8: ILLEGAL();                 break;
	case  4<< 8: MOVBL4(Rm, opcode & 0x0f);    break;
	case  5<< 8: MOVWL4(Rm, opcode & 0x0f);    break;
	case  6<< 8: ILLEGAL();                 break;
	case  7<< 8: ILLEGAL();                 break;
	case  8<< 8: CMPIM(opcode & 0xff);     break;
	case  9<< 8: BT(opcode & 0xff);        break;
	case 10<< 8: ILLEGAL();                 break;
	case 11<< 8: BF(opcode & 0xff);        break;
	case 12<< 8: ILLEGAL();                 break;
	case 13<< 8: BTS(opcode & 0xff);       break;
	case 14<< 8: ILLEGAL();                 break;
	case 15<< 8: BFS(opcode & 0xff);       break;
	}
}


void op1100(uint16 opcode)
{
	switch (opcode & (15<<8))
	{
	case  0<<8: MOVBSG(opcode & 0xff);     break;
	case  1<<8: MOVWSG(opcode & 0xff);     break;
	case  2<<8: MOVLSG(opcode & 0xff);     break;
	case  3<<8: TRAPA(opcode & 0xff);      break; // sh2/4 differ
	case  4<<8: MOVBLG(opcode & 0xff);     break;
	case  5<<8: MOVWLG(opcode & 0xff);     break;
	case  6<<8: MOVLLG(opcode & 0xff);     break;
	case  7<<8: MOVA(opcode & 0xff);       break;
	case  8<<8: TSTI(opcode & 0xff);       break;
	case  9<<8: ANDI(opcode & 0xff);       break;
	case 10<<8: XORI(opcode & 0xff);       break;
	case 11<<8: ORI(opcode & 0xff);            break;
	case 12<<8: TSTM(opcode & 0xff);       break;
	case 13<<8: ANDM(opcode & 0xff);       break;
	case 14<<8: XORM(opcode & 0xff);       break;
	case 15<<8: ORM(opcode & 0xff);            break;
	}
}

// SH4 cases fall through to here too
void execute_one_0000(uint16 opcode)
{
	// 04,05,06,07 always the same, 0c,0d,0e,0f always the same, other change based on upper bits

	switch (opcode & 0x3F)
	{
	case 0x00: ILLEGAL();                       break;
	case 0x01: ILLEGAL();                       break;
	case 0x02: STCSR(Rn);                  break;
	case 0x03: BSRF(Rn);                   break;
	case 0x04: MOVBS0(Rm, Rn);             break;
	case 0x05: MOVWS0(Rm, Rn);             break;
	case 0x06: MOVLS0(Rm, Rn);             break;
	case 0x07: MULL(Rm, Rn);               break;
	case 0x08: CLRT();                       break;
	case 0x09: NOP();                           break;
	case 0x0a: STSMACH(Rn);                break;
	case 0x0b: RTS();                        break;
	case 0x0c: MOVBL0(Rm, Rn);             break;
	case 0x0d: MOVWL0(Rm, Rn);             break;
	case 0x0e: MOVLL0(Rm, Rn);             break;
	case 0x0f: MAC_L(Rm, Rn);              break;

	case 0x10: ILLEGAL();                       break;
	case 0x11: ILLEGAL();                       break;
	case 0x12: STCGBR(Rn);                 break;
	case 0x13: ILLEGAL();                       break;
	case 0x14: MOVBS0(Rm, Rn);             break;
	case 0x15: MOVWS0(Rm, Rn);             break;
	case 0x16: MOVLS0(Rm, Rn);             break;
	case 0x17: MULL(Rm, Rn);               break;
	case 0x18: SETT();                       break;
	case 0x19: DIV0U();                  break;
	case 0x1a: STSMACL(Rn);                break;
	case 0x1b: SLEEP();                  break;
	case 0x1c: MOVBL0(Rm, Rn);             break;
	case 0x1d: MOVWL0(Rm, Rn);             break;
	case 0x1e: MOVLL0(Rm, Rn);             break;
	case 0x1f: MAC_L(Rm, Rn);              break;

	case 0x20: ILLEGAL();                       break;
	case 0x21: ILLEGAL();                       break;
	case 0x22: STCVBR(Rn);                 break;
	case 0x23: BRAF(Rn);                   break;
	case 0x24: MOVBS0(Rm, Rn);             break;
	case 0x25: MOVWS0(Rm, Rn);             break;
	case 0x26: MOVLS0(Rm, Rn);             break;
	case 0x27: MULL(Rm, Rn);               break;
	case 0x28: CLRMAC();                 break;
	case 0x29: MOVT(Rn);                   break;
	case 0x2a: STSPR(Rn);                  break;
	case 0x2b: RTE();                        break;
	case 0x2c: MOVBL0(Rm, Rn);             break;
	case 0x2d: MOVWL0(Rm, Rn);             break;
	case 0x2e: MOVLL0(Rm, Rn);             break;
	case 0x2f: MAC_L(Rm, Rn);              break;

	case 0x30: ILLEGAL();                       break;
	case 0x31: ILLEGAL();                       break;
	case 0x32: ILLEGAL();                       break;
	case 0x33: ILLEGAL();                       break;
	case 0x34: MOVBS0(Rm, Rn);             break;
	case 0x35: MOVWS0(Rm, Rn);             break;
	case 0x36: MOVLS0(Rm, Rn);             break;
	case 0x37: MULL(Rm, Rn);               break;
	case 0x38: ILLEGAL();                       break;
	case 0x39: ILLEGAL();                       break;
	case 0x3a: ILLEGAL();                       break;
	case 0x3b: ILLEGAL();                       break;
	case 0x3c: MOVBL0(Rm, Rn);             break;
	case 0x3d: MOVWL0(Rm, Rn);             break;
	case 0x3e: MOVLL0(Rm, Rn);             break;
	case 0x3f: MAC_L(Rm, Rn);              break;
	}
}

// SH4 cases fall through to here too
void execute_one_4000(uint16 opcode)
{
	// 0f always the same, others differ

	switch (opcode & 0x3F)
	{
	case 0x00: SHLL(Rn);                   break;
	case 0x01: SHLR(Rn);                   break;
	case 0x02: STSMMACH(Rn);               break;
	case 0x03: STCMSR(Rn);                 break;
	case 0x04: ROTL(Rn);                   break;
	case 0x05: ROTR(Rn);                   break;
	case 0x06: LDSMMACH(Rn);               break;
	case 0x07: LDCMSR(opcode);                 break;
	case 0x08: SHLL2(Rn);                  break;
	case 0x09: SHLR2(Rn);                  break;
	case 0x0a: LDSMACH(Rn);                break;
	case 0x0b: JSR(Rn);                    break;
	case 0x0c: ILLEGAL();                       break;
	case 0x0d: ILLEGAL();                       break;
	case 0x0e: LDCSR(opcode);                  break;
	case 0x0f: MAC_W(Rm, Rn);              break;

	case 0x10: DT(Rn);                     break;
	case 0x11: CMPPZ(Rn);                  break;
	case 0x12: STSMMACL(Rn);               break;
	case 0x13: STCMGBR(Rn);                break;
	case 0x14: ILLEGAL();                       break;
	case 0x15: CMPPL(Rn);                  break;
	case 0x16: LDSMMACL(Rn);               break;
	case 0x17: LDCMGBR(Rn);                break;
	case 0x18: SHLL8(Rn);                  break;
	case 0x19: SHLR8(Rn);                  break;
	case 0x1a: LDSMACL(Rn);                break;
	case 0x1b: TAS(Rn);                    break;
	case 0x1c: ILLEGAL();                       break;
	case 0x1d: ILLEGAL();                       break;
	case 0x1e: LDCGBR(Rn);                 break;
	case 0x1f: MAC_W(Rm, Rn);              break;

	case 0x20: SHAL(Rn);                   break;
	case 0x21: SHAR(Rn);                   break;
	case 0x22: STSMPR(Rn);                 break;
	case 0x23: STCMVBR(Rn);                break;
	case 0x24: ROTCL(Rn);                  break;
	case 0x25: ROTCR(Rn);                  break;
	case 0x26: LDSMPR(Rn);                 break;
	case 0x27: LDCMVBR(Rn);                break;
	case 0x28: SHLL16(Rn);                 break;
	case 0x29: SHLR16(Rn);                 break;
	case 0x2a: LDSPR(Rn);                  break;
	case 0x2b: JMP(Rn);                    break;
	case 0x2c: ILLEGAL();                       break;
	case 0x2d: ILLEGAL();                       break;
	case 0x2e: LDCVBR(Rn);                 break;
	case 0x2f: MAC_W(Rm, Rn);              break;

	case 0x30: ILLEGAL();                       break;
	case 0x31: ILLEGAL();                       break;
	case 0x32: ILLEGAL();                       break;
	case 0x33: ILLEGAL();                       break;
	case 0x34: ILLEGAL();                       break;
	case 0x35: ILLEGAL();                       break;
	case 0x36: ILLEGAL();                       break;
	case 0x37: ILLEGAL();                       break;
	case 0x38: ILLEGAL();                       break;
	case 0x39: ILLEGAL();                       break;
	case 0x3a: ILLEGAL();                       break;
	case 0x3b: ILLEGAL();                       break;
	case 0x3c: ILLEGAL();                       break;
	case 0x3d: ILLEGAL();                       break;
	case 0x3e: ILLEGAL();                       break;
	case 0x3f: MAC_W(Rm, Rn);              break;

	}
}

void execute_one(const uint16 opcode)
{
	switch(opcode & 0xf000)
	{
		case 0x0000: execute_one_0000(opcode); break;
		case 0x1000: MOVLS4(Rm, opcode & 0x0f, Rn); break;
		case 0x2000: op0010(opcode); break;
		case 0x3000: op0011(opcode); break;
		case 0x4000: execute_one_4000(opcode); break;
		case 0x5000: MOVLL4(Rm, opcode & 0x0f, Rn); break;
		case 0x6000: op0110(opcode); break;
		case 0x7000: ADDI(opcode & 0xff, Rn); break;
		case 0x8000: op1000(opcode); break;
		case 0x9000: MOVWI(opcode & 0xff, Rn); break;
		case 0xa000: BRA(opcode & 0xfff); break;
		case 0xb000: BSR(opcode & 0xfff); break;
		case 0xc000: op1100(opcode); break;
		case 0xd000: MOVLI(opcode & 0xff, Rn); break;
		case 0xe000: MOVI(opcode & 0xff, Rn); break;
		case 0xf000: execute_one_f000(opcode); break;
	}
}

/* SH2 stuff  */
#define SH12_AM  0xc7ffffff

uint8 RB(offs_t A)
{
   printf("RB: %d", A);
   return 0;
//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//		return m_program->read_byte(A & SH12_AM);
//
//	return m_program->read_byte(A);
}

uint16 RW(offs_t A)
{
    printf("RW: %d", A);
    return 0;

//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//		return m_program->read_word(A & SH12_AM);
//
//  return m_program->read_word(A);
}

uint32 RL(offs_t A)
{
    printf("RL: %d", A);
    return 0;

	/* 0x20000000 no Cache */
	/* 0x00000000 read thru Cache if CE bit is 1 */
//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//		return m_program->read_dword(A & SH12_AM);
//
//	return m_program->read_dword(A);
}

void WB(offs_t A, uint8 V)
{
    printf("WB: %d", A);

//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//	{
//		m_program->write_byte(A & SH12_AM,V);
//		return;
//	}
//
//	m_program->write_byte(A,V);
}

void WW(offs_t A, uint16 V)
{
    printf("WW: %d", A);
//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//	{
//		m_program->write_word(A & SH12_AM,V);
//		return;
//	}
//
//	m_program->write_word(A,V);
}

void WL(offs_t A, uint32 V)
{
    printf("WL: %d", A);
//	if((A & 0xf0000000) == 0 || (A & 0xf0000000) == 0x20000000)
//	{
//		m_program->write_dword(A & SH12_AM,V);
//		return;
//	}
//
//	/* 0x20000000 no Cache */
//	/* 0x00000000 read thru Cache if CE bit is 1 */
//	m_program->write_dword(A,V);
}

/*  LDC.L   @Rm+,SR */
inline void LDCMSR(const uint16 opcode) // passes Rn
{
	uint32 x = Rn;

	m_sh2_state->ea = m_sh2_state->r[x];
	m_sh2_state->sr = RL( m_sh2_state->ea ) & SH_FLAGS;
	m_sh2_state->r[x] += 4;
	m_sh2_state->icount -= 2;
//	m_test_irq = 1;
}

/*  LDC     Rm,SR */
inline void LDCSR(const uint16 opcode) // passes Rn
{
	uint32 x = Rn;

	m_sh2_state->sr = m_sh2_state->r[x] & SH_FLAGS;
//	m_test_irq = 1;
}

/*  RTE */
inline void RTE()
{
	m_sh2_state->ea = m_sh2_state->r[15];
	m_sh2_state->m_delay = RL( m_sh2_state->ea );
	m_sh2_state->r[15] += 4;
	m_sh2_state->ea = m_sh2_state->r[15];
	m_sh2_state->sr = RL( m_sh2_state->ea ) & SH_FLAGS;
	m_sh2_state->r[15] += 4;
	m_sh2_state->icount -= 3;
//	m_test_irq = 1;
}

/*  TRAPA   #imm */
inline void TRAPA(uint32 i)
{
	uint32 imm = i & 0xff;

	m_sh2_state->ea = m_sh2_state->vbr + imm * 4;

	m_sh2_state->r[15] -= 4;
	WL( m_sh2_state->r[15], m_sh2_state->sr );
	m_sh2_state->r[15] -= 4;
	WL( m_sh2_state->r[15], m_sh2_state->pc );

	m_sh2_state->pc = RL( m_sh2_state->ea );

	m_sh2_state->icount -= 7;
}

/*  ILLEGAL */
inline void ILLEGAL()
{
	//logerror("Illegal opcode at %08x\n", m_sh2_state->pc - 2);
	m_sh2_state->r[15] -= 4;
	WL( m_sh2_state->r[15], m_sh2_state->sr );     /* push SR onto stack */
	m_sh2_state->r[15] -= 4;
	WL( m_sh2_state->r[15], m_sh2_state->pc - 2 ); /* push PC onto stack */

	/* fetch PC */
	m_sh2_state->pc = RL( m_sh2_state->vbr + 4 * 4 );

	/* TODO: timing is a guess */
	m_sh2_state->icount -= 5;
}

/*****************************************************************************
 *  OPCODE DISPATCHERS
 *****************************************************************************/


void execute_one_f000(uint16 opcode)
{
	ILLEGAL();
}