#include "string.h"
#include "types.h"
#include "stdio.h"
#include "stdlib.h"

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
    /* DIVU */
    /*
    run2(3, 4,  0x483, 0x3700, 8);
    run2(3, 4,  0x46e, 0x3700, 8);
    run2(3, 4,  0x459, 0x3700, 8);
    run2(3, 4,  0x444, 0x3700, 8);
    run2(3, 4,  0x15, 0x3700, 8);
    */

    run2(4, 5,  0x600, 0x100000, 16, 1);
    run2(4, 5,  0xFFF02f88, 0x100000, 16, 0);

    /* DIVS */
    /*
    run(0xffffffff, 0x11b4c, 0xFFD0B800);
    run(0, 0x11b4c, 0x195000);
    
            run(0, 0xf842, 0xe200);
            run(0, 0xf842, 0x195000);
            run(0, 0x12c00, 0);
            run(0, 0x12c00, 0x3ab800);
            run(0xffffffff, 0x103fc, 0xffe20000);
            run(0xffffffff, 0x103fc, 0xffe7b000);
            run(0, 0x11b6a, 304800);
            run(0, 0x11b6a, 195000);
            run(0xffffffff, 0x156e6, 0xffe15a00);
            run(0, 0x156e6, 0x195000);
            run(0, 0x15504, 0x1e0000);
            run(0, 0x15504, 0x195000);
            run(0xffffffff, 0x15504, 0x195000);
            run(0xffffffff, 0x13d96, 0xffd0b800);
            run(0, 0x13d96, 0xffe7b000);
            run(0xffffffff, 0x1021a, 0x1fa600);
            run(0, 0x1021a, 0xffe7b000);
            run(0xffffffff, 0x13db4, 0x304800);
            run(0, 0x13db4, 0xffe7b000);
            run(0xffffffff, 0x160be, 0x1e00);
            run(0, 0x160be, 0xffe7b000);
            run(0, 0x12c00, 0);
            run(0xffffffff, 0x12c00, 0xffc64800);
            */
}

void run(uint32 val_n, uint32 val_m, uint32 val_r4) {
    run1(5,1,val_n, val_m, val_r4);
}

void run1(uint32 m, uint32 n, uint32 val_n, uint32 val_m, uint32 val_r4) {
        n = n < 0 ? 1 : n;
        m = m < 0 ? 5 : m;
        m_sh2_state->r[n] = val_n;
        m_sh2_state->r[m] = val_m;
        m_sh2_state->r[4] = val_r4;
        DIV0S(m, n);

        for (uint32 i = 0; i < 32; i++) {
            ROTL(4);
            DIV1(m, n);
        }
    }

void run2(uint32 n, uint32 m, uint32 val_n, uint32 val_m, int steps, int divou) {
        m_sh2_state->r[n] = val_n;
        m_sh2_state->r[m] = val_m;
        if(divou)
            DIV0U(m, n);

        for (uint32 i = 0; i < steps; i++) {
            DIV1(m, n);
        }
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
	printf("1: %x\n", m_sh2_state->r[n]);

	if (!old_q)
	{
		if (!(m_sh2_state->sr & SH_M))
		{
			tmp0 = m_sh2_state->r[n];
			m_sh2_state->r[n] -= m_sh2_state->r[m];
			printf("2a: %x\n", m_sh2_state->r[n]);
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
			printf("2b: %x\n", m_sh2_state->r[n]);
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
			printf("2c: %x\n", m_sh2_state->r[n]);
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
			printf("2d: %x\n", m_sh2_state->r[n]);
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

	printf("####,div1: r[%d]=%x >= r[%d]=%x, %d, %d, %d\n", n,
        				m_sh2_state->r[n], m, m_sh2_state->r[m],
        				m_sh2_state->sr & SH_M,
        				m_sh2_state->sr & SH_Q,
        				m_sh2_state->sr & SH_T);
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

    printf("####,div0s: r[%d]=%x >= r[%d]=%x, %d, %d, %d\n", n, m_sh2_state->r[n], m, m_sh2_state->r[m],
        m_sh2_state->sr & SH_M, m_sh2_state->sr & SH_Q, m_sh2_state->sr & SH_T);
}

/*  code                 cycles  t-bit
 *  0000 0000 0001 1001  1       0
 *  DIV0U
 */
void DIV0U(uint32 m, uint32 n)
{
	m_sh2_state->sr &= ~(SH_M | SH_Q | SH_T);
	printf("####,div0u: r[%d]=%x >= r[%d]=%x, %d, %d, %d\n", n, m_sh2_state->r[n], m, m_sh2_state->r[m],
            m_sh2_state->sr & SH_M, m_sh2_state->sr & SH_Q, m_sh2_state->sr & SH_T);
}

/*  ROTL    Rn */
void ROTL(uint32 n)
{
	m_sh2_state->sr = (m_sh2_state->sr & ~SH_T) | ((m_sh2_state->r[n] >> 31) & SH_T);
	m_sh2_state->r[n] = (m_sh2_state->r[n] << 1) | (m_sh2_state->r[n] >> 31);
}