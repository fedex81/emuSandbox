// license:BSD-3-Clause
// copyright-holders:David Haywood


/***************************************************************************
    DEBUGGING
**************************************************************************/

#define DISABLE_FAST_REGISTERS              (0) // set to 1 to turn off usage of register caching
#define SINGLE_INSTRUCTION_MODE             (0)

#define SET_EA                      (0) // makes slower but "shows work" in the EA fake register like the interpreter

#if SET_EA
#define SETEA(x) UML_MOV(block, mem(&m_sh2_state->ea), ireg(x))
#else
#define SETEA(x)
#endif

/***************************************************************************
    CONSTANTS
***************************************************************************/

/* speed up delay loops, bail out of tight loops (can cause timer issues) */
#define BUSY_LOOP_HACKS 0

#define SH2DRC_STRICT_VERIFY    0x0001          /* verify all instructions */
#define SH2DRC_FLUSH_PC         0x0002          /* flush the PC value before each memory access */
#define SH2DRC_STRICT_PCREL     0x0004          /* do actual loads on MOVLI/MOVWI instead of collapsing to immediates */

#define SH2DRC_COMPATIBLE_OPTIONS   (SH2DRC_STRICT_VERIFY | SH2DRC_FLUSH_PC | SH2DRC_STRICT_PCREL)
#define SH2DRC_FASTEST_OPTIONS  (0)

#define SH2_MAX_FASTRAM       4

/* map variables */
#define MAPVAR_PC                   M0
#define MAPVAR_CYCLES               M1

#define PROBE_ADDRESS               ~0

#define CPU_TYPE_SH1    (0)
#define CPU_TYPE_SH2    (1)
#define CPU_TYPE_SH3    (2)
#define CPU_TYPE_SH4    (3)

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

/***************************************************************************
    MACROS
***************************************************************************/

#define SH2_CODE_XOR(a)     ((a) ^ NATIVE_ENDIAN_VALUE_LE_BE(2,0)) // sh2
#define SH34LE_CODE_XOR(a)  ((a) ^ NATIVE_ENDIAN_VALUE_LE_BE(0,6)) // naomi
#define SH34BE_CODE_XOR(a)  ((a) ^ NATIVE_ENDIAN_VALUE_LE_BE(6,0)) // cave

#define R32(reg)        m_regmap[reg]

enum
{
	SH4_PC = 1, SH_SR, SH4_PR, SH4_GBR, SH4_VBR, SH4_DBR, SH4_MACH, SH4_MACL,
	SH4_R0, SH4_R1, SH4_R2, SH4_R3, SH4_R4, SH4_R5, SH4_R6, SH4_R7,
	SH4_R8, SH4_R9, SH4_R10, SH4_R11, SH4_R12, SH4_R13, SH4_R14, SH4_R15, SH4_EA, SH4_SP
};

class sh_common_execution : public cpu_device
{

public:
	sh_common_execution(const machine_config &mconfig, device_type type, const char *tag, device_t *owner, uint32 clock, endianness_t endianness, address_map_constructor internal)
		: cpu_device(mconfig, type, tag, owner, clock)
		, m_sh2_state(nullptr)
		, m_cache(CACHE_SIZE + sizeof(internal_sh2_state))
		, m_drcuml(nullptr)
		, m_drcoptions(0)
		, m_entry(nullptr)
		, m_read8(nullptr)
		, m_write8(nullptr)
		, m_read16(nullptr)
		, m_write16(nullptr)
		, m_read32(nullptr)
		, m_write32(nullptr)
		, m_interrupt(nullptr)
		, m_nocode(nullptr)
		, m_out_of_cycles(nullptr)
	{ }

	// Data that needs to be stored close to the generated DRC code
	struct internal_sh2_state
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
		int32_t   irqline;
		uint32  evec;               // exception vector for DRC
		uint32  irqsr;              // IRQ-time old SR for DRC
		uint32  target;             // target for jmp/jsr/etc so the delay slot can't kill it
		int     internal_irq_level;
		int     icount;
		uint8_t   sleep_mode;
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

	internal_sh2_state *m_sh2_state;

	virtual uint8_t RB(offs_t A) = 0;
	virtual uuint16 RW(offs_t A) = 0;
	virtual uint32 RL(offs_t A) = 0;
	virtual void WB(offs_t A, uint8_t V) = 0;
	virtual void WW(offs_t A, uuint16 V) = 0;
	virtual void WL(offs_t A, uint32 V) = 0;

	virtual void set_frt_input(int state) = 0;
	void pulse_frt_input() { set_frt_input(ASSERT_LINE); set_frt_input(CLEAR_LINE); }

protected:
	// compilation boundaries -- how far back/forward does the analysis extend?
	enum : u32
	{
		COMPILE_BACKWARDS_BYTES     = 64,
		COMPILE_FORWARDS_BYTES      = 256,
		COMPILE_MAX_INSTRUCTIONS    = (COMPILE_BACKWARDS_BYTES / 2) + (COMPILE_FORWARDS_BYTES / 2),
		COMPILE_MAX_SEQUENCE        = 64
	};

	// size of the execution code cache
	enum : size_t
	{
		CACHE_SIZE                  = 32 * 1024 * 1024
	};

	// exit codes
	enum : int
	{
		EXECUTE_OUT_OF_CYCLES       = 0,
		EXECUTE_MISSING_CODE        = 1,
		EXECUTE_UNMAPPED_CODE       = 2,
		EXECUTE_RESET_CACHE         = 3
	};

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

	void op0010(uuint16 opcode);
	void op0011(uuint16 opcode);
	void op0110(uuint16 opcode);
	void op1000(uuint16 opcode);
	void op1100(uuint16 opcode);

	void execute_one(const uuint16 opcode);

	virtual void execute_one_0000(uuint16 opcode);
	virtual void execute_one_4000(uuint16 opcode);
	virtual void execute_one_f000(uuint16 opcode) = 0;

	virtual void RTE() = 0;
	virtual void LDCSR(const uuint16 opcode) = 0;
	virtual void LDCMSR(const uuint16 opcode) = 0;
	virtual void TRAPA(uint32 i) = 0;
	virtual void ILLEGAL() = 0;

	drc_cache           m_cache;                  /* pointer to the DRC code cache */

public:
	/* fast RAM */
	uint32              m_fastram_select;
	struct
	{
		offs_t              start;                      /* start of the RAM block */
		offs_t              end;                        /* end of the RAM block */
		bool                readonly;                   /* true if read-only */
		void *              base;                       /* base in memory where the RAM lives */
	} m_fastram[SH2_MAX_FASTRAM];

	int m_pcfsel;                 // last pcflush entry set
	uint32 m_pcflushes[16];           // pcflush entries

	virtual void init_drc_frontend() = 0;

	void drc_start();

	void sh2drc_add_fastram(offs_t start, offs_t end, uint8_t readonly, void *base);

	std::function<u16 (offs_t)> m_pr16;
	std::function<const void * (offs_t)> m_prptr;
	address_space *m_program;
	memory_access<32, 2, 0, ENDIANNESS_BIG>::cache m_cache32;
	memory_access<32, 3, 0, ENDIANNESS_BIG>::cache m_cache64be;
	memory_access<32, 3, 0, ENDIANNESS_LITTLE>::cache m_cache64le;

	std::unique_ptr<drcuml_state>      m_drcuml;                 /* DRC UML generator state */
	uint32              m_drcoptions;         /* configurable DRC options */

	/* internal stuff */
	uint8_t               m_cache_dirty;                /* true if we need to flush the cache */

	/* register mappings */
	uml::parameter      m_regmap[16];                 /* parameter to register mappings for all 16 integer registers */

	uml::code_handle *  m_entry;                      /* entry point */
	uml::code_handle *  m_read8;                  /* read byte */
	uml::code_handle *  m_write8;                 /* write byte */
	uml::code_handle *  m_read16;                 /* read half */
	uml::code_handle *  m_write16;                    /* write half */
	uml::code_handle *  m_read32;                 /* read word */
	uml::code_handle *  m_write32;                    /* write word */

	uml::code_handle *  m_interrupt;              /* interrupt */
	uml::code_handle *  m_nocode;                 /* nocode */
	uml::code_handle *  m_out_of_cycles;              /* out of cycles exception handler */

	/* internal compiler state */
	struct compiler_state
	{
		compiler_state &operator=(compiler_state const &) = delete;

		uint32          cycles;                     /* accumulated cycles */
		uint8_t           checkints;                  /* need to check interrupts before next instruction */
		uml::code_label  labelnum;                   /* index for local labels */
	};

	virtual void sh2_exception(const char *message, int irqline) { fatalerror("sh2_exception in base classs\n"); };

	virtual void generate_update_cycles(drcuml_block &block, compiler_state &compiler, uml::parameter param, bool allow_exception) = 0;

	virtual bool generate_group_0_RTE(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	virtual bool generate_group_4_LDCSR(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	virtual bool generate_group_4_LDCMSR(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	virtual bool generate_group_12_TRAPA(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);


	bool generate_opcode(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uint32 ovrpc);
	virtual bool generate_group_0(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	bool generate_group_2(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	bool generate_group_3(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, uint32 ovrpc);
	virtual bool generate_group_4(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	bool generate_group_6(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	bool generate_group_8(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	bool generate_group_12(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);
	virtual bool generate_group_15(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uuint16 opcode, int in_delay_slot, uint32 ovrpc);

	void func_printf_probe();
	void func_unimplemented();
	void func_MAC_W();
	void func_MAC_L();
	void func_DIV1();
	void func_ADDV();
	void func_SUBV();

	int m_cpu_type;
	uint32 m_am;
	bool m_isdrc;

	void sh2drc_set_options(uint32 options);
	void sh2drc_add_pcflush(offs_t address);

	virtual void static_generate_entry_point() = 0;
	virtual void static_generate_memory_accessor(int size, int iswrite, const char *name, uml::code_handle *&handleptr) = 0;
	virtual const opcode_desc* get_desclist(offs_t pc) = 0;

	uint32 epc(const opcode_desc *desc);
	void alloc_handle(uml::code_handle *&handleptr, const char *name);
	void load_fast_iregs(drcuml_block &block);
	void save_fast_iregs(drcuml_block &block);
	const char *log_desc_flags_to_string(uint32 flags);
	void log_register_list(const char *string, const uint32 *reglist, const uint32 *regnostarlist);
	void log_opcode_desc(const opcode_desc *desclist, int indent);
	void log_add_disasm_comment(drcuml_block &block, uint32 pc, uint32 op);
	void generate_delay_slot(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uint32 ovrpc);
	void generate_checksum_block(drcuml_block &block, compiler_state &compiler, const opcode_desc *seqhead, const opcode_desc *seqlast);
	void generate_sequence_instruction(drcuml_block &block, compiler_state &compiler, const opcode_desc *desc, uint32 ovrpc);
	void static_generate_nocode_handler();
	void static_generate_out_of_cycles();
	void code_flush_cache();
	void execute_run_drc();
	void code_compile_block(uint8_t mode, offs_t pc);


protected:
	// device-level overrides
	virtual void device_start() override;
};

class sh_frontend : public drc_frontend
{
public:
	sh_frontend(sh_common_execution *device, uint32 window_start, uint32 window_end, uint32 max_sequence);

protected:
	virtual uuint16 read_word(opcode_desc &desc);
	virtual bool describe(opcode_desc &desc, const opcode_desc *prev) override;

private:
	bool describe_group_2(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	bool describe_group_3(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	bool describe_group_6(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	bool describe_group_8(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	bool describe_group_12(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);

protected:
	virtual bool describe_group_0(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	virtual bool describe_group_4(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode);
	virtual bool describe_group_15(opcode_desc &desc, const opcode_desc *prev, uuint16 opcode) = 0;

	sh_common_execution *m_sh;
};

#endif // MAME_CPU_SH2_SH2_H