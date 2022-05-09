; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/bpf/jit.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/bpf/jit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmd_tgt_act = type { i8, i8 }
%struct.jmp_code_map = type { i32, i8 }
%struct.nfp_insn_meta = type { %struct.bpf_insn, %union.anon, i32, i16, i16, i16, ptr, %struct.list_head }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%union.anon = type { %struct.anon.162 }
%struct.anon.162 = type { i32, %struct.bpf_reg_state, %struct.nfp_bpf_reg_state }
%struct.bpf_reg_state = type { i32, i32, %union.anon.0, i32, i32, %struct.tnum, i64, i64, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i8 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32 }
%struct.tnum = type { i64, i64 }
%struct.nfp_bpf_reg_state = type { %struct.bpf_reg_state, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nfp_prog = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.list_head }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.31 }
%union.anon.31 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.nfp_bpf_map = type { ptr, ptr, i32, %struct.spinlock, i32, i32, i64, ptr, %struct.list_head, [0 x %struct.nfp_bpf_map_word] }
%struct.spinlock = type { %union.anon.30 }
%union.anon.30 = type { %struct.raw_spinlock }
%struct.nfp_bpf_map_word = type { i8 }
%struct.anon = type { %struct.bpf_reg_state, ptr, i16, i8, %struct.anon.160, i8, i8 }
%struct.anon.160 = type { i16, i16, i8 }
%struct.nfp_bpf_subprog_info = type { i16, i8 }
%struct.nfp_bpf_vnic = type { ptr, i32, i32 }
%struct.nfp_app_bpf = type { ptr, %struct.nfp_ccm, ptr, i32, i32, i32, %struct.list_head, i32, i32, %struct.rhashtable, i32, %struct.nfp_bpf_cap_adjust_head, %struct.anon.164, %struct.anon.165, i8, i8, i8, i8 }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.91, i32, %struct.spinlock }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32, i32, i32, i32 }
%struct.anon.164 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.nfp_insn_ur_regs = type { i32, i16, i16, i16, i8, i8, i8, i8 }
%struct.nfp_insn_re_regs = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.161 = type { ptr, i8, i32 }
%struct.reciprocal_value_adv = type { i32, i8, i8, i8 }

@nfp_bpf_jit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 4482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013NFP net bpf: Translation failed with error %d (translated: %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfp_bpf_jit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/bpf/jit.c\00", [51 x i8] zeroinitializer }, align 32
@nfp_bpf_jit._entry_ptr = internal global ptr @nfp_bpf_jit._entry, section ".printk_index", align 4
@nfp_bpf_relo_for_vnic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 4567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013NFP net bpf: BUG: failed to detect subprogram registers needs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_bpf_relo_for_vnic\00", [42 x i8] zeroinitializer }, align 32
@nfp_bpf_relo_for_vnic._entry_ptr = internal global ptr @nfp_bpf_relo_for_vnic._entry, section ".printk_index", align 4
@nfp_bpf_relo_for_vnic._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 4576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfp_bpf_relo_for_vnic._entry_ptr.6 = internal global ptr @nfp_bpf_relo_for_vnic._entry.5, section ".printk_index", align 4
@nfp_bpf_relo_for_vnic._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 4604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013NFP net bpf: relocation of unknown helper %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_bpf_relo_for_vnic._entry_ptr.9 = internal global ptr @nfp_bpf_relo_for_vnic._entry.7, section ".printk_index", align 4
@nfp_bpf_opt_ld_mask.exp_mask = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255], [60 x i8] zeroinitializer }, align 32
@nfp_prog_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014NFP net bpf: instruction limit reached (%u NFP instructions)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_prog_push\00", [18 x i8] zeroinitializer }, align 32
@nfp_prog_push._entry_ptr = internal global ptr @nfp_prog_push._entry, section ".printk_index", align 4
@emit_br_relo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013NFP net bpf: BUG: branch defer out of bounds %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emit_br_relo\00", [19 x i8] zeroinitializer }, align 32
@emit_br_relo._entry_ptr = internal global ptr @emit_br_relo._entry, section ".printk_index", align 4
@nfp_fixup_branches._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 3586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013NFP net bpf: Fixup found block not ending in branch %d %02x %016llx!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_fixup_branches\00", [45 x i8] zeroinitializer }, align 32
@nfp_fixup_branches._entry_ptr = internal global ptr @nfp_fixup_branches._entry, section ".printk_index", align 4
@nfp_fixup_branches._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 3599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013NFP net bpf: Non-exit jump doesn't have destination info recorded!!\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_fixup_branches._entry_ptr.19 = internal global ptr @nfp_fixup_branches._entry.17, section ".printk_index", align 4
@nfp_fixup_branches._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 3606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013NFP net bpf: Branch landing on removed instruction!!\0A\00", [40 x i8] zeroinitializer }, align 32
@nfp_fixup_branches._entry_ptr.22 = internal global ptr @nfp_fixup_branches._entry.20, section ".printk_index", align 4
@nfp_fixup_immed_relo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 3545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013NFP net bpf: BUG: failed to fix up callee register saving\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_fixup_immed_relo\00", [43 x i8] zeroinitializer }, align 32
@nfp_fixup_immed_relo._entry_ptr = internal global ptr @nfp_fixup_immed_relo._entry, section ".printk_index", align 4
@instr_cb = internal constant { <{ [223 x ptr], [33 x ptr] }>, [256 x i8] } { <{ [223 x ptr], [33 x ptr] }> <{ [223 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @add_imm, ptr @jump, ptr null, ptr @add_imm64, ptr null, ptr null, ptr null, ptr null, ptr @add_reg, ptr null, ptr null, ptr @add_reg64, ptr null, ptr null, ptr null, ptr null, ptr @sub_imm, ptr @jeq_imm, ptr @jeq32_imm, ptr @sub_imm64, ptr @imm_ld8, ptr null, ptr null, ptr null, ptr @sub_reg, ptr @jeq_reg, ptr @jeq_reg, ptr @sub_reg64, ptr @data_ld4, ptr null, ptr null, ptr null, ptr @mul_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @mul_imm64, ptr @data_ld2, ptr null, ptr null, ptr null, ptr @mul_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @mul_reg64, ptr @data_ld1, ptr null, ptr null, ptr null, ptr @div_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @div_imm64, ptr null, ptr null, ptr null, ptr null, ptr @div_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @div_reg64, ptr @data_ind_ld4, ptr null, ptr null, ptr null, ptr @or_imm, ptr @jset_imm, ptr @jset_imm, ptr @or_imm64, ptr @data_ind_ld2, ptr null, ptr null, ptr null, ptr @or_reg, ptr @jset_reg, ptr @jset_reg, ptr @or_reg64, ptr @data_ind_ld1, ptr null, ptr null, ptr null, ptr @and_imm, ptr @jne_imm, ptr @jne_imm, ptr @and_imm64, ptr null, ptr null, ptr null, ptr null, ptr @and_reg, ptr @jne_reg, ptr @jne_reg, ptr @and_reg64, ptr null, ptr @mem_ldx4, ptr @mem_st4, ptr @mem_stx4, ptr @shl_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @shl_imm64, ptr null, ptr @mem_ldx2, ptr @mem_st2, ptr @mem_stx2, ptr @shl_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @shl_reg64, ptr null, ptr @mem_ldx1, ptr @mem_st1, ptr @mem_stx1, ptr @shr_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @shr_imm64, ptr null, ptr @mem_ldx8, ptr @mem_st8, ptr @mem_stx8, ptr @shr_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @shr_reg64, ptr null, ptr null, ptr null, ptr null, ptr @neg_reg, ptr @call, ptr null, ptr @neg_reg64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jmp_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xor_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @xor_imm64, ptr null, ptr null, ptr null, ptr null, ptr @xor_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @xor_reg64, ptr null, ptr null, ptr null, ptr null, ptr @mov_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @mov_imm64, ptr null, ptr null, ptr null, ptr null, ptr @mov_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @mov_reg64, ptr null, ptr null, ptr null, ptr @mem_atomic4, ptr @ashr_imm, ptr @cmp_imm, ptr @cmp_imm, ptr @ashr_imm64, ptr null, ptr null, ptr null, ptr null, ptr @ashr_reg, ptr @cmp_reg, ptr @cmp_reg, ptr @ashr_reg64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmp_imm, ptr @cmp_imm, ptr null, ptr null, ptr null, ptr null, ptr @mem_atomic8, ptr @end_reg32, ptr @cmp_reg, ptr @cmp_reg], [33 x ptr] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@emit_cmd_any._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013NFP net bpf: cmd can't swap arguments\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emit_cmd_any\00", [19 x i8] zeroinitializer }, align 32
@emit_cmd_any._entry_ptr = internal global ptr @emit_cmd_any._entry, section ".printk_index", align 4
@emit_cmd_any._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013NFP net bpf: cmd can't use LMextn\0A\00", [59 x i8] zeroinitializer }, align 32
@emit_cmd_any._entry_ptr.30 = internal global ptr @emit_cmd_any._entry.28, section ".printk_index", align 4
@cmd_tgt_act = external dso_local local_unnamed_addr constant [10 x %struct.cmd_tgt_act], align 1
@nfp_jmp_code_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jmp_code_map = internal constant { [14 x %struct.jmp_code_map], [48 x i8] } { [14 x %struct.jmp_code_map] [%struct.jmp_code_map zeroinitializer, %struct.jmp_code_map zeroinitializer, %struct.jmp_code_map { i32 5, i8 1 }, %struct.jmp_code_map { i32 4, i8 0 }, %struct.jmp_code_map zeroinitializer, %struct.jmp_code_map zeroinitializer, %struct.jmp_code_map { i32 9, i8 1 }, %struct.jmp_code_map { i32 8, i8 0 }, %struct.jmp_code_map zeroinitializer, %struct.jmp_code_map zeroinitializer, %struct.jmp_code_map { i32 5, i8 0 }, %struct.jmp_code_map { i32 4, i8 1 }, %struct.jmp_code_map { i32 9, i8 0 }, %struct.jmp_code_map { i32 8, i8 1 }], [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no code found for jump instruction\00", [61 x i8] zeroinitializer }, align 32
@wrp_lmem_load.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wrp_lmem_load.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@wrp_lmem_load.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_stx_xdp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_prog_confirm_current_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wrp_lmem_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wrp_lmem_store.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@wrp_lmem_store.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@emit_shf_indir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013NFP net bpf: indirect shift is not allowed on rotation\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emit_shf_indir\00", [17 x i8] zeroinitializer }, align 32
@emit_shf_indir._entry_ptr = internal global ptr @emit_shf_indir._entry, section ".printk_index", align 4
@bpf_to_bpf_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 3312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013NFP net bpf: BUG: BPF-to-BPF call has no destination recorded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_to_bpf_call\00", [16 x i8] zeroinitializer }, align 32
@bpf_to_bpf_call._entry_ptr = internal global ptr @bpf_to_bpf_call._entry, section ".printk_index", align 4
@wrp_immed_relo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013NFP net bpf: relocation of a large immediate!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wrp_immed_relo\00", [17 x i8] zeroinitializer }, align 32
@wrp_immed_relo._entry_ptr = internal global ptr @wrp_immed_relo._entry, section ".printk_index", align 4
@helper_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"verifier allowed unsupported function\0A\00", [57 x i8] zeroinitializer }, align 32
@adjust_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.nfp_bpf_jit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_jit.43 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 8, i16 4, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_jit.44 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 8, i16 4, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_jit.45 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 8, i16 4, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_jit.46 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 8, i16 4, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_jit.47 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 7, i64 9]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 64]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 64]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 64]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.57 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 16, i64 15001, i64 15002, i64 15003, i64 15025]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.63 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 25, i64 44, i64 65]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 76, i64 80]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 4481, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 4567, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 4576, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 4603, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"exp_mask\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3961, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 50, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 166, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3585, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3599, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3606, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3545, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [9 x i8] c"instr_cb\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3421, i32 25 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 112, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 117, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"jmp_code_map\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1375, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1392, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 385, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3312, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 637, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/bpf/jit.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 3363, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"switch.table.nfp_bpf_jit\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"switch.table.nfp_bpf_jit.43\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"switch.table.nfp_bpf_jit.44\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"switch.table.nfp_bpf_jit.45\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"switch.table.nfp_bpf_jit.46\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"switch.table.nfp_bpf_jit.47\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @bpf_to_bpf_call._entry, ptr @bpf_to_bpf_call._entry_ptr, ptr @emit_br_relo._entry, ptr @emit_br_relo._entry_ptr, ptr @emit_cmd_any._entry, ptr @emit_cmd_any._entry.28, ptr @emit_cmd_any._entry_ptr, ptr @emit_cmd_any._entry_ptr.30, ptr @emit_shf_indir._entry, ptr @emit_shf_indir._entry_ptr, ptr @nfp_bpf_jit._entry, ptr @nfp_bpf_jit._entry_ptr, ptr @nfp_bpf_relo_for_vnic._entry, ptr @nfp_bpf_relo_for_vnic._entry.5, ptr @nfp_bpf_relo_for_vnic._entry.7, ptr @nfp_bpf_relo_for_vnic._entry_ptr, ptr @nfp_bpf_relo_for_vnic._entry_ptr.6, ptr @nfp_bpf_relo_for_vnic._entry_ptr.9, ptr @nfp_fixup_branches._entry, ptr @nfp_fixup_branches._entry.17, ptr @nfp_fixup_branches._entry.20, ptr @nfp_fixup_branches._entry_ptr, ptr @nfp_fixup_branches._entry_ptr.19, ptr @nfp_fixup_branches._entry_ptr.22, ptr @nfp_fixup_immed_relo._entry, ptr @nfp_fixup_immed_relo._entry_ptr, ptr @nfp_prog_push._entry, ptr @nfp_prog_push._entry_ptr, ptr @wrp_immed_relo._entry, ptr @wrp_immed_relo._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @nfp_bpf_opt_ld_mask.exp_mask, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @instr_cb, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @jmp_code_map, ptr @.str.31, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.nfp_bpf_jit, ptr @switch.table.nfp_bpf_jit.43, ptr @switch.table.nfp_bpf_jit.44, ptr @switch.table.nfp_bpf_jit.45, ptr @switch.table.nfp_bpf_jit.46, ptr @switch.table.nfp_bpf_jit.47], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_jit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_relo_for_vnic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_relo_for_vnic._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_relo_for_vnic._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_opt_ld_mask.exp_mask to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_prog_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_br_relo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fixup_branches._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fixup_branches._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fixup_branches._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fixup_immed_relo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instr_cb to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_cmd_any._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_cmd_any._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jmp_code_map to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_shf_indir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_to_bpf_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wrp_immed_relo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_jit.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfp_is_subprog_start(ptr nocapture noundef readonly %meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool = icmp ne i16 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_jit(ptr noundef %nfp_prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %insns.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 21
  %0 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in3.i = load ptr, ptr %insns.i, align 4
  %1 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn5.i = load ptr, ptr %.pn.in3.i, align 8
  %cmp.not6.i = icmp eq ptr %insns.i, %.pn.in3.i
  %cmp9.not7.i = icmp eq ptr %insns.i, %.pn5.i
  %or.cond8.i = select i1 %cmp.not6.i, i1 true, i1 %cmp9.not7.i
  br i1 %or.cond8.i, label %entry.nfp_bpf_replace_map_ptrs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nfp_bpf_replace_map_ptrs.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_replace_map_ptrs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn11.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn5.i, %entry.for.body.i_crit_edge ]
  %.pn.in9.i = phi ptr [ %.pn.in.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn.in3.i, %entry.for.body.i_crit_edge ]
  %meta1.010.i = getelementptr i8, ptr %.pn.in9.i, i32 -264
  %flags.i = getelementptr i8, ptr %.pn.in9.i, i32 -10
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = and i16 %3, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %flags10.i = getelementptr i8, ptr %.pn11.i, i32 -10
  %5 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags10.i, align 2
  %7 = and i16 %6, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool13.not.i = icmp eq i16 %7, 0
  br i1 %tobool13.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %meta1.010.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %meta1.010.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %9)
  %cmp15.not.i = icmp eq i8 %9, 24
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false17.i:                                ; preds = %if.end.i
  %src_reg.i = getelementptr i8, ptr %.pn.in9.i, i32 -263
  %10 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %src_reg.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp20.not.i = icmp eq i8 %bf.clear.i, 1
  br i1 %cmp20.not.i, label %if.end23.i, label %lor.lhs.false17.i.for.inc.i_crit_edge

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end23.i:                                       ; preds = %lor.lhs.false17.i
  %imm.i = getelementptr i8, ptr %.pn.in9.i, i32 -260
  %11 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imm.i, align 4
  %imm27.i = getelementptr i8, ptr %.pn11.i, i32 -260
  %13 = inttoptr i32 %12 to ptr
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 4
  br i1 %cmp.i.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %id31.i = getelementptr inbounds %struct.bpf_map, ptr %13, i32 0, i32 11
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev_priv.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i, align 8
  %tid.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %17, i32 0, i32 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then30.i
  %id.0.in.i = phi ptr [ %id31.i, %if.then30.i ], [ %tid.i, %if.else.i ]
  %18 = ptrtoint ptr %id.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %id.0.i = load i32, ptr %id.0.in.i, align 4
  %19 = ptrtoint ptr %imm.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %id.0.i, ptr %imm.i, align 4
  %20 = ptrtoint ptr %imm27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %imm27.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end33.i, %lor.lhs.false17.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn.in9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.in.i = load ptr, ptr %.pn.in9.i, align 4
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %insns.i, %.pn.in.i
  %cmp9.not.i = icmp eq ptr %insns.i, %.pn.i
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp9.not.i
  br i1 %or.cond.i, label %for.inc.i.nfp_bpf_replace_map_ptrs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.nfp_bpf_replace_map_ptrs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_replace_map_ptrs.exit

nfp_bpf_replace_map_ptrs.exit:                    ; preds = %for.inc.i.nfp_bpf_replace_map_ptrs.exit_crit_edge, %entry.nfp_bpf_replace_map_ptrs.exit_crit_edge
  %23 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn53.i.i = load ptr, ptr %insns.i, align 4
  %cmp.not54.i.i = icmp eq ptr %.pn53.i.i, %insns.i
  br i1 %cmp.not54.i.i, label %nfp_bpf_replace_map_ptrs.exit.nfp_bpf_opt_reg_init.exit.i_crit_edge, label %nfp_bpf_replace_map_ptrs.exit.for.body.i.i_crit_edge

nfp_bpf_replace_map_ptrs.exit.for.body.i.i_crit_edge: ; preds = %nfp_bpf_replace_map_ptrs.exit
  br label %for.body.i.i

nfp_bpf_replace_map_ptrs.exit.nfp_bpf_opt_reg_init.exit.i_crit_edge: ; preds = %nfp_bpf_replace_map_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_reg_init.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %nfp_bpf_replace_map_ptrs.exit.for.body.i.i_crit_edge
  %.pn55.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn53.i.i, %nfp_bpf_replace_map_ptrs.exit.for.body.i.i_crit_edge ]
  %meta.0.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -264
  %24 = ptrtoint ptr %meta.0.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %insn.sroa.0.0.copyload.i.i = load i8, ptr %meta.0.i.i, align 8
  %insn.sroa.6.0.insn2.sroa_idx.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -263
  %25 = ptrtoint ptr %insn.sroa.6.0.insn2.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %insn.sroa.6.0.copyload.i.i = load i8, ptr %insn.sroa.6.0.insn2.sroa_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %insn.sroa.0.0.copyload.i.i)
  %cmp3.i.i = icmp eq i8 %insn.sroa.0.0.copyload.i.i, -81
  %bf.clear.i.i = and i8 %insn.sroa.6.0.copyload.i.i, 15
  %bf.lshr.i.i = lshr i8 %insn.sroa.6.0.copyload.i.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i.i, i8 %bf.lshr.i.i)
  %cmp8.i.i = icmp eq i8 %bf.clear.i.i, %bf.lshr.i.i
  %or.cond.i.i = select i1 %cmp3.i.i, i1 %cmp8.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %insn.sroa.0.0.copyload.i.i)
  %cmp12.i.i = icmp eq i8 %insn.sroa.0.0.copyload.i.i, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i.i)
  %cmp19.i.i = icmp eq i8 %bf.clear.i.i, 1
  %or.cond50.i.i = select i1 %cmp12.i.i, i1 %cmp19.i.i, i1 false
  %bf.lshr24.mask.i.i = and i8 %insn.sroa.6.0.copyload.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr24.mask.i.i)
  %cmp26.i.i = icmp eq i8 %bf.lshr24.mask.i.i, 96
  %or.cond51.i.i = select i1 %or.cond50.i.i, i1 %cmp26.i.i, i1 false
  br i1 %or.cond51.i.i, label %if.then28.i.i, label %if.end.i.i.if.end31.i.i_crit_edge

if.end.i.i.if.end31.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -10
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.i.i, align 2
  %28 = or i16 %27, 16
  store i16 %28, ptr %flags.i.i, align 2
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.end.i.i.if.end31.i.i_crit_edge
  %flags32.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -10
  %29 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags32.i.i, align 2
  %31 = and i16 %30, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i, label %if.end31.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge, label %if.end31.i.i.for.inc.i.i_crit_edge

if.end31.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end31.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_reg_init.exit.i

for.inc.i.i:                                      ; preds = %if.end31.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %32 = ptrtoint ptr %.pn55.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn55.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %insns.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_reg_init.exit.i

nfp_bpf_opt_reg_init.exit.i:                      ; preds = %for.inc.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge, %if.end31.i.i.nfp_bpf_opt_reg_init.exit.i_crit_edge, %nfp_bpf_replace_map_ptrs.exit.nfp_bpf_opt_reg_init.exit.i_crit_edge
  %33 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn81.i.i = load ptr, ptr %insns.i, align 4
  %cmp.not83.i.i = icmp eq ptr %.pn81.i.i, %insns.i
  br i1 %cmp.not83.i.i, label %nfp_bpf_opt_reg_init.exit.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge, label %nfp_bpf_opt_reg_init.exit.i.for.body.i5.i_crit_edge

nfp_bpf_opt_reg_init.exit.i.for.body.i5.i_crit_edge: ; preds = %nfp_bpf_opt_reg_init.exit.i
  br label %for.body.i5.i

nfp_bpf_opt_reg_init.exit.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge: ; preds = %nfp_bpf_opt_reg_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_neg_add_sub.exit.i

for.body.i5.i:                                    ; preds = %cleanup.i.i.for.body.i5.i_crit_edge, %nfp_bpf_opt_reg_init.exit.i.for.body.i5.i_crit_edge
  %.pn84.i.i = phi ptr [ %.pn.i9.i, %cleanup.i.i.for.body.i5.i_crit_edge ], [ %.pn81.i.i, %nfp_bpf_opt_reg_init.exit.i.for.body.i5.i_crit_edge ]
  %meta.085.i.i = getelementptr i8, ptr %.pn84.i.i, i32 -264
  %34 = ptrtoint ptr %meta.085.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %insn.sroa.0.0.copyload.i2.i = load i8, ptr %meta.085.i.i, align 8
  %insn.sroa.15.0.insn2.sroa_idx.i.i = getelementptr i8, ptr %.pn84.i.i, i32 -260
  %35 = ptrtoint ptr %insn.sroa.15.0.insn2.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %insn.sroa.15.0.copyload.i.i = load i32, ptr %insn.sroa.15.0.insn2.sroa_idx.i.i, align 4
  %flags.i3.i = getelementptr i8, ptr %.pn84.i.i, i32 -10
  %36 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i3.i, align 2
  %38 = and i16 %37, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i4.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i4.i, label %if.end.i6.i, label %for.body.i5.i.cleanup.i.i_crit_edge

for.body.i5.i.cleanup.i.i_crit_edge:              ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i6.i:                                      ; preds = %for.body.i5.i
  %39 = and i8 %insn.sroa.0.0.copyload.i2.i, 7
  %trunc.i.i = trunc i8 %insn.sroa.0.0.copyload.i2.i to i3
  %40 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i.i, label %land.lhs.true.i.i [
    i3 -1, label %if.end.i6.i.if.end5.i.i_crit_edge
    i3 -4, label %if.end.i6.i.if.end5.i.i_crit_edge146
  ]

if.end.i6.i.if.end5.i.i_crit_edge146:             ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.end.i6.i.if.end5.i.i_crit_edge:                ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i6.i
  %41 = add nsw i8 %39, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %42 = icmp ult i8 %41, 2
  br i1 %42, label %land.lhs.true.i.i.if.end5.i.i_crit_edge, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %if.end.i6.i.if.end5.i.i_crit_edge, %if.end.i6.i.if.end5.i.i_crit_edge146
  %conv6.i.i = zext i8 %insn.sroa.0.0.copyload.i2.i to i32
  %and7.i.i = and i32 %conv6.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %cmp8.not.i.i = icmp ne i32 %and7.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %insn.sroa.15.0.copyload.i.i)
  %cmp12.i7.i = icmp sgt i32 %insn.sroa.15.0.copyload.i.i, -1
  %or.cond.i8.i = select i1 %cmp8.not.i.i, i1 true, i1 %cmp12.i7.i
  br i1 %or.cond.i8.i, label %if.end5.i.i.cleanup.i.i_crit_edge, label %if.end15.i.i

if.end5.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end15.i.i:                                     ; preds = %if.end5.i.i
  %43 = add nsw i8 %39, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %44 = icmp ult i8 %43, 2
  br i1 %44, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  %and20.i.i = and i32 %conv6.i.i, 240
  %45 = add nsw i32 %and20.i.i, -48
  %46 = lshr exact i32 %45, 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %46, label %if.then17.i.i.cleanup.i.i_crit_edge [
    i32 0, label %if.then17.i.i.sw.bb.i.i_crit_edge
    i32 4, label %if.then17.i.i.sw.bb.i.i_crit_edge147
    i32 7, label %if.then17.i.i.sw.bb.i.i_crit_edge148
    i32 9, label %if.then17.i.i.sw.bb.i.i_crit_edge149
  ]

if.then17.i.i.sw.bb.i.i_crit_edge149:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.then17.i.i.sw.bb.i.i_crit_edge148:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.then17.i.i.sw.bb.i.i_crit_edge147:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.then17.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.then17.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

sw.bb.i.i:                                        ; preds = %if.then17.i.i.sw.bb.i.i_crit_edge, %if.then17.i.i.sw.bb.i.i_crit_edge147, %if.then17.i.i.sw.bb.i.i_crit_edge148, %if.then17.i.i.sw.bb.i.i_crit_edge149
  %jump_neg_op.i.i = getelementptr i8, ptr %.pn84.i.i, i32 -252
  %48 = ptrtoint ptr %jump_neg_op.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %jump_neg_op.i.i, align 4
  br label %if.end54.i.i

if.else.i.i:                                      ; preds = %if.end15.i.i
  %and23.i.i = and i8 %insn.sroa.0.0.copyload.i2.i, -16
  %49 = zext i8 %and23.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %and23.i.i, label %if.else.i.i.cleanup.i.i_crit_edge [
    i8 0, label %if.then26.i.i
    i8 16, label %if.else.i.i.if.end47.i.i_crit_edge
  ]

if.else.i.i.if.end47.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i.i

if.else.i.i.cleanup.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then26.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i8 %39, 16
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then26.i.i, %if.else.i.i.if.end47.i.i_crit_edge
  %insn.sroa.0.0.i.i = phi i8 [ %or.i.i, %if.then26.i.i ], [ %39, %if.else.i.i.if.end47.i.i_crit_edge ]
  %50 = ptrtoint ptr %meta.085.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %insn.sroa.0.0.i.i, ptr %meta.085.i.i, align 8
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.end47.i.i, %sw.bb.i.i
  %sub.i.i = sub i32 0, %insn.sroa.15.0.copyload.i.i
  %51 = ptrtoint ptr %insn.sroa.15.0.insn2.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i.i, ptr %insn.sroa.15.0.insn2.sroa_idx.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end54.i.i, %if.else.i.i.cleanup.i.i_crit_edge, %if.then17.i.i.cleanup.i.i_crit_edge, %if.end5.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i5.i.cleanup.i.i_crit_edge
  %52 = ptrtoint ptr %.pn84.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i9.i = load ptr, ptr %.pn84.i.i, align 4
  %cmp.not.i10.i = icmp eq ptr %.pn.i9.i, %insns.i
  br i1 %cmp.not.i10.i, label %cleanup.i.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge, label %cleanup.i.i.for.body.i5.i_crit_edge

cleanup.i.i.for.body.i5.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i5.i

cleanup.i.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_neg_add_sub.exit.i

nfp_bpf_opt_neg_add_sub.exit.i:                   ; preds = %cleanup.i.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge, %nfp_bpf_opt_reg_init.exit.i.nfp_bpf_opt_neg_add_sub.exit.i_crit_edge
  %53 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.in88.i.i = load ptr, ptr %insns.i, align 4
  %54 = ptrtoint ptr %.pn.in88.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn89.i.i = load ptr, ptr %.pn.in88.i.i, align 8
  %cmp.not90.i.i = icmp eq ptr %insns.i, %.pn.in88.i.i
  %cmp9.not91.i.i = icmp eq ptr %insns.i, %.pn89.i.i
  %or.cond92.i.i = select i1 %cmp.not90.i.i, i1 true, i1 %cmp9.not91.i.i
  br i1 %or.cond92.i.i, label %nfp_bpf_opt_neg_add_sub.exit.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge, label %nfp_bpf_opt_neg_add_sub.exit.i.for.body.i13.i_crit_edge

nfp_bpf_opt_neg_add_sub.exit.i.for.body.i13.i_crit_edge: ; preds = %nfp_bpf_opt_neg_add_sub.exit.i
  br label %for.body.i13.i

nfp_bpf_opt_neg_add_sub.exit.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge: ; preds = %nfp_bpf_opt_neg_add_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ld_mask.exit.i

for.body.i13.i:                                   ; preds = %cleanup.i20.i.for.body.i13.i_crit_edge, %nfp_bpf_opt_neg_add_sub.exit.i.for.body.i13.i_crit_edge
  %.pn94.i.i = phi ptr [ %.pn.i17.i, %cleanup.i20.i.for.body.i13.i_crit_edge ], [ %.pn89.i.i, %nfp_bpf_opt_neg_add_sub.exit.i.for.body.i13.i_crit_edge ]
  %.pn.in93.i.i = phi ptr [ %.pn.in.i.i, %cleanup.i20.i.for.body.i13.i_crit_edge ], [ %.pn.in88.i.i, %nfp_bpf_opt_neg_add_sub.exit.i.for.body.i13.i_crit_edge ]
  %meta2.0.i.i = getelementptr i8, ptr %.pn94.i.i, i32 -264
  %meta1.0.i.i = getelementptr i8, ptr %.pn.in93.i.i, i32 -264
  %55 = ptrtoint ptr %meta1.0.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %insn.sroa.0.0.copyload.i12.i = load i8, ptr %meta1.0.i.i, align 8
  %56 = ptrtoint ptr %meta2.0.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %next10.sroa.0.0.copyload.i.i = load i8, ptr %meta2.0.i.i, align 8
  %next10.sroa.5.0.insn12.sroa_idx.i.i = getelementptr i8, ptr %.pn94.i.i, i32 -263
  %57 = ptrtoint ptr %next10.sroa.5.0.insn12.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %next10.sroa.5.0.copyload.i.i = load i8, ptr %next10.sroa.5.0.insn12.sroa_idx.i.i, align 1
  %next10.sroa.9.0.insn12.sroa_idx.i.i = getelementptr i8, ptr %.pn94.i.i, i32 -260
  %58 = ptrtoint ptr %next10.sroa.9.0.insn12.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %next10.sroa.9.0.copyload.i.i = load i32, ptr %next10.sroa.9.0.insn12.sroa_idx.i.i, align 4
  %conv.i.i = zext i8 %insn.sroa.0.0.copyload.i12.i to i32
  %and.i.i = and i32 %conv.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp13.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp13.not.i.i, label %if.end.i14.i, label %for.body.i13.i.cleanup.i20.i_crit_edge

for.body.i13.i.cleanup.i20.i_crit_edge:           ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i20.i

if.end.i14.i:                                     ; preds = %for.body.i13.i
  %and17.i.i = and i8 %insn.sroa.0.0.copyload.i12.i, -32
  %59 = zext i8 %and17.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %and17.i.i, label %if.end.i14.i.cleanup.i20.i_crit_edge [
    i8 32, label %if.end.i14.i.if.end26.i.i_crit_edge
    i8 64, label %if.end.i14.i.if.end26.i.i_crit_edge150
  ]

if.end.i14.i.if.end26.i.i_crit_edge150:           ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.end.i14.i.if.end26.i.i_crit_edge:              ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.end.i14.i.cleanup.i20.i_crit_edge:             ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i20.i

if.end26.i.i:                                     ; preds = %if.end.i14.i.if.end26.i.i_crit_edge, %if.end.i14.i.if.end26.i.i_crit_edge150
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %next10.sroa.0.0.copyload.i.i)
  %cmp29.not.i.i = icmp eq i8 %next10.sroa.0.0.copyload.i.i, 87
  br i1 %cmp29.not.i.i, label %if.end37.i.i, label %if.end26.i.i.cleanup.i20.i_crit_edge

if.end26.i.i.cleanup.i20.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i20.i

if.end37.i.i:                                     ; preds = %if.end26.i.i
  %and35.i.i = and i32 %conv.i.i, 24
  %arrayidx.i.i = getelementptr [17 x i32], ptr @nfp_bpf_opt_ld_mask.exp_mask, i32 0, i32 %and35.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %next10.sroa.9.0.copyload.i.i)
  %cmp42.not.i.i = icmp eq i32 %61, %next10.sroa.9.0.copyload.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next10.sroa.5.0.copyload.i.i)
  %62 = icmp eq i8 %next10.sroa.5.0.copyload.i.i, 0
  %or.cond87.i.i = select i1 %cmp42.not.i.i, i1 %62, i1 false
  br i1 %or.cond87.i.i, label %if.end52.i.i, label %if.end37.i.i.cleanup.i20.i_crit_edge

if.end37.i.i.cleanup.i20.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i20.i

if.end52.i.i:                                     ; preds = %if.end37.i.i
  %flags.i15.i = getelementptr i8, ptr %.pn94.i.i, i32 -10
  %63 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags.i15.i, align 2
  %65 = and i16 %64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool55.not.i.i = icmp eq i16 %65, 0
  br i1 %tobool55.not.i.i, label %if.end57.i.i, label %if.end52.i.i.cleanup.i20.i_crit_edge

if.end52.i.i.cleanup.i20.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i20.i

if.end57.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i16.i = or i16 %64, 16
  %66 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %or.i16.i, ptr %flags.i15.i, align 2
  br label %cleanup.i20.i

cleanup.i20.i:                                    ; preds = %if.end57.i.i, %if.end52.i.i.cleanup.i20.i_crit_edge, %if.end37.i.i.cleanup.i20.i_crit_edge, %if.end26.i.i.cleanup.i20.i_crit_edge, %if.end.i14.i.cleanup.i20.i_crit_edge, %for.body.i13.i.cleanup.i20.i_crit_edge
  %67 = ptrtoint ptr %.pn.in93.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.in.i.i = load ptr, ptr %.pn.in93.i.i, align 4
  %68 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i17.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i18.i = icmp eq ptr %insns.i, %.pn.in.i.i
  %cmp9.not.i.i = icmp eq ptr %insns.i, %.pn.i17.i
  %or.cond.i19.i = select i1 %cmp.not.i18.i, i1 true, i1 %cmp9.not.i.i
  br i1 %or.cond.i19.i, label %cleanup.i20.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge, label %cleanup.i20.i.for.body.i13.i_crit_edge

cleanup.i20.i.for.body.i13.i_crit_edge:           ; preds = %cleanup.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13.i

cleanup.i20.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge: ; preds = %cleanup.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ld_mask.exit.i

nfp_bpf_opt_ld_mask.exit.i:                       ; preds = %cleanup.i20.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge, %nfp_bpf_opt_neg_add_sub.exit.i.nfp_bpf_opt_ld_mask.exit.i_crit_edge
  %69 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn147155.i.i = load ptr, ptr %insns.i, align 4
  %70 = ptrtoint ptr %.pn147155.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.in156.i.i = load ptr, ptr %.pn147155.i.i, align 8
  %71 = ptrtoint ptr %.pn.in156.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn157.i.i = load ptr, ptr %.pn.in156.i.i, align 8
  %cmp.not158.i.i = icmp eq ptr %insns.i, %.pn147155.i.i
  %cmp14.not159.i.i = icmp eq ptr %insns.i, %.pn.in156.i.i
  %or.cond160.i.i = or i1 %cmp.not158.i.i, %cmp14.not159.i.i
  %cmp17.not161.i.i = icmp eq ptr %insns.i, %.pn157.i.i
  %or.cond148162.i.i = select i1 %or.cond160.i.i, i1 true, i1 %cmp17.not161.i.i
  br i1 %or.cond148162.i.i, label %nfp_bpf_opt_ld_mask.exit.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge, label %nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge

nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge: ; preds = %nfp_bpf_opt_ld_mask.exit.i
  br label %for.body.i27.i

nfp_bpf_opt_ld_mask.exit.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge: ; preds = %nfp_bpf_opt_ld_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ld_shift.exit.i

for.body.i27.i:                                   ; preds = %cleanup.i35.i.for.body.i27.i_crit_edge, %nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge
  %.pn165.i.i = phi ptr [ %.pn.i32.i, %cleanup.i35.i.for.body.i27.i_crit_edge ], [ %.pn157.i.i, %nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge ]
  %.pn.in164.i.i = phi ptr [ %.pn.in.i31.i, %cleanup.i35.i.for.body.i27.i_crit_edge ], [ %.pn.in156.i.i, %nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge ]
  %.pn147163.i.i = phi ptr [ %.pn147.i.i, %cleanup.i35.i.for.body.i27.i_crit_edge ], [ %.pn147155.i.i, %nfp_bpf_opt_ld_mask.exit.i.for.body.i27.i_crit_edge ]
  %meta3.0.i.i = getelementptr i8, ptr %.pn165.i.i, i32 -264
  %meta2.0.i22.i = getelementptr i8, ptr %.pn.in164.i.i, i32 -264
  %meta1.0.i23.i = getelementptr i8, ptr %.pn147163.i.i, i32 -264
  %72 = ptrtoint ptr %meta1.0.i23.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %insn.sroa.0.0.copyload.i24.i = load i8, ptr %meta1.0.i23.i, align 8
  %73 = ptrtoint ptr %meta2.0.i22.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %next1.sroa.0.0.copyload.i.i = load i8, ptr %meta2.0.i22.i, align 8
  %next1.sroa.6.0.insn20.sroa_idx.i.i = getelementptr i8, ptr %.pn.in164.i.i, i32 -263
  %74 = ptrtoint ptr %next1.sroa.6.0.insn20.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %next1.sroa.6.0.copyload.i.i = load i8, ptr %next1.sroa.6.0.insn20.sroa_idx.i.i, align 1
  %next1.sroa.10.0.insn20.sroa_idx.i.i = getelementptr i8, ptr %.pn.in164.i.i, i32 -260
  %75 = ptrtoint ptr %next1.sroa.10.0.insn20.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %next1.sroa.10.0.copyload.i.i = load i32, ptr %next1.sroa.10.0.insn20.sroa_idx.i.i, align 4
  %76 = ptrtoint ptr %meta3.0.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %next218.sroa.0.0.copyload.i.i = load i8, ptr %meta3.0.i.i, align 8
  %next218.sroa.6.0.insn21.sroa_idx.i.i = getelementptr i8, ptr %.pn165.i.i, i32 -263
  %77 = ptrtoint ptr %next218.sroa.6.0.insn21.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %next218.sroa.6.0.copyload.i.i = load i8, ptr %next218.sroa.6.0.insn21.sroa_idx.i.i, align 1
  %next218.sroa.10.0.insn21.sroa_idx.i.i = getelementptr i8, ptr %.pn165.i.i, i32 -260
  %78 = ptrtoint ptr %next218.sroa.10.0.insn21.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %next218.sroa.10.0.copyload.i.i = load i32, ptr %next218.sroa.10.0.insn21.sroa_idx.i.i, align 4
  %conv.i25.i = zext i8 %insn.sroa.0.0.copyload.i24.i to i32
  %and.i26.i = and i32 %conv.i25.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %cmp22.not.i.i = icmp eq i32 %and.i26.i, 0
  br i1 %cmp22.not.i.i, label %if.end.i28.i, label %for.body.i27.i.cleanup.i35.i_crit_edge

for.body.i27.i.cleanup.i35.i_crit_edge:           ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end.i28.i:                                     ; preds = %for.body.i27.i
  %and26.i.i = and i8 %insn.sroa.0.0.copyload.i24.i, -32
  %79 = zext i8 %and26.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %and26.i.i, label %if.end.i28.i.cleanup.i35.i_crit_edge [
    i8 32, label %if.end.i28.i.if.end36.i.i_crit_edge
    i8 64, label %if.end.i28.i.if.end36.i.i_crit_edge151
  ]

if.end.i28.i.if.end36.i.i_crit_edge151:           ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end.i28.i.if.end36.i.i_crit_edge:              ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end.i28.i.cleanup.i35.i_crit_edge:             ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end36.i.i:                                     ; preds = %if.end.i28.i.if.end36.i.i_crit_edge, %if.end.i28.i.if.end36.i.i_crit_edge151
  %and39.i.i = and i32 %conv.i25.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %cmp40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %cmp40.not.i.i, label %if.end43.i.i, label %if.end36.i.i.cleanup.i35.i_crit_edge

if.end36.i.i.cleanup.i35.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end43.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %next1.sroa.0.0.copyload.i.i)
  %cmp46.i.i = icmp eq i8 %next1.sroa.0.0.copyload.i.i, 103
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %next218.sroa.0.0.copyload.i.i)
  %cmp51.i.i = icmp eq i8 %next218.sroa.0.0.copyload.i.i, 119
  %or.cond149.i.i = select i1 %cmp46.i.i, i1 %cmp51.i.i, i1 false
  br i1 %or.cond149.i.i, label %if.end43.i.i.if.end64.i.i_crit_edge, label %land.lhs.true53.i.i

if.end43.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i.i

land.lhs.true53.i.i:                              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %next1.sroa.0.0.copyload.i.i)
  %cmp56.i.i = icmp eq i8 %next1.sroa.0.0.copyload.i.i, 119
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %next218.sroa.0.0.copyload.i.i)
  %cmp61.i.i = icmp eq i8 %next218.sroa.0.0.copyload.i.i, 103
  %or.cond150.i.i = select i1 %cmp56.i.i, i1 %cmp61.i.i, i1 false
  br i1 %or.cond150.i.i, label %land.lhs.true53.i.i.if.end64.i.i_crit_edge, label %land.lhs.true53.i.i.cleanup.i35.i_crit_edge

land.lhs.true53.i.i.cleanup.i35.i_crit_edge:      ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

land.lhs.true53.i.i.if.end64.i.i_crit_edge:       ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %land.lhs.true53.i.i.if.end64.i.i_crit_edge, %if.end43.i.i.if.end64.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %next1.sroa.6.0.copyload.i.i)
  %80 = icmp eq i8 %next1.sroa.6.0.copyload.i.i, 0
  %bf.clear72.i.i = and i8 %next218.sroa.6.0.copyload.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear72.i.i)
  %tobool74.not.i.i = icmp eq i8 %bf.clear72.i.i, 0
  %or.cond152.i.i = select i1 %80, i1 %tobool74.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %next218.sroa.6.0.copyload.i.i)
  %tobool80.not.i.i = icmp ult i8 %next218.sroa.6.0.copyload.i.i, 16
  %or.cond153.i.i = select i1 %or.cond152.i.i, i1 %tobool80.not.i.i, i1 false
  br i1 %or.cond153.i.i, label %if.end82.i.i, label %if.end64.i.i.cleanup.i35.i_crit_edge

if.end64.i.i.cleanup.i35.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end82.i.i:                                     ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %next1.sroa.10.0.copyload.i.i)
  %cmp83.not.i.i = icmp eq i32 %next1.sroa.10.0.copyload.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %next218.sroa.10.0.copyload.i.i)
  %cmp87.not.i.i = icmp eq i32 %next218.sroa.10.0.copyload.i.i, 32
  %or.cond154.i.i = select i1 %cmp83.not.i.i, i1 %cmp87.not.i.i, i1 false
  br i1 %or.cond154.i.i, label %if.end90.i.i, label %if.end82.i.i.cleanup.i35.i_crit_edge

if.end82.i.i.cleanup.i35.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end90.i.i:                                     ; preds = %if.end82.i.i
  %flags.i29.i = getelementptr i8, ptr %.pn.in164.i.i, i32 -10
  %81 = ptrtoint ptr %flags.i29.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags.i29.i, align 2
  %83 = and i16 %82, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool93.not.i.i = icmp eq i16 %83, 0
  br i1 %tobool93.not.i.i, label %lor.lhs.false94.i.i, label %if.end90.i.i.cleanup.i35.i_crit_edge

if.end90.i.i.cleanup.i35.i_crit_edge:             ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

lor.lhs.false94.i.i:                              ; preds = %if.end90.i.i
  %flags95.i.i = getelementptr i8, ptr %.pn165.i.i, i32 -10
  %84 = ptrtoint ptr %flags95.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags95.i.i, align 2
  %86 = and i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool98.not.i.i = icmp eq i16 %86, 0
  br i1 %tobool98.not.i.i, label %if.end100.i.i, label %lor.lhs.false94.i.i.cleanup.i35.i_crit_edge

lor.lhs.false94.i.i.cleanup.i35.i_crit_edge:      ; preds = %lor.lhs.false94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i35.i

if.end100.i.i:                                    ; preds = %lor.lhs.false94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i30.i = or i16 %82, 16
  %87 = ptrtoint ptr %flags.i29.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %or.i30.i, ptr %flags.i29.i, align 2
  %88 = ptrtoint ptr %flags95.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags95.i.i, align 2
  %90 = or i16 %89, 16
  store i16 %90, ptr %flags95.i.i, align 2
  br label %cleanup.i35.i

cleanup.i35.i:                                    ; preds = %if.end100.i.i, %lor.lhs.false94.i.i.cleanup.i35.i_crit_edge, %if.end90.i.i.cleanup.i35.i_crit_edge, %if.end82.i.i.cleanup.i35.i_crit_edge, %if.end64.i.i.cleanup.i35.i_crit_edge, %land.lhs.true53.i.i.cleanup.i35.i_crit_edge, %if.end36.i.i.cleanup.i35.i_crit_edge, %if.end.i28.i.cleanup.i35.i_crit_edge, %for.body.i27.i.cleanup.i35.i_crit_edge
  %91 = ptrtoint ptr %.pn147163.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn147.i.i = load ptr, ptr %.pn147163.i.i, align 4
  %92 = ptrtoint ptr %.pn147.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn.in.i31.i = load ptr, ptr %.pn147.i.i, align 8
  %93 = ptrtoint ptr %.pn.in.i31.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i32.i = load ptr, ptr %.pn.in.i31.i, align 8
  %cmp.not.i33.i = icmp eq ptr %insns.i, %.pn147.i.i
  %cmp14.not.i.i = icmp eq ptr %insns.i, %.pn.in.i31.i
  %or.cond.i34.i = or i1 %cmp.not.i33.i, %cmp14.not.i.i
  %cmp17.not.i.i = icmp eq ptr %insns.i, %.pn.i32.i
  %or.cond148.i.i = select i1 %or.cond.i34.i, i1 true, i1 %cmp17.not.i.i
  br i1 %or.cond148.i.i, label %cleanup.i35.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge, label %cleanup.i35.i.for.body.i27.i_crit_edge

cleanup.i35.i.for.body.i27.i_crit_edge:           ; preds = %cleanup.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i27.i

cleanup.i35.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge: ; preds = %cleanup.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ld_shift.exit.i

nfp_bpf_opt_ld_shift.exit.i:                      ; preds = %cleanup.i35.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge, %nfp_bpf_opt_ld_mask.exit.i.nfp_bpf_opt_ld_shift.exit.i_crit_edge
  %94 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn.in318.i.i = load ptr, ptr %insns.i, align 4
  %95 = ptrtoint ptr %.pn.in318.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn320.i.i = load ptr, ptr %.pn.in318.i.i, align 8
  %cmp.not322.i.i = icmp eq ptr %insns.i, %.pn.in318.i.i
  %cmp9.not323.i.i = icmp eq ptr %insns.i, %.pn320.i.i
  %or.cond324.i.i = select i1 %cmp.not322.i.i, i1 true, i1 %cmp9.not323.i.i
  br i1 %or.cond324.i.i, label %nfp_bpf_opt_ld_shift.exit.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge, label %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge

nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge: ; preds = %nfp_bpf_opt_ld_shift.exit.i
  br label %for.body.i37.i

nfp_bpf_opt_ld_shift.exit.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge: ; preds = %nfp_bpf_opt_ld_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ldst_gather.exit.i

for.body.i37.i:                                   ; preds = %cleanup.i49.i.for.body.i37.i_crit_edge, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge
  %.pn337.i.i = phi ptr [ %.pn.i45.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ %.pn320.i.i, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %.pn.in331.i.i = phi ptr [ %.pn.in.i44.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ %.pn.in318.i.i, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %head_ld_meta.0330.i.i = phi ptr [ %head_ld_meta.3.i.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ null, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %head_st_meta.0329.i.i = phi ptr [ %head_st_meta.3.i.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ null, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %prev_ld.0328.i.i = phi ptr [ %prev_ld.2.i.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ null, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %prev_st.0327.i.i = phi ptr [ %prev_st.2.i.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ null, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %count.0325.i.i = phi i8 [ %count.2.i.i, %cleanup.i49.i.for.body.i37.i_crit_edge ], [ 0, %nfp_bpf_opt_ld_shift.exit.i.for.body.i37.i_crit_edge ]
  %meta1.0335.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -264
  %meta2.0341.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -264
  %96 = ptrtoint ptr %meta1.0335.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %meta1.0335.i.i, align 8
  %98 = and i8 %97, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %98)
  %cmp.i.i.i.i = icmp eq i8 %98, 97
  br i1 %cmp.i.i.i.i, label %lor.lhs.false.i.i.i, label %for.body.i37.i.if.then.i.i_crit_edge

for.body.i37.i.if.then.i.i_crit_edge:             ; preds = %for.body.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i37.i
  %99 = ptrtoint ptr %meta2.0341.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %meta2.0341.i.i, align 8
  %101 = and i8 %100, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %101)
  %cmp.i40.i.i.i = icmp eq i8 %101, 99
  br i1 %cmp.i40.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %102 = getelementptr i8, ptr %.pn.in331.i.i, i32 -256
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %104, label %if.end.i.i.i.if.then.i.i_crit_edge [
    i32 8, label %if.end.i.i.i.if.end7.i.i.i_crit_edge
    i32 4, label %if.end.i.i.i.if.end7.i.i.i_crit_edge152
  ]

if.end.i.i.i.if.end7.i.i.i_crit_edge152:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i.if.end7.i.i.i_crit_edge, %if.end.i.i.i.if.end7.i.i.i_crit_edge152
  %106 = getelementptr i8, ptr %.pn337.i.i, i32 -256
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %108)
  %cmp10.not.i.i.i = icmp eq i32 %108, 8
  br i1 %cmp10.not.i.i.i, label %if.end12.i.i.i, label %if.end7.i.i.i.if.then.i.i_crit_edge

if.end7.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end12.i.i.i:                                   ; preds = %if.end7.i.i.i
  %109 = xor i8 %100, %97
  %110 = and i8 %109, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp16.not.i.i.i = icmp eq i8 %110, 0
  br i1 %cmp16.not.i.i.i, label %if.end19.i.i.i, label %if.end12.i.i.i.if.then.i.i_crit_edge

if.end12.i.i.i.if.then.i.i_crit_edge:             ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end19.i.i.i:                                   ; preds = %if.end12.i.i.i
  %dst_reg.i.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -263
  %111 = ptrtoint ptr %dst_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i.i.i = load i8, ptr %dst_reg.i.i.i, align 1
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 4
  %src_reg.i.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -263
  %112 = ptrtoint ptr %src_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load21.i.i.i = load i8, ptr %src_reg.i.i.i, align 1
  %bf.clear.i.i.i = and i8 %bf.load21.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i.i.i, i8 %bf.clear.i.i.i)
  %cmp23.not.i.i.i = icmp eq i8 %bf.lshr.i.i.i, %bf.clear.i.i.i
  br i1 %cmp23.not.i.i.i, label %curr_pair_is_memcpy.exit.i.i, label %if.end19.i.i.i.if.then.i.i_crit_edge

if.end19.i.i.i.if.then.i.i_crit_edge:             ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

curr_pair_is_memcpy.exit.i.i:                     ; preds = %if.end19.i.i.i
  %flags.i.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -10
  %113 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %flags.i.i.i, align 2
  %115 = and i16 %114, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.not.i.i.i = icmp eq i16 %115, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i, label %curr_pair_is_memcpy.exit.i.i.if.then.i.i_crit_edge

curr_pair_is_memcpy.exit.i.i.if.then.i.i_crit_edge: ; preds = %curr_pair_is_memcpy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %curr_pair_is_memcpy.exit.i.i
  %tobool.not.i278.i.i = icmp eq ptr %prev_ld.0328.i.i, null
  br i1 %tobool.not.i278.i.i, label %lor.lhs.false.i.i.lor.lhs.false12.i.i_crit_edge, label %if.end.i279.i.i

lor.lhs.false.i.i.lor.lhs.false12.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false12.i.i

if.end.i279.i.i:                                  ; preds = %lor.lhs.false.i.i
  %116 = ptrtoint ptr %prev_ld.0328.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %prev_ld.0328.i.i, align 4
  %118 = lshr i8 %117, 3
  %119 = and i8 %118, 3
  %120 = xor i8 %119, 2
  %121 = zext i8 %120 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nfp_bpf_jit, i32 0, i32 %121
  %122 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %122)
  %switch.load = load i32, ptr %switch.gep, align 4
  %src_reg.i280.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_ld.0328.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %src_reg.i280.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i281.i.i = load i8, ptr %src_reg.i280.i.i, align 1
  %off.i.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_ld.0328.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %off.i.i.i, align 2
  %off126.i.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_st.0327.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %off126.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %off126.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.load.i.i.i, i8 %bf.load.i281.i.i)
  %cmp141.not.i.i.i = icmp eq i8 %bf.load.i.i.i, %bf.load.i281.i.i
  br i1 %cmp141.not.i.i.i, label %lor.lhs.false.i283.i.i, label %if.end.i279.i.i.if.then.i.i_crit_edge

if.end.i279.i.i.if.then.i.i_crit_edge:            ; preds = %if.end.i279.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i283.i.i:                           ; preds = %if.end.i279.i.i
  %128 = lshr i8 %97, 3
  %129 = and i8 %128, 3
  %130 = xor i8 %129, 2
  %131 = zext i8 %130 to i32
  %switch.gep122 = getelementptr inbounds [4 x i32], ptr @switch.table.nfp_bpf_jit.47, i32 0, i32 %131
  %132 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %132)
  %switch.load123 = load i32, ptr %switch.gep122, align 4
  %dst_reg.i282.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_st.0327.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %dst_reg.i282.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load122.i.i.i = load i8, ptr %dst_reg.i282.i.i, align 1
  %cmp148.not.unshifted.i.i.i = xor i8 %bf.load122.i.i.i, %bf.load21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cmp148.not.unshifted.i.i.i)
  %cmp148.not.i.i.i = icmp ult i8 %cmp148.not.unshifted.i.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load123, i32 %switch.load)
  %cmp154.not.i.i.i = icmp eq i32 %switch.load123, %switch.load
  %or.cond.i.i.i = and i1 %cmp154.not.i.i.i, %cmp148.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end157.i.i.i, label %lor.lhs.false.i283.i.i.if.then.i.i_crit_edge

lor.lhs.false.i283.i.i.if.then.i.i_crit_edge:     ; preds = %lor.lhs.false.i283.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end157.i.i.i:                                  ; preds = %lor.lhs.false.i283.i.i
  %flags.i284.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -10
  %134 = ptrtoint ptr %flags.i284.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %flags.i284.i.i, align 2
  %136 = and i16 %135, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool160.not.i.i.i = icmp eq i16 %136, 0
  br i1 %tobool160.not.i.i.i, label %if.end162.i.i.i, label %if.end157.i.i.i.if.then.i.i_crit_edge

if.end157.i.i.i.if.then.i.i_crit_edge:            ; preds = %if.end157.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end162.i.i.i:                                  ; preds = %if.end157.i.i.i
  %conv163.i.i.i = sext i16 %125 to i32
  %add.i.i.i = add nsw i32 %switch.load, %conv163.i.i.i
  %off165.i.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -262
  %137 = ptrtoint ptr %off165.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %off165.i.i.i, align 2
  %conv166.i.i.i = sext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv166.i.i.i)
  %cmp167.i.i.i = icmp eq i32 %add.i.i.i, %conv166.i.i.i
  br i1 %cmp167.i.i.i, label %land.lhs.true.i.i.i, label %if.end162.i.i.i.if.end177.i.i.i_crit_edge

if.end162.i.i.i.if.end177.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end162.i.i.i
  %conv169.i.i.i = sext i16 %127 to i32
  %add171.i.i.i = add nsw i32 %switch.load, %conv169.i.i.i
  %off172.i.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -262
  %139 = ptrtoint ptr %off172.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %off172.i.i.i, align 2
  %conv173.i.i.i = sext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add171.i.i.i, i32 %conv173.i.i.i)
  %cmp174.i.i.i = icmp eq i32 %add171.i.i.i, %conv173.i.i.i
  br i1 %cmp174.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false12.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end177.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end177.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177.i.i.i

land.lhs.true.i.i.i.lor.lhs.false12.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false12.i.i

if.end177.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.end177.i.i.i_crit_edge, %if.end162.i.i.i.if.end177.i.i.i_crit_edge
  %add181.i.i.i = add nsw i32 %switch.load, %conv166.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add181.i.i.i, i32 %conv163.i.i.i)
  %cmp183.i.i.i = icmp eq i32 %add181.i.i.i, %conv163.i.i.i
  br i1 %cmp183.i.i.i, label %land.lhs.true185.i.i.i, label %if.end177.i.i.i.if.then.i.i_crit_edge

if.end177.i.i.i.if.then.i.i_crit_edge:            ; preds = %if.end177.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true185.i.i.i:                           ; preds = %if.end177.i.i.i
  %off186.i.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -262
  %141 = ptrtoint ptr %off186.i.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %off186.i.i.i, align 2
  %conv187.i.i.i = sext i16 %142 to i32
  %add189.i.i.i = add nsw i32 %switch.load, %conv187.i.i.i
  %conv190.i.i.i = sext i16 %127 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add189.i.i.i, i32 %conv190.i.i.i)
  %cmp191.i.i.i = icmp eq i32 %add189.i.i.i, %conv190.i.i.i
  br i1 %cmp191.i.i.i, label %land.lhs.true185.i.i.i.lor.lhs.false12.i.i_crit_edge, label %land.lhs.true185.i.i.i.if.then.i.i_crit_edge

land.lhs.true185.i.i.i.if.then.i.i_crit_edge:     ; preds = %land.lhs.true185.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true185.i.i.i.lor.lhs.false12.i.i_crit_edge: ; preds = %land.lhs.true185.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false12.i.i

lor.lhs.false12.i.i:                              ; preds = %land.lhs.true185.i.i.i.lor.lhs.false12.i.i_crit_edge, %land.lhs.true.i.i.i.lor.lhs.false12.i.i_crit_edge, %lor.lhs.false.i.i.lor.lhs.false12.i.i_crit_edge
  %tobool.not.i38.i = icmp eq ptr %head_ld_meta.0330.i.i, null
  br i1 %tobool.not.i38.i, label %lor.lhs.false12.i.i.if.end128.i.i_crit_edge, label %land.lhs.true.i39.i

lor.lhs.false12.i.i.if.end128.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128.i.i

land.lhs.true.i39.i:                              ; preds = %lor.lhs.false12.i.i
  %143 = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.0330.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  %146 = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_st_meta.0329.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %148)
  %cmp.not.i.i.i = icmp eq i32 %145, %148
  br i1 %cmp.not.i.i.i, label %if.end.i286.i.i, label %land.lhs.true.i39.i.lor.lhs.false14.i.i_crit_edge

land.lhs.true.i39.i.lor.lhs.false14.i.i_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false14.i.i

if.end.i286.i.i:                                  ; preds = %land.lhs.true.i39.i
  %id.i.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.0330.i.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %149 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %id.i.i.i, align 8
  %id5.i.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_st_meta.0329.i.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %151 = ptrtoint ptr %id5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %id5.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp6.not.i.i.i = icmp eq i32 %150, %152
  br i1 %cmp6.not.i.i.i, label %if.end8.i.i.i, label %if.end.i286.i.i.if.then.i.i_crit_edge

if.end.i286.i.i.if.then.i.i_crit_edge:            ; preds = %if.end.i286.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i286.i.i
  %off.i287.i.i = getelementptr inbounds %struct.bpf_insn, ptr %head_ld_meta.0330.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %off.i287.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %off.i287.i.i, align 2
  %off10.i.i.i = getelementptr inbounds %struct.bpf_reg_state, ptr %143, i32 0, i32 1
  %155 = ptrtoint ptr %off10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %off10.i.i.i, align 4
  %157 = trunc i32 %156 to i16
  %conv11.i.i.i = add i16 %154, %157
  %off13.i.i.i = getelementptr inbounds %struct.bpf_insn, ptr %head_st_meta.0329.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %off13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %off13.i.i.i, align 2
  %off16.i.i.i = getelementptr inbounds %struct.bpf_reg_state, ptr %146, i32 0, i32 1
  %160 = ptrtoint ptr %off16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %off16.i.i.i, align 4
  %162 = trunc i32 %161 to i16
  %conv18.i.i.i = add i16 %159, %162
  %off19.i.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -262
  %163 = ptrtoint ptr %off19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %off19.i.i.i, align 2
  %conv24.i.i.i = add i16 %164, %157
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i.i, i16 %conv11.i.i.i)
  %cmp27.i.i.i = icmp sle i16 %conv24.i.i.i, %conv11.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv11.i.i.i, i16 %conv18.i.i.i)
  %cmp31.i.i.i = icmp sge i16 %conv11.i.i.i, %conv18.i.i.i
  %or.cond.i288.i.i = select i1 %cmp27.i.i.i, i1 true, i1 %cmp31.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i.i, i16 %conv18.i.i.i)
  %cmp36.not.i.i.i = icmp slt i16 %conv24.i.i.i, %conv18.i.i.i
  %or.cond77.i.i.i = select i1 %or.cond.i288.i.i, i1 true, i1 %cmp36.not.i.i.i
  br i1 %or.cond77.i.i.i, label %cross_mem_access.exit.i.i, label %if.end8.i.i.i.if.then.i.i_crit_edge

if.end8.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

cross_mem_access.exit.i.i:                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i.i, i16 %conv11.i.i.i)
  %cmp42.i.i.i = icmp slt i16 %conv24.i.i.i, %conv11.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv11.i.i.i, i16 %conv18.i.i.i)
  %cmp47.i.i.i = icmp sgt i16 %conv11.i.i.i, %conv18.i.i.i
  %or.cond78.i.i.i = select i1 %cmp42.i.i.i, i1 %cmp47.i.i.i, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i.i, i16 %conv18.i.i.i)
  %cmp52.not.i.i.i = icmp sle i16 %conv24.i.i.i, %conv18.i.i.i
  %or.cond79.i.i.i = select i1 %or.cond78.i.i.i, i1 %cmp52.not.i.i.i, i1 false
  br i1 %or.cond79.i.i.i, label %cross_mem_access.exit.i.i.if.then.i.i_crit_edge, label %cross_mem_access.exit.i.i.lor.lhs.false14.i.i_crit_edge

cross_mem_access.exit.i.i.lor.lhs.false14.i.i_crit_edge: ; preds = %cross_mem_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false14.i.i

cross_mem_access.exit.i.i.if.then.i.i_crit_edge:  ; preds = %cross_mem_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false14.i.i:                              ; preds = %cross_mem_access.exit.i.i.lor.lhs.false14.i.i_crit_edge, %land.lhs.true.i39.i.lor.lhs.false14.i.i_crit_edge
  %ldst_gather_len.i.i = getelementptr inbounds %struct.anon, ptr %143, i32 0, i32 2
  %165 = ptrtoint ptr %ldst_gather_len.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %ldst_gather_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %166)
  %cmp15.i.i = icmp sgt i16 %166, 127
  br i1 %cmp15.i.i, label %lor.lhs.false14.i.i.if.then.i.i_crit_edge, label %if.else119.i.i

lor.lhs.false14.i.i.if.then.i.i_crit_edge:        ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false14.i.i.if.then.i.i_crit_edge, %cross_mem_access.exit.i.i.if.then.i.i_crit_edge, %if.end8.i.i.i.if.then.i.i_crit_edge, %if.end.i286.i.i.if.then.i.i_crit_edge, %land.lhs.true185.i.i.i.if.then.i.i_crit_edge, %if.end177.i.i.i.if.then.i.i_crit_edge, %if.end157.i.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i283.i.i.if.then.i.i_crit_edge, %if.end.i279.i.i.if.then.i.i_crit_edge, %curr_pair_is_memcpy.exit.i.i.if.then.i.i_crit_edge, %if.end19.i.i.i.if.then.i.i_crit_edge, %if.end12.i.i.i.if.then.i.i_crit_edge, %if.end7.i.i.i.if.then.i.i_crit_edge, %if.end.i.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i_crit_edge, %for.body.i37.i.if.then.i.i_crit_edge
  %167 = zext i8 %count.0325.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %count.0325.i.i, label %if.then22.i.i [
    i8 0, label %if.then.i.i.cleanup.i49.i_crit_edge
    i8 1, label %if.else.i42.i
  ]

if.then.i.i.cleanup.i49.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.then22.i.i:                                    ; preds = %if.then.i.i
  %off.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_ld.0328.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %off.i.i, align 2
  %off25.i.i = getelementptr inbounds %struct.bpf_insn, ptr %head_ld_meta.0330.i.i, i32 0, i32 2
  %170 = ptrtoint ptr %off25.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %off25.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %169, i16 %171)
  %cmp28.i.i = icmp slt i16 %169, %171
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.then22.i.i.if.end39.i.i_crit_edge

if.then22.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

if.then30.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %off23.i.i = getelementptr inbounds %struct.bpf_insn, ptr %prev_st.0327.i.i, i32 0, i32 2
  %172 = ptrtoint ptr %off23.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %off23.i.i, align 2
  %174 = ptrtoint ptr %off25.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %169, ptr %off25.i.i, align 2
  %off34.i.i = getelementptr inbounds %struct.bpf_insn, ptr %head_st_meta.0329.i.i, i32 0, i32 2
  %175 = ptrtoint ptr %off34.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %173, ptr %off34.i.i, align 2
  %176 = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.0330.i.i, i32 0, i32 1
  %ldst_gather_len35.i.i = getelementptr inbounds %struct.anon, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %ldst_gather_len35.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %ldst_gather_len35.i.i, align 4
  %sub.i40.i = sub i16 0, %178
  store i16 %sub.i40.i, ptr %ldst_gather_len35.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then30.i.i, %if.then22.i.i.if.end39.i.i_crit_edge
  %paired_st.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.0330.i.i, i32 0, i32 1, i32 0, i32 1, i32 18
  %179 = ptrtoint ptr %paired_st.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %head_st_meta.0329.i.i, ptr %paired_st.i.i, align 8
  %flags.i41.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_st_meta.0329.i.i, i32 0, i32 4
  %180 = ptrtoint ptr %flags.i41.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %flags.i41.i, align 2
  %182 = or i16 %181, 16
  store i16 %182, ptr %flags.i41.i, align 2
  br label %if.end44.i.i

if.else.i42.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %183 = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.0330.i.i, i32 0, i32 1
  %ldst_gather_len43.i.i = getelementptr inbounds %struct.anon, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %ldst_gather_len43.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %ldst_gather_len43.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.else.i42.i, %if.end39.i.i
  %185 = ptrtoint ptr %meta1.0335.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %meta1.0335.i.i, align 8
  %187 = and i8 %186, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %187)
  %cmp.i.i290.i.i = icmp eq i8 %187, 97
  br i1 %cmp.i.i290.i.i, label %lor.lhs.false.i292.i.i, label %if.end44.i.i.cleanup.i49.i_crit_edge

if.end44.i.i.cleanup.i49.i_crit_edge:             ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

lor.lhs.false.i292.i.i:                           ; preds = %if.end44.i.i
  %188 = ptrtoint ptr %meta2.0341.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %meta2.0341.i.i, align 8
  %190 = and i8 %189, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %190)
  %cmp.i40.i291.i.i = icmp eq i8 %190, 99
  br i1 %cmp.i40.i291.i.i, label %if.end.i293.i.i, label %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge

lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge:   ; preds = %lor.lhs.false.i292.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.end.i293.i.i:                                  ; preds = %lor.lhs.false.i292.i.i
  %191 = getelementptr i8, ptr %.pn.in331.i.i, i32 -256
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 8
  %194 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %193, label %if.end.i293.i.i.cleanup.i49.i_crit_edge [
    i32 8, label %if.end.i293.i.i.if.end7.i295.i.i_crit_edge
    i32 4, label %if.end.i293.i.i.if.end7.i295.i.i_crit_edge153
  ]

if.end.i293.i.i.if.end7.i295.i.i_crit_edge153:    ; preds = %if.end.i293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i295.i.i

if.end.i293.i.i.if.end7.i295.i.i_crit_edge:       ; preds = %if.end.i293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i295.i.i

if.end.i293.i.i.cleanup.i49.i_crit_edge:          ; preds = %if.end.i293.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.end7.i295.i.i:                                 ; preds = %if.end.i293.i.i.if.end7.i295.i.i_crit_edge, %if.end.i293.i.i.if.end7.i295.i.i_crit_edge153
  %195 = getelementptr i8, ptr %.pn337.i.i, i32 -256
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %197)
  %cmp10.not.i294.i.i = icmp eq i32 %197, 8
  br i1 %cmp10.not.i294.i.i, label %if.end12.i297.i.i, label %if.end7.i295.i.i.cleanup.i49.i_crit_edge

if.end7.i295.i.i.cleanup.i49.i_crit_edge:         ; preds = %if.end7.i295.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.end12.i297.i.i:                                ; preds = %if.end7.i295.i.i
  %198 = xor i8 %189, %186
  %199 = and i8 %198, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %cmp16.not.i296.i.i = icmp eq i8 %199, 0
  br i1 %cmp16.not.i296.i.i, label %if.end19.i305.i.i, label %if.end12.i297.i.i.cleanup.i49.i_crit_edge

if.end12.i297.i.i.cleanup.i49.i_crit_edge:        ; preds = %if.end12.i297.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.end19.i305.i.i:                                ; preds = %if.end12.i297.i.i
  %dst_reg.i298.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -263
  %200 = ptrtoint ptr %dst_reg.i298.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load.i299.i.i = load i8, ptr %dst_reg.i298.i.i, align 1
  %bf.lshr.i300.i.i = lshr i8 %bf.load.i299.i.i, 4
  %src_reg.i301.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -263
  %201 = ptrtoint ptr %src_reg.i301.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load21.i302.i.i = load i8, ptr %src_reg.i301.i.i, align 1
  %bf.clear.i303.i.i = and i8 %bf.load21.i302.i.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i300.i.i, i8 %bf.clear.i303.i.i)
  %cmp23.not.i304.i.i = icmp eq i8 %bf.lshr.i300.i.i, %bf.clear.i303.i.i
  br i1 %cmp23.not.i304.i.i, label %curr_pair_is_memcpy.exit310.i.i, label %if.end19.i305.i.i.cleanup.i49.i_crit_edge

if.end19.i305.i.i.cleanup.i49.i_crit_edge:        ; preds = %if.end19.i305.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

curr_pair_is_memcpy.exit310.i.i:                  ; preds = %if.end19.i305.i.i
  %flags.i306.i.i = getelementptr i8, ptr %.pn337.i.i, i32 -10
  %202 = ptrtoint ptr %flags.i306.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %flags.i306.i.i, align 2
  %204 = and i16 %203, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool.not.i307.i.i = icmp eq i16 %204, 0
  br i1 %tobool.not.i307.i.i, label %if.then46.i.i, label %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge

curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge: ; preds = %curr_pair_is_memcpy.exit310.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i49.i

if.then46.i.i:                                    ; preds = %curr_pair_is_memcpy.exit310.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %205 = lshr i8 %186, 3
  %206 = and i8 %205, 3
  %207 = xor i8 %206, 2
  %208 = zext i8 %207 to i32
  %switch.gep106 = getelementptr inbounds [4 x i16], ptr @switch.table.nfp_bpf_jit.43, i32 0, i32 %208
  %209 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load2_noabort(i32 %209)
  %switch.load107 = load i16, ptr %switch.gep106, align 2
  %ldst_gather_len103.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -140
  %210 = ptrtoint ptr %ldst_gather_len103.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %switch.load107, ptr %ldst_gather_len103.i.i, align 4
  %211 = ptrtoint ptr %.pn.in331.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %.pn.in331.i.i, align 8
  %add.ptr108.i.i = getelementptr i8, ptr %212, i32 -264
  br label %cleanup.i49.i

if.else119.i.i:                                   ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags120.i.i = getelementptr i8, ptr %.pn.in331.i.i, i32 -10
  %213 = ptrtoint ptr %flags120.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %flags120.i.i, align 2
  %215 = or i16 %214, 16
  store i16 %215, ptr %flags120.i.i, align 2
  %216 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %flags.i.i.i, align 2
  %218 = or i16 %217, 16
  store i16 %218, ptr %flags.i.i.i, align 2
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %if.else119.i.i, %lor.lhs.false12.i.i.if.end128.i.i_crit_edge
  %head_st_meta.2.i.i = phi ptr [ %head_st_meta.0329.i.i, %if.else119.i.i ], [ %meta2.0341.i.i, %lor.lhs.false12.i.i.if.end128.i.i_crit_edge ]
  %head_ld_meta.2.i.i = phi ptr [ %head_ld_meta.0330.i.i, %if.else119.i.i ], [ %meta1.0335.i.i, %lor.lhs.false12.i.i.if.end128.i.i_crit_edge ]
  %219 = ptrtoint ptr %meta1.0335.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %meta1.0335.i.i, align 4
  %221 = lshr i8 %220, 3
  %222 = and i8 %221, 3
  %223 = xor i8 %222, 2
  %224 = zext i8 %223 to i32
  %switch.gep110 = getelementptr inbounds [4 x i16], ptr @switch.table.nfp_bpf_jit.44, i32 0, i32 %224
  %225 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load2_noabort(i32 %225)
  %switch.load111 = load i16, ptr %switch.gep110, align 2
  %226 = getelementptr inbounds %struct.nfp_insn_meta, ptr %head_ld_meta.2.i.i, i32 0, i32 1
  %ldst_gather_len196.i.i = getelementptr inbounds %struct.anon, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %ldst_gather_len196.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %ldst_gather_len196.i.i, align 4
  %add.i.i = add i16 %228, %switch.load111
  store i16 %add.i.i, ptr %ldst_gather_len196.i.i, align 4
  %229 = ptrtoint ptr %.pn.in331.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %.pn.in331.i.i, align 8
  %add.ptr203.i.i = getelementptr i8, ptr %230, i32 -264
  %inc.i.i = add i8 %count.0325.i.i, 1
  br label %cleanup.i49.i

cleanup.i49.i:                                    ; preds = %if.end128.i.i, %if.then46.i.i, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge, %if.end19.i305.i.i.cleanup.i49.i_crit_edge, %if.end12.i297.i.i.cleanup.i49.i_crit_edge, %if.end7.i295.i.i.cleanup.i49.i_crit_edge, %if.end.i293.i.i.cleanup.i49.i_crit_edge, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge, %if.end44.i.i.cleanup.i49.i_crit_edge, %if.then.i.i.cleanup.i49.i_crit_edge
  %count.2.i.i = phi i8 [ %inc.i.i, %if.end128.i.i ], [ %count.0325.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ 1, %if.then46.i.i ], [ 0, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ 0, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ 0, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ 0, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ 0, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ 0, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ 0, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %prev_st.2.i.i = phi ptr [ %meta2.0341.i.i, %if.end128.i.i ], [ %prev_st.0327.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ %meta2.0341.i.i, %if.then46.i.i ], [ null, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ null, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %prev_ld.2.i.i = phi ptr [ %meta1.0335.i.i, %if.end128.i.i ], [ %prev_ld.0328.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.then46.i.i ], [ null, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ null, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %meta1.2.i.i = phi ptr [ %add.ptr203.i.i, %if.end128.i.i ], [ %meta1.0335.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ %add.ptr108.i.i, %if.then46.i.i ], [ %meta1.0335.i.i, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %head_st_meta.3.i.i = phi ptr [ %head_st_meta.2.i.i, %if.end128.i.i ], [ %head_st_meta.0329.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ %meta2.0341.i.i, %if.then46.i.i ], [ null, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ null, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %head_ld_meta.3.i.i = phi ptr [ %head_ld_meta.2.i.i, %if.end128.i.i ], [ %head_ld_meta.0330.i.i, %if.then.i.i.cleanup.i49.i_crit_edge ], [ %meta1.0335.i.i, %if.then46.i.i ], [ null, %curr_pair_is_memcpy.exit310.i.i.cleanup.i49.i_crit_edge ], [ null, %lor.lhs.false.i292.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end44.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end.i293.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end7.i295.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end12.i297.i.i.cleanup.i49.i_crit_edge ], [ null, %if.end19.i305.i.i.cleanup.i49.i_crit_edge ]
  %l211.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta1.2.i.i, i32 0, i32 7
  %231 = ptrtoint ptr %l211.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %.pn.in.i44.i = load ptr, ptr %l211.i.i, align 4
  %232 = ptrtoint ptr %.pn.in.i44.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pn.i45.i = load ptr, ptr %.pn.in.i44.i, align 8
  %cmp.not.i46.i = icmp eq ptr %insns.i, %.pn.in.i44.i
  %cmp9.not.i47.i = icmp eq ptr %insns.i, %.pn.i45.i
  %or.cond.i48.i = select i1 %cmp.not.i46.i, i1 true, i1 %cmp9.not.i47.i
  br i1 %or.cond.i48.i, label %cleanup.i49.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge, label %cleanup.i49.i.for.body.i37.i_crit_edge

cleanup.i49.i.for.body.i37.i_crit_edge:           ; preds = %cleanup.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37.i

cleanup.i49.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge: ; preds = %cleanup.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_opt_ldst_gather.exit.i

nfp_bpf_opt_ldst_gather.exit.i:                   ; preds = %cleanup.i49.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge, %nfp_bpf_opt_ld_shift.exit.i.nfp_bpf_opt_ldst_gather.exit.i_crit_edge
  %233 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %.pn366.i.i = load ptr, ptr %insns.i, align 4
  %cmp.not368.i.i = icmp eq ptr %.pn366.i.i, %insns.i
  br i1 %cmp.not368.i.i, label %nfp_bpf_opt_ldst_gather.exit.i.if.end222.i.i_crit_edge, label %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge

nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge: ; preds = %nfp_bpf_opt_ldst_gather.exit.i
  br label %for.body.i53.i

nfp_bpf_opt_ldst_gather.exit.i.if.end222.i.i_crit_edge: ; preds = %nfp_bpf_opt_ldst_gather.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222.i.i

for.body.i53.i:                                   ; preds = %for.inc.i69.i.for.body.i53.i_crit_edge, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge
  %.pn381.i.i = phi ptr [ %.pn.i67.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ %.pn366.i.i, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %range_node.0378.i.i = phi ptr [ %range_node.1.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ null, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %range_start.0376.i.i = phi i16 [ %range_start.3.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %range_end.0374.i.i = phi i16 [ %range_end.3.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %cache_avail.0.off0373.i.i = phi i1 [ %cache_avail.4.off0.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ false, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %range_ptr_off.0371.i.i = phi i32 [ %range_ptr_off.1.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %range_ptr_id.0369.i.i = phi i32 [ %range_ptr_id.1.i.i, %for.inc.i69.i.for.body.i53.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.for.body.i53.i_crit_edge ]
  %meta.0382.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -264
  %flags.i51.i = getelementptr i8, ptr %.pn381.i.i, i32 -10
  %234 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %flags.i51.i, align 2
  %236 = and i16 %235, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %tobool.not.i52.i = icmp eq i16 %236, 0
  %spec.select.i.i = select i1 %tobool.not.i52.i, i1 %cache_avail.0.off0373.i.i, i1 false
  %237 = and i16 %235, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %237)
  %tobool5.not.i.i = icmp eq i16 %237, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %for.body.i53.i.for.inc.i69.i_crit_edge

for.body.i53.i.for.inc.i69.i_crit_edge:           ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

if.end7.i.i:                                      ; preds = %for.body.i53.i
  %238 = ptrtoint ptr %meta.0382.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %meta.0382.i.i, align 8
  %240 = and i8 %239, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %240)
  %cmp.i.i.i54.i = icmp eq i8 %240, 99
  br i1 %cmp.i.i.i54.i, label %is_mbpf_store_pkt.exit.i.i, label %lor.lhs.false.i55.i

is_mbpf_store_pkt.exit.i.i:                       ; preds = %if.end7.i.i
  %241 = getelementptr i8, ptr %.pn381.i.i, i32 -256
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %243)
  %cmp.i.i.i = icmp eq i32 %243, 8
  br i1 %cmp.i.i.i, label %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge, label %is_mbpf_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge

is_mbpf_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge: ; preds = %is_mbpf_store_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false16.i.i

is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge: ; preds = %is_mbpf_store_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

lor.lhs.false.i55.i:                              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %239)
  %cmp11.i.i = icmp eq i8 %239, -123
  br i1 %cmp11.i.i, label %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge, label %lor.lhs.false13.i.i

lor.lhs.false.i55.i.for.inc.i69.i_crit_edge:      ; preds = %lor.lhs.false.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false.i55.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %240)
  %244 = icmp eq i8 %240, 98
  br i1 %244, label %is_mbpf_classic_store_pkt.exit.i.i, label %lor.lhs.false13.i.i.lor.lhs.false16.i.i_crit_edge

lor.lhs.false13.i.i.lor.lhs.false16.i.i_crit_edge: ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false16.i.i

is_mbpf_classic_store_pkt.exit.i.i:               ; preds = %lor.lhs.false13.i.i
  %245 = getelementptr i8, ptr %.pn381.i.i, i32 -256
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %247)
  %cmp.i345.i.i = icmp eq i32 %247, 8
  br i1 %cmp.i345.i.i, label %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge, label %is_mbpf_classic_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge

is_mbpf_classic_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge: ; preds = %is_mbpf_classic_store_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false16.i.i

is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge: ; preds = %is_mbpf_classic_store_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

lor.lhs.false16.i.i:                              ; preds = %is_mbpf_classic_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge, %lor.lhs.false13.i.i.lor.lhs.false16.i.i_crit_edge, %is_mbpf_store_pkt.exit.i.i.lor.lhs.false16.i.i_crit_edge
  %248 = and i8 %239, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp.i347.i.i = icmp eq i8 %248, 0
  br i1 %cmp.i347.i.i, label %is_mbpf_classic_load.exit.i.i, label %lor.lhs.false16.i.i.if.end20.i.i_crit_edge

lor.lhs.false16.i.i.if.end20.i.i_crit_edge:       ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

is_mbpf_classic_load.exit.i.i:                    ; preds = %lor.lhs.false16.i.i
  %and4.i.i.i = and i8 %239, -32
  %249 = zext i8 %and4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %and4.i.i.i, label %is_mbpf_classic_load.exit.i.i.if.end20.i.i_crit_edge [
    i8 64, label %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge
    i8 32, label %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154
  ]

is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154: ; preds = %is_mbpf_classic_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge: ; preds = %is_mbpf_classic_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

is_mbpf_classic_load.exit.i.i.if.end20.i.i_crit_edge: ; preds = %is_mbpf_classic_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %is_mbpf_classic_load.exit.i.i.if.end20.i.i_crit_edge, %lor.lhs.false16.i.i.if.end20.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %240)
  %cmp.i349.i.i = icmp eq i8 %240, 97
  br i1 %cmp.i349.i.i, label %if.end23.i.i, label %if.end20.i.i.for.inc.i69.i_crit_edge

if.end20.i.i.for.inc.i69.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %250 = getelementptr i8, ptr %.pn381.i.i, i32 -256
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %252)
  %cmp24.not.i.i = icmp eq i32 %252, 8
  br i1 %cmp24.not.i.i, label %lor.lhs.false26.i.i, label %if.end23.i.i.for.inc.i69.i_crit_edge

if.end23.i.i.for.inc.i69.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

lor.lhs.false26.i.i:                              ; preds = %if.end23.i.i
  %ldst_gather_len.i56.i = getelementptr i8, ptr %.pn381.i.i, i32 -140
  %253 = ptrtoint ptr %ldst_gather_len.i56.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %ldst_gather_len.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %254)
  %tobool28.not.i.i = icmp eq i16 %254, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge

lor.lhs.false26.i.i.for.inc.i69.i_crit_edge:      ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

if.end30.i.i:                                     ; preds = %lor.lhs.false26.i.i
  br i1 %spec.select.i.i, label %if.end36.i57.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  %tobool33.not.i.i = icmp eq ptr %range_node.0378.i.i, null
  br i1 %tobool33.not.i.i, label %if.then32.i.i.start_new.i.i_crit_edge, label %if.then32.i.i.end_current_then_start_new.i.i_crit_edge

if.then32.i.i.end_current_then_start_new.i.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_current_then_start_new.i.i

if.then32.i.i.start_new.i.i_crit_edge:            ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_new.i.i

if.end36.i57.i:                                   ; preds = %if.end30.i.i
  %id.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -240
  %255 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %range_ptr_id.0369.i.i)
  %cmp38.i.i = icmp eq i32 %256, %range_ptr_id.0369.i.i
  br i1 %cmp38.i.i, label %land.lhs.true.i59.i, label %if.end36.i57.i.end_current_then_start_new.i.i_crit_edge

if.end36.i57.i.end_current_then_start_new.i.i_crit_edge: ; preds = %if.end36.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_current_then_start_new.i.i

land.lhs.true.i59.i:                              ; preds = %if.end36.i57.i
  %off.i58.i = getelementptr i8, ptr %.pn381.i.i, i32 -252
  %257 = ptrtoint ptr %off.i58.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %off.i58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %range_ptr_off.0371.i.i)
  %cmp41.i.i = icmp eq i32 %258, %range_ptr_off.0371.i.i
  br i1 %cmp41.i.i, label %if.then43.i.i, label %land.lhs.true.i59.i.end_current_then_start_new.i.i_crit_edge

land.lhs.true.i59.i.end_current_then_start_new.i.i_crit_edge: ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_current_then_start_new.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true.i59.i
  %off45.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -262
  %259 = ptrtoint ptr %off45.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %off45.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %260, i16 %range_start.0376.i.i)
  %cmp48.i.i = icmp slt i16 %260, %range_start.0376.i.i
  %261 = lshr i8 %239, 3
  %262 = and i8 %261, 3
  %263 = xor i8 %262, 2
  %264 = zext i8 %263 to i32
  %switch.gep114 = getelementptr inbounds [4 x i16], ptr @switch.table.nfp_bpf_jit.45, i32 0, i32 %264
  %265 = ptrtoint ptr %switch.gep114 to i32
  call void @__asan_load2_noabort(i32 %265)
  %switch.load115 = load i16, ptr %switch.gep114, align 2
  %add.i63.i = add i16 %switch.load115, %260
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i63.i, i16 %range_end.0374.i.i)
  %cmp113.i.i = icmp sgt i16 %add.i63.i, %range_end.0374.i.i
  %spec.select343.i.i = select i1 %cmp113.i.i, i1 true, i1 %cmp48.i.i
  br i1 %spec.select343.i.i, label %if.end119.i.i, label %if.then43.i.i.for.inc.i69.i_crit_edge

if.then43.i.i.for.inc.i69.i_crit_edge:            ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

if.end119.i.i:                                    ; preds = %if.then43.i.i
  %266 = tail call i16 @llvm.smin.i16(i16 %260, i16 %range_start.0376.i.i) #9
  %267 = tail call i16 @llvm.smax.i16(i16 %add.i63.i, i16 %range_end.0374.i.i) #9
  %conv120.i.i = sext i16 %267 to i32
  %conv121.i.i = sext i16 %266 to i32
  %sub.i65.i = sub nsw i32 %conv120.i.i, %conv121.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub.i65.i)
  %cmp122.i.i = icmp slt i32 %sub.i65.i, 65
  br i1 %cmp122.i.i, label %if.end119.i.i.for.inc.i69.i_crit_edge, label %if.end119.i.i.end_current_then_start_new.i.i_crit_edge

if.end119.i.i.end_current_then_start_new.i.i_crit_edge: ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_current_then_start_new.i.i

if.end119.i.i.for.inc.i69.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i69.i

end_current_then_start_new.i.i:                   ; preds = %if.end119.i.i.end_current_then_start_new.i.i_crit_edge, %land.lhs.true.i59.i.end_current_then_start_new.i.i_crit_edge, %if.end36.i57.i.end_current_then_start_new.i.i_crit_edge, %if.then32.i.i.end_current_then_start_new.i.i_crit_edge
  %pkt_cache.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %range_node.0378.i.i, i32 0, i32 1, i32 0, i32 2
  %268 = ptrtoint ptr %pkt_cache.i.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %range_start.0376.i.i, ptr %pkt_cache.i.i, align 8
  %range_end133.i.i = getelementptr inbounds %struct.anon.160, ptr %pkt_cache.i.i, i32 0, i32 1
  %269 = ptrtoint ptr %range_end133.i.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %range_end.0374.i.i, ptr %range_end133.i.i, align 2
  br label %start_new.i.i

start_new.i.i:                                    ; preds = %end_current_then_start_new.i.i, %if.then32.i.i.start_new.i.i_crit_edge
  %do_init.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -132
  %270 = ptrtoint ptr %do_init.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 1, ptr %do_init.i.i, align 4
  %id136.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -240
  %271 = ptrtoint ptr %id136.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %id136.i.i, align 8
  %off138.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -252
  %273 = ptrtoint ptr %off138.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %off138.i.i, align 4
  %off139.i.i = getelementptr i8, ptr %.pn381.i.i, i32 -262
  %275 = ptrtoint ptr %off139.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %off139.i.i, align 2
  %277 = ptrtoint ptr %meta.0382.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %meta.0382.i.i, align 4
  %279 = lshr i8 %278, 3
  %280 = and i8 %279, 3
  %281 = xor i8 %280, 2
  %282 = zext i8 %281 to i32
  %switch.gep118 = getelementptr inbounds [4 x i16], ptr @switch.table.nfp_bpf_jit.46, i32 0, i32 %282
  %283 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load2_noabort(i32 %283)
  %switch.load119 = load i16, ptr %switch.gep118, align 2
  %add209.i.i = add i16 %switch.load119, %276
  br label %for.inc.i69.i

for.inc.i69.i:                                    ; preds = %start_new.i.i, %if.end119.i.i.for.inc.i69.i_crit_edge, %if.then43.i.i.for.inc.i69.i_crit_edge, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge, %if.end23.i.i.for.inc.i69.i_crit_edge, %if.end20.i.i.for.inc.i69.i_crit_edge, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge, %for.body.i53.i.for.inc.i69.i_crit_edge
  %range_ptr_id.1.i.i = phi i32 [ %range_ptr_id.0369.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ %272, %start_new.i.i ], [ %range_ptr_id.0369.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_id.0369.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %range_ptr_off.1.i.i = phi i32 [ %range_ptr_off.0371.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ %274, %start_new.i.i ], [ %range_ptr_off.0371.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ %range_ptr_off.0371.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %cache_avail.4.off0.i.i = phi i1 [ %spec.select.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ true, %start_new.i.i ], [ %spec.select.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ false, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ false, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ false, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ false, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ false, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ false, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ true, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ true, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ false, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %range_end.3.i.i = phi i16 [ %range_end.0374.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ %add209.i.i, %start_new.i.i ], [ %range_end.0374.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ %267, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ %range_end.0374.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %range_start.3.i.i = phi i16 [ %range_start.0376.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ %276, %start_new.i.i ], [ %range_start.0376.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ %266, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ %range_start.0376.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %range_node.1.i.i = phi ptr [ %range_node.0378.i.i, %for.body.i53.i.for.inc.i69.i_crit_edge ], [ %meta.0382.i.i, %start_new.i.i ], [ %range_node.0378.i.i, %if.end20.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %is_mbpf_classic_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %lor.lhs.false.i55.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %is_mbpf_store_pkt.exit.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %lor.lhs.false26.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %if.end23.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %if.then43.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %if.end119.i.i.for.inc.i69.i_crit_edge ], [ %range_node.0378.i.i, %is_mbpf_classic_load.exit.i.i.for.inc.i69.i_crit_edge154 ]
  %284 = ptrtoint ptr %.pn381.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %.pn.i67.i = load ptr, ptr %.pn381.i.i, align 4
  %cmp.not.i68.i = icmp eq ptr %.pn.i67.i, %insns.i
  br i1 %cmp.not.i68.i, label %for.end.i.i, label %for.inc.i69.i.for.body.i53.i_crit_edge

for.inc.i69.i.for.body.i53.i_crit_edge:           ; preds = %for.inc.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i53.i

for.end.i.i:                                      ; preds = %for.inc.i69.i
  %tobool216.not.i.i = icmp eq ptr %range_node.1.i.i, null
  br i1 %tobool216.not.i.i, label %for.end.i.i.if.end222.i.i_crit_edge, label %if.then217.i.i

for.end.i.i.if.end222.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222.i.i

if.then217.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pkt_cache218.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %range_node.1.i.i, i32 0, i32 1, i32 0, i32 2
  %285 = ptrtoint ptr %pkt_cache218.i.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %range_start.3.i.i, ptr %pkt_cache218.i.i, align 8
  %range_end221.i.i = getelementptr inbounds %struct.anon.160, ptr %pkt_cache218.i.i, i32 0, i32 1
  %286 = ptrtoint ptr %range_end221.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %range_end.3.i.i, ptr %range_end221.i.i, align 2
  br label %if.end222.i.i

if.end222.i.i:                                    ; preds = %if.then217.i.i, %for.end.i.i.if.end222.i.i_crit_edge, %nfp_bpf_opt_ldst_gather.exit.i.if.end222.i.i_crit_edge
  %range_start.0.lcssa397.i.i = phi i16 [ %range_start.3.i.i, %if.then217.i.i ], [ %range_start.3.i.i, %for.end.i.i.if.end222.i.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.if.end222.i.i_crit_edge ]
  %range_end.0.lcssa396.i.i = phi i16 [ %range_end.3.i.i, %if.then217.i.i ], [ %range_end.3.i.i, %for.end.i.i.if.end222.i.i_crit_edge ], [ 0, %nfp_bpf_opt_ldst_gather.exit.i.if.end222.i.i_crit_edge ]
  %287 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pn341385.i.i = load ptr, ptr %insns.i, align 4
  %cmp231.not387.i.i = icmp eq ptr %.pn341385.i.i, %insns.i
  br i1 %cmp231.not387.i.i, label %if.end222.i.i.nfp_bpf_optimize.exit_crit_edge, label %if.end222.i.i.for.body235.i.i_crit_edge

if.end222.i.i.for.body235.i.i_crit_edge:          ; preds = %if.end222.i.i
  br label %for.body235.i.i

if.end222.i.i.nfp_bpf_optimize.exit_crit_edge:    ; preds = %if.end222.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_optimize.exit

for.body235.i.i:                                  ; preds = %for.inc263.i.i.for.body235.i.i_crit_edge, %if.end222.i.i.for.body235.i.i_crit_edge
  %.pn341390.i.i = phi ptr [ %.pn341.i.i, %for.inc263.i.i.for.body235.i.i_crit_edge ], [ %.pn341385.i.i, %if.end222.i.i.for.body235.i.i_crit_edge ]
  %range_start.4389.i.i = phi i16 [ %range_start.5.i.i, %for.inc263.i.i.for.body235.i.i_crit_edge ], [ %range_start.0.lcssa397.i.i, %if.end222.i.i.for.body235.i.i_crit_edge ]
  %range_end.4388.i.i = phi i16 [ %range_end.5.i.i, %for.inc263.i.i.for.body235.i.i_crit_edge ], [ %range_end.0.lcssa396.i.i, %if.end222.i.i.for.body235.i.i_crit_edge ]
  %flags236.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -10
  %288 = ptrtoint ptr %flags236.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %flags236.i.i, align 2
  %290 = and i16 %289, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %290)
  %tobool239.not.i.i = icmp eq i16 %290, 0
  br i1 %tobool239.not.i.i, label %if.end241.i.i, label %for.body235.i.i.for.inc263.i.i_crit_edge

for.body235.i.i.for.inc263.i.i_crit_edge:         ; preds = %for.body235.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc263.i.i

if.end241.i.i:                                    ; preds = %for.body235.i.i
  %meta.1391.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -264
  %291 = ptrtoint ptr %meta.1391.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %meta.1391.i.i, align 8
  %293 = and i8 %292, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %293)
  %cmp.i.i350.i.i = icmp eq i8 %293, 97
  br i1 %cmp.i.i350.i.i, label %is_mbpf_load_pkt.exit.i.i, label %if.end241.i.i.for.inc263.i.i_crit_edge

if.end241.i.i.for.inc263.i.i_crit_edge:           ; preds = %if.end241.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc263.i.i

is_mbpf_load_pkt.exit.i.i:                        ; preds = %if.end241.i.i
  %294 = getelementptr i8, ptr %.pn341390.i.i, i32 -256
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %294, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %296)
  %cmp.i351.i.i = icmp eq i32 %296, 8
  br i1 %cmp.i351.i.i, label %land.lhs.true244.i.i, label %is_mbpf_load_pkt.exit.i.i.for.inc263.i.i_crit_edge

is_mbpf_load_pkt.exit.i.i.for.inc263.i.i_crit_edge: ; preds = %is_mbpf_load_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc263.i.i

land.lhs.true244.i.i:                             ; preds = %is_mbpf_load_pkt.exit.i.i
  %ldst_gather_len245.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -140
  %297 = ptrtoint ptr %ldst_gather_len245.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %ldst_gather_len245.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %298)
  %tobool246.not.i.i = icmp eq i16 %298, 0
  br i1 %tobool246.not.i.i, label %if.then247.i.i, label %land.lhs.true244.i.i.for.inc263.i.i_crit_edge

land.lhs.true244.i.i.for.inc263.i.i_crit_edge:    ; preds = %land.lhs.true244.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc263.i.i

if.then247.i.i:                                   ; preds = %land.lhs.true244.i.i
  %pkt_cache248.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -136
  %do_init249.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -132
  %299 = ptrtoint ptr %do_init249.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %do_init249.i.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool250.not.i.i = icmp eq i8 %300, 0
  br i1 %tobool250.not.i.i, label %if.else256.i.i, label %if.then251.i.i

if.then251.i.i:                                   ; preds = %if.then247.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %301 = ptrtoint ptr %pkt_cache248.i.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %pkt_cache248.i.i, align 8
  %range_end255.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -134
  %303 = ptrtoint ptr %range_end255.i.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %range_end255.i.i, align 2
  br label %for.inc263.i.i

if.else256.i.i:                                   ; preds = %if.then247.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %305 = ptrtoint ptr %pkt_cache248.i.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %range_start.4389.i.i, ptr %pkt_cache248.i.i, align 8
  %range_end260.i.i = getelementptr i8, ptr %.pn341390.i.i, i32 -134
  %306 = ptrtoint ptr %range_end260.i.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %range_end.4388.i.i, ptr %range_end260.i.i, align 2
  br label %for.inc263.i.i

for.inc263.i.i:                                   ; preds = %if.else256.i.i, %if.then251.i.i, %land.lhs.true244.i.i.for.inc263.i.i_crit_edge, %is_mbpf_load_pkt.exit.i.i.for.inc263.i.i_crit_edge, %if.end241.i.i.for.inc263.i.i_crit_edge, %for.body235.i.i.for.inc263.i.i_crit_edge
  %range_end.5.i.i = phi i16 [ %range_end.4388.i.i, %for.body235.i.i.for.inc263.i.i_crit_edge ], [ %range_end.4388.i.i, %land.lhs.true244.i.i.for.inc263.i.i_crit_edge ], [ %304, %if.then251.i.i ], [ %range_end.4388.i.i, %if.else256.i.i ], [ %range_end.4388.i.i, %is_mbpf_load_pkt.exit.i.i.for.inc263.i.i_crit_edge ], [ %range_end.4388.i.i, %if.end241.i.i.for.inc263.i.i_crit_edge ]
  %range_start.5.i.i = phi i16 [ %range_start.4389.i.i, %for.body235.i.i.for.inc263.i.i_crit_edge ], [ %range_start.4389.i.i, %land.lhs.true244.i.i.for.inc263.i.i_crit_edge ], [ %302, %if.then251.i.i ], [ %range_start.4389.i.i, %if.else256.i.i ], [ %range_start.4389.i.i, %is_mbpf_load_pkt.exit.i.i.for.inc263.i.i_crit_edge ], [ %range_start.4389.i.i, %if.end241.i.i.for.inc263.i.i_crit_edge ]
  %307 = ptrtoint ptr %.pn341390.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %.pn341.i.i = load ptr, ptr %.pn341390.i.i, align 4
  %cmp231.not.i.i = icmp eq ptr %.pn341.i.i, %insns.i
  br i1 %cmp231.not.i.i, label %for.inc263.i.i.nfp_bpf_optimize.exit_crit_edge, label %for.inc263.i.i.for.body235.i.i_crit_edge

for.inc263.i.i.for.body235.i.i_crit_edge:         ; preds = %for.inc263.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body235.i.i

for.inc263.i.i.nfp_bpf_optimize.exit_crit_edge:   ; preds = %for.inc263.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_bpf_optimize.exit

nfp_bpf_optimize.exit:                            ; preds = %for.inc263.i.i.nfp_bpf_optimize.exit_crit_edge, %if.end222.i.i.nfp_bpf_optimize.exit_crit_edge
  %subprog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 19
  %308 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %subprog.i, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %309, align 2
  %conv.i = zext i16 %311 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add nsw i32 %or.i, 1
  %stack_frame_depth.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 14
  %312 = ptrtoint ptr %stack_frame_depth.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %add.i, ptr %stack_frame_depth.i, align 4
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554454, i16 noundef zeroext 16383, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554454, i32 noundef 33554454, i32 noundef 8, i32 noundef 1077936128) #9
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %313 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i20 = icmp eq i32 %314, 0
  br i1 %tobool.not.i20, label %if.end.i22, label %nfp_bpf_optimize.exit.do.end_crit_edge

nfp_bpf_optimize.exit.do.end_crit_edge:           ; preds = %nfp_bpf_optimize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i22:                                       ; preds = %nfp_bpf_optimize.exit
  %315 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %.pn134.i = load ptr, ptr %insns.i, align 4
  %cmp.not136.i = icmp eq ptr %.pn134.i, %insns.i
  br i1 %cmp.not136.i, label %if.end.i22.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i22.for.end.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i22
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %n_translated.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 12
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc.i32.for.body.i24_crit_edge, %for.body.lr.ph.i
  %.pn137.i = phi ptr [ %.pn134.i, %for.body.lr.ph.i ], [ %.pn.i30, %for.inc.i32.for.body.i24_crit_edge ]
  %meta.0138.i = getelementptr i8, ptr %.pn137.i, i32 -264
  %316 = ptrtoint ptr %meta.0138.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %meta.0138.i, align 8
  %idxprom.i = zext i8 %317 to i32
  %arrayidx4.i = getelementptr [256 x ptr], ptr @instr_cb, i32 0, i32 %idxprom.i
  %318 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx4.i, align 4
  %320 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %prog_len.i.i, align 4
  %off.i = getelementptr i8, ptr %.pn137.i, i32 -16
  %322 = ptrtoint ptr %off.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %off.i, align 8
  %flags.i.i23 = getelementptr i8, ptr %.pn137.i, i32 -10
  %323 = ptrtoint ptr %flags.i.i23 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %flags.i.i23, align 2
  %325 = and i16 %324, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %325)
  %tobool.i.not.i = icmp eq i16 %325, 0
  br i1 %tobool.i.not.i, label %for.body.i24.if.end12.i_crit_edge, label %if.then6.i

for.body.i24.if.end12.i_crit_edge:                ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then6.i:                                       ; preds = %for.body.i24
  %326 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %subprog.i, align 4
  %subprog_idx.i.i = getelementptr i8, ptr %.pn137.i, i32 -8
  %328 = ptrtoint ptr %subprog_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %subprog_idx.i.i, align 8
  %idxprom.i.i = zext i16 %329 to i32
  %arrayidx.i.i25 = getelementptr %struct.nfp_bpf_subprog_info, ptr %327, i32 %idxprom.i.i
  %330 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %arrayidx.i.i25, align 2
  %conv.i.i26 = zext i16 %331 to i32
  %sub.i.i27 = add nsw i32 %conv.i.i26, -1
  %or.i.i28 = or i32 %sub.i.i27, 3
  %add.i.i29 = add nsw i32 %or.i.i28, 1
  %332 = ptrtoint ptr %stack_frame_depth.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %add.i.i29, ptr %stack_frame_depth.i, align 4
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741824, i32 noundef 536870912, i32 noundef 0, i32 noundef 16777237) #9
  %333 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool8.not.i = icmp eq i32 %334, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then6.i.if.end12.i_crit_edge, %for.body.i24.if.end12.i_crit_edge
  %335 = ptrtoint ptr %flags.i.i23 to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %flags.i.i23, align 2
  %337 = and i16 %336, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %337)
  %tobool14.not.i = icmp eq i16 %337, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.for.inc.i32_crit_edge

if.end12.i.for.inc.i32_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i32

if.end16.i:                                       ; preds = %if.end12.i
  %prev.i.i = getelementptr i8, ptr %.pn137.i, i32 4
  %338 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %339, %insns.i
  br i1 %cmp.i.not.i, label %if.end16.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end31.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %double_cb.i = getelementptr i8, ptr %339, i32 -4
  %340 = ptrtoint ptr %double_cb.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %double_cb.i, align 4
  %tobool23.not.i = icmp eq ptr %341, null
  %spec.select.i = select i1 %tobool23.not.i, ptr %319, ptr %341
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i, %if.end16.i.if.end31.i_crit_edge
  %cb.0.i = phi ptr [ %319, %if.end16.i.if.end31.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %tobool32.not.i = icmp eq ptr %cb.0.i, null
  br i1 %tobool32.not.i, label %if.end31.i.do.end_crit_edge, label %if.end34.i

if.end31.i.do.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end34.i:                                       ; preds = %if.end31.i
  %call35.i = tail call i32 %cb.0.i(ptr noundef %nfp_prog, ptr noundef %meta.0138.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.do.end_crit_edge

if.end34.i.do.end_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end38.i:                                       ; preds = %if.end34.i
  %342 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool40.not.i = icmp eq i32 %343, 0
  br i1 %tobool40.not.i, label %if.end38.i.for.inc.i32_crit_edge, label %if.end38.i.do.end_crit_edge

if.end38.i.do.end_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end38.i.for.inc.i32_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.end38.i.for.inc.i32_crit_edge, %if.end12.i.for.inc.i32_crit_edge
  %344 = ptrtoint ptr %n_translated.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %storemerge.in.i = load i32, ptr %n_translated.i, align 4
  %storemerge.i = add i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %n_translated.i, align 4
  %345 = ptrtoint ptr %.pn137.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %.pn.i30 = load ptr, ptr %.pn137.i, align 4
  %cmp.not.i31 = icmp eq ptr %.pn.i30, %insns.i
  br i1 %cmp.not.i31, label %for.inc.i32.for.end.i_crit_edge, label %for.inc.i32.for.body.i24_crit_edge

for.inc.i32.for.body.i24_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i24

for.inc.i32.for.end.i_crit_edge:                  ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i32.for.end.i_crit_edge, %if.end.i22.for.end.i_crit_edge
  %prog_len.i109.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %346 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %prog_len.i109.i, align 4
  %sub52.i = add i32 %347, -1
  %last_bpf_off.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 7
  %348 = ptrtoint ptr %last_bpf_off.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %sub52.i, ptr %last_bpf_off.i, align 4
  %type.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 6
  %349 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %type.i.i, align 4
  %351 = zext i32 %350 to i64
  call void @__sanitizer_cov_trace_switch(i64 %351, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %350, label %do.end.i.i [
    i32 3, label %sw.bb.i.i33
    i32 6, label %sw.bb1.i.i
  ]

sw.bb.i.i33:                                      ; preds = %for.end.i
  %tgt_abort.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 9
  %352 = ptrtoint ptr %tgt_abort.i.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %347, ptr %tgt_abort.i.i.i, align 4
  %__prog_alloc_len.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %353 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i.i.i = lshr i32 %354, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i.i, i32 %347)
  %cmp.i.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i.i, %347
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %347) #12
  %355 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 -28, ptr %error.i, align 4
  br label %emit_br_relo.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %356 = ptrtoint ptr %prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %prog.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr i64, ptr %357, i32 %347
  %358 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %358)
  store i64 2055781515320, ptr %arrayidx.i.i.i.i.i.i, align 8
  %359 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.i.i = add i32 %360, 1
  store i32 %inc.i.i.i.i.i.i, ptr %prog_len.i109.i, align 4
  br label %emit_br_relo.exit.i.i.i

emit_br_relo.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i.i, %do.end.i.i.i.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %361 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %prog.i.i.i.i, align 4
  %363 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i.i.i.i = add i32 %364, -1
  %arrayidx.i.i.i.i = getelementptr i64, ptr %362, i32 %sub.i.i.i.i
  %365 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %or.i.i.i.i = or i64 %366, 432345564227567616
  store i64 %or.i.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777216, i32 noundef 536870912, i32 noundef 0, i32 noundef 268435456) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 16777216, i8 noundef zeroext 12, i32 noundef 268435473, i32 noundef 2, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  %367 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %prog_len.i109.i, align 4
  %tgt_out.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 8
  %369 = ptrtoint ptr %tgt_out.i.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %tgt_out.i.i.i, align 4
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 268435463, i32 noundef 21, i32 noundef 33554432) #9
  %370 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i.i.i.i = lshr i32 %371, 3
  %372 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i.i.i, i32 %373)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i.i.i, %373
  br i1 %cmp.i.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i

do.end.i.i.i.i.i.i.i:                             ; preds = %emit_br_relo.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i.i.i) #12
  %374 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 -28, ptr %error.i, align 4
  br label %emit_br.exit.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %emit_br_relo.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %375 = ptrtoint ptr %tgt_abort.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %tgt_abort.i.i.i, align 4
  %377 = and i32 %376, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %.not.i.i.i = icmp eq i32 %377, 0
  %conv126.i.i.i.i.i.i = zext i32 %376 to i64
  %shl127.i.i.i.i.i.i = shl nuw nsw i64 %conv126.i.i.i.i.i.i, 22
  %and128.i.i.i.i.i.i = and i64 %shl127.i.i.i.i.i.i, 34355544064
  %or102.i.i.i.i.i.i = select i1 %.not.i.i.i, i64 927712968997, i64 2027224596773
  %or156.i.i.i.i.i.i = or i64 %or102.i.i.i.i.i.i, %and128.i.i.i.i.i.i
  %378 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i.i = getelementptr i64, ptr %379, i32 %373
  %380 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %or156.i.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i.i.i, align 8
  %381 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %382, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %prog_len.i109.i, align 4
  br label %emit_br.exit.i.i.i

emit_br.exit.i.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.i
  %383 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %prog.i.i.i.i, align 4
  %385 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i.i.i.i.i = add i32 %386, -1
  %arrayidx.i.i.i.i.i = getelementptr i64, ptr %384, i32 %sub.i.i.i.i.i
  %387 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %arrayidx.i.i.i.i.i, align 8
  %or.i.i.i.i.i = or i64 %388, 72057594037927936
  store i64 %or.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777216, i32 noundef 536870912, i32 noundef 0, i32 noundef 268435456) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554434, i16 noundef zeroext 4625, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554434, i16 noundef zeroext 16674, i32 noundef 2, i1 noundef zeroext false, i32 noundef 2) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554435, i16 noundef zeroext 4625, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554435, i16 noundef zeroext 16640, i32 noundef 2, i1 noundef zeroext false, i32 noundef 2) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 16777217, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554432, i32 noundef 2, i8 noundef zeroext 2) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777217, i32 noundef 20, i32 noundef 268435456) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 16777218, i32 noundef 268435471, i32 noundef 2, i32 noundef 33554434, i32 noundef 1, i8 noundef zeroext 0) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777217, i32 noundef 20, i32 noundef 268435456) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 33554434, i32 noundef 268435471, i32 noundef 2, i32 noundef 33554435, i32 noundef 1, i8 noundef zeroext 0) #9
  %389 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i56.i.i.i = lshr i32 %390, 3
  %391 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i56.i.i.i, i32 %392)
  %cmp.i.i.i58.i.i.i = icmp eq i32 %div10.i.i.i56.i.i.i, %392
  br i1 %cmp.i.i.i58.i.i.i, label %do.end.i.i.i61.i.i.i, label %if.end.i.i.i65.i.i.i

do.end.i.i.i61.i.i.i:                             ; preds = %emit_br.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i59.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i56.i.i.i) #12
  %393 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 -28, ptr %error.i, align 4
  br label %nfp_outro_tc_da.exit.i.i

if.end.i.i.i65.i.i.i:                             ; preds = %emit_br.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %394 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i63.i.i.i = getelementptr i64, ptr %395, i32 %392
  %396 = ptrtoint ptr %arrayidx.i.i.i63.i.i.i to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 2055781515320, ptr %arrayidx.i.i.i63.i.i.i, align 8
  %397 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i64.i.i.i = add i32 %398, 1
  store i32 %inc.i.i.i64.i.i.i, ptr %prog_len.i109.i, align 4
  br label %nfp_outro_tc_da.exit.i.i

nfp_outro_tc_da.exit.i.i:                         ; preds = %if.end.i.i.i65.i.i.i, %do.end.i.i.i61.i.i.i
  %399 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %prog.i.i.i.i, align 4
  %401 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i67.i.i.i = add i32 %402, -1
  %arrayidx.i68.i.i.i = getelementptr i64, ptr %400, i32 %sub.i67.i.i.i
  %403 = ptrtoint ptr %arrayidx.i68.i.i.i to i32
  call void @__asan_load8_noabort(i32 %403)
  %404 = load i64, ptr %arrayidx.i68.i.i.i, align 8
  %or.i69.i.i.i = or i64 %404, 432345564227567616
  store i64 %or.i69.i.i.i, ptr %arrayidx.i68.i.i.i, align 8
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 33554434, i32 noundef 16777218, i32 noundef 5, i32 noundef 33554434, i32 noundef 2, i8 noundef zeroext 4) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 16777216, i8 noundef zeroext 12, i32 noundef 33554434, i32 noundef 2, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %for.end.i
  %tgt_abort.i25.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 9
  %405 = ptrtoint ptr %tgt_abort.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %347, ptr %tgt_abort.i25.i.i, align 4
  %__prog_alloc_len.i.i.i.i26.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %406 = ptrtoint ptr %__prog_alloc_len.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %__prog_alloc_len.i.i.i.i26.i.i, align 4
  %div10.i.i.i.i27.i.i = lshr i32 %407, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i27.i.i, i32 %347)
  %cmp.i.i.i.i28.i.i = icmp eq i32 %div10.i.i.i.i27.i.i, %347
  br i1 %cmp.i.i.i.i28.i.i, label %do.end.i.i.i.i31.i.i, label %if.end.i.i.i.i35.i.i

do.end.i.i.i.i31.i.i:                             ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %347) #12
  %408 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 -28, ptr %error.i, align 4
  br label %emit_br_relo.exit.i43.i.i

if.end.i.i.i.i35.i.i:                             ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i.i32.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %409 = ptrtoint ptr %prog.i.i.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %prog.i.i.i.i32.i.i, align 4
  %arrayidx.i.i.i.i33.i.i = getelementptr i64, ptr %410, i32 %347
  %411 = ptrtoint ptr %arrayidx.i.i.i.i33.i.i to i32
  call void @__asan_store8_noabort(i32 %411)
  store i64 2055781515320, ptr %arrayidx.i.i.i.i33.i.i, align 8
  %412 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i34.i.i = add i32 %413, 1
  store i32 %inc.i.i.i.i34.i.i, ptr %prog_len.i109.i, align 4
  br label %emit_br_relo.exit.i43.i.i

emit_br_relo.exit.i43.i.i:                        ; preds = %if.end.i.i.i.i35.i.i, %do.end.i.i.i.i31.i.i
  %prog.i.i36.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %414 = ptrtoint ptr %prog.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %prog.i.i36.i.i, align 4
  %416 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i.i37.i.i = add i32 %417, -1
  %arrayidx.i.i38.i.i = getelementptr i64, ptr %415, i32 %sub.i.i37.i.i
  %418 = ptrtoint ptr %arrayidx.i.i38.i.i to i32
  call void @__asan_load8_noabort(i32 %418)
  %419 = load i64, ptr %arrayidx.i.i38.i.i, align 8
  %or.i.i39.i.i = or i64 %419, 432345564227567616
  store i64 %or.i.i39.i.i, ptr %arrayidx.i.i38.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777216, i32 noundef 536870912, i32 noundef 0, i32 noundef 268435456) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 16777216, i8 noundef zeroext 12, i32 noundef 268435586, i32 noundef 2, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  %420 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %prog_len.i109.i, align 4
  %tgt_out.i40.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 8
  %422 = ptrtoint ptr %tgt_out.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %421, ptr %tgt_out.i40.i.i, align 4
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 268435459, i32 noundef 21, i32 noundef 33554432) #9
  %423 = ptrtoint ptr %__prog_alloc_len.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %__prog_alloc_len.i.i.i.i26.i.i, align 4
  %div10.i.i.i.i.i41.i.i = lshr i32 %424, 3
  %425 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i41.i.i, i32 %426)
  %cmp.i.i.i.i.i42.i.i = icmp eq i32 %div10.i.i.i.i.i41.i.i, %426
  br i1 %cmp.i.i.i.i.i42.i.i, label %do.end.i.i.i.i.i46.i.i, label %if.end.i.i.i.i.i56.i.i

do.end.i.i.i.i.i46.i.i:                           ; preds = %emit_br_relo.exit.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i41.i.i) #12
  %427 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 -28, ptr %error.i, align 4
  br label %emit_br.exit.i60.i.i

if.end.i.i.i.i.i56.i.i:                           ; preds = %emit_br_relo.exit.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %428 = ptrtoint ptr %tgt_abort.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %tgt_abort.i25.i.i, align 4
  %430 = and i32 %429, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %.not.i47.i.i = icmp eq i32 %430, 0
  %conv126.i.i.i.i48.i.i = zext i32 %429 to i64
  %shl127.i.i.i.i49.i.i = shl nuw nsw i64 %conv126.i.i.i.i48.i.i, 22
  %and128.i.i.i.i50.i.i = and i64 %shl127.i.i.i.i49.i.i, 34355544064
  %or102.i.i.i.i52.i.i = select i1 %.not.i47.i.i, i64 927712968997, i64 2027224596773
  %or156.i.i.i.i53.i.i = or i64 %or102.i.i.i.i52.i.i, %and128.i.i.i.i50.i.i
  %431 = ptrtoint ptr %prog.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %prog.i.i36.i.i, align 4
  %arrayidx.i.i.i.i.i54.i.i = getelementptr i64, ptr %432, i32 %426
  %433 = ptrtoint ptr %arrayidx.i.i.i.i.i54.i.i to i32
  call void @__asan_store8_noabort(i32 %433)
  store i64 %or156.i.i.i.i53.i.i, ptr %arrayidx.i.i.i.i.i54.i.i, align 8
  %434 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.i55.i.i = add i32 %435, 1
  store i32 %inc.i.i.i.i.i55.i.i, ptr %prog_len.i109.i, align 4
  br label %emit_br.exit.i60.i.i

emit_br.exit.i60.i.i:                             ; preds = %if.end.i.i.i.i.i56.i.i, %do.end.i.i.i.i.i46.i.i
  %436 = ptrtoint ptr %prog.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %prog.i.i36.i.i, align 4
  %438 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i.i.i57.i.i = add i32 %439, -1
  %arrayidx.i.i.i58.i.i = getelementptr i64, ptr %437, i32 %sub.i.i.i57.i.i
  %440 = ptrtoint ptr %arrayidx.i.i.i58.i.i to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %arrayidx.i.i.i58.i.i, align 8
  %or.i.i.i59.i.i = or i64 %441, 72057594037927936
  store i64 %or.i.i.i59.i.i, ptr %arrayidx.i.i.i58.i.i, align 8
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554434, i16 noundef zeroext 8834, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554434, i16 noundef zeroext 17425, i32 noundef 2, i1 noundef zeroext false, i32 noundef 2) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 16777217, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554432, i32 noundef 2, i8 noundef zeroext 3) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777217, i32 noundef 20, i32 noundef 268435456) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 33554434, i32 noundef 268435711, i32 noundef 2, i32 noundef 33554434, i32 noundef 1, i8 noundef zeroext 0) #9
  %442 = ptrtoint ptr %__prog_alloc_len.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %__prog_alloc_len.i.i.i.i26.i.i, align 4
  %div10.i.i.i42.i.i.i = lshr i32 %443, 3
  %444 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i42.i.i.i, i32 %445)
  %cmp.i.i.i44.i.i.i = icmp eq i32 %div10.i.i.i42.i.i.i, %445
  br i1 %cmp.i.i.i44.i.i.i, label %do.end.i.i.i47.i.i.i, label %if.end.i.i.i51.i.i.i

do.end.i.i.i47.i.i.i:                             ; preds = %emit_br.exit.i60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i45.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i42.i.i.i) #12
  %446 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 -28, ptr %error.i, align 4
  br label %nfp_outro_xdp.exit.i.i

if.end.i.i.i51.i.i.i:                             ; preds = %emit_br.exit.i60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %447 = ptrtoint ptr %prog.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %prog.i.i36.i.i, align 4
  %arrayidx.i.i.i49.i.i.i = getelementptr i64, ptr %448, i32 %445
  %449 = ptrtoint ptr %arrayidx.i.i.i49.i.i.i to i32
  call void @__asan_store8_noabort(i32 %449)
  store i64 2055781515320, ptr %arrayidx.i.i.i49.i.i.i, align 8
  %450 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i50.i.i.i = add i32 %451, 1
  store i32 %inc.i.i.i50.i.i.i, ptr %prog_len.i109.i, align 4
  br label %nfp_outro_xdp.exit.i.i

nfp_outro_xdp.exit.i.i:                           ; preds = %if.end.i.i.i51.i.i.i, %do.end.i.i.i47.i.i.i
  %452 = ptrtoint ptr %prog.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %prog.i.i36.i.i, align 4
  %454 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %prog_len.i109.i, align 4
  %sub.i53.i.i.i = add i32 %455, -1
  %arrayidx.i54.i.i.i = getelementptr i64, ptr %453, i32 %sub.i53.i.i.i
  %456 = ptrtoint ptr %arrayidx.i54.i.i.i to i32
  call void @__asan_load8_noabort(i32 %456)
  %457 = load i64, ptr %arrayidx.i54.i.i.i, align 8
  %or.i55.i.i.i = or i64 %457, 432345564227567616
  store i64 %or.i55.i.i.i, ptr %arrayidx.i54.i.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777216, i32 noundef 536870912, i32 noundef 0, i32 noundef 268435456) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 16777216, i8 noundef zeroext 12, i32 noundef 33554434, i32 noundef 2, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3821, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end.i.i, %nfp_outro_xdp.exit.i.i, %nfp_outro_tc_da.exit.i.i
  %subprog_cnt.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 17
  %458 = ptrtoint ptr %subprog_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %subprog_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %459)
  %cmp4.i.i.i = icmp ugt i32 %459, 1
  br i1 %cmp4.i.i.i, label %for.body.lr.ph.i.i.i, label %sw.epilog.i.i.nfp_outro.exit.i_crit_edge

sw.epilog.i.i.nfp_outro.exit.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_outro.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.epilog.i.i
  %460 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %subprog.i, align 4
  %needs_reg_push.i64.i.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %461, i32 1, i32 1
  %462 = ptrtoint ptr %needs_reg_push.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %bf.load.i65.i.i = load i8, ptr %needs_reg_push.i64.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i65.i.i)
  %tobool.not.i66.i.i = icmp sgt i8 %bf.load.i65.i.i, -1
  br i1 %tobool.not.i66.i.i, label %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.if.end17.i.i_crit_edge

for.body.lr.ph.i.i.i.if.end17.i.i_crit_edge:      ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge:    ; preds = %for.body.lr.ph.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge
  %idx.05.i67.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 1, %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw i32 %idx.05.i67.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %459)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %459
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.nfp_outro.exit.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.nfp_outro.exit.i_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_outro.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %needs_reg_push.i.i.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %461, i32 %inc.i.i.i, i32 1
  %463 = ptrtoint ptr %needs_reg_push.i.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %bf.load.i.i.i34 = load i8, ptr %needs_reg_push.i.i.i, align 2
  %tobool.not.i.i.i35 = icmp sgt i8 %bf.load.i.i.i34, -1
  br i1 %tobool.not.i.i.i35, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %nfp_prog_needs_callee_reg_save.exit.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

nfp_prog_needs_callee_reg_save.exit.i.i:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %459)
  %cmp.i.le.i.i = icmp ult i32 %inc.i.i.i, %459
  br i1 %cmp.i.le.i.i, label %nfp_prog_needs_callee_reg_save.exit.i.i.if.end17.i.i_crit_edge, label %nfp_prog_needs_callee_reg_save.exit.i.i.nfp_outro.exit.i_crit_edge

nfp_prog_needs_callee_reg_save.exit.i.i.nfp_outro.exit.i_crit_edge: ; preds = %nfp_prog_needs_callee_reg_save.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_outro.exit.i

nfp_prog_needs_callee_reg_save.exit.i.i.if.end17.i.i_crit_edge: ; preds = %nfp_prog_needs_callee_reg_save.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %nfp_prog_needs_callee_reg_save.exit.i.i.if.end17.i.i_crit_edge, %for.body.lr.ph.i.i.i.if.end17.i.i_crit_edge
  %464 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %prog_len.i109.i, align 4
  %tgt_call_push_regs.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 10
  %466 = ptrtoint ptr %tgt_call_push_regs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %tgt_call_push_regs.i.i.i, align 4
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741825, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554444) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741826, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554445) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741827, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554446) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741828, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554447) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741829, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554448) #9
  tail call fastcc void @emit_rtn(ptr noundef %nfp_prog, i32 noundef 33554453, i8 noundef zeroext 3) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741830, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554449) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741831, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554450) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1073741832, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554451) #9
  %467 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %prog_len.i109.i, align 4
  %tgt_call_pop_regs.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 11
  %469 = ptrtoint ptr %tgt_call_pop_regs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %468, ptr %tgt_call_pop_regs.i.i.i, align 4
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331660, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741825) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331661, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741826) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331662, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741827) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331663, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741828) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331664, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741829) #9
  tail call fastcc void @emit_rtn(ptr noundef %nfp_prog, i32 noundef 16777237, i8 noundef zeroext 3) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331665, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741830) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331666, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741831) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331667, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741832) #9
  br label %nfp_outro.exit.i

nfp_outro.exit.i:                                 ; preds = %if.end17.i.i, %nfp_prog_needs_callee_reg_save.exit.i.i.nfp_outro.exit.i_crit_edge, %for.cond.i.i.i.nfp_outro.exit.i_crit_edge, %sw.epilog.i.i.nfp_outro.exit.i_crit_edge
  %470 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %471)
  %tobool54.not.i = icmp eq i32 %471, 0
  br i1 %tobool54.not.i, label %if.end57.i, label %nfp_outro.exit.i.do.end_crit_edge

nfp_outro.exit.i.do.end_crit_edge:                ; preds = %nfp_outro.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end57.i:                                       ; preds = %nfp_outro.exit.i
  %__prog_alloc_len.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %prog.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %472 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.i = lshr i32 %473, 3
  %474 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i, i32 %475)
  %cmp.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i, %475
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i) #12
  %476 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %477 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.i = getelementptr i64, ptr %478, i32 %475
  %479 = ptrtoint ptr %arrayidx.i.i.i.i110.i to i32
  call void @__asan_store8_noabort(i32 %479)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.i, align 8
  %480 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.i = add i32 %481, 1
  store i32 %inc.i.i.i.i.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.i

emit_nop.exit.i.i:                                ; preds = %if.end.i.i.i.i.i, %do.end.i.i.i.i.i
  %482 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.1.i = lshr i32 %483, 3
  %484 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.1.i, i32 %485)
  %cmp.i.i.i.i.1.i = icmp eq i32 %div10.i.i.i.i.1.i, %485
  br i1 %cmp.i.i.i.i.1.i, label %do.end.i.i.i.i.1.i, label %if.end.i.i.i.i.1.i

if.end.i.i.i.i.1.i:                               ; preds = %emit_nop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %486 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.1.i = getelementptr i64, ptr %487, i32 %485
  %488 = ptrtoint ptr %arrayidx.i.i.i.i110.1.i to i32
  call void @__asan_store8_noabort(i32 %488)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.1.i, align 8
  %489 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.1.i = add i32 %490, 1
  store i32 %inc.i.i.i.i.1.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.1.i

do.end.i.i.i.i.1.i:                               ; preds = %emit_nop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.1.i) #12
  %491 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.1.i

emit_nop.exit.i.1.i:                              ; preds = %do.end.i.i.i.i.1.i, %if.end.i.i.i.i.1.i
  %492 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.2.i = lshr i32 %493, 3
  %494 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.2.i, i32 %495)
  %cmp.i.i.i.i.2.i = icmp eq i32 %div10.i.i.i.i.2.i, %495
  br i1 %cmp.i.i.i.i.2.i, label %do.end.i.i.i.i.2.i, label %if.end.i.i.i.i.2.i

if.end.i.i.i.i.2.i:                               ; preds = %emit_nop.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %496 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.2.i = getelementptr i64, ptr %497, i32 %495
  %498 = ptrtoint ptr %arrayidx.i.i.i.i110.2.i to i32
  call void @__asan_store8_noabort(i32 %498)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.2.i, align 8
  %499 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.2.i = add i32 %500, 1
  store i32 %inc.i.i.i.i.2.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.2.i

do.end.i.i.i.i.2.i:                               ; preds = %emit_nop.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.2.i) #12
  %501 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.2.i

emit_nop.exit.i.2.i:                              ; preds = %do.end.i.i.i.i.2.i, %if.end.i.i.i.i.2.i
  %502 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.3.i = lshr i32 %503, 3
  %504 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.3.i, i32 %505)
  %cmp.i.i.i.i.3.i = icmp eq i32 %div10.i.i.i.i.3.i, %505
  br i1 %cmp.i.i.i.i.3.i, label %do.end.i.i.i.i.3.i, label %if.end.i.i.i.i.3.i

if.end.i.i.i.i.3.i:                               ; preds = %emit_nop.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %506 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.3.i = getelementptr i64, ptr %507, i32 %505
  %508 = ptrtoint ptr %arrayidx.i.i.i.i110.3.i to i32
  call void @__asan_store8_noabort(i32 %508)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.3.i, align 8
  %509 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.3.i = add i32 %510, 1
  store i32 %inc.i.i.i.i.3.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.3.i

do.end.i.i.i.i.3.i:                               ; preds = %emit_nop.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.3.i) #12
  %511 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.3.i

emit_nop.exit.i.3.i:                              ; preds = %do.end.i.i.i.i.3.i, %if.end.i.i.i.i.3.i
  %512 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.4.i = lshr i32 %513, 3
  %514 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.4.i, i32 %515)
  %cmp.i.i.i.i.4.i = icmp eq i32 %div10.i.i.i.i.4.i, %515
  br i1 %cmp.i.i.i.i.4.i, label %do.end.i.i.i.i.4.i, label %if.end.i.i.i.i.4.i

if.end.i.i.i.i.4.i:                               ; preds = %emit_nop.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %516 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.4.i = getelementptr i64, ptr %517, i32 %515
  %518 = ptrtoint ptr %arrayidx.i.i.i.i110.4.i to i32
  call void @__asan_store8_noabort(i32 %518)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.4.i, align 8
  %519 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.4.i = add i32 %520, 1
  store i32 %inc.i.i.i.i.4.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.4.i

do.end.i.i.i.i.4.i:                               ; preds = %emit_nop.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.4.i) #12
  %521 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.4.i

emit_nop.exit.i.4.i:                              ; preds = %do.end.i.i.i.i.4.i, %if.end.i.i.i.i.4.i
  %522 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.5.i = lshr i32 %523, 3
  %524 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.5.i, i32 %525)
  %cmp.i.i.i.i.5.i = icmp eq i32 %div10.i.i.i.i.5.i, %525
  br i1 %cmp.i.i.i.i.5.i, label %do.end.i.i.i.i.5.i, label %if.end.i.i.i.i.5.i

if.end.i.i.i.i.5.i:                               ; preds = %emit_nop.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %526 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.5.i = getelementptr i64, ptr %527, i32 %525
  %528 = ptrtoint ptr %arrayidx.i.i.i.i110.5.i to i32
  call void @__asan_store8_noabort(i32 %528)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.5.i, align 8
  %529 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.5.i = add i32 %530, 1
  store i32 %inc.i.i.i.i.5.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.5.i

do.end.i.i.i.i.5.i:                               ; preds = %emit_nop.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.5.i) #12
  %531 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.5.i

emit_nop.exit.i.5.i:                              ; preds = %do.end.i.i.i.i.5.i, %if.end.i.i.i.i.5.i
  %532 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.6.i = lshr i32 %533, 3
  %534 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.6.i, i32 %535)
  %cmp.i.i.i.i.6.i = icmp eq i32 %div10.i.i.i.i.6.i, %535
  br i1 %cmp.i.i.i.i.6.i, label %do.end.i.i.i.i.6.i, label %if.end.i.i.i.i.6.i

if.end.i.i.i.i.6.i:                               ; preds = %emit_nop.exit.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %536 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.6.i = getelementptr i64, ptr %537, i32 %535
  %538 = ptrtoint ptr %arrayidx.i.i.i.i110.6.i to i32
  call void @__asan_store8_noabort(i32 %538)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.6.i, align 8
  %539 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.6.i = add i32 %540, 1
  store i32 %inc.i.i.i.i.6.i, ptr %prog_len.i109.i, align 4
  br label %emit_nop.exit.i.6.i

do.end.i.i.i.i.6.i:                               ; preds = %emit_nop.exit.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.6.i) #12
  %541 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 -28, ptr %error.i, align 4
  br label %emit_nop.exit.i.6.i

emit_nop.exit.i.6.i:                              ; preds = %do.end.i.i.i.i.6.i, %if.end.i.i.i.i.6.i
  %542 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.7.i = lshr i32 %543, 3
  %544 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %prog_len.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.7.i, i32 %545)
  %cmp.i.i.i.i.7.i = icmp eq i32 %div10.i.i.i.i.7.i, %545
  br i1 %cmp.i.i.i.i.7.i, label %emit_nop.exit.i.7.thread.i, label %emit_nop.exit.i.7.i

emit_nop.exit.i.7.thread.i:                       ; preds = %emit_nop.exit.i.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.7.i) #12
  %546 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 -28, ptr %error.i, align 4
  br label %do.end

emit_nop.exit.i.7.i:                              ; preds = %emit_nop.exit.i.6.i
  %547 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i110.7.i = getelementptr i64, ptr %548, i32 %545
  %549 = ptrtoint ptr %arrayidx.i.i.i.i110.7.i to i32
  call void @__asan_store8_noabort(i32 %549)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i110.7.i, align 8
  %550 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %prog_len.i109.i, align 4
  %inc.i.i.i.i.7.i = add i32 %551, 1
  store i32 %inc.i.i.i.i.7.i, ptr %prog_len.i109.i, align 4
  %552 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %.pr.i = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool59.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool59.not.i, label %if.end62.i, label %emit_nop.exit.i.7.i.do.end_crit_edge

emit_nop.exit.i.7.i.do.end_crit_edge:             ; preds = %emit_nop.exit.i.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end62.i:                                       ; preds = %emit_nop.exit.i.7.i
  %553 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %.pn244.i.i = load ptr, ptr %insns.i, align 4
  %cmp.not246.i.i = icmp eq ptr %.pn244.i.i, %insns.i
  br i1 %cmp.not246.i.i, label %if.end62.i.if.end9_crit_edge, label %if.end62.i.for.body.i.i36_crit_edge

if.end62.i.for.body.i.i36_crit_edge:              ; preds = %if.end62.i
  br label %for.body.i.i36

if.end62.i.if.end9_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

for.body.i.i36:                                   ; preds = %for.inc141.i.i.for.body.i.i36_crit_edge, %if.end62.i.for.body.i.i36_crit_edge
  %.pn247.i.i = phi ptr [ %.pn.i.i52, %for.inc141.i.i.for.body.i.i36_crit_edge ], [ %.pn244.i.i, %if.end62.i.for.body.i.i36_crit_edge ]
  %flags.i113.i = getelementptr i8, ptr %.pn247.i.i, i32 -10
  %554 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %flags.i113.i, align 2
  %556 = and i16 %555, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %556)
  %tobool.not.i114.i = icmp eq i16 %556, 0
  br i1 %tobool.not.i114.i, label %if.end.i.i37, label %for.body.i.i36.for.inc141.i.i_crit_edge

for.body.i.i36.for.inc141.i.i_crit_edge:          ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

if.end.i.i37:                                     ; preds = %for.body.i.i36
  %meta.0248.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -264
  %557 = ptrtoint ptr %meta.0248.i.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %meta.0248.i.i, align 8
  %559 = and i8 %558, 7
  %560 = add nsw i8 %559, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %560)
  %561 = icmp ult i8 %560, 2
  br i1 %561, label %if.end3.i.i, label %if.end.i.i37.for.inc141.i.i_crit_edge

if.end.i.i37.for.inc141.i.i_crit_edge:            ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %558)
  %cmp5.i.i = icmp eq i8 %558, -107
  br i1 %cmp5.i.i, label %land.lhs.true.i.i39, label %if.end9.i.i

land.lhs.true.i.i39:                              ; preds = %if.end3.i.i
  %subprog_idx.i.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -8
  %562 = ptrtoint ptr %subprog_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %subprog_idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %563)
  %cmp.i.i.i38 = icmp eq i16 %563, 0
  br i1 %cmp.i.i.i38, label %land.lhs.true.i.i39.if.end12.i.i_crit_edge, label %land.lhs.true.i.i39.for.inc141.i.i_crit_edge

land.lhs.true.i.i39.for.inc141.i.i_crit_edge:     ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

land.lhs.true.i.i39.if.end12.i.i_crit_edge:       ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.end9.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %558)
  %cmp.i195.i.i = icmp eq i8 %558, -123
  br i1 %cmp.i195.i.i, label %is_mbpf_helper_call.exit.i.i, label %if.end9.i.i.if.end12.i.i_crit_edge

if.end9.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

is_mbpf_helper_call.exit.i.i:                     ; preds = %if.end9.i.i
  %insn.sroa.5.0.insn1.sroa_idx.i.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -263
  %564 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %564)
  %insn.sroa.5.0.copyload.i.i.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i.i.i, align 1
  %bf.clear.i.i.i40 = and i8 %insn.sroa.5.0.copyload.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i.i.i40)
  %cmp4.i.not.i.i = icmp eq i8 %bf.clear.i.i.i40, 1
  br i1 %cmp4.i.not.i.i, label %is_mbpf_helper_call.exit.i.i.if.end12.i.i_crit_edge, label %is_mbpf_helper_call.exit.i.i.for.inc141.i.i_crit_edge

is_mbpf_helper_call.exit.i.i.for.inc141.i.i_crit_edge: ; preds = %is_mbpf_helper_call.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

is_mbpf_helper_call.exit.i.i.if.end12.i.i_crit_edge: ; preds = %is_mbpf_helper_call.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %is_mbpf_helper_call.exit.i.i.if.end12.i.i_crit_edge, %if.end9.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i39.if.end12.i.i_crit_edge
  %cmp.i195227229.i.i = phi i1 [ true, %is_mbpf_helper_call.exit.i.i.if.end12.i.i_crit_edge ], [ false, %if.end9.i.i.if.end12.i.i_crit_edge ], [ false, %land.lhs.true.i.i39.if.end12.i.i_crit_edge ]
  %565 = ptrtoint ptr %.pn247.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %.pn247.i.i, align 4
  %cmp.i196.not.i.i = icmp eq ptr %566, %insns.i
  br i1 %cmp.i196.not.i.i, label %if.then17.i.i41, label %if.else.i.i43

if.then17.i.i41:                                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %567 = ptrtoint ptr %last_bpf_off.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %last_bpf_off.i, align 4
  br label %if.end23.i.i44

if.else.i.i43:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %off.i.i42 = getelementptr i8, ptr %566, i32 -16
  %569 = ptrtoint ptr %off.i.i42 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %off.i.i42, align 8
  %sub.i115.i = add i32 %570, -1
  br label %if.end23.i.i44

if.end23.i.i44:                                   ; preds = %if.else.i.i43, %if.then17.i.i41
  %br_idx.0.i.i = phi i32 [ %568, %if.then17.i.i41 ], [ %sub.i115.i, %if.else.i.i43 ]
  br i1 %cmp.i195227229.i.i, label %is_mbpf_pseudo_call.exit.i.i, label %if.end23.i.i44.if.end27.i.i_crit_edge

if.end23.i.i44.if.end27.i.i_crit_edge:            ; preds = %if.end23.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

is_mbpf_pseudo_call.exit.i.i:                     ; preds = %if.end23.i.i44
  %insn.sroa.5.0.insn1.sroa_idx.i199.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -263
  %571 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i199.i.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %insn.sroa.5.0.copyload.i200.i.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i199.i.i, align 1
  %bf.clear.i201.i.i = and i8 %insn.sroa.5.0.copyload.i200.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i201.i.i)
  %cmp4.i202.i.i = icmp eq i8 %bf.clear.i201.i.i, 1
  br i1 %cmp4.i202.i.i, label %if.then25.i.i, label %is_mbpf_pseudo_call.exit.i.i.if.end27.i.i_crit_edge

is_mbpf_pseudo_call.exit.i.i.if.end27.i.i_crit_edge: ; preds = %is_mbpf_pseudo_call.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

if.then25.i.i:                                    ; preds = %is_mbpf_pseudo_call.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_insns_after_br.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -248
  %572 = ptrtoint ptr %num_insns_after_br.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %num_insns_after_br.i.i, align 8
  %sub26.i.i = sub i32 %br_idx.0.i.i, %573
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then25.i.i, %is_mbpf_pseudo_call.exit.i.i.if.end27.i.i_crit_edge, %if.end23.i.i44.if.end27.i.i_crit_edge
  %br_idx.1.i.i = phi i32 [ %sub26.i.i, %if.then25.i.i ], [ %br_idx.0.i.i, %is_mbpf_pseudo_call.exit.i.i.if.end27.i.i_crit_edge ], [ %br_idx.0.i.i, %if.end23.i.i44.if.end27.i.i_crit_edge ]
  %574 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i116.i = getelementptr i64, ptr %575, i32 %br_idx.1.i.i
  %576 = ptrtoint ptr %arrayidx.i116.i to i32
  call void @__asan_load8_noabort(i32 %576)
  %577 = load i64, ptr %arrayidx.i116.i, align 8
  %and.i.i.i = and i64 %577, 1065152691424
  call void @__sanitizer_cov_trace_const_cmp8(i64 927712935968, i64 %and.i.i.i)
  %cmp.i204.i.i = icmp eq i64 %and.i.i.i, 927712935968
  %and1.i.i.i = and i64 %577, 1065152414464
  call void @__sanitizer_cov_trace_const_cmp8(i64 893353197568, i64 %and1.i.i.i)
  %cmp2.i.i.i = icmp eq i64 %and1.i.i.i, 893353197568
  %578 = or i1 %cmp.i204.i.i, %cmp2.i.i.i
  br i1 %578, label %if.end37.i.i45, label %do.end.i117.i

do.end.i117.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv33.i.i = zext i8 %558 to i32
  %call36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %br_idx.1.i.i, i32 noundef %conv33.i.i, i64 noundef %577) #12
  br label %do.end

if.end37.i.i45:                                   ; preds = %if.end27.i.i
  br i1 %cmp5.i.i, label %if.end37.i.i45.for.inc141.i.i_crit_edge, label %do.end59.i.i

if.end37.i.i45.for.inc141.i.i_crit_edge:          ; preds = %if.end37.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

do.end59.i.i:                                     ; preds = %if.end37.i.i45
  %shr.mask.i.i = and i64 %577, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %shr.mask.i.i)
  %cmp64.not.i.i = icmp eq i64 %shr.mask.i.i, 72057594037927936
  br i1 %cmp64.not.i.i, label %do.end59.i.i.if.end69.i.i_crit_edge, label %land.lhs.true66.i.i

do.end59.i.i.if.end69.i.i_crit_edge:              ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i.i

land.lhs.true66.i.i:                              ; preds = %do.end59.i.i
  br i1 %cmp.i195227229.i.i, label %is_mbpf_pseudo_call.exit212.i.i, label %land.lhs.true66.i.i.for.inc141.i.i_crit_edge

land.lhs.true66.i.i.for.inc141.i.i_crit_edge:     ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

is_mbpf_pseudo_call.exit212.i.i:                  ; preds = %land.lhs.true66.i.i
  %insn.sroa.5.0.insn1.sroa_idx.i207.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -263
  %579 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i207.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %insn.sroa.5.0.copyload.i208.i.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i207.i.i, align 1
  %bf.clear.i209.i.i = and i8 %insn.sroa.5.0.copyload.i208.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i209.i.i)
  %cmp4.i210.i.i = icmp eq i8 %bf.clear.i209.i.i, 1
  br i1 %cmp4.i210.i.i, label %is_mbpf_pseudo_call.exit212.i.i.if.end69.i.i_crit_edge, label %is_mbpf_pseudo_call.exit212.i.i.for.inc141.i.i_crit_edge

is_mbpf_pseudo_call.exit212.i.i.for.inc141.i.i_crit_edge: ; preds = %is_mbpf_pseudo_call.exit212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

is_mbpf_pseudo_call.exit212.i.i.if.end69.i.i_crit_edge: ; preds = %is_mbpf_pseudo_call.exit212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %is_mbpf_pseudo_call.exit212.i.i.if.end69.i.i_crit_edge, %do.end59.i.i.if.end69.i.i_crit_edge
  %580 = getelementptr i8, ptr %.pn247.i.i, i32 -256
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %580, align 8
  %tobool71.not.i.i = icmp eq ptr %582, null
  br i1 %tobool71.not.i.i, label %do.end75.i.i, label %if.end78.i.i

do.end75.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call77.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %do.end

if.end78.i.i:                                     ; preds = %if.end69.i.i
  %flags80.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %582, i32 0, i32 4
  %583 = ptrtoint ptr %flags80.i.i to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %flags80.i.i, align 2
  %585 = and i16 %584, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %585)
  %tobool83.not.i.i = icmp eq i16 %585, 0
  br i1 %tobool83.not.i.i, label %if.end90.i.i46, label %do.end87.i.i

do.end87.i.i:                                     ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call89.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %do.end

if.end90.i.i46:                                   ; preds = %if.end78.i.i
  br i1 %cmp.i195227229.i.i, label %is_mbpf_pseudo_call.exit220.i.i, label %if.end90.i.i46.do.end117.i.i_crit_edge

if.end90.i.i46.do.end117.i.i_crit_edge:           ; preds = %if.end90.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117.i.i

is_mbpf_pseudo_call.exit220.i.i:                  ; preds = %if.end90.i.i46
  %insn.sroa.5.0.insn1.sroa_idx.i215.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -263
  %586 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i215.i.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %insn.sroa.5.0.copyload.i216.i.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i215.i.i, align 1
  %bf.clear.i217.i.i = and i8 %insn.sroa.5.0.copyload.i216.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i217.i.i)
  %cmp4.i218.i.i = icmp eq i8 %bf.clear.i217.i.i, 1
  br i1 %cmp4.i218.i.i, label %land.lhs.true93.i.i, label %is_mbpf_pseudo_call.exit220.i.i.do.end117.i.i_crit_edge

is_mbpf_pseudo_call.exit220.i.i.do.end117.i.i_crit_edge: ; preds = %is_mbpf_pseudo_call.exit220.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117.i.i

land.lhs.true93.i.i:                              ; preds = %is_mbpf_pseudo_call.exit220.i.i
  %587 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %subprog.i, align 4
  %subprog_idx.i118.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %582, i32 0, i32 5
  %589 = ptrtoint ptr %subprog_idx.i118.i to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %subprog_idx.i118.i, align 8
  %idxprom.i119.i = zext i16 %590 to i32
  %needs_reg_push.i.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %588, i32 %idxprom.i119.i, i32 1
  %591 = ptrtoint ptr %needs_reg_push.i.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %bf.load.i.i = load i8, ptr %needs_reg_push.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool96.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool96.not.i.i, label %land.lhs.true93.i.i.do.end117.i.i_crit_edge, label %if.then97.i.i

land.lhs.true93.i.i.do.end117.i.i_crit_edge:      ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end117.i.i

if.then97.i.i:                                    ; preds = %land.lhs.true93.i.i
  %add.i.i.i47 = add i32 %br_idx.1.i.i, 1
  %arrayidx.i.i.i = getelementptr i64, ptr %575, i32 %add.i.i.i47
  %592 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %arrayidx.i.i.i, align 8
  %call.i.i.i = tail call zeroext i16 @immed_get_value(i64 noundef %593) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i.i)
  %tobool.not.i.i120.i = icmp eq i16 %call.i.i.i, 0
  br i1 %tobool.not.i.i120.i, label %nfp_fixup_immed_relo.exit.thread.i.i, label %nfp_fixup_immed_relo.exit.i.i

nfp_fixup_immed_relo.exit.thread.i.i:             ; preds = %if.then97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %594 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr i64, ptr %595, i32 %add.i.i.i47
  %off.i.i.i48 = getelementptr inbounds %struct.nfp_insn_meta, ptr %582, i32 0, i32 2
  %596 = ptrtoint ptr %off.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %off.i.i.i48, align 8
  %conv.i221.i.i = trunc i32 %597 to i16
  tail call void @immed_set_value(ptr noundef %arrayidx4.i.i.i, i16 noundef zeroext %conv.i221.i.i) #9
  br label %do.end117.i.i

nfp_fixup_immed_relo.exit.i.i:                    ; preds = %if.then97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %do.end

do.end117.i.i:                                    ; preds = %nfp_fixup_immed_relo.exit.thread.i.i, %land.lhs.true93.i.i.do.end117.i.i_crit_edge, %is_mbpf_pseudo_call.exit220.i.i.do.end117.i.i_crit_edge, %if.end90.i.i46.do.end117.i.i_crit_edge
  %598 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx120.i.i = getelementptr i64, ptr %599, i32 %br_idx.1.i.i
  %600 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_load8_noabort(i32 %600)
  %601 = load i64, ptr %arrayidx120.i.i, align 8
  %shr122.mask.i.i = and i64 %601, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %shr122.mask.i.i)
  %cmp123.not.i.i = icmp eq i64 %shr122.mask.i.i, 72057594037927936
  br i1 %cmp123.not.i.i, label %if.end126.i.i, label %do.end117.i.i.for.inc141.i.i_crit_edge

do.end117.i.i.for.inc141.i.i_crit_edge:           ; preds = %do.end117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

if.end126.i.i:                                    ; preds = %do.end117.i.i
  %off127.i.i = getelementptr i8, ptr %.pn247.i.i, i32 -16
  %602 = ptrtoint ptr %off127.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %off127.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %603, i32 %br_idx.1.i.i)
  %cmp129.not242.i.i = icmp ugt i32 %603, %br_idx.1.i.i
  br i1 %cmp129.not242.i.i, label %if.end126.i.i.for.inc141.i.i_crit_edge, label %for.body131.lr.ph.i.i

if.end126.i.i.for.inc141.i.i_crit_edge:           ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

for.body131.lr.ph.i.i:                            ; preds = %if.end126.i.i
  %off139.i.i49 = getelementptr inbounds %struct.nfp_insn_meta, ptr %582, i32 0, i32 2
  br label %for.body131.i.i

for.body131.i.i:                                  ; preds = %for.inc.i.i51.for.body131.i.i_crit_edge, %for.body131.lr.ph.i.i
  %idx.0243.i.i = phi i32 [ %603, %for.body131.lr.ph.i.i ], [ %inc.i.i50, %for.inc.i.i51.for.body131.i.i_crit_edge ]
  %604 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx133.i.i = getelementptr i64, ptr %605, i32 %idx.0243.i.i
  %606 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_load8_noabort(i32 %606)
  %607 = load i64, ptr %arrayidx133.i.i, align 8
  %and.i222.i.i = and i64 %607, 1065152691424
  call void @__sanitizer_cov_trace_const_cmp8(i64 927712935968, i64 %and.i222.i.i)
  %cmp.i223.i.i = icmp eq i64 %and.i222.i.i, 927712935968
  %and1.i224.i.i = and i64 %607, 1065152414464
  call void @__sanitizer_cov_trace_const_cmp8(i64 893353197568, i64 %and1.i224.i.i)
  %cmp2.i225.i.i = icmp eq i64 %and1.i224.i.i, 893353197568
  %608 = or i1 %cmp.i223.i.i, %cmp2.i225.i.i
  br i1 %608, label %if.end136.i.i, label %for.body131.i.i.for.inc.i.i51_crit_edge

for.body131.i.i.for.inc.i.i51_crit_edge:          ; preds = %for.body131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i51

if.end136.i.i:                                    ; preds = %for.body131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %609 = ptrtoint ptr %off139.i.i49 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %off139.i.i49, align 8
  %conv140.i.i = trunc i32 %610 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx133.i.i, i16 noundef zeroext %conv140.i.i) #9
  br label %for.inc.i.i51

for.inc.i.i51:                                    ; preds = %if.end136.i.i, %for.body131.i.i.for.inc.i.i51_crit_edge
  %inc.i.i50 = add i32 %idx.0243.i.i, 1
  %cmp129.not.i.i = icmp ugt i32 %inc.i.i50, %br_idx.1.i.i
  br i1 %cmp129.not.i.i, label %for.inc.i.i51.for.inc141.i.i_crit_edge, label %for.inc.i.i51.for.body131.i.i_crit_edge

for.inc.i.i51.for.body131.i.i_crit_edge:          ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body131.i.i

for.inc.i.i51.for.inc141.i.i_crit_edge:           ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141.i.i

for.inc141.i.i:                                   ; preds = %for.inc.i.i51.for.inc141.i.i_crit_edge, %if.end126.i.i.for.inc141.i.i_crit_edge, %do.end117.i.i.for.inc141.i.i_crit_edge, %is_mbpf_pseudo_call.exit212.i.i.for.inc141.i.i_crit_edge, %land.lhs.true66.i.i.for.inc141.i.i_crit_edge, %if.end37.i.i45.for.inc141.i.i_crit_edge, %is_mbpf_helper_call.exit.i.i.for.inc141.i.i_crit_edge, %land.lhs.true.i.i39.for.inc141.i.i_crit_edge, %if.end.i.i37.for.inc141.i.i_crit_edge, %for.body.i.i36.for.inc141.i.i_crit_edge
  %611 = ptrtoint ptr %.pn247.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %.pn.i.i52 = load ptr, ptr %.pn247.i.i, align 4
  %cmp.not.i.i53 = icmp eq ptr %.pn.i.i52, %insns.i
  br i1 %cmp.not.i.i53, label %for.inc141.i.i.if.end9_crit_edge, label %for.inc141.i.i.for.body.i.i36_crit_edge

for.inc141.i.i.for.body.i.i36_crit_edge:          ; preds = %for.inc141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i36

for.inc141.i.i.if.end9_crit_edge:                 ; preds = %for.inc141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %nfp_fixup_immed_relo.exit.i.i, %do.end87.i.i, %do.end75.i.i, %do.end.i117.i, %emit_nop.exit.i.7.i.do.end_crit_edge, %emit_nop.exit.i.7.thread.i, %nfp_outro.exit.i.do.end_crit_edge, %if.end38.i.do.end_crit_edge, %if.end34.i.do.end_crit_edge, %if.end31.i.do.end_crit_edge, %if.then6.i.do.end_crit_edge, %nfp_bpf_optimize.exit.do.end_crit_edge
  %retval.2.i.ph = phi i32 [ -28, %emit_nop.exit.i.7.thread.i ], [ -22, %nfp_fixup_immed_relo.exit.i.i ], [ -40, %do.end.i117.i ], [ -40, %do.end75.i.i ], [ -40, %do.end87.i.i ], [ %.pr.i, %emit_nop.exit.i.7.i.do.end_crit_edge ], [ %471, %nfp_outro.exit.i.do.end_crit_edge ], [ %314, %nfp_bpf_optimize.exit.do.end_crit_edge ], [ %334, %if.then6.i.do.end_crit_edge ], [ -2, %if.end31.i.do.end_crit_edge ], [ %call35.i, %if.end34.i.do.end_crit_edge ], [ %343, %if.end38.i.do.end_crit_edge ]
  %n_translated = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 12
  %612 = ptrtoint ptr %n_translated to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %n_translated, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %retval.2.i.ph, i32 noundef %613) #12
  br label %cleanup

if.end9:                                          ; preds = %for.inc141.i.i.if.end9_crit_edge, %if.end62.i.if.end9_crit_edge
  %614 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %prog_len.i109.i, align 4
  %616 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %615, i32 8) #9
  %617 = extractvalue { i32, i1 } %616, 1
  br i1 %617, label %if.end9.cleanup_crit_edge, label %kvmalloc_array.exit.i, !prof !112

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvmalloc_array.exit.i:                            ; preds = %if.end9
  %618 = extractvalue { i32, i1 } %616, 0
  %call.i.i.i54 = tail call noalias ptr @kvmalloc_node(i32 noundef %618, i32 noundef 3264, i32 noundef -1) #13
  %tobool.not.i55 = icmp eq ptr %call.i.i.i54, null
  br i1 %tobool.not.i55, label %kvmalloc_array.exit.i.cleanup_crit_edge, label %if.end.i56

kvmalloc_array.exit.i.cleanup_crit_edge:          ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i56:                                       ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %619 = ptrtoint ptr %prog_len.i109.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %prog_len.i109.i, align 4
  %mul.i = shl i32 %620, 3
  %621 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 %mul.i, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %622 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %624 = call ptr @memcpy(ptr %call.i.i.i54, ptr %623, i32 %mul.i)
  tail call void @kvfree(ptr noundef %623) #9
  %625 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store ptr %call.i.i.i54, ptr %prog.i.i.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i56, %kvmalloc_array.exit.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %kvmalloc_array.exit.i.cleanup_crit_edge ], [ 0, %if.end.i56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_bpf_jit_prepare(ptr noundef %nfp_prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %insns = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 21
  %0 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn65 = load ptr, ptr %insns, align 4
  %cmp.not67 = icmp eq ptr %.pn65, %insns
  br i1 %cmp.not67, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn65, %entry.for.body_crit_edge ]
  %meta.069 = getelementptr i8, ptr %.pn68, i32 -264
  %1 = ptrtoint ptr %meta.069 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %meta.069, align 8
  %3 = and i8 %2, 7
  %4 = add nsw i8 %3, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %5 = icmp ult i8 %4, 2
  br i1 %5, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = and i8 %2, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %6)
  %cmp3 = icmp eq i8 %6, -112
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %2)
  %cmp.i = icmp eq i8 %2, -123
  br i1 %cmp.i, label %is_mbpf_helper_call.exit, label %if.end9

is_mbpf_helper_call.exit:                         ; preds = %if.end6
  %insn.sroa.5.0.insn1.sroa_idx.i = getelementptr i8, ptr %.pn68, i32 -263
  %7 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %insn.sroa.5.0.copyload.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i, align 1
  %bf.clear.i = and i8 %insn.sroa.5.0.copyload.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp4.i.not = icmp eq i8 %bf.clear.i, 1
  br i1 %cmp4.i.not, label %is_mbpf_helper_call.exit.if.end23_crit_edge, label %is_mbpf_helper_call.exit.cleanup_crit_edge

is_mbpf_helper_call.exit.cleanup_crit_edge:       ; preds = %is_mbpf_helper_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_mbpf_helper_call.exit.if.end23_crit_edge:      ; preds = %is_mbpf_helper_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp11 = icmp eq i8 %6, -128
  br i1 %cmp11, label %if.end9.if.end23_crit_edge, label %if.end23.thread

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %n17 = getelementptr i8, ptr %.pn68, i32 -12
  %8 = ptrtoint ptr %n17 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %n17, align 4
  %conv18 = zext i16 %9 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  %off = getelementptr i8, ptr %.pn68, i32 -262
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %off, align 2
  %conv21 = sext i16 %11 to i32
  %add22 = add nsw i32 %add19, %conv21
  %call2463 = tail call ptr @nfp_bpf_goto_meta(ptr noundef %nfp_prog, ptr noundef %meta.069, i32 noundef %add22) #9
  br label %if.end29

if.end23:                                         ; preds = %if.end9.if.end23_crit_edge, %is_mbpf_helper_call.exit.if.end23_crit_edge
  %n = getelementptr i8, ptr %.pn68, i32 -12
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %n, align 4
  %conv14 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv14, 1
  %imm = getelementptr i8, ptr %.pn68, i32 -260
  %14 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imm, align 4
  %add16 = add i32 %add, %15
  %call24 = tail call ptr @nfp_bpf_goto_meta(ptr noundef %nfp_prog, ptr noundef %meta.069, i32 noundef %add16) #9
  %flags = getelementptr inbounds %struct.nfp_insn_meta, ptr %call24, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = or i16 %17, 2
  store i16 %18, ptr %flags, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.end23.thread
  %call2464 = phi ptr [ %call2463, %if.end23.thread ], [ %call24, %if.end23 ]
  %flags30 = getelementptr inbounds %struct.nfp_insn_meta, ptr %call2464, i32 0, i32 4
  %19 = ptrtoint ptr %flags30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags30, align 2
  %21 = or i16 %20, 1
  store i16 %21, ptr %flags30, align 2
  %22 = getelementptr i8, ptr %.pn68, i32 -256
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2464, ptr %22, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %is_mbpf_helper_call.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %24 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp.not = icmp eq ptr %.pn, %insns
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_bpf_goto_meta(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfp_bpf_supported_opcode(i8 noundef zeroext %code) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %code to i32
  %arrayidx = getelementptr [256 x ptr], ptr @instr_cb, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_bpf_relo_for_vnic(ptr nocapture noundef readonly %nfp_prog, ptr nocapture noundef readonly %bv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prog1 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %0 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog1, align 4
  %prog_len = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %2 = ptrtoint ptr %prog_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_len, align 4
  %mul = shl i32 %3, 3
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %mul, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %for.cond.preheader

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %prog_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp159.not = icmp eq i32 %5, 0
  br i1 %cmp159.not, label %for.cond.preheader.cleanup95_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup95_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %start_off82 = getelementptr inbounds %struct.nfp_bpf_vnic, ptr %bv, i32 0, i32 1
  %tgt_done = getelementptr inbounds %struct.nfp_bpf_vnic, ptr %bv, i32 0, i32 2
  %tgt_call_pop_regs = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 11
  %tgt_call_push_regs = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 10
  %tgt_abort = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 9
  %tgt_out = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %call, i32 %i.0160
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %shr = lshr i64 %7, 56
  %trunc = trunc i64 %shr to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc, label %for.body.sw.epilog84_crit_edge [
    i8 0, label %for.body.for.inc_crit_edge
    i8 1, label %sw.bb16
    i8 2, label %sw.bb19
    i8 3, label %sw.bb23
    i8 4, label %sw.bb28
    i8 5, label %sw.bb42
    i8 6, label %sw.bb56
    i8 7, label %sw.bb59
    i8 8, label %sw.bb80
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.sw.epilog84_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog84

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_off82, align 4
  %conv18 = trunc i32 %10 to i16
  tail call void @br_add_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv18) #9
  br label %sw.epilog84

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %tgt_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tgt_out, align 4
  %13 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_off82, align 4
  %add = add i32 %14, %12
  %conv22 = trunc i32 %add to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv22) #9
  br label %sw.epilog84

sw.bb23:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %tgt_abort to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tgt_abort, align 4
  %17 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_off82, align 4
  %add26 = add i32 %18, %16
  %conv27 = trunc i32 %add26 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv27) #9
  br label %sw.epilog84

sw.bb28:                                          ; preds = %for.body
  %19 = ptrtoint ptr %tgt_call_push_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tgt_call_push_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %err_free_prog

if.end36:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_off82, align 4
  %add39 = add i32 %22, %20
  %conv40 = trunc i32 %add39 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv40) #9
  br label %sw.epilog84

sw.bb42:                                          ; preds = %for.body
  %23 = ptrtoint ptr %tgt_call_pop_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tgt_call_pop_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool43.not = icmp eq i32 %24, 0
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %err_free_prog

if.end50:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_off82, align 4
  %add53 = add i32 %26, %24
  %conv54 = trunc i32 %add53 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv54) #9
  br label %sw.epilog84

sw.bb56:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %tgt_done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tgt_done, align 4
  %conv58 = trunc i32 %28 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv58) #9
  br label %sw.epilog84

sw.bb59:                                          ; preds = %for.body
  %call61 = tail call zeroext i16 @br_get_offset(i64 noundef %7) #9
  %29 = zext i16 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %call61, label %do.end75 [
    i16 15001, label %sw.bb63
    i16 15002, label %sw.bb64
    i16 15003, label %sw.bb67
    i16 15025, label %sw.bb70
  ]

sw.bb63:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nfp_prog, align 4
  %helpers = getelementptr inbounds %struct.nfp_app_bpf, ptr %31, i32 0, i32 13
  br label %sw.epilog

sw.bb64:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nfp_prog, align 4
  %map_update = getelementptr inbounds %struct.nfp_app_bpf, ptr %33, i32 0, i32 13, i32 1
  br label %sw.epilog

sw.bb67:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nfp_prog, align 4
  %map_delete = getelementptr inbounds %struct.nfp_app_bpf, ptr %35, i32 0, i32 13, i32 2
  br label %sw.epilog

sw.bb70:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nfp_prog, align 4
  %perf_event_output = getelementptr inbounds %struct.nfp_app_bpf, ptr %37, i32 0, i32 13, i32 3
  br label %sw.epilog

do.end75:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  %conv62 = zext i16 %call61 to i32
  %sub = add nsw i32 %conv62, -15000
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %sub) #12
  br label %err_free_prog

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb63
  %val.0.in = phi ptr [ %perf_event_output, %sw.bb70 ], [ %map_delete, %sw.bb67 ], [ %map_update, %sw.bb64 ], [ %helpers, %sw.bb63 ]
  %38 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %val.0 = load i32, ptr %val.0.in, align 4
  %conv79 = trunc i32 %val.0 to i16
  tail call void @br_set_offset(ptr noundef %arrayidx, i16 noundef zeroext %conv79) #9
  br label %sw.epilog84

sw.bb80:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %start_off82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %start_off82, align 4
  %conv83 = trunc i32 %40 to i16
  tail call void @immed_add_value(ptr noundef %arrayidx, i16 noundef zeroext %conv83) #9
  br label %sw.epilog84

sw.epilog84:                                      ; preds = %sw.bb80, %sw.epilog, %sw.bb56, %if.end50, %if.end36, %sw.bb23, %sw.bb19, %sw.bb16, %for.body.sw.epilog84_crit_edge
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx, align 8
  %and86 = and i64 %42, 72057594037927935
  store i64 %and86, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog84, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0160, 1
  %43 = ptrtoint ptr %prog_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prog_len, align 4
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp15.not.i = icmp eq i32 %44, 0
  br i1 %cmp15.not.i, label %for.end.cleanup95_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.cleanup95_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %call, i32 %i.016.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @nfp_ustore_check_valid_no_ecc(i64 noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %err_free_prog.loopexit

for.inc.i:                                        ; preds = %for.body.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.i, align 8
  %call2.i = tail call i64 @nfp_ustore_calc_ecc_insn(i64 noundef %48) #9
  %49 = tail call i64 @llvm.bswap.i64(i64 %call2.i) #9
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx.i, align 8
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %for.inc.i.cleanup95_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup95_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

err_free_prog.loopexit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = inttoptr i32 %call.i to ptr
  br label %err_free_prog

err_free_prog:                                    ; preds = %err_free_prog.loopexit, %do.end75, %do.end47, %do.end33
  %err.2 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end75 ], [ inttoptr (i32 -22 to ptr), %do.end47 ], [ inttoptr (i32 -22 to ptr), %do.end33 ], [ %phi.cast, %err_free_prog.loopexit ]
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup95

cleanup95:                                        ; preds = %err_free_prog, %for.inc.i.cleanup95_crit_edge, %for.end.cleanup95_crit_edge, %for.cond.preheader.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi ptr [ %err.2, %err_free_prog ], [ inttoptr (i32 -12 to ptr), %entry.cleanup95_crit_edge ], [ %call, %for.end.cleanup95_crit_edge ], [ %call, %for.cond.preheader.cleanup95_crit_edge ], [ %call, %for.inc.i.cleanup95_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_add_offset(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_set_offset(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @br_get_offset(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @immed_add_value(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wrp_immed(ptr nocapture noundef %nfp_prog, i32 noundef %dst, i32 noundef %imm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %imm)
  %tobool.not.i = icmp ult i32 %imm, 65536
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.else.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.else.i:                                        ; preds = %entry
  %and1.i = and i32 %imm, -16776961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %imm, 8
  br label %if.then

if.else5.i:                                       ; preds = %if.else.i
  %and6.i = and i32 %imm, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr9.i = lshr i32 %imm, 16
  br label %if.then

if.then:                                          ; preds = %if.then8.i, %if.then3.i, %entry.if.then_crit_edge
  %imm.sink.i = phi i32 [ %shr9.i, %if.then8.i ], [ %shr.i, %if.then3.i ], [ %imm, %entry.if.then_crit_edge ]
  %.sink.i = phi i32 [ 2, %if.then8.i ], [ 1, %if.then3.i ], [ 0, %entry.if.then_crit_edge ]
  %conv.i = trunc i32 %imm.sink.i to i16
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %dst, i16 noundef zeroext %conv.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef %.sink.i)
  br label %if.end5

if.else:                                          ; preds = %if.else5.i
  %neg = xor i32 %imm, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %imm)
  %tobool.not.i15 = icmp ugt i32 %imm, -65537
  br i1 %tobool.not.i15, label %if.else.if.then2_crit_edge, label %if.else.i18

if.else.if.then2_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.else.i18:                                      ; preds = %if.else
  %and1.i16 = and i32 %neg, -16776961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i16)
  %tobool2.not.i17 = icmp eq i32 %and1.i16, 0
  br i1 %tobool2.not.i17, label %if.then3.i20, label %if.else5.i23

if.then3.i20:                                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i19 = lshr i32 %neg, 8
  br label %if.then2

if.else5.i23:                                     ; preds = %if.else.i18
  %and6.i21 = and i32 %neg, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i21)
  %tobool7.not.i22 = icmp eq i32 %and6.i21, 0
  br i1 %tobool7.not.i22, label %if.then8.i25, label %if.else3

if.then8.i25:                                     ; preds = %if.else5.i23
  call void @__sanitizer_cov_trace_pc() #11
  %shr9.i24 = lshr i32 %neg, 16
  br label %if.then2

if.then2:                                         ; preds = %if.then8.i25, %if.then3.i20, %if.else.if.then2_crit_edge
  %imm.sink.i26 = phi i32 [ %shr9.i24, %if.then8.i25 ], [ %shr.i19, %if.then3.i20 ], [ %neg, %if.else.if.then2_crit_edge ]
  %.sink.i27 = phi i32 [ 2, %if.then8.i25 ], [ 1, %if.then3.i20 ], [ 0, %if.else.if.then2_crit_edge ]
  %conv.i28 = trunc i32 %imm.sink.i26 to i16
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %dst, i16 noundef zeroext %conv.i28, i32 noundef 0, i1 noundef zeroext true, i32 noundef %.sink.i27)
  br label %if.end5

if.else3:                                         ; preds = %if.else5.i23
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %imm to i16
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %dst, i16 noundef zeroext %conv, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0)
  %shr = lshr i32 %imm, 16
  %conv4 = trunc i32 %shr to i16
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %dst, i16 noundef zeroext %conv4, i32 noundef 2, i1 noundef zeroext false, i32 noundef 2)
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_alu(ptr nocapture noundef %nfp_prog, i32 noundef %dst, i32 noundef %lreg, i32 noundef %op, i32 noundef %rreg) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 16)
  %call = call i32 @swreg_to_unrestricted(i32 noundef %dst, i32 noundef %lreg, i32 noundef %rreg, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %2 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %3, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %4 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %div10.i.i, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %6 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 7
  %7 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %src_lmextn, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 6
  %9 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dst_lmextn, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  %wr_both = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 5
  %11 = ptrtoint ptr %wr_both to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wr_both, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  %swap = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 4
  %13 = ptrtoint ptr %swap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %swap, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  %breg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %15 = ptrtoint ptr %breg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %breg, align 4
  %areg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %17 = ptrtoint ptr %areg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %areg, align 2
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %dst1 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 1
  %21 = ptrtoint ptr %dst1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dst1, align 4
  %conv41.i = zext i16 %16 to i64
  %shl42.i = shl nuw nsw i64 %conv41.i, 10
  %and43.i = and i64 %shl42.i, 1047552
  %23 = and i16 %18, 1023
  %and17.i = zext i16 %23 to i64
  %conv68.i = zext i16 %22 to i64
  %shl69.i = shl nuw nsw i64 %conv68.i, 20
  %and70.i = and i64 %shl69.i, 1072693248
  %shl99.i = select i1 %tobool2.not, i64 0, i64 1073741824
  %conv125.i = zext i32 %op to i64
  %shl126.i = shl nuw nsw i64 %conv125.i, 31
  %and127.i = and i64 %shl126.i, 66571993088
  %conv152.i = zext i32 %20 to i64
  %shl153.i = shl i64 %conv152.i, 36
  %and154.i = and i64 %shl153.i, 68719476736
  %shl183.i = select i1 %tobool3.not, i64 0, i64 2199023255552
  %shl213.i = select i1 %tobool5.not, i64 0, i64 4398046511104
  %shl243.i = select i1 %tobool4.not, i64 0, i64 8796093022208
  %or.i = or i64 %and127.i, %and70.i
  %or44.i = or i64 %or.i, %and17.i
  %or71.i = or i64 %or44.i, %and154.i
  %or101.i = or i64 %or71.i, %shl99.i
  %or128.i = or i64 %or101.i, %and43.i
  %or155.i = or i64 %or128.i, %shl183.i
  %or185.i = or i64 %or155.i, %shl243.i
  %or215.i = or i64 %or185.i, %shl213.i
  %or245.i = or i64 %or215.i, 687194767360
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %24 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %25, i32 %5
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or245.i, ptr %arrayidx.i.i, align 8
  %27 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_immed(ptr nocapture noundef %nfp_prog, i32 noundef %dst, i16 noundef zeroext %imm, i32 noundef %width, i1 noundef zeroext %invert, i32 noundef %shift) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 16)
  %shr.i = lshr i32 %dst, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr.i)
  %cmp = icmp eq i32 %shr.i, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -14, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i16 %imm, 255
  %conv.i = zext i16 %and to i32
  %or.i = or i32 %conv.i, 268435456
  %call3 = call i32 @swreg_to_unrestricted(i32 noundef %dst, i32 noundef %dst, i32 noundef %or.i, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %error5 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %2 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %error5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i)
  %cmp8 = icmp eq i32 %shr.i, 32
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dst10 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %dst10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dst10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %areg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %areg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %areg, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i16 [ %4, %cond.true ], [ %6, %cond.false ]
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %7 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %8, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %9 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %10)
  %cmp.i.i = icmp eq i32 %div10.i.i, %10
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %11 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 7
  %12 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %src_lmextn, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 6
  %14 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dst_lmextn, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  %wr_both = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 5
  %16 = ptrtoint ptr %wr_both to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wr_both, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  %18 = lshr i16 %imm, 8
  %breg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %19 = ptrtoint ptr %breg to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %breg, align 4
  %conv41.i = zext i16 %20 to i64
  %shl42.i = shl nuw nsw i64 %conv41.i, 10
  %and43.i = and i64 %shl42.i, 1047552
  %21 = and i16 %cond.in, 1023
  %and17.i = zext i16 %21 to i64
  %conv68.i = zext i16 %18 to i64
  %shl69.i = shl nuw nsw i64 %conv68.i, 20
  %conv95.i = zext i32 %width to i64
  %shl96.i = shl nuw nsw i64 %conv95.i, 29
  %and97.i = and i64 %shl96.i, 1610612736
  %shl126.i = select i1 %invert, i64 2147483648, i64 0
  %conv152.i = zext i32 %shift to i64
  %shl153.i = shl i64 %conv152.i, 33
  %and154.i = and i64 %shl153.i, 25769803776
  %shl183.i = select i1 %tobool17.not, i64 0, i64 2199023255552
  %shl213.i = select i1 %tobool19.not, i64 0, i64 4398046511104
  %shl243.i = select i1 %tobool18.not, i64 0, i64 8796093022208
  %or.i29 = or i64 %and43.i, %and17.i
  %or44.i = or i64 %or.i29, %shl69.i
  %or71.i = or i64 %or44.i, %shl126.i
  %or98.i = or i64 %or71.i, %and97.i
  %or128.i = or i64 %or98.i, %shl183.i
  %or155.i = or i64 %and154.i, %shl243.i
  %or185.i = or i64 %or155.i, %shl213.i
  %or215.i = or i64 %or185.i, %or128.i
  %or245.i = or i64 %or215.i, 1030792151040
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %22 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %23, i32 %10
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or245.i, ptr %arrayidx.i.i, align 8
  %25 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %26, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swreg_to_unrestricted(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_shf(ptr nocapture noundef %nfp_prog, i32 noundef %dst, i32 noundef %lreg, i32 noundef %op, i32 noundef %rreg, i32 noundef %sc, i8 noundef zeroext %shift) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_re_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 12)
  %call = call i32 @swreg_to_restricted(i32 noundef %dst, i32 noundef %lreg, i32 noundef %rreg, ptr noundef nonnull %reg, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 8
  %3 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 7
  %4 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 6
  %5 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 5
  %6 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 3
  %8 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 2
  %9 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 2
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %6, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool8.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift)
  %tobool.not.i = icmp ult i8 %shift, 32
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -14, ptr %error.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %29 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %30, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %31 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %32)
  %cmp.i.i = icmp eq i32 %div10.i.i, %32
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %33 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc)
  %cmp.i = icmp ne i32 %sc, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift)
  %tobool20.not.i = icmp eq i8 %shift, 0
  %or.cond.i = or i1 %cmp.i, %tobool20.not.i
  %sub.i = sub i8 0, %shift
  %shift.addr.0.i = select i1 %or.cond.i, i8 %shift, i8 %sub.i
  %conv72.i = zext i32 %sc to i64
  %shl73.i = shl nuw nsw i64 %conv72.i, 8
  %and74.i = and i64 %shl73.i, 768
  %and48.i = zext i8 %15 to i64
  %conv99.i = zext i8 %17 to i64
  %shl100.i = shl nuw nsw i64 %conv99.i, 10
  %shl130.i = select i1 %tobool4.not, i64 0, i64 262144
  %shl160.i = select i1 %tobool5.not, i64 0, i64 524288
  %conv186.i = zext i8 %11 to i64
  %shl187.i = shl nuw nsw i64 %conv186.i, 20
  %conv213.i = zext i8 %shift.addr.0.i to i64
  %shl214.i = shl nuw nsw i64 %conv213.i, 28
  %and215.i = and i64 %shl214.i, 8321499136
  %conv240.i = zext i32 %op to i64
  %shl241.i = shl i64 %conv240.i, 33
  %and242.i = and i64 %shl241.i, 60129542144
  %conv267.i = zext i32 %13 to i64
  %shl268.i = shl i64 %conv267.i, 36
  %and269.i = and i64 %shl268.i, 68719476736
  %shl298.i = select i1 %tobool6.not, i64 0, i64 2199023255552
  %shl328.i = select i1 %tobool8.not, i64 0, i64 4398046511104
  %shl358.i = select i1 %tobool7.not, i64 0, i64 8796093022208
  %or.i = or i64 %and269.i, %shl187.i
  %or75.i = or i64 %or.i, %and74.i
  %or102.i = or i64 %or75.i, %and48.i
  %or132.i = or i64 %or102.i, %shl130.i
  %or162.i = or i64 %or132.i, %and242.i
  %or189.i = or i64 %or162.i, %shl100.i
  %or216.i = or i64 %and215.i, %shl160.i
  %or243.i = or i64 %or216.i, %shl298.i
  %or270.i = or i64 %or243.i, %shl358.i
  %or300.i = or i64 %or270.i, %or189.i
  %or330.i = or i64 %or300.i, %shl328.i
  %or360.i = or i64 %or330.i, 549755813888
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %34 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %35, i32 %32
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %or360.i, ptr %arrayidx.i.i, align 8
  %37 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then.i, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_ld_field_any(ptr nocapture noundef %nfp_prog, i32 noundef %dst, i8 noundef zeroext %bmask, i32 noundef %src, i32 noundef %sc, i8 noundef zeroext %shift, i1 noundef zeroext %zero) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_re_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 12)
  %call = call i32 @swreg_to_restricted(i32 noundef %dst, i32 noundef %dst, i32 noundef %src, ptr noundef nonnull %reg, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %2 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %3, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %4 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %div10.i.i, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %6 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %10 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  %13 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  %16 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  %19 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not = icmp eq i8 %21, 0
  %22 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  %25 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv43.i = zext i32 %sc to i64
  %shl44.i = shl nuw nsw i64 %conv43.i, 8
  %and45.i = and i64 %shl44.i, 768
  %conv18.i = zext i8 %27 to i64
  %or.i = or i64 %and45.i, %conv18.i
  %conv70.i = zext i8 %24 to i64
  %shl71.i = shl nuw nsw i64 %conv70.i, 10
  %or46.i = or i64 %shl71.i, %or.i
  %shl101.i = select i1 %tobool1.not, i64 0, i64 262144
  %or73.i = or i64 %or46.i, %shl101.i
  %shl131.i = select i1 %tobool3.not, i64 0, i64 524288
  %or103.i = or i64 %shl131.i, %or73.i
  %shl161.i = select i1 %zero, i64 1048576, i64 0
  %or133.i = or i64 %or103.i, %shl161.i
  %conv187.i = zext i8 %bmask to i64
  %shl188.i = shl nuw nsw i64 %conv187.i, 24
  %and189.i = and i64 %shl188.i, 251658240
  %or163.i = or i64 %or133.i, %and189.i
  %conv214.i = zext i8 %shift to i64
  %shl215.i = shl nuw nsw i64 %conv214.i, 28
  %and216.i = and i64 %shl215.i, 8321499136
  %shl245.i = select i1 %tobool4.not, i64 0, i64 2199023255552
  %shl275.i = select i1 %tobool6.not, i64 0, i64 4398046511104
  %shl305.i = select i1 %tobool5.not, i64 0, i64 8796093022208
  %or190.i = or i64 %and216.i, %shl245.i
  %or217.i = or i64 %or190.i, %shl305.i
  %or247.i = or i64 %or217.i, %or163.i
  %or277.i = or i64 %or247.i, %shl275.i
  %or307.i = or i64 %or277.i, 824633720832
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %28 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %29, i32 %5
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or307.i, ptr %arrayidx.i.i, align 8
  %31 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swreg_to_restricted(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_rtn(ptr nocapture noundef %nfp_prog, i32 noundef %base, i8 noundef zeroext %defer) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 16)
  %call2 = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef %base, i32 noundef 268435456, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %2 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %3, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %4 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %div10.i.i, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %6 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 7
  %7 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %src_lmextn, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 6
  %9 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dst_lmextn, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  %breg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %breg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %breg, align 4
  %areg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %13 = ptrtoint ptr %areg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %areg, align 2
  %conv39.i = zext i16 %12 to i64
  %shl40.i = shl nuw nsw i64 %conv39.i, 10
  %and41.i = and i64 %shl40.i, 1047552
  %15 = and i16 %14, 1023
  %and15.i = zext i16 %15 to i64
  %conv66.i = zext i8 %defer to i64
  %shl67.i = shl nuw nsw i64 %conv66.i, 20
  %and68.i = and i64 %shl67.i, 3145728
  %shl124.i = select i1 %tobool4.not, i64 0, i64 4398046511104
  %shl154.i = select i1 %tobool3.not, i64 0, i64 8796093022208
  %or.i = or i64 %and68.i, %and15.i
  %or42.i = or i64 %or.i, %and41.i
  %or69.i = or i64 %or42.i, %shl154.i
  %or126.i = or i64 %or69.i, %shl124.i
  %or156.i = or i64 %or126.i, 996432412672
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %16 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %17, i32 %5
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or156.i, ptr %arrayidx.i.i, align 8
  %19 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @immed_get_value(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @immed_set_value(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i.i1 = icmp ult i32 %4, 256
  br i1 %tobool.not.i.i1, label %if.then.i.i3, label %if.end.i.i

if.then.i.i3:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i2 = or i32 %4, 268435456
  br label %wrp_alu_imm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %if.end.i.i, %if.then.i.i3
  %retval.0.i.i = phi i32 [ %or.i.i.i2, %if.then.i.i3 ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %2 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 1, i32 noundef %retval.0.i.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 2
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge, label %if.then.i.i

wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_imm.exit

if.then.i.i:                                      ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_imm.exit

wrp_alu32_imm.exit:                               ; preds = %if.then.i.i, %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jump(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %0 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %1, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %2 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %3)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %3
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %4 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %6)
  %7 = icmp ugt i16 %6, 8191
  %conv126.i.i.i = zext i16 %6 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %7, i64 2027224596536, i64 927712968760
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %8 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %9, i32 %3
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %11 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %13 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prog.i.i, align 4
  %15 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %16, -1
  %arrayidx.i.i = getelementptr i64, ptr %14, i32 %sub.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i = or i64 %18, 72057594037927936
  store i64 %or.i.i, ptr %arrayidx.i.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %1, 268435456
  br label %wrp_alu_imm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %4 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 1, i32 noundef %retval.0.i.i) #9
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load7 = load i8, ptr %dst_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i.i17 = icmp sgt i32 %1, -1
  br i1 %tobool.not.i.i17, label %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge, label %if.end.i.i20

wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu_imm.exit25

if.end.i.i20:                                     ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %6) #9
  br label %wrp_alu_imm.exit25

wrp_alu_imm.exit25:                               ; preds = %if.end.i.i20, %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge
  %retval.0.i.i21 = phi i32 [ 33554453, %if.end.i.i20 ], [ 268435456, %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge ]
  %7 = lshr i8 %bf.load7, 3
  %8 = or i8 %7, 1
  %conv.i76.i22 = zext i8 %8 to i32
  %or.i77.i23 = or i32 %conv.i76.i22, 50331648
  %or.i79.i24 = or i32 %conv.i76.i22, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i23, i32 noundef %or.i79.i24, i32 noundef 17, i32 noundef %retval.0.i.i21) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 1, i32 noundef %or.i4.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %entry.wrp_alu32_reg.exit_crit_edge, label %if.then.i.i

entry.wrp_alu32_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_reg.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_reg.exit

wrp_alu32_reg.exit:                               ; preds = %if.then.i.i, %entry.wrp_alu32_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i45 = or i32 %conv.i, 16777216
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv.i46 = zext i8 %3 to i32
  %or.i47 = or i32 %conv.i46, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i45, i32 noundef 1, i32 noundef %or.i47)
  %4 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load16 = load i8, ptr %dst_reg, align 1
  %5 = lshr i8 %bf.load16, 3
  %6 = or i8 %5, 1
  %conv.i48 = zext i8 %6 to i32
  %or.i49 = or i32 %conv.i48, 50331648
  %or.i51 = or i32 %conv.i48, 16777216
  %bf.clear32 = shl i8 %bf.load16, 1
  %7 = and i8 %bf.clear32, 30
  %conv.i52 = zext i8 %7 to i32
  %or.i53 = or i32 %conv.i52, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i49, i32 noundef %or.i51, i32 noundef 17, i32 noundef %or.i53)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sub_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i.i1 = icmp ult i32 %4, 256
  br i1 %tobool.not.i.i1, label %if.then.i.i3, label %if.end.i.i

if.then.i.i3:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i2 = or i32 %4, 268435456
  br label %wrp_alu_imm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %if.end.i.i, %if.then.i.i3
  %retval.0.i.i = phi i32 [ %or.i.i.i2, %if.then.i.i3 ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %2 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 21, i32 noundef %retval.0.i.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 2
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge, label %if.then.i.i

wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_imm.exit

if.then.i.i:                                      ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_imm.exit

wrp_alu32_imm.exit:                               ; preds = %if.then.i.i, %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jeq_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  %conv.i = zext i8 %4 to i32
  %or.i = or i32 %conv.i, 16777216
  %conv.i58 = zext i8 %3 to i32
  %or.i59 = or i32 %conv.i58, 33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %1, 268435456
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load18 = load i8, ptr %dst_reg, align 1
  %6 = lshr i8 %bf.load18, 3
  %7 = and i8 %6, 30
  %conv.i60 = zext i8 %7 to i32
  %or.i61 = or i32 %conv.i60, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %or.i61, i32 noundef 24, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool25.not = icmp sgt i32 %1, -1
  br i1 %tobool25.not, label %if.end.if.end41_crit_edge, label %if.then26

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv28 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv28) #9
  %8 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load33 = load i8, ptr %dst_reg, align 1
  %9 = lshr i8 %bf.load33, 3
  %conv.i68 = zext i8 %9 to i32
  %or.i69 = or i32 %conv.i68, 16777217
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i69, i32 noundef 24, i32 noundef 33554453)
  br label %if.end41

if.end41:                                         ; preds = %if.then26, %if.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  %or1.073 = phi i32 [ 16777237, %if.then26 ], [ 16777237, %if.end.if.end41_crit_edge ], [ %or.i, %entry.if.end41_crit_edge ]
  %or2.0 = phi i32 [ 33554453, %if.then26 ], [ %or.i59, %if.end.if.end41_crit_edge ], [ %or.i59, %entry.if.end41_crit_edge ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or1.073, i32 noundef 20, i32 noundef %or2.0)
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %10 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %11, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %12 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %13
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %14 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %16)
  %17 = icmp ugt i16 %16, 8191
  %conv126.i.i.i = zext i16 %16 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %17, i64 2027224596768, i64 927712968992
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %18 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %19, i32 %13
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %21 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %23 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog.i.i, align 4
  %25 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %26, -1
  %arrayidx.i.i = getelementptr i64, ptr %24, i32 %sub.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i70 = or i64 %28, 72057594037927936
  store i64 %or.i.i70, ptr %arrayidx.i.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jeq32_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %1, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  %conv.i = zext i8 %4 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 24, i32 noundef %retval.0.i)
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %5 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %6, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %7 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %8
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %9 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %11)
  %12 = icmp ugt i16 %11, 8191
  %conv126.i.i.i = zext i16 %11 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %12, i64 2027224596768, i64 927712968992
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %13 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %14, i32 %8
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %16 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %18 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prog.i.i, align 4
  %20 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %21, -1
  %arrayidx.i.i = getelementptr i64, ptr %19, i32 %sub.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i10 = or i64 %23, 72057594037927936
  store i64 %or.i.i10, ptr %arrayidx.i.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sub_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %1, 268435456
  br label %wrp_alu_imm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %4 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 21, i32 noundef %retval.0.i.i) #9
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load7 = load i8, ptr %dst_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i.i17 = icmp sgt i32 %1, -1
  br i1 %tobool.not.i.i17, label %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge, label %if.end.i.i20

wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu_imm.exit25

if.end.i.i20:                                     ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %6) #9
  br label %wrp_alu_imm.exit25

wrp_alu_imm.exit25:                               ; preds = %if.end.i.i20, %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge
  %retval.0.i.i21 = phi i32 [ 33554453, %if.end.i.i20 ], [ 268435456, %wrp_alu_imm.exit.wrp_alu_imm.exit25_crit_edge ]
  %7 = lshr i8 %bf.load7, 3
  %8 = or i8 %7, 1
  %conv.i76.i22 = zext i8 %8 to i32
  %or.i77.i23 = or i32 %conv.i76.i22, 50331648
  %or.i79.i24 = or i32 %conv.i76.i22, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i23, i32 noundef %or.i79.i24, i32 noundef 13, i32 noundef %retval.0.i.i21) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imm_ld8(ptr nocapture noundef readnone %nfp_prog, ptr nocapture noundef writeonly %meta) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %double_cb = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 6
  %0 = ptrtoint ptr %double_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @imm_ld8_part2, ptr %double_cb, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sub_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 21, i32 noundef %or.i4.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %entry.wrp_alu32_reg.exit_crit_edge, label %if.then.i.i

entry.wrp_alu32_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_reg.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_reg.exit

wrp_alu32_reg.exit:                               ; preds = %if.then.i.i, %entry.wrp_alu32_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jeq_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 16777216
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv.i37 = zext i8 %3 to i32
  %or.i38 = or i32 %conv.i37, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %or.i, i32 noundef 24, i32 noundef %or.i38)
  %4 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %meta, align 8
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp.i = icmp eq i8 %6, 5
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load12 = load i8, ptr %dst_reg, align 1
  %8 = lshr i8 %bf.load12, 3
  %conv.i39 = zext i8 %8 to i32
  %or.i40 = or i32 %conv.i39, 16777217
  %bf.clear20 = shl i8 %bf.load12, 1
  %9 = and i8 %bf.clear20, 30
  %conv.i41 = zext i8 %9 to i32
  %or.i42 = or i32 %conv.i41, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i40, i32 noundef 24, i32 noundef %or.i42)
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 20, i32 noundef 33554453)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %10 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %11, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %12 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %13
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %14 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %16)
  %17 = icmp ugt i16 %16, 8191
  %conv126.i.i.i = zext i16 %16 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %17, i64 2027224596768, i64 927712968992
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %18 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %19, i32 %13
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %21 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %23 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog.i.i, align 4
  %25 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %26, -1
  %arrayidx.i.i = getelementptr i64, ptr %24, i32 %sub.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i = or i64 %28, 72057594037927936
  store i64 %or.i.i, ptr %arrayidx.i.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sub_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i45 = or i32 %conv.i, 16777216
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv.i46 = zext i8 %3 to i32
  %or.i47 = or i32 %conv.i46, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i45, i32 noundef 21, i32 noundef %or.i47)
  %4 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load16 = load i8, ptr %dst_reg, align 1
  %5 = lshr i8 %bf.load16, 3
  %6 = or i8 %5, 1
  %conv.i48 = zext i8 %6 to i32
  %or.i49 = or i32 %conv.i48, 50331648
  %or.i51 = or i32 %conv.i48, 16777216
  %bf.clear32 = shl i8 %bf.load16, 1
  %7 = and i8 %bf.clear32, 30
  %conv.i52 = zext i8 %7 to i32
  %or.i53 = or i32 %conv.i52, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i49, i32 noundef %or.i51, i32 noundef 13, i32 noundef %or.i53)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ld4(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  tail call fastcc void @construct_data_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i8 noundef zeroext 4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mul_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_mul(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  %5 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %meta, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %6)
  %cmp.i = icmp ugt i8 %6, -33
  br i1 %cmp.i, label %entry.land.rhs.i_crit_edge, label %lor.rhs.i

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

lor.rhs.i:                                        ; preds = %entry
  %7 = lshr i8 %6, 4
  %8 = zext i8 %7 to i32
  %arrayidx.i = getelementptr [14 x %struct.jmp_code_map], ptr @jmp_code_map, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %nfp_jmp_code_get.exit

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %.b47.i = load i1, ptr @nfp_jmp_code_get.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !113

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_jmp_code_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1394, i32 noundef 9, ptr noundef nonnull @.str.31) #9
  br label %cleanup

nfp_jmp_code_get.exit:                            ; preds = %lor.rhs.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_jmp_code_get.exit.cleanup_crit_edge, label %if.end

nfp_jmp_code_get.exit.cleanup_crit_edge:          ; preds = %nfp_jmp_code_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nfp_jmp_code_get.exit
  %11 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %jump_neg_op = getelementptr inbounds %struct.anon.161, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %jump_neg_op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %jump_neg_op, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool5.not, i32 21, i32 1
  %cond10 = select i1 %tobool5.not, i32 13, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i73 = icmp ult i32 %1, 256
  br i1 %tobool.not.i73, label %if.then.i74, label %if.end.i

if.then.i74:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %1, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i74
  %retval.0.i75 = phi i32 [ %or.i.i, %if.then.i74 ], [ 33554453, %if.end.i ]
  %14 = lshr i32 6075, %8
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.not = icmp eq i32 %15, 0
  %conv.i76 = zext i8 %4 to i32
  %or.i77 = or i32 %conv.i76, 16777216
  br i1 %tobool14.not.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i77, i32 noundef %cond, i32 noundef %retval.0.i75)
  br label %if.end22

if.else:                                          ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %retval.0.i75, i32 noundef %cond, i32 noundef %or.i77)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %16 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %meta, align 8
  %18 = and i8 %17, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp.i78 = icmp eq i8 %18, 5
  br i1 %cmp.i78, label %if.then24, label %if.end22.if.end42_crit_edge

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i79 = icmp sgt i32 %1, -1
  br i1 %tobool.not.i79, label %if.then24.ur_load_imm_any.exit84_crit_edge, label %if.end.i82

if.then24.ur_load_imm_any.exit84_crit_edge:       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %ur_load_imm_any.exit84

if.end.i82:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %19) #9
  br label %ur_load_imm_any.exit84

ur_load_imm_any.exit84:                           ; preds = %if.end.i82, %if.then24.ur_load_imm_any.exit84_crit_edge
  %retval.0.i83 = phi i32 [ 33554453, %if.end.i82 ], [ 268435456, %if.then24.ur_load_imm_any.exit84_crit_edge ]
  %conv.i87 = zext i8 %3 to i32
  %or.i88 = or i32 %conv.i87, 16777217
  br i1 %tobool14.not.not, label %if.else35, label %if.then30

if.then30:                                        ; preds = %ur_load_imm_any.exit84
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i88, i32 noundef %cond10, i32 noundef %retval.0.i83)
  br label %if.end42

if.else35:                                        ; preds = %ur_load_imm_any.exit84
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %retval.0.i83, i32 noundef %cond10, i32 noundef %or.i88)
  br label %if.end42

if.end42:                                         ; preds = %if.else35, %if.then30, %if.end22.if.end42_crit_edge
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %20 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %21, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %22 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %23)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %23
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %24 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %26)
  %27 = icmp ugt i16 %26, 8191
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %29)
  %cmp4.not.not.i.i = icmp eq i32 %29, 24
  %shl46.i.i.i = select i1 %cmp4.not.not.i.i, i64 0, i64 256
  %30 = and i32 %29, 31
  %and21.i.i.i = zext i32 %30 to i64
  %conv126.i.i.i = zext i16 %26 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %shl154.i.i.i = select i1 %27, i64 1099511627776, i64 0
  %or.i.i.i = or i64 %shl46.i.i.i, %and21.i.i.i
  %or75.i.i.i = or i64 %or.i.i.i, %shl154.i.i.i
  %or102.i.i.i = or i64 %or75.i.i.i, %and128.i.i.i
  %or156.i.i.i = or i64 %or102.i.i.i, 927712968736
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %31 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %32, i32 %23
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %34 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %36 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prog.i.i, align 4
  %38 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %39, -1
  %arrayidx.i.i = getelementptr i64, ptr %37, i32 %sub.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i89 = or i64 %41, 72057594037927936
  store i64 %or.i.i89, ptr %arrayidx.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %emit_br.exit, %nfp_jmp_code_get.exit.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %emit_br.exit ], [ -22, %nfp_jmp_code_get.exit.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mul_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_mul(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ld2(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  tail call fastcc void @construct_data_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i8 noundef zeroext 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mul_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_mul(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext false, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %meta, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %1)
  %cmp.i = icmp ugt i8 %1, -33
  br i1 %cmp.i, label %entry.land.rhs.i_crit_edge, label %lor.rhs.i

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

lor.rhs.i:                                        ; preds = %entry
  %2 = lshr i8 %1, 4
  %3 = zext i8 %2 to i32
  %arrayidx.i = getelementptr [14 x %struct.jmp_code_map], ptr @jmp_code_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %nfp_jmp_code_get.exit

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %.b47.i = load i1, ptr @nfp_jmp_code_get.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !113

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_jmp_code_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1394, i32 noundef 9, ptr noundef nonnull @.str.31) #9
  br label %cleanup

nfp_jmp_code_get.exit:                            ; preds = %lor.rhs.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_jmp_code_get.exit.cleanup_crit_edge, label %if.end

nfp_jmp_code_get.exit.cleanup_crit_edge:          ; preds = %nfp_jmp_code_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nfp_jmp_code_get.exit
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %6 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dst_reg, align 1
  %7 = lshr i8 %bf.load, 3
  %8 = and i8 %7, 30
  %bf.clear = shl i8 %bf.load, 1
  %9 = and i8 %bf.clear, 30
  %10 = lshr i32 6075, %3
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool7.not.not, i8 %9, i8 %8
  %spec.select59 = select i1 %tobool7.not.not, i8 %8, i8 %9
  %conv.i = zext i8 %spec.select to i32
  %or.i = or i32 %conv.i, 16777216
  %conv.i60 = zext i8 %spec.select59 to i32
  %or.i61 = or i32 %conv.i60, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 21, i32 noundef %or.i61)
  %12 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %meta, align 8
  %14 = and i8 %13, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp.i62 = icmp eq i8 %14, 5
  br i1 %cmp.i62, label %if.then27, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or.i64 = or i32 %conv.i, 16777217
  %or.i66 = or i32 %conv.i60, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i64, i32 noundef 13, i32 noundef %or.i66)
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end.if.end36_crit_edge
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %16, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %17 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %18
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %19 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %20 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %21)
  %22 = icmp ugt i16 %21, 8191
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %24)
  %cmp4.not.not.i.i = icmp eq i32 %24, 24
  %shl46.i.i.i = select i1 %cmp4.not.not.i.i, i64 0, i64 256
  %25 = and i32 %24, 31
  %and21.i.i.i = zext i32 %25 to i64
  %conv126.i.i.i = zext i16 %21 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %shl154.i.i.i = select i1 %22, i64 1099511627776, i64 0
  %or.i.i.i = or i64 %shl46.i.i.i, %and21.i.i.i
  %or75.i.i.i = or i64 %or.i.i.i, %shl154.i.i.i
  %or102.i.i.i = or i64 %or75.i.i.i, %and128.i.i.i
  %or156.i.i.i = or i64 %or102.i.i.i, 927712968736
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %26 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %27, i32 %18
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %29 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %31 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prog.i.i, align 4
  %33 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %34, -1
  %arrayidx.i.i = getelementptr i64, ptr %32, i32 %sub.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i = or i64 %36, 72057594037927936
  store i64 %or.i.i, ptr %arrayidx.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %emit_br.exit, %nfp_jmp_code_get.exit.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %emit_br.exit ], [ -22, %nfp_jmp_code_get.exit.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mul_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_mul(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ld1(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  tail call fastcc void @construct_data_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_imm(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  %conv3.i = sext i32 %4 to i64
  tail call fastcc void @wrp_div_imm(ptr noundef %nfp_prog, i8 noundef zeroext %2, i64 noundef %conv3.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_imm64(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  %conv3 = sext i32 %4 to i64
  tail call fastcc void @wrp_div_imm(ptr noundef %nfp_prog, i8 noundef zeroext %2, i64 noundef %conv3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_reg(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  tail call fastcc void @wrp_div_imm(ptr noundef %nfp_prog, i8 noundef zeroext %2, i64 noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_reg64(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  tail call fastcc void @wrp_div_imm(ptr noundef %nfp_prog, i8 noundef zeroext %2, i64 noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ind_ld4(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv3 = zext i8 %3 to i16
  tail call fastcc void @construct_data_ind_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, i8 noundef zeroext 4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %4, label %if.end41.i [
    i32 -1, label %if.then12.i
    i32 0, label %entry.wrp_alu_imm.exit_crit_edge
  ]

entry.wrp_alu_imm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu_imm.exit

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i70.i = zext i8 %2 to i32
  %or.i71.i = or i32 %conv.i70.i, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i71.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  br label %wrp_alu_imm.exit

if.end41.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i.i1 = icmp ult i32 %4, 256
  br i1 %tobool.not.i.i1, label %if.then.i.i3, label %if.end.i.i

if.then.i.i3:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i2 = or i32 %4, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i3
  %retval.0.i.i = phi i32 [ %or.i.i.i2, %if.then.i.i3 ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %2 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 20, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %ur_load_imm_any.exit.i, %if.then12.i, %entry.wrp_alu_imm.exit_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge, label %if.then.i.i

wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_imm.exit

if.then.i.i:                                      ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_imm.exit

wrp_alu32_imm.exit:                               ; preds = %if.then.i.i, %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jset_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %1, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %conv.i = zext i8 %4 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i, i32 noundef 8, i32 noundef %retval.0.i)
  %5 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %meta, align 8
  %7 = and i8 %6, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.i = icmp ne i8 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %ur_load_imm_any.exit.if.end_crit_edge, label %if.then

ur_load_imm_any.exit.if.end_crit_edge:            ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i25 = zext i8 %3 to i32
  %or.i26 = or i32 %conv.i25, 16777217
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i26, i32 noundef 20, i32 noundef 33554453)
  br label %if.end

if.end:                                           ; preds = %if.then, %ur_load_imm_any.exit.if.end_crit_edge
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %8 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %9, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %10 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %11
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %12 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %14)
  %15 = icmp ugt i16 %14, 8191
  %conv126.i.i.i = zext i16 %14 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %15, i64 2027224596769, i64 927712968993
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %16 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %17, i32 %11
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %19 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %21 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prog.i.i, align 4
  %23 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %24, -1
  %arrayidx.i.i = getelementptr i64, ptr %22, i32 %sub.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i27 = or i64 %26, 72057594037927936
  store i64 %or.i.i27, ptr %arrayidx.i.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = or i16 %3, 8
  store i16 %4, ptr %flags.i, align 2
  br label %wrp_alu64_imm.exit

if.end.i:                                         ; preds = %entry
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %5 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %6 = lshr i8 %bf.load.i, 3
  %7 = and i8 %6, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %wrp_alu_imm.exit15.thread, label %if.end41.i6

wrp_alu_imm.exit15.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i70.i2 = zext i8 %7 to i32
  %or.i71.i3 = or i32 %conv.i70.i2, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i71.i3, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  %8 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9.i16 = load i8, ptr %dst_reg.i, align 1
  %9 = lshr i8 %bf.load9.i16, 3
  %10 = or i8 %9, 1
  br label %if.then12.i

if.end41.i6:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i.i5 = icmp ult i32 %1, 256
  br i1 %tobool.not.i.i5, label %if.then.i.i8, label %if.end.i.i9

if.then.i.i8:                                     ; preds = %if.end41.i6
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i7 = or i32 %1, 268435456
  br label %wrp_alu_imm.exit15

if.end.i.i9:                                      ; preds = %if.end41.i6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %wrp_alu_imm.exit15

wrp_alu_imm.exit15:                               ; preds = %if.end.i.i9, %if.then.i.i8
  %retval.0.i.i10 = phi i32 [ %or.i.i.i7, %if.then.i.i8 ], [ 33554453, %if.end.i.i9 ]
  %conv.i76.i11 = zext i8 %7 to i32
  %or.i77.i12 = or i32 %conv.i76.i11, 50331648
  %or.i79.i13 = or i32 %conv.i76.i11, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i12, i32 noundef %or.i79.i13, i32 noundef 20, i32 noundef %retval.0.i.i10) #9
  %11 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load9.i = load i8, ptr %dst_reg.i, align 1
  %12 = lshr i8 %bf.load9.i, 3
  %13 = or i8 %12, 1
  %14 = ashr i32 %1, 31
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %14, label %if.end41.i [
    i32 -1, label %wrp_alu_imm.exit15.if.then12.i_crit_edge
    i32 0, label %wrp_alu_imm.exit15.wrp_alu64_imm.exit_crit_edge
  ]

wrp_alu_imm.exit15.wrp_alu64_imm.exit_crit_edge:  ; preds = %wrp_alu_imm.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu64_imm.exit

wrp_alu_imm.exit15.if.then12.i_crit_edge:         ; preds = %wrp_alu_imm.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then12.i:                                      ; preds = %wrp_alu_imm.exit15.if.then12.i_crit_edge, %wrp_alu_imm.exit15.thread
  %16 = phi i8 [ %10, %wrp_alu_imm.exit15.thread ], [ %13, %wrp_alu_imm.exit15.if.then12.i_crit_edge ]
  %conv.i70.i = zext i8 %16 to i32
  %or.i71.i = or i32 %conv.i70.i, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i71.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  br label %wrp_alu64_imm.exit

if.end41.i:                                       ; preds = %wrp_alu_imm.exit15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i.i = icmp sgt i32 %1, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %14, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %14) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %13 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 20, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu64_imm.exit

wrp_alu64_imm.exit:                               ; preds = %ur_load_imm_any.exit.i, %if.then12.i, %wrp_alu_imm.exit15.wrp_alu64_imm.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ind_ld2(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv3 = zext i8 %3 to i16
  tail call fastcc void @construct_data_ind_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, i8 noundef zeroext 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 20, i32 noundef %or.i4.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %entry.wrp_alu32_reg.exit_crit_edge, label %if.then.i.i

entry.wrp_alu32_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_reg.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_reg.exit

wrp_alu32_reg.exit:                               ; preds = %if.then.i.i, %entry.wrp_alu32_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jset_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_test_reg(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 20, i32 noundef %or.i4.i) #9
  %4 = or i8 %1, 1
  %conv.i5.i = zext i8 %4 to i32
  %or.i6.i = or i32 %conv.i5.i, 50331648
  %or.i8.i = or i32 %conv.i5.i, 16777216
  %or.i10.i = or i32 %conv.i3.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i6.i, i32 noundef %or.i8.i, i32 noundef 20, i32 noundef %or.i10.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ind_ld1(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  %conv = trunc i32 %1 to i16
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv3 = zext i8 %3 to i16
  tail call fastcc void @construct_data_ind_ld(ptr noundef %nfp_prog, ptr noundef %meta, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @and_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %4, label %if.end41.i [
    i32 0, label %if.then1.i
    i32 -1, label %entry.wrp_alu_imm.exit_crit_edge
  ]

entry.wrp_alu_imm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu_imm.exit

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu_imm.exit

if.end41.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i.i1 = icmp ult i32 %4, 256
  br i1 %tobool.not.i.i1, label %if.then.i.i3, label %if.end.i.i

if.then.i.i3:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i2 = or i32 %4, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i3
  %retval.0.i.i = phi i32 [ %or.i.i.i2, %if.then.i.i3 ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %2 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 8, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %ur_load_imm_any.exit.i, %if.then1.i, %entry.wrp_alu_imm.exit_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge, label %if.then.i.i

wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_imm.exit

if.then.i.i:                                      ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_imm.exit

wrp_alu32_imm.exit:                               ; preds = %if.then.i.i, %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jne_imm(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm2, align 4
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meta, align 8
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp.i = icmp eq i8 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %dst_reg, align 1
  %6 = lshr i8 %bf.load, 3
  %7 = and i8 %6, 30
  %conv.i = zext i8 %7 to i32
  br i1 %cmp.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %conv.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i79 = or i32 %conv.i, 16777216
  %conv.i80 = zext i8 %6 to i32
  %or.i81 = or i32 %conv.i80, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i79, i32 noundef 20, i32 noundef %or.i81)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %8 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %9, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %10 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %11
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %12 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %14)
  %15 = icmp ugt i16 %14, 8191
  %conv126.i.i.i = zext i16 %14 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %15, i64 2027224596769, i64 927712968993
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %16 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %17, i32 %11
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %19 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  br label %cleanup.sink.split

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i82 = or i32 %1, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i82, %if.then.i ], [ 33554453, %if.end.i ]
  %dst_reg30 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %21 = ptrtoint ptr %dst_reg30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load31 = load i8, ptr %dst_reg30, align 1
  %22 = lshr i8 %bf.load31, 3
  %23 = and i8 %22, 30
  %conv.i83 = zext i8 %23 to i32
  %or.i84 = or i32 %conv.i83, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i84, i32 noundef 24, i32 noundef %retval.0.i)
  %off37 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %__prog_alloc_len.i.i.i.i85 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %24 = ptrtoint ptr %__prog_alloc_len.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %__prog_alloc_len.i.i.i.i85, align 4
  %div10.i.i.i.i86 = lshr i32 %25, 3
  %prog_len.i.i.i.i87 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %26 = ptrtoint ptr %prog_len.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prog_len.i.i.i.i87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i86, i32 %27)
  %cmp.i.i.i.i88 = icmp eq i32 %div10.i.i.i.i86, %27
  br i1 %cmp.i.i.i.i88, label %do.end.i.i.i.i91, label %if.end.i.i.i.i102

do.end.i.i.i.i91:                                 ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i86) #12
  %error.i.i.i.i90 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %28 = ptrtoint ptr %error.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -28, ptr %error.i.i.i.i90, align 4
  br label %emit_br.exit107

if.end.i.i.i.i102:                                ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %off37 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %off37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %30)
  %31 = icmp ugt i16 %30, 8191
  %conv126.i.i.i92 = zext i16 %30 to i64
  %shl127.i.i.i93 = shl nuw nsw i64 %conv126.i.i.i92, 22
  %and128.i.i.i94 = and i64 %shl127.i.i.i93, 34355544064
  %or102.i.i.i97 = select i1 %31, i64 2027224596769, i64 927712968993
  %or156.i.i.i98 = or i64 %or102.i.i.i97, %and128.i.i.i94
  %prog.i.i.i.i99 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %32 = ptrtoint ptr %prog.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prog.i.i.i.i99, align 4
  %arrayidx.i.i.i.i100 = getelementptr i64, ptr %33, i32 %27
  %34 = ptrtoint ptr %arrayidx.i.i.i.i100 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %or156.i.i.i98, ptr %arrayidx.i.i.i.i100, align 8
  %35 = ptrtoint ptr %prog_len.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prog_len.i.i.i.i87, align 4
  %inc.i.i.i.i101 = add i32 %36, 1
  store i32 %inc.i.i.i.i101, ptr %prog_len.i.i.i.i87, align 4
  br label %emit_br.exit107

emit_br.exit107:                                  ; preds = %if.end.i.i.i.i102, %do.end.i.i.i.i91
  %prog.i.i103 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %37 = ptrtoint ptr %prog.i.i103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prog.i.i103, align 4
  %39 = ptrtoint ptr %prog_len.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prog_len.i.i.i.i87, align 4
  %sub.i.i104 = add i32 %40, -1
  %arrayidx.i.i105 = getelementptr i64, ptr %38, i32 %sub.i.i104
  %41 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i105, align 8
  %or.i.i106 = or i64 %42, 72057594037927936
  store i64 %or.i.i106, ptr %arrayidx.i.i105, align 8
  br i1 %cmp.i, label %emit_br.exit107.cleanup_crit_edge, label %if.end40

emit_br.exit107.cleanup_crit_edge:                ; preds = %emit_br.exit107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %emit_br.exit107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i108 = icmp sgt i32 %1, -1
  br i1 %tobool.not.i108, label %if.end40.ur_load_imm_any.exit113_crit_edge, label %if.end.i111

if.end40.ur_load_imm_any.exit113_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %ur_load_imm_any.exit113

if.end.i111:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %43) #9
  br label %ur_load_imm_any.exit113

ur_load_imm_any.exit113:                          ; preds = %if.end.i111, %if.end40.ur_load_imm_any.exit113_crit_edge
  %retval.0.i112 = phi i32 [ 33554453, %if.end.i111 ], [ 268435456, %if.end40.ur_load_imm_any.exit113_crit_edge ]
  %44 = ptrtoint ptr %dst_reg30 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load46 = load i8, ptr %dst_reg30, align 1
  %45 = lshr i8 %bf.load46, 3
  %conv.i114 = zext i8 %45 to i32
  %or.i115 = or i32 %conv.i114, 16777217
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i115, i32 noundef 24, i32 noundef %retval.0.i112)
  %46 = ptrtoint ptr %__prog_alloc_len.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__prog_alloc_len.i.i.i.i85, align 4
  %div10.i.i.i.i117 = lshr i32 %47, 3
  %48 = ptrtoint ptr %prog_len.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prog_len.i.i.i.i87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i117, i32 %49)
  %cmp.i.i.i.i119 = icmp eq i32 %div10.i.i.i.i117, %49
  br i1 %cmp.i.i.i.i119, label %do.end.i.i.i.i122, label %if.end.i.i.i.i133

do.end.i.i.i.i122:                                ; preds = %ur_load_imm_any.exit113
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i117) #12
  %error.i.i.i.i121 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %50 = ptrtoint ptr %error.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -28, ptr %error.i.i.i.i121, align 4
  br label %cleanup.sink.split

if.end.i.i.i.i133:                                ; preds = %ur_load_imm_any.exit113
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %off37 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %off37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %52)
  %53 = icmp ugt i16 %52, 8191
  %conv126.i.i.i123 = zext i16 %52 to i64
  %shl127.i.i.i124 = shl nuw nsw i64 %conv126.i.i.i123, 22
  %and128.i.i.i125 = and i64 %shl127.i.i.i124, 34355544064
  %or102.i.i.i128 = select i1 %53, i64 2027224596769, i64 927712968993
  %or156.i.i.i129 = or i64 %or102.i.i.i128, %and128.i.i.i125
  %54 = ptrtoint ptr %prog.i.i103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prog.i.i103, align 4
  %arrayidx.i.i.i.i131 = getelementptr i64, ptr %55, i32 %49
  %56 = ptrtoint ptr %arrayidx.i.i.i.i131 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or156.i.i.i129, ptr %arrayidx.i.i.i.i131, align 8
  %57 = ptrtoint ptr %prog_len.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %prog_len.i.i.i.i87, align 4
  %inc.i.i.i.i132 = add i32 %58, 1
  store i32 %inc.i.i.i.i132, ptr %prog_len.i.i.i.i87, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i.i133, %do.end.i.i.i.i122, %emit_br.exit
  %prog.i.i.sink = phi ptr [ %prog.i.i, %emit_br.exit ], [ %prog.i.i103, %do.end.i.i.i.i122 ], [ %prog.i.i103, %if.end.i.i.i.i133 ]
  %prog_len.i.i.i.i.sink = phi ptr [ %prog_len.i.i.i.i, %emit_br.exit ], [ %prog_len.i.i.i.i87, %do.end.i.i.i.i122 ], [ %prog_len.i.i.i.i87, %if.end.i.i.i.i133 ]
  %59 = ptrtoint ptr %prog.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prog.i.i.sink, align 4
  %61 = ptrtoint ptr %prog_len.i.i.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %prog_len.i.i.i.i.sink, align 4
  %sub.i.i = add i32 %62, -1
  %arrayidx.i.i = getelementptr i64, ptr %60, i32 %sub.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i137 = or i64 %64, 72057594037927936
  store i64 %or.i.i137, ptr %arrayidx.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %emit_br.exit107.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @and_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp eq i32 %1, -1
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = or i16 %3, 8
  store i16 %4, ptr %flags.i, align 2
  br label %wrp_alu64_imm.exit

if.end.i:                                         ; preds = %entry
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %5 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %6 = lshr i8 %bf.load.i, 3
  %7 = and i8 %6, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %wrp_alu_imm.exit17.thread, label %if.end41.i8

wrp_alu_imm.exit17.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i4 = zext i8 %7 to i32
  %or.i.i5 = or i32 %conv.i.i4, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i5, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %8 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9.i18 = load i8, ptr %dst_reg.i, align 1
  %9 = lshr i8 %bf.load9.i18, 3
  %10 = or i8 %9, 1
  br label %if.then1.i

if.end41.i8:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i.i7 = icmp ult i32 %1, 256
  br i1 %tobool.not.i.i7, label %if.then.i.i10, label %if.end.i.i11

if.then.i.i10:                                    ; preds = %if.end41.i8
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i9 = or i32 %1, 268435456
  br label %wrp_alu_imm.exit17

if.end.i.i11:                                     ; preds = %if.end41.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %wrp_alu_imm.exit17

wrp_alu_imm.exit17:                               ; preds = %if.end.i.i11, %if.then.i.i10
  %retval.0.i.i12 = phi i32 [ %or.i.i.i9, %if.then.i.i10 ], [ 33554453, %if.end.i.i11 ]
  %conv.i76.i13 = zext i8 %7 to i32
  %or.i77.i14 = or i32 %conv.i76.i13, 50331648
  %or.i79.i15 = or i32 %conv.i76.i13, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i14, i32 noundef %or.i79.i15, i32 noundef 8, i32 noundef %retval.0.i.i12) #9
  %11 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load9.i = load i8, ptr %dst_reg.i, align 1
  %12 = lshr i8 %bf.load9.i, 3
  %13 = or i8 %12, 1
  %14 = ashr i32 %1, 31
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %14, label %if.end41.i [
    i32 0, label %wrp_alu_imm.exit17.if.then1.i_crit_edge
    i32 -1, label %wrp_alu_imm.exit17.wrp_alu64_imm.exit_crit_edge
  ]

wrp_alu_imm.exit17.wrp_alu64_imm.exit_crit_edge:  ; preds = %wrp_alu_imm.exit17
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu64_imm.exit

wrp_alu_imm.exit17.if.then1.i_crit_edge:          ; preds = %wrp_alu_imm.exit17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then1.i

if.then1.i:                                       ; preds = %wrp_alu_imm.exit17.if.then1.i_crit_edge, %wrp_alu_imm.exit17.thread
  %16 = phi i8 [ %10, %wrp_alu_imm.exit17.thread ], [ %13, %wrp_alu_imm.exit17.if.then1.i_crit_edge ]
  %conv.i.i = zext i8 %16 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu64_imm.exit

if.end41.i:                                       ; preds = %wrp_alu_imm.exit17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i.i = icmp sgt i32 %1, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %14, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %14) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %13 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 8, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu64_imm.exit

wrp_alu64_imm.exit:                               ; preds = %ur_load_imm_any.exit.i, %if.then1.i, %wrp_alu_imm.exit17.wrp_alu64_imm.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @and_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 8, i32 noundef %or.i4.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %entry.wrp_alu32_reg.exit_crit_edge, label %if.then.i.i

entry.wrp_alu32_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_reg.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_reg.exit

wrp_alu32_reg.exit:                               ; preds = %if.then.i.i, %entry.wrp_alu32_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jne_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wrp_test_reg(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @and_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 8, i32 noundef %or.i4.i) #9
  %4 = or i8 %1, 1
  %conv.i5.i = zext i8 %4 to i32
  %or.i6.i = or i32 %conv.i5.i, 50331648
  %or.i8.i = or i32 %conv.i5.i, 16777216
  %or.i10.i = or i32 %conv.i3.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i6.i, i32 noundef %or.i8.i, i32 noundef 8, i32 noundef %or.i10.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_ldx4(ptr noundef %nfp_prog, ptr noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_ldx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_st4(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp eq i32 %2, 8
  br i1 %cmp.i, label %if.then.i, label %entry.mem_st.exit_crit_edge

entry.mem_st.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_st.exit

if.then.i:                                        ; preds = %entry
  %imm1.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm1.i.i, align 4
  %off.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off.i.i, align 2
  %conv3.i.i = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %tobool.not.i.i.i = icmp ult i16 %6, 128
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i.i = or i32 %conv3.i.i, 268435456
  br label %re_load_imm_any.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv3.i.i) #9
  br label %re_load_imm_any.exit.i.i

re_load_imm_any.exit.i.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %or.i.i.i.i, %if.then.i.i.i ], [ 33554453, %if.end.i.i.i ]
  %dst_reg.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %7 = ptrtoint ptr %dst_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %dst_reg.i.i, align 1
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 134217728, i32 noundef %4) #9
  %8 = lshr i8 %bf.load.i.i, 3
  %9 = and i8 %8, 30
  %conv.i.i.i.i = zext i8 %9 to i32
  %or.i.i2.i.i = or i32 %conv.i.i.i.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i.i2.i.i, i32 noundef %retval.0.i.i.i, i8 noundef zeroext 3, i32 noundef 0, i1 noundef zeroext false) #9
  br label %mem_st.exit

mem_st.exit:                                      ; preds = %re_load_imm_any.exit.i.i, %entry.mem_st.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %re_load_imm_any.exit.i.i ], [ -95, %entry.mem_st.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_stx4(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %type1 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 6
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp2 = icmp eq i32 %4, 6
  br i1 %cmp2, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %off.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %6)
  %cond.i = icmp eq i16 %6, 16
  br i1 %cond.i, label %sw.bb.i, label %land.end.i

sw.bb.i:                                          ; preds = %if.then3
  %prog_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %7 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prog_len.i.i.i, align 4
  %add.i.i = add i32 %8, 5
  %src_reg.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %9 = ptrtoint ptr %src_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %src_reg.i.i, align 1
  %bf.clear.i.i = shl i8 %bf.load.i.i, 1
  %10 = and i8 %bf.clear.i.i, 30
  %conv.i.i.i = zext i8 %10 to i32
  %or.i.i.i = or i32 %conv.i.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i.i, i32 noundef 16, i32 noundef 268435711) #9
  %__prog_alloc_len.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %11 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i.i.i = lshr i32 %12, 3
  %13 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i.i, i32 %14)
  %cmp.i.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i.i, %14
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i.i) #12
  %error.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %15 = ptrtoint ptr %error.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -28, ptr %error.i.i.i.i.i.i, align 4
  br label %emit_br.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = and i32 %add.i.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not.i.i = icmp eq i32 %16, 0
  %conv126.i.i.i.i.i = zext i32 %add.i.i to i64
  %shl127.i.i.i.i.i = shl nuw nsw i64 %conv126.i.i.i.i.i, 22
  %and128.i.i.i.i.i = and i64 %shl127.i.i.i.i.i, 34355544064
  %or102.i.i.i.i.i = select i1 %.not.i.i, i64 927715066144, i64 2027226693920
  %or156.i.i.i.i.i = or i64 %or102.i.i.i.i.i, %and128.i.i.i.i.i
  %prog.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %17 = ptrtoint ptr %prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prog.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr i64, ptr %18, i32 %14
  %19 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or156.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i.i, align 8
  %20 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prog_len.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i.i.i, ptr %prog_len.i.i.i, align 4
  br label %emit_br.exit.i.i

emit_br.exit.i.i:                                 ; preds = %if.end.i.i.i.i.i.i, %do.end.i.i.i.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %22 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prog.i.i.i.i, align 4
  %24 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prog_len.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  %arrayidx.i.i.i.i = getelementptr i64, ptr %23, i32 %sub.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %or.i.i.i.i = or i64 %27, 72057594037927936
  store i64 %or.i.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 1077936132, i32 noundef 1077936132, i32 noundef 5, i32 noundef 268435457, i32 noundef 2, i8 noundef zeroext 4) #9
  %28 = ptrtoint ptr %src_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load12.i.i = load i8, ptr %src_reg.i.i, align 1
  %bf.clear13.i.i = shl i8 %bf.load12.i.i, 1
  %29 = and i8 %bf.clear13.i.i, 30
  %conv.i29.i.i = zext i8 %29 to i32
  %or.i30.i.i = or i32 %conv.i29.i.i, 33554432
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 1077936134, i8 noundef zeroext 1, i32 noundef %or.i30.i.i, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 1077936134, i8 noundef zeroext 1, i32 noundef 268435520, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %30 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %emit_br.exit.i.i.return_crit_edge

emit_br.exit.i.i.return_crit_edge:                ; preds = %emit_br.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i.i.i:                                     ; preds = %emit_br.exit.i.i
  %32 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i.i)
  %cmp.not.i.i.i = icmp eq i32 %33, %add.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.return_crit_edge, label %land.rhs.i.i.i

if.end.i.i.i.return_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.rhs.i.i.i:                                   ; preds = %if.end.i.i.i
  %.b44.i.i.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i.i, label %land.rhs.i.i.i.return_crit_edge, label %land.rhs.i.i.i.return.sink.split.i_crit_edge, !prof !113

land.rhs.i.i.i.return.sink.split.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

land.rhs.i.i.i.return_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.end.i:                                       ; preds = %if.then3
  %.b37.i = load i1, ptr @mem_stx_xdp.__already_done, align 1
  br i1 %.b37.i, label %land.end.i.return_crit_edge, label %land.end.i.return.sink.split.i_crit_edge, !prof !113

land.end.i.return.sink.split.i_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split.i:                              ; preds = %land.end.i.return.sink.split.i_crit_edge, %land.rhs.i.i.i.return.sink.split.i_crit_edge
  %nfp_prog_confirm_current_offset.__already_done.sink.i = phi ptr [ @nfp_prog_confirm_current_offset.__already_done, %land.rhs.i.i.i.return.sink.split.i_crit_edge ], [ @mem_stx_xdp.__already_done, %land.end.i.return.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 74, %land.rhs.i.i.i.return.sink.split.i_crit_edge ], [ 2976, %land.end.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %land.rhs.i.i.i.return.sink.split.i_crit_edge ], [ -95, %land.end.i.return.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %nfp_prog_confirm_current_offset.__already_done.sink.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i1 true, ptr %nfp_prog_confirm_current_offset.__already_done.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call fastcc i32 @mem_stx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 4)
  br label %return

return:                                           ; preds = %if.end4, %return.sink.split.i, %land.end.i.return_crit_edge, %land.rhs.i.i.i.return_crit_edge, %if.end.i.i.i.return_crit_edge, %emit_br.exit.i.i.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %land.end.i.return_crit_edge ], [ -22, %land.rhs.i.i.i.return_crit_edge ], [ 0, %emit_br.exit.i.i.return_crit_edge ], [ 0, %if.end.i.i.i.return_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shl_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %2 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not.i = icmp eq i8 %conv3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = and i8 %1, 30
  %conv.i.i = zext i8 %4 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2.i, i32 noundef 2, i8 noundef zeroext %conv3) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 2
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.__shl_imm.exit_crit_edge, label %if.then.i.i

if.end.i.__shl_imm.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__shl_imm.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %__shl_imm.exit

__shl_imm.exit:                                   ; preds = %if.then.i.i, %if.end.i.__shl_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shl_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %4 to i8
  tail call fastcc void @__shl_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_ldx2(ptr noundef %nfp_prog, ptr noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_ldx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_st2(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp eq i32 %2, 8
  br i1 %cmp.i, label %if.then.i, label %entry.mem_st.exit_crit_edge

entry.mem_st.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_st.exit

if.then.i:                                        ; preds = %entry
  %imm1.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm1.i.i, align 4
  %off.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off.i.i, align 2
  %conv3.i.i = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %tobool.not.i.i.i = icmp ult i16 %6, 128
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i.i = or i32 %conv3.i.i, 268435456
  br label %re_load_imm_any.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv3.i.i) #9
  br label %re_load_imm_any.exit.i.i

re_load_imm_any.exit.i.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %or.i.i.i.i, %if.then.i.i.i ], [ 33554453, %if.end.i.i.i ]
  %dst_reg.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %7 = ptrtoint ptr %dst_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %dst_reg.i.i, align 1
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 134217728, i32 noundef %4) #9
  %8 = lshr i8 %bf.load.i.i, 3
  %9 = and i8 %8, 30
  %conv.i.i.i.i = zext i8 %9 to i32
  %or.i.i2.i.i = or i32 %conv.i.i.i.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i.i2.i.i, i32 noundef %retval.0.i.i.i, i8 noundef zeroext 1, i32 noundef 0, i1 noundef zeroext false) #9
  br label %mem_st.exit

mem_st.exit:                                      ; preds = %re_load_imm_any.exit.i.i, %entry.mem_st.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %re_load_imm_any.exit.i.i ], [ -95, %entry.mem_st.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_stx2(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_stx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shl_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = trunc i64 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not.i = icmp eq i8 %conv4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2.i, i32 noundef 2, i8 noundef zeroext %conv4) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i.i, align 2
  %10 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %11 = and i8 %bf.clear, 30
  %conv.i.i23 = zext i8 %11 to i32
  %or.i.i24 = or i32 %conv.i.i23, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i24, i32 noundef 20, i32 noundef 268435456) #9
  %conv.i10.i = zext i8 %2 to i32
  %or.i11.i = or i32 %conv.i10.i, 50331648
  %or.i13.i = or i32 %conv.i10.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i11.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i13.i, i32 noundef 2, i8 noundef zeroext 0) #9
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %14 = and i16 %13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i25 = icmp eq i16 %14, 0
  br i1 %tobool.not.i25, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.then.i.i
  %conv.i10.i.sink = phi i32 [ %conv1.i.i, %if.then.i.i ], [ %conv.i10.i, %if.end.cleanup.sink.split_crit_edge ]
  %or.i.i26 = or i32 %conv.i10.i.sink, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i26, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shl_reg64(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i64 %5 to i8
  tail call fastcc void @__shl_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv4)
  br label %cleanup34

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %8 = and i8 %bf.clear, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %7)
  %cmp9 = icmp ult i64 %7, 32
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %8 to i32
  %or.i.i.i = or i32 %conv.i.i.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331669, i32 noundef 268435488, i32 noundef 21, i32 noundef %or.i.i.i) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 20, i32 noundef 268435456) #9
  %conv6.i.i = zext i8 %2 to i32
  %or.i20.i.i = or i32 %conv6.i.i, 50331649
  %or.i22.i.i = or i32 %conv6.i.i, 16777217
  %or.i24.i.i = or i32 %conv6.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i.i, i32 noundef %or.i22.i.i, i32 noundef 0, i32 noundef %or.i24.i.i, i32 noundef 3, i8 noundef zeroext 0) #9
  %or.i.i5.i = or i32 %conv.i.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i5.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i11.i.i = or i32 %conv6.i.i, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i11.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i24.i.i, i32 noundef 2, i8 noundef zeroext 0) #9
  br label %cleanup34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %5)
  %cmp12 = icmp ugt i64 %5, 31
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i = zext i8 %2 to i32
  %or.i16.i = or i32 %conv3.i, 50331649
  %or.i18.i = or i32 %conv3.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i16.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i18.i, i32 noundef 2, i8 noundef zeroext 0) #9
  %or.i20.i = or i32 %conv3.i, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i20.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup34

if.else15:                                        ; preds = %if.else
  %prog_len.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %9 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prog_len.i, align 4
  %11 = trunc i32 %10 to i16
  %conv17 = add i16 %11, 7
  %conv.i = zext i8 %8 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_br_bset(ptr noundef %nfp_prog, i32 noundef %or.i, i16 noundef zeroext %conv17)
  %or.i.i70 = or i32 %conv.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331669, i32 noundef 268435488, i32 noundef 21, i32 noundef %or.i.i70) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 20, i32 noundef 268435456) #9
  %conv6.i = zext i8 %2 to i32
  %or.i20.i71 = or i32 %conv6.i, 50331649
  %or.i22.i = or i32 %conv6.i, 16777217
  %or.i24.i = or i32 %conv6.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i71, i32 noundef %or.i22.i, i32 noundef 0, i32 noundef %or.i24.i, i32 noundef 3, i8 noundef zeroext 0) #9
  %12 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i, align 4
  %14 = trunc i32 %13 to i16
  %conv22 = add i16 %14, 6
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %13
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %13) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %17 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv22)
  %18 = icmp ugt i16 %conv22, 8191
  %conv126.i.i.i = zext i16 %conv22 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %18, i64 2027226693688, i64 927715065912
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %19 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %20, i32 %13
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %22 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prog_len.i, align 4
  %inc.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %24 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog.i.i, align 4
  %26 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prog_len.i, align 4
  %sub.i.i = add i32 %27, -1
  %arrayidx.i.i = getelementptr i64, ptr %25, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i73 = or i64 %29, 72057594037927936
  store i64 %or.i.i73, ptr %arrayidx.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i11.i = or i32 %conv6.i, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i11.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i24.i, i32 noundef 2, i8 noundef zeroext 0) #9
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end.i, label %emit_br.exit.if.end26_crit_edge

emit_br.exit.if.end26_crit_edge:                  ; preds = %emit_br.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i:                                         ; preds = %emit_br.exit
  %conv23 = zext i16 %conv17 to i32
  %32 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv23)
  %cmp.not.i = icmp eq i32 %33, %conv23
  br i1 %cmp.not.i, label %if.end.i.if.end26_crit_edge, label %land.rhs.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.rhs.i:                                       ; preds = %if.end.i
  %.b44.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.cleanup34_crit_edge, label %if.then8.i, !prof !113

land.rhs.i.cleanup34_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %emit_br.exit.if.end26_crit_edge
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i71, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i24.i, i32 noundef 2, i8 noundef zeroext 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i11.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i83 = icmp eq i32 %35, 0
  br i1 %tobool.not.i83, label %if.end.i86, label %if.end26.cleanup34_crit_edge

if.end26.cleanup34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.end.i86:                                       ; preds = %if.end26
  %conv27 = zext i16 %conv22 to i32
  %36 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv27)
  %cmp.not.i85 = icmp eq i32 %37, %conv27
  br i1 %cmp.not.i85, label %if.end.i86.cleanup34_crit_edge, label %land.rhs.i88

if.end.i86.cleanup34_crit_edge:                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

land.rhs.i88:                                     ; preds = %if.end.i86
  %.b44.i87 = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i87, label %land.rhs.i88.cleanup34_crit_edge, label %if.then8.i89, !prof !113

land.rhs.i88.cleanup34_crit_edge:                 ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i89:                                     ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

cleanup34:                                        ; preds = %if.then8.i89, %land.rhs.i88.cleanup34_crit_edge, %if.end.i86.cleanup34_crit_edge, %if.end26.cleanup34_crit_edge, %if.then8.i, %land.rhs.i.cleanup34_crit_edge, %if.then14, %if.then11, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -22, %land.rhs.i.cleanup34_crit_edge ], [ -22, %if.then8.i ], [ -22, %land.rhs.i88.cleanup34_crit_edge ], [ -22, %if.then8.i89 ], [ 0, %if.then14 ], [ 0, %if.then11 ], [ 0, %if.end26.cleanup34_crit_edge ], [ 0, %if.end.i86.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_ldx1(ptr noundef %nfp_prog, ptr noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_ldx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_st1(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp eq i32 %2, 8
  br i1 %cmp.i, label %if.then.i, label %entry.mem_st.exit_crit_edge

entry.mem_st.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_st.exit

if.then.i:                                        ; preds = %entry
  %imm1.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm1.i.i, align 4
  %off.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off.i.i, align 2
  %conv3.i.i = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %tobool.not.i.i.i = icmp ult i16 %6, 128
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i.i = or i32 %conv3.i.i, 268435456
  br label %re_load_imm_any.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv3.i.i) #9
  br label %re_load_imm_any.exit.i.i

re_load_imm_any.exit.i.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %or.i.i.i.i, %if.then.i.i.i ], [ 33554453, %if.end.i.i.i ]
  %dst_reg.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %7 = ptrtoint ptr %dst_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %dst_reg.i.i, align 1
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 134217728, i32 noundef %4) #9
  %8 = lshr i8 %bf.load.i.i, 3
  %9 = and i8 %8, 30
  %conv.i.i.i.i = zext i8 %9 to i32
  %or.i.i2.i.i = or i32 %conv.i.i.i.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i.i2.i.i, i32 noundef %retval.0.i.i.i, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false) #9
  br label %mem_st.exit

mem_st.exit:                                      ; preds = %re_load_imm_any.exit.i.i, %entry.mem_st.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %re_load_imm_any.exit.i.i ], [ -95, %entry.mem_st.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_stx1(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_stx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shr_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %2 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not.i = icmp eq i8 %conv3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = and i8 %1, 30
  %conv.i.i = zext i8 %4 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2.i, i32 noundef 1, i8 noundef zeroext %conv3) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 2
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.__shr_imm.exit_crit_edge, label %if.then.i.i

if.end.i.__shr_imm.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__shr_imm.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %__shr_imm.exit

__shr_imm.exit:                                   ; preds = %if.then.i.i, %if.end.i.__shr_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shr_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %4 to i8
  tail call fastcc void @__shr_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_ldx8(ptr noundef %nfp_prog, ptr noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_ldx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_st8(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_st(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_stx8(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mem_stx(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shr_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = trunc i64 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not.i = icmp eq i8 %conv4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2.i, i32 noundef 1, i8 noundef zeroext %conv4) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i.i, align 2
  %10 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %11 = and i8 %bf.clear, 30
  %conv.i = zext i8 %11 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456)
  %conv.i34 = zext i8 %2 to i32
  %or.i35 = or i32 %conv.i34, 50331648
  %or.i37 = or i32 %conv.i34, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i35, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i37, i32 noundef 1, i8 noundef zeroext 0) #9
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %14 = and i16 %13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i38 = icmp eq i16 %14, 0
  br i1 %tobool.not.i38, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %conv1.i = zext i8 %1 to i32
  %or.i.i39 = or i32 %conv1.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i39, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shr_reg64(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i64 %5 to i8
  tail call fastcc void @__shr_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv4)
  br label %cleanup34

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %8 = and i8 %bf.clear, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %7)
  %cmp9 = icmp ult i64 %7, 32
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %8 to i32
  %or.i.i.i = or i32 %conv.i.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i.i = zext i8 %2 to i32
  %or.i14.i.i = or i32 %conv3.i.i, 50331648
  %or.i16.i.i = or i32 %conv3.i.i, 16777217
  %or.i18.i.i = or i32 %conv3.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i.i, i32 noundef %or.i16.i.i, i32 noundef 0, i32 noundef %or.i18.i.i, i32 noundef 3, i8 noundef zeroext 0) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i14.i7.i = or i32 %conv3.i.i, 50331649
  %or.i16.i8.i = or i32 %conv3.i.i, 33554433
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i7.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i16.i8.i, i32 noundef 1, i8 noundef zeroext 0) #9
  br label %cleanup34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %5)
  %cmp12 = icmp ugt i64 %5, 31
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i = zext i8 %2 to i32
  %or.i18.i = or i32 %conv3.i, 50331648
  %or.i20.i = or i32 %conv3.i, 33554433
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i18.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i20.i, i32 noundef 1, i8 noundef zeroext 0) #9
  %or.i22.i = or i32 %conv3.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i22.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup34

if.else15:                                        ; preds = %if.else
  %prog_len.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %9 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prog_len.i, align 4
  %11 = trunc i32 %10 to i16
  %conv17 = add i16 %11, 6
  %conv.i = zext i8 %8 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_br_bset(ptr noundef %nfp_prog, i32 noundef %or.i, i16 noundef zeroext %conv17)
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i71 = zext i8 %2 to i32
  %or.i14.i = or i32 %conv3.i71, 50331648
  %or.i16.i = or i32 %conv3.i71, 16777217
  %or.i18.i72 = or i32 %conv3.i71, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i, i32 noundef %or.i16.i, i32 noundef 0, i32 noundef %or.i18.i72, i32 noundef 3, i8 noundef zeroext 0) #9
  %12 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i, align 4
  %14 = trunc i32 %13 to i16
  %conv22 = add i16 %14, 6
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %13
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %13) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %17 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv22)
  %18 = icmp ugt i16 %conv22, 8191
  %conv126.i.i.i = zext i16 %conv22 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %18, i64 2027226693688, i64 927715065912
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %19 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %20, i32 %13
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %22 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prog_len.i, align 4
  %inc.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %24 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog.i.i, align 4
  %26 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prog_len.i, align 4
  %sub.i.i = add i32 %27, -1
  %arrayidx.i.i = getelementptr i64, ptr %25, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i74 = or i64 %29, 72057594037927936
  store i64 %or.i.i74, ptr %arrayidx.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i14.i79 = or i32 %conv3.i71, 50331649
  %or.i16.i80 = or i32 %conv3.i71, 33554433
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i79, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i16.i80, i32 noundef 1, i8 noundef zeroext 0) #9
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end.i, label %emit_br.exit.if.end26_crit_edge

emit_br.exit.if.end26_crit_edge:                  ; preds = %emit_br.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i:                                         ; preds = %emit_br.exit
  %conv23 = zext i16 %conv17 to i32
  %32 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv23)
  %cmp.not.i = icmp eq i32 %33, %conv23
  br i1 %cmp.not.i, label %if.end.i.if.end26_crit_edge, label %land.rhs.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.rhs.i:                                       ; preds = %if.end.i
  %.b44.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.cleanup34_crit_edge, label %if.then8.i, !prof !113

land.rhs.i.cleanup34_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %emit_br.exit.if.end26_crit_edge
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i16.i80, i32 noundef 1, i8 noundef zeroext 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i14.i79, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i89 = icmp eq i32 %35, 0
  br i1 %tobool.not.i89, label %if.end.i92, label %if.end26.cleanup34_crit_edge

if.end26.cleanup34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.end.i92:                                       ; preds = %if.end26
  %conv27 = zext i16 %conv22 to i32
  %36 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv27)
  %cmp.not.i91 = icmp eq i32 %37, %conv27
  br i1 %cmp.not.i91, label %if.end.i92.cleanup34_crit_edge, label %land.rhs.i94

if.end.i92.cleanup34_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

land.rhs.i94:                                     ; preds = %if.end.i92
  %.b44.i93 = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i93, label %land.rhs.i94.cleanup34_crit_edge, label %if.then8.i95, !prof !113

land.rhs.i94.cleanup34_crit_edge:                 ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i95:                                     ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

cleanup34:                                        ; preds = %if.then8.i95, %land.rhs.i94.cleanup34_crit_edge, %if.end.i92.cleanup34_crit_edge, %if.end26.cleanup34_crit_edge, %if.then8.i, %land.rhs.i.cleanup34_crit_edge, %if.then14, %if.then11, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -22, %land.rhs.i.cleanup34_crit_edge ], [ -22, %if.then8.i ], [ -22, %land.rhs.i94.cleanup34_crit_edge ], [ -22, %if.then8.i95 ], [ 0, %if.then14 ], [ 0, %if.then11 ], [ 0, %if.end26.cleanup34_crit_edge ], [ 0, %if.end.i92.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neg_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i11 = or i32 %conv.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 268435456, i32 noundef 21, i32 noundef %or.i11)
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 2
  %5 = and i16 %4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %entry.wrp_zext.exit_crit_edge, label %if.then.i

entry.wrp_zext.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_zext.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %1 to i32
  %or.i.i = or i32 %conv1.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_zext.exit

wrp_zext.exit:                                    ; preds = %if.then.i, %entry.wrp_zext.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @call(ptr noundef %nfp_prog, ptr nocapture noundef %meta) #1 align 64 {
entry:
  %reg.i104.i.i = alloca %struct.nfp_insn_ur_regs, align 4
  %reg.i47.i.i = alloca %struct.nfp_insn_ur_regs, align 4
  %reg.i.i.i = alloca %struct.nfp_insn_ur_regs, align 4
  %reg.i106.i = alloca %struct.nfp_insn_ur_regs, align 4
  %reg.i.i = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %0)
  %insn.sroa.0.0.copyload.i = load i8, ptr %meta, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %insn.sroa.0.0.copyload.i)
  %cmp.i = icmp eq i8 %insn.sroa.0.0.copyload.i, -123
  br i1 %cmp.i, label %is_mbpf_pseudo_call.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

is_mbpf_pseudo_call.exit:                         ; preds = %entry
  %insn.sroa.5.0.insn1.sroa_idx.i = getelementptr inbounds i8, ptr %meta, i32 1
  %1 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %insn.sroa.5.0.copyload.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i, align 1
  %bf.clear.i = and i8 %insn.sroa.5.0.copyload.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp4.i = icmp eq i8 %bf.clear.i, 1
  br i1 %cmp4.i, label %if.then, label %is_mbpf_pseudo_call.exit.if.else_crit_edge

is_mbpf_pseudo_call.exit.if.else_crit_edge:       ; preds = %is_mbpf_pseudo_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %is_mbpf_pseudo_call.exit
  %stack_frame_depth.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 14
  %2 = ptrtoint ptr %stack_frame_depth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stack_frame_depth.i, align 4
  %sub.i = add i32 %3, -1
  %or.i = or i32 %sub.i, 63
  %add.i = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %tobool.not.i.i = icmp ult i32 %add.i, 256
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %add.i, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %add.i) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777238, i32 noundef 16777238, i32 noundef 1, i32 noundef %retval.0.i.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i.i) #9
  %4 = call ptr @memset(ptr %reg.i.i, i32 255, i32 16)
  %call6.i.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 16777238, i32 noundef 268435456, ptr noundef nonnull %reg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i65.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i65.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %ur_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %5 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6.i.i, ptr %error.i.i, align 4
  br label %emit_csr_wr.exit.i

if.end8.i.i:                                      ; preds = %ur_load_imm_any.exit.i
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %6 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %7, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %8 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %9
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %10 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_csr_wr.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %src_lmextn.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %src_lmextn.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not.i.i = icmp eq i8 %12, 0
  %breg10.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %breg10.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %breg10.i.i, align 4
  %areg9.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %areg9.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %areg9.i.i, align 2
  %conv40.i.i.i = zext i16 %14 to i64
  %shl41.i.i.i = shl nuw nsw i64 %conv40.i.i.i, 10
  %and42.i.i.i = and i64 %shl41.i.i.i, 1047552
  %17 = and i16 %16, 1023
  %and16.i.i.i = zext i16 %17 to i64
  %shl133.i.i.i = select i1 %tobool11.not.i.i, i64 0, i64 4398046511104
  %or.i.i67.i = or i64 %and42.i.i.i, %and16.i.i.i
  %or43.i.i.i = or i64 %or.i.i67.i, %shl133.i.i.i
  %or135.i.i.i = or i64 %or43.i.i.i, 1082438713344
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %18 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %19, i32 %9
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or135.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %21 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %emit_csr_wr.exit.i

emit_csr_wr.exit.i:                               ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i, %if.then7.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %emit_csr_wr.exit.i, %if.then.if.end.i_crit_edge
  %23 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %return

if.end8.i:                                        ; preds = %if.end.i
  %subprog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 19
  %26 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subprog.i, align 4
  %subprog_idx.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %subprog_idx.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subprog_idx.i, align 8
  %idxprom.i = zext i16 %29 to i32
  %needs_reg_push.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %27, i32 %idxprom.i, i32 1
  %30 = ptrtoint ptr %needs_reg_push.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %needs_reg_push.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool10.not.i = icmp sgt i8 %bf.load.i, -1
  %prog_len.i86.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %31 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prog_len.i86.i, align 4
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  %add13.i = add i32 %32, 3
  %__prog_alloc_len.i.i.i68.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %33 = ptrtoint ptr %__prog_alloc_len.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__prog_alloc_len.i.i.i68.i, align 4
  %div10.i.i.i69.i = lshr i32 %34, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i69.i, i32 %32)
  %cmp.i.i.i71.i = icmp eq i32 %div10.i.i.i69.i, %32
  br i1 %cmp.i.i.i71.i, label %do.end.i.i.i74.i, label %if.end.i.i.i78.i

do.end.i.i.i74.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %32) #12
  %error.i.i.i73.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %35 = ptrtoint ptr %error.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -28, ptr %error.i.i.i73.i, align 4
  br label %emit_br_relo.exit.i

if.end.i.i.i78.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i75.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %36 = ptrtoint ptr %prog.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prog.i.i.i75.i, align 4
  %arrayidx.i.i.i76.i = getelementptr i64, ptr %37, i32 %32
  %38 = ptrtoint ptr %arrayidx.i.i.i76.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 2055781515320, ptr %arrayidx.i.i.i76.i, align 8
  %39 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i77.i = add i32 %40, 1
  store i32 %inc.i.i.i77.i, ptr %prog_len.i86.i, align 4
  br label %emit_br_relo.exit.i

emit_br_relo.exit.i:                              ; preds = %if.end.i.i.i78.i, %do.end.i.i.i74.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %41 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prog.i.i, align 4
  %43 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prog_len.i86.i, align 4
  %sub.i.i = add i32 %44, -1
  %arrayidx.i.i = getelementptr i64, ptr %42, i32 %sub.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i = or i64 %46, 288230376151711744
  store i64 %or.i.i, ptr %arrayidx.i.i, align 8
  %47 = load i32, ptr %prog_len.i86.i, align 4
  call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %48 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prog.i.i, align 4
  %50 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prog_len.i86.i, align 4
  %sub.i82.i = add i32 %51, -1
  %arrayidx.i83.i = getelementptr i64, ptr %49, i32 %sub.i82.i
  %52 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.i83.i, align 8
  %or.i84.i = or i64 %53, 576460752303423488
  store i64 %or.i84.i, ptr %arrayidx.i83.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end8.i
  %add17.i = add i32 %32, 2
  %__prog_alloc_len.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %54 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.i = lshr i32 %55, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i, i32 %32)
  %cmp.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i, %32
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %32) #12
  %error.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %56 = ptrtoint ptr %error.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -28, ptr %error.i.i.i.i.i, align 4
  br label %emit_br.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %57 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %imm.i, align 4
  %59 = and i32 %58, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %.not.i = icmp eq i32 %59, 0
  %conv126.i.i.i.i = zext i32 %58 to i64
  %shl127.i.i.i.i = shl nuw nsw i64 %conv126.i.i.i.i, 22
  %and128.i.i.i.i = and i64 %shl127.i.i.i.i, 34355544064
  %or102.i.i.i.i = select i1 %.not.i, i64 927714017336, i64 2027225645112
  %or156.i.i.i.i = or i64 %or102.i.i.i.i, %and128.i.i.i.i
  %prog.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %60 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i64, ptr %61, i32 %32
  %62 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %or156.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 8
  %63 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i.i.i, ptr %prog_len.i86.i, align 4
  br label %emit_br.exit.i

emit_br.exit.i:                                   ; preds = %if.end.i.i.i.i.i, %do.end.i.i.i.i.i
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %65 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prog.i.i.i, align 4
  %67 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prog_len.i86.i, align 4
  %sub.i.i.i = add i32 %68, -1
  %arrayidx.i.i.i = getelementptr i64, ptr %66, i32 %sub.i.i.i
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx.i.i.i, align 8
  %or.i.i87.i = or i64 %70, 72057594037927936
  store i64 %or.i.i87.i, ptr %arrayidx.i.i.i, align 8
  %71 = load i32, ptr %prog_len.i86.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %emit_br.exit.i, %emit_br_relo.exit.i
  %ret_tgt.0.i = phi i32 [ %add13.i, %emit_br_relo.exit.i ], [ %add17.i, %emit_br.exit.i ]
  %offset_br.0.i = phi i32 [ %47, %emit_br_relo.exit.i ], [ %71, %emit_br.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ret_tgt.0.i)
  %cmp.i.i = icmp ugt i32 %ret_tgt.0.i, 65535
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i95.i

do.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %error.i89.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %72 = ptrtoint ptr %error.i89.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -14, ptr %error.i89.i, align 4
  br label %wrp_immed_relo.exit.i

if.end.i95.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %ret_tgt.0.i to i16
  call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i16 noundef zeroext %conv.i.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %prog.i90.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %73 = ptrtoint ptr %prog.i90.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prog.i90.i, align 4
  %75 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %prog_len.i86.i, align 4
  %sub.i92.i = add i32 %76, -1
  %arrayidx.i93.i = getelementptr i64, ptr %74, i32 %sub.i92.i
  %77 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i93.i, align 8
  %or.i94.i = or i64 %78, 576460752303423488
  store i64 %or.i94.i, ptr %arrayidx.i93.i, align 8
  br label %wrp_immed_relo.exit.i

wrp_immed_relo.exit.i:                            ; preds = %if.end.i95.i, %do.end.i.i
  %error.i96.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %79 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %error.i96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i97.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i97.i, label %if.end.i98.i, label %wrp_immed_relo.exit.i.if.end23.i_crit_edge

wrp_immed_relo.exit.i.if.end23.i_crit_edge:       ; preds = %wrp_immed_relo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end.i98.i:                                     ; preds = %wrp_immed_relo.exit.i
  %81 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %prog_len.i86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %ret_tgt.0.i)
  %cmp.not.i.i = icmp eq i32 %82, %ret_tgt.0.i
  br i1 %cmp.not.i.i, label %if.end.i98.i.if.end23.i_crit_edge, label %land.rhs.i.i

if.end.i98.i.if.end23.i_crit_edge:                ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.rhs.i.i:                                     ; preds = %if.end.i98.i
  %.b44.i.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i, label %land.rhs.i.i.return_crit_edge, label %if.then8.i.i, !prof !113

land.rhs.i.i.return_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end23.i:                                       ; preds = %if.end.i98.i.if.end23.i_crit_edge, %wrp_immed_relo.exit.i.if.end23.i_crit_edge
  br i1 %tobool.not.i, label %if.end23.i.if.end31.i_crit_edge, label %if.then25.i

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %tobool.not.i100.i = icmp ult i32 %add.i, 256
  br i1 %tobool.not.i100.i, label %if.then.i102.i, label %if.end.i103.i

if.then.i102.i:                                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i101.i = or i32 %add.i, 268435456
  br label %ur_load_imm_any.exit105.i

if.end.i103.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %add.i) #9
  br label %ur_load_imm_any.exit105.i

ur_load_imm_any.exit105.i:                        ; preds = %if.end.i103.i, %if.then.i102.i
  %retval.0.i104.i = phi i32 [ %or.i.i101.i, %if.then.i102.i ], [ 33554453, %if.end.i103.i ]
  call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777238, i32 noundef 16777238, i32 noundef 21, i32 noundef %retval.0.i104.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i106.i) #9
  %83 = call ptr @memset(ptr %reg.i106.i, i32 255, i32 16)
  %call6.i107.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 16777238, i32 noundef 268435456, ptr noundef nonnull %reg.i106.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i107.i)
  %tobool.not.i108.i = icmp eq i32 %call6.i107.i, 0
  br i1 %tobool.not.i108.i, label %if.end8.i117.i, label %if.then7.i111.i

if.then7.i111.i:                                  ; preds = %ur_load_imm_any.exit105.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call6.i107.i, ptr %error.i96.i, align 4
  br label %emit_csr_wr.exit143.i

if.end8.i117.i:                                   ; preds = %ur_load_imm_any.exit105.i
  %__prog_alloc_len.i.i.i123.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %85 = ptrtoint ptr %__prog_alloc_len.i.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %__prog_alloc_len.i.i.i123.i, align 4
  %div10.i.i.i124.i = lshr i32 %86, 3
  %87 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %prog_len.i86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i124.i, i32 %88)
  %cmp.i.i.i126.i = icmp eq i32 %div10.i.i.i124.i, %88
  br i1 %cmp.i.i.i126.i, label %do.end.i.i.i129.i, label %if.end.i.i.i142.i

do.end.i.i.i129.i:                                ; preds = %if.end8.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i124.i) #12
  %89 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -28, ptr %error.i96.i, align 4
  br label %emit_csr_wr.exit143.i

if.end.i.i.i142.i:                                ; preds = %if.end8.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i114.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i106.i, i32 0, i32 7
  %90 = ptrtoint ptr %src_lmextn.i114.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %src_lmextn.i114.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool11.not.i115.i = icmp eq i8 %91, 0
  %breg10.i113.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i106.i, i32 0, i32 3
  %92 = ptrtoint ptr %breg10.i113.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %breg10.i113.i, align 4
  %areg9.i112.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i106.i, i32 0, i32 2
  %94 = ptrtoint ptr %areg9.i112.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %areg9.i112.i, align 2
  %conv40.i.i130.i = zext i16 %93 to i64
  %shl41.i.i131.i = shl nuw nsw i64 %conv40.i.i130.i, 10
  %and42.i.i132.i = and i64 %shl41.i.i131.i, 1047552
  %96 = and i16 %95, 1023
  %and16.i.i133.i = zext i16 %96 to i64
  %shl133.i.i134.i = select i1 %tobool11.not.i115.i, i64 0, i64 4398046511104
  %or.i.i135.i = or i64 %and42.i.i132.i, %and16.i.i133.i
  %or43.i.i136.i = or i64 %or.i.i135.i, %shl133.i.i134.i
  %or135.i.i138.i = or i64 %or43.i.i136.i, 1082438713344
  %prog.i.i.i139.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %97 = ptrtoint ptr %prog.i.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prog.i.i.i139.i, align 4
  %arrayidx.i.i.i140.i = getelementptr i64, ptr %98, i32 %88
  %99 = ptrtoint ptr %arrayidx.i.i.i140.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %or135.i.i138.i, ptr %arrayidx.i.i.i140.i, align 8
  %100 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i141.i = add i32 %101, 1
  store i32 %inc.i.i.i141.i, ptr %prog_len.i86.i, align 4
  br label %emit_csr_wr.exit143.i

emit_csr_wr.exit143.i:                            ; preds = %if.end.i.i.i142.i, %do.end.i.i.i129.i, %if.then7.i111.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i106.i) #9
  %__prog_alloc_len.i.i.i.i144.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %prog.i.i.i.i146.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %102 = ptrtoint ptr %__prog_alloc_len.i.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %__prog_alloc_len.i.i.i.i144.i, align 4
  %div10.i.i.i.i148.i = lshr i32 %103, 3
  %104 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %prog_len.i86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i148.i, i32 %105)
  %cmp.i.i.i.i149.i = icmp eq i32 %div10.i.i.i.i148.i, %105
  br i1 %cmp.i.i.i.i149.i, label %do.end.i.i.i.i151.i, label %if.end.i.i.i.i154.i

do.end.i.i.i.i151.i:                              ; preds = %emit_csr_wr.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i148.i) #12
  %106 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -28, ptr %error.i96.i, align 4
  br label %emit_nop.exit.i.i

if.end.i.i.i.i154.i:                              ; preds = %emit_csr_wr.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %prog.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prog.i.i.i.i146.i, align 4
  %arrayidx.i.i.i.i152.i = getelementptr i64, ptr %108, i32 %105
  %109 = ptrtoint ptr %arrayidx.i.i.i.i152.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i152.i, align 8
  %110 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i.i153.i = add i32 %111, 1
  store i32 %inc.i.i.i.i153.i, ptr %prog_len.i86.i, align 4
  br label %emit_nop.exit.i.i

emit_nop.exit.i.i:                                ; preds = %if.end.i.i.i.i154.i, %do.end.i.i.i.i151.i
  %112 = ptrtoint ptr %__prog_alloc_len.i.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %__prog_alloc_len.i.i.i.i144.i, align 4
  %div10.i.i.i.i148.1.i = lshr i32 %113, 3
  %114 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %prog_len.i86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i148.1.i, i32 %115)
  %cmp.i.i.i.i149.1.i = icmp eq i32 %div10.i.i.i.i148.1.i, %115
  br i1 %cmp.i.i.i.i149.1.i, label %do.end.i.i.i.i151.1.i, label %if.end.i.i.i.i154.1.i

if.end.i.i.i.i154.1.i:                            ; preds = %emit_nop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %prog.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prog.i.i.i.i146.i, align 4
  %arrayidx.i.i.i.i152.1.i = getelementptr i64, ptr %117, i32 %115
  %118 = ptrtoint ptr %arrayidx.i.i.i.i152.1.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i152.1.i, align 8
  %119 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i.i153.1.i = add i32 %120, 1
  store i32 %inc.i.i.i.i153.1.i, ptr %prog_len.i86.i, align 4
  br label %emit_nop.exit.i.1.i

do.end.i.i.i.i151.1.i:                            ; preds = %emit_nop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i150.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i148.1.i) #12
  %121 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -28, ptr %error.i96.i, align 4
  br label %emit_nop.exit.i.1.i

emit_nop.exit.i.1.i:                              ; preds = %do.end.i.i.i.i151.1.i, %if.end.i.i.i.i154.1.i
  %122 = ptrtoint ptr %__prog_alloc_len.i.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %__prog_alloc_len.i.i.i.i144.i, align 4
  %div10.i.i.i.i148.2.i = lshr i32 %123, 3
  %124 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %prog_len.i86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i148.2.i, i32 %125)
  %cmp.i.i.i.i149.2.i = icmp eq i32 %div10.i.i.i.i148.2.i, %125
  br i1 %cmp.i.i.i.i149.2.i, label %do.end.i.i.i.i151.2.i, label %if.end.i.i.i.i154.2.i

if.end.i.i.i.i154.2.i:                            ; preds = %emit_nop.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %prog.i.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prog.i.i.i.i146.i, align 4
  %arrayidx.i.i.i.i152.2.i = getelementptr i64, ptr %127, i32 %125
  %128 = ptrtoint ptr %arrayidx.i.i.i.i152.2.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i152.2.i, align 8
  %129 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %prog_len.i86.i, align 4
  %inc.i.i.i.i153.2.i = add i32 %130, 1
  store i32 %inc.i.i.i.i153.2.i, ptr %prog_len.i86.i, align 4
  br label %if.end31.i

do.end.i.i.i.i151.2.i:                            ; preds = %emit_nop.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i150.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i148.2.i) #12
  %131 = ptrtoint ptr %error.i96.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -28, ptr %error.i96.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i.i.i.i151.2.i, %if.end.i.i.i.i154.2.i, %if.end23.i.if.end31.i_crit_edge
  %132 = ptrtoint ptr %prog_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %prog_len.i86.i, align 4
  %num_insns_after_br.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %sub34.i = sub i32 %133, %offset_br.0.i
  %134 = ptrtoint ptr %num_insns_after_br.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %sub34.i, ptr %num_insns_after_br.i, align 8
  br label %return

if.else:                                          ; preds = %is_mbpf_pseudo_call.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %imm.i6 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %135 = ptrtoint ptr %imm.i6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %imm.i6, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %136, label %land.end.i [
    i32 44, label %sw.bb.i
    i32 65, label %sw.bb1.i
    i32 1, label %if.else.sw.bb3.i_crit_edge
    i32 2, label %if.else.sw.bb3.i_crit_edge40
    i32 3, label %if.else.sw.bb3.i_crit_edge41
    i32 7, label %sw.bb5.i
    i32 25, label %sw.bb7.i
  ]

if.else.sw.bb3.i_crit_edge41:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.else.sw.bb3.i_crit_edge40:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.else.sw.bb3.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.else
  %adjust_head_location.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 15
  %138 = ptrtoint ptr %adjust_head_location.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %adjust_head_location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %139)
  %cmp.not.i.i7 = icmp eq i32 %139, -1
  br i1 %cmp.not.i.i7, label %if.end57.i.i, label %if.then.i.i9

if.then.i.i9:                                     ; preds = %sw.bb.i
  %n.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 3
  %140 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %n.i.i, align 4
  %conv.i.i8 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %conv.i.i8)
  %cmp4.not.i.i = icmp eq i32 %139, %conv.i.i8
  br i1 %cmp4.not.i.i, label %if.end45.i.i, label %land.rhs.i.i10

land.rhs.i.i10:                                   ; preds = %if.then.i.i9
  %.b135.i.i = load i1, ptr @adjust_head.__already_done, align 1
  br i1 %.b135.i.i, label %land.rhs.i.i10.return_crit_edge, label %if.then13.i.i, !prof !113

land.rhs.i.i10.return_crit_edge:                  ; preds = %land.rhs.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then13.i.i:                                    ; preds = %land.rhs.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @adjust_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1610, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end45.i.i:                                     ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1077936130, i32 noundef 16777220, i32 noundef 1, i32 noundef 1077936130) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554454, i32 noundef 33554454, i32 noundef 21, i32 noundef 16777220) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1077936128, i32 noundef 1077936128, i32 noundef 21, i32 noundef 16777220) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.end57.i.i:                                     ; preds = %sw.bb.i
  %142 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %nfp_prog, align 4
  %prog_len.i.i.i11 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %144 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %prog_len.i.i.i11, align 4
  %add.i.i = add i32 %145, 14
  %add59.i.i = add i32 %145, 16
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 16777220, i32 noundef 5, i32 noundef 1077936130) #9
  %off_min.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %143, i32 0, i32 11, i32 1
  %146 = ptrtoint ptr %off_min.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %off_min.i.i, align 4
  %conv.i.i.i = and i32 %147, 65535
  %or.i.i.i12 = or i32 %conv.i.i.i, 268435456
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 21, i32 noundef %or.i.i.i12) #9
  %148 = and i32 %add.i.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %.not.i.i = icmp eq i32 %148, 0
  %__prog_alloc_len.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %149 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i.i.i = lshr i32 %150, 3
  %151 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i.i, i32 %152)
  %cmp.i.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i.i, %152
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i.i) #12
  %error.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %153 = ptrtoint ptr %error.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -28, ptr %error.i.i.i.i.i.i, align 4
  br label %emit_br.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i.i.i.i.i = zext i32 %add.i.i to i64
  %shl127.i.i.i.i.i = shl nuw nsw i64 %conv126.i.i.i.i.i, 22
  %and128.i.i.i.i.i = and i64 %shl127.i.i.i.i.i, 34355544064
  %or102.i.i.i.i.i = select i1 %.not.i.i, i64 927712968997, i64 2027224596773
  %or156.i.i.i.i.i = or i64 %or102.i.i.i.i.i, %and128.i.i.i.i.i
  %prog.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %154 = ptrtoint ptr %prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prog.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr i64, ptr %155, i32 %152
  %156 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %or156.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i.i, align 8
  %157 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %prog_len.i.i.i11, align 4
  %inc.i.i.i.i.i.i = add i32 %158, 1
  store i32 %inc.i.i.i.i.i.i, ptr %prog_len.i.i.i11, align 4
  br label %emit_br.exit.i.i

emit_br.exit.i.i:                                 ; preds = %if.end.i.i.i.i.i.i, %do.end.i.i.i.i.i.i
  %prog.i.i.i.i13 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %159 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %prog.i.i.i.i13, align 4
  %161 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %prog_len.i.i.i11, align 4
  %sub.i.i.i.i = add i32 %162, -1
  %arrayidx.i.i.i.i14 = getelementptr i64, ptr %160, i32 %sub.i.i.i.i
  %163 = ptrtoint ptr %arrayidx.i.i.i.i14 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.i.i.i.i14, align 8
  %or.i.i.i.i = or i64 %164, 72057594037927936
  store i64 %or.i.i.i.i, ptr %arrayidx.i.i.i.i14, align 8
  %off_max.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %143, i32 0, i32 11, i32 2
  %165 = ptrtoint ptr %off_max.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %off_max.i.i, align 4
  %conv.i137.i.i = and i32 %166, 65535
  %or.i138.i.i = or i32 %conv.i137.i.i, 268435456
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i138.i.i, i32 noundef 21, i32 noundef 16777237) #9
  %167 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i140.i.i = lshr i32 %168, 3
  %169 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i140.i.i, i32 %170)
  %cmp.i.i.i.i142.i.i = icmp eq i32 %div10.i.i.i.i140.i.i, %170
  br i1 %cmp.i.i.i.i142.i.i, label %do.end.i.i.i.i145.i.i, label %if.end.i.i.i.i156.i.i

do.end.i.i.i.i145.i.i:                            ; preds = %emit_br.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i143.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i140.i.i) #12
  %error.i.i.i.i144.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %171 = ptrtoint ptr %error.i.i.i.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -28, ptr %error.i.i.i.i144.i.i, align 4
  br label %emit_br.exit161.i.i

if.end.i.i.i.i156.i.i:                            ; preds = %emit_br.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i.i.i146.i.i = zext i32 %add.i.i to i64
  %shl127.i.i.i147.i.i = shl nuw nsw i64 %conv126.i.i.i146.i.i, 22
  %and128.i.i.i148.i.i = and i64 %shl127.i.i.i147.i.i, 34355544064
  %or102.i.i.i151.i.i = select i1 %.not.i.i, i64 927712968997, i64 2027224596773
  %or156.i.i.i152.i.i = or i64 %or102.i.i.i151.i.i, %and128.i.i.i148.i.i
  %172 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %prog.i.i.i.i13, align 4
  %arrayidx.i.i.i.i154.i.i = getelementptr i64, ptr %173, i32 %170
  %174 = ptrtoint ptr %arrayidx.i.i.i.i154.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %or156.i.i.i152.i.i, ptr %arrayidx.i.i.i.i154.i.i, align 8
  %175 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %prog_len.i.i.i11, align 4
  %inc.i.i.i.i155.i.i = add i32 %176, 1
  store i32 %inc.i.i.i.i155.i.i, ptr %prog_len.i.i.i11, align 4
  br label %emit_br.exit161.i.i

emit_br.exit161.i.i:                              ; preds = %if.end.i.i.i.i156.i.i, %do.end.i.i.i.i145.i.i
  %177 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prog.i.i.i.i13, align 4
  %179 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %prog_len.i.i.i11, align 4
  %sub.i.i158.i.i = add i32 %180, -1
  %arrayidx.i.i159.i.i = getelementptr i64, ptr %178, i32 %sub.i.i158.i.i
  %181 = ptrtoint ptr %arrayidx.i.i159.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %arrayidx.i.i159.i.i, align 8
  %or.i.i160.i.i = or i64 %182, 72057594037927936
  store i64 %or.i.i160.i.i, ptr %arrayidx.i.i159.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef 33554454, i32 noundef 21, i32 noundef 16777220) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 33554453, i32 noundef 21, i32 noundef 268435470) #9
  %183 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i163.i.i = lshr i32 %184, 3
  %185 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i163.i.i, i32 %186)
  %cmp.i.i.i.i165.i.i = icmp eq i32 %div10.i.i.i.i163.i.i, %186
  br i1 %cmp.i.i.i.i165.i.i, label %do.end.i.i.i.i168.i.i, label %if.end.i.i.i.i179.i.i

do.end.i.i.i.i168.i.i:                            ; preds = %emit_br.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i166.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i163.i.i) #12
  %error.i.i.i.i167.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %187 = ptrtoint ptr %error.i.i.i.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -28, ptr %error.i.i.i.i167.i.i, align 4
  br label %emit_br.exit184.i.i

if.end.i.i.i.i179.i.i:                            ; preds = %emit_br.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i.i.i169.i.i = zext i32 %add.i.i to i64
  %shl127.i.i.i170.i.i = shl nuw nsw i64 %conv126.i.i.i169.i.i, 22
  %and128.i.i.i171.i.i = and i64 %shl127.i.i.i170.i.i, 34355544064
  %or102.i.i.i174.i.i = select i1 %.not.i.i, i64 927712968994, i64 2027224596770
  %or156.i.i.i175.i.i = or i64 %or102.i.i.i174.i.i, %and128.i.i.i171.i.i
  %188 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %prog.i.i.i.i13, align 4
  %arrayidx.i.i.i.i177.i.i = getelementptr i64, ptr %189, i32 %186
  %190 = ptrtoint ptr %arrayidx.i.i.i.i177.i.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %or156.i.i.i175.i.i, ptr %arrayidx.i.i.i.i177.i.i, align 8
  %191 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %prog_len.i.i.i11, align 4
  %inc.i.i.i.i178.i.i = add i32 %192, 1
  store i32 %inc.i.i.i.i178.i.i, ptr %prog_len.i.i.i11, align 4
  br label %emit_br.exit184.i.i

emit_br.exit184.i.i:                              ; preds = %if.end.i.i.i.i179.i.i, %do.end.i.i.i.i168.i.i
  %193 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prog.i.i.i.i13, align 4
  %195 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %prog_len.i.i.i11, align 4
  %sub.i.i181.i.i = add i32 %196, -1
  %arrayidx.i.i182.i.i = getelementptr i64, ptr %194, i32 %sub.i.i181.i.i
  %197 = ptrtoint ptr %arrayidx.i.i182.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %arrayidx.i.i182.i.i, align 8
  %or.i.i183.i.i = or i64 %198, 72057594037927936
  store i64 %or.i.i183.i.i, ptr %arrayidx.i.i182.i.i, align 8
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 1077936130, i8 noundef zeroext 3, i32 noundef 16777237, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %199 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %__prog_alloc_len.i.i.i.i.i.i, align 4
  %div10.i.i.i.i186.i.i = lshr i32 %200, 3
  %201 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i186.i.i, i32 %202)
  %cmp.i.i.i.i188.i.i = icmp eq i32 %div10.i.i.i.i186.i.i, %202
  br i1 %cmp.i.i.i.i188.i.i, label %do.end.i.i.i.i191.i.i, label %if.end.i.i.i.i202.i.i

do.end.i.i.i.i191.i.i:                            ; preds = %emit_br.exit184.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i189.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i186.i.i) #12
  %error.i.i.i.i190.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %203 = ptrtoint ptr %error.i.i.i.i190.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -28, ptr %error.i.i.i.i190.i.i, align 4
  br label %emit_br.exit207.i.i

if.end.i.i.i.i202.i.i:                            ; preds = %emit_br.exit184.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %204 = and i32 %add59.i.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %.not220.i.i = icmp eq i32 %204, 0
  %conv126.i.i.i192.i.i = zext i32 %add59.i.i to i64
  %shl127.i.i.i193.i.i = shl nuw nsw i64 %conv126.i.i.i192.i.i, 22
  %and128.i.i.i194.i.i = and i64 %shl127.i.i.i193.i.i, 34355544064
  %or102.i.i.i197.i.i = select i1 %.not220.i.i, i64 927715065912, i64 2027226693688
  %or156.i.i.i198.i.i = or i64 %or102.i.i.i197.i.i, %and128.i.i.i194.i.i
  %205 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prog.i.i.i.i13, align 4
  %arrayidx.i.i.i.i200.i.i = getelementptr i64, ptr %206, i32 %202
  %207 = ptrtoint ptr %arrayidx.i.i.i.i200.i.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %or156.i.i.i198.i.i, ptr %arrayidx.i.i.i.i200.i.i, align 8
  %208 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %prog_len.i.i.i11, align 4
  %inc.i.i.i.i201.i.i = add i32 %209, 1
  store i32 %inc.i.i.i.i201.i.i, ptr %prog_len.i.i.i11, align 4
  br label %emit_br.exit207.i.i

emit_br.exit207.i.i:                              ; preds = %if.end.i.i.i.i202.i.i, %do.end.i.i.i.i191.i.i
  %210 = ptrtoint ptr %prog.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prog.i.i.i.i13, align 4
  %212 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %prog_len.i.i.i11, align 4
  %sub.i.i204.i.i = add i32 %213, -1
  %arrayidx.i.i205.i.i = getelementptr i64, ptr %211, i32 %sub.i.i204.i.i
  %214 = ptrtoint ptr %arrayidx.i.i205.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %arrayidx.i.i205.i.i, align 8
  %or.i.i206.i.i = or i64 %215, 72057594037927936
  store i64 %or.i.i206.i.i, ptr %arrayidx.i.i205.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554454, i32 noundef 33554454, i32 noundef 21, i32 noundef 16777220) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1077936128, i32 noundef 1077936128, i32 noundef 21, i32 noundef 16777220) #9
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %216 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i.i.i15 = icmp eq i32 %217, 0
  br i1 %tobool.not.i.i.i15, label %if.end.i.i.i, label %emit_br.exit207.i.i.if.end87.i.i_crit_edge

emit_br.exit207.i.i.if.end87.i.i_crit_edge:       ; preds = %emit_br.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i.i

if.end.i.i.i:                                     ; preds = %emit_br.exit207.i.i
  %218 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %add.i.i)
  %cmp.not.i.i.i = icmp eq i32 %219, %add.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.if.end87.i.i_crit_edge, label %land.rhs.i.i.i

if.end.i.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i.i
  %.b44.i.i.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i.i, label %land.rhs.i.i.i.return_crit_edge, label %if.then8.i.i.i, !prof !113

land.rhs.i.i.i.return_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end87.i.i:                                     ; preds = %if.end.i.i.i.if.end87.i.i_crit_edge, %emit_br.exit207.i.i.if.end87.i.i_crit_edge
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 21, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  %220 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i209.i.i = icmp eq i32 %221, 0
  br i1 %tobool.not.i209.i.i, label %if.end.i212.i.i, label %if.end87.i.i.return_crit_edge

if.end87.i.i.return_crit_edge:                    ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i212.i.i:                                  ; preds = %if.end87.i.i
  %222 = ptrtoint ptr %prog_len.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %prog_len.i.i.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %add59.i.i)
  %cmp.not.i211.i.i = icmp eq i32 %223, %add59.i.i
  br i1 %cmp.not.i211.i.i, label %if.end.i212.i.i.return_crit_edge, label %land.rhs.i214.i.i

if.end.i212.i.i.return_crit_edge:                 ; preds = %if.end.i212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.rhs.i214.i.i:                                ; preds = %if.end.i212.i.i
  %.b44.i213.i.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i213.i.i, label %land.rhs.i214.i.i.return_crit_edge, label %if.then8.i215.i.i, !prof !113

land.rhs.i214.i.i.return_crit_edge:               ; preds = %land.rhs.i214.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8.i215.i.i:                                ; preds = %land.rhs.i214.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

sw.bb1.i:                                         ; preds = %if.else
  %prog_len.i.i53.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %224 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %prog_len.i.i53.i, align 4
  %add.i54.i = add i32 %225, 9
  %add6.i.i = add i32 %225, 11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 33554454, i32 noundef 1, i32 noundef 16777220) #9
  %226 = and i32 %add.i54.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %.not.i55.i = icmp eq i32 %226, 0
  %__prog_alloc_len.i.i.i.i.i56.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %227 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %__prog_alloc_len.i.i.i.i.i56.i, align 4
  %div10.i.i.i.i.i57.i = lshr i32 %228, 3
  %229 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %prog_len.i.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i57.i, i32 %230)
  %cmp.i.i.i.i.i58.i = icmp eq i32 %div10.i.i.i.i.i57.i, %230
  br i1 %cmp.i.i.i.i.i58.i, label %do.end.i.i.i.i.i61.i, label %if.end.i.i.i.i.i71.i

do.end.i.i.i.i.i61.i:                             ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i57.i) #12
  %error.i.i.i.i.i60.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %231 = ptrtoint ptr %error.i.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -28, ptr %error.i.i.i.i.i60.i, align 4
  br label %emit_br.exit.i76.i

if.end.i.i.i.i.i71.i:                             ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i.i.i.i62.i = zext i32 %add.i54.i to i64
  %shl127.i.i.i.i63.i = shl nuw nsw i64 %conv126.i.i.i.i62.i, 22
  %and128.i.i.i.i64.i = and i64 %shl127.i.i.i.i63.i, 34355544064
  %or102.i.i.i.i66.i = select i1 %.not.i55.i, i64 927712968997, i64 2027224596773
  %or156.i.i.i.i67.i = or i64 %or102.i.i.i.i66.i, %and128.i.i.i.i64.i
  %prog.i.i.i.i.i68.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %232 = ptrtoint ptr %prog.i.i.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %prog.i.i.i.i.i68.i, align 4
  %arrayidx.i.i.i.i.i69.i = getelementptr i64, ptr %233, i32 %230
  %234 = ptrtoint ptr %arrayidx.i.i.i.i.i69.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %or156.i.i.i.i67.i, ptr %arrayidx.i.i.i.i.i69.i, align 8
  %235 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %prog_len.i.i53.i, align 4
  %inc.i.i.i.i.i70.i = add i32 %236, 1
  store i32 %inc.i.i.i.i.i70.i, ptr %prog_len.i.i53.i, align 4
  br label %emit_br.exit.i76.i

emit_br.exit.i76.i:                               ; preds = %if.end.i.i.i.i.i71.i, %do.end.i.i.i.i.i61.i
  %prog.i.i.i72.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %237 = ptrtoint ptr %prog.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %prog.i.i.i72.i, align 4
  %239 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %prog_len.i.i53.i, align 4
  %sub.i.i.i73.i = add i32 %240, -1
  %arrayidx.i.i.i74.i = getelementptr i64, ptr %238, i32 %sub.i.i.i73.i
  %241 = ptrtoint ptr %arrayidx.i.i.i74.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %arrayidx.i.i.i74.i, align 8
  %or.i.i.i75.i = or i64 %242, 72057594037927936
  store i64 %or.i.i.i75.i, ptr %arrayidx.i.i.i74.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 21, i32 noundef 268435470) #9
  %243 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %__prog_alloc_len.i.i.i.i.i56.i, align 4
  %div10.i.i.i.i3.i.i = lshr i32 %244, 3
  %245 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %prog_len.i.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i3.i.i, i32 %246)
  %cmp.i.i.i.i5.i.i = icmp eq i32 %div10.i.i.i.i3.i.i, %246
  br i1 %cmp.i.i.i.i5.i.i, label %do.end.i.i.i.i8.i.i, label %if.end.i.i.i.i19.i.i

do.end.i.i.i.i8.i.i:                              ; preds = %emit_br.exit.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i3.i.i) #12
  %error.i.i.i.i7.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %247 = ptrtoint ptr %error.i.i.i.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 -28, ptr %error.i.i.i.i7.i.i, align 4
  br label %emit_br.exit24.i.i

if.end.i.i.i.i19.i.i:                             ; preds = %emit_br.exit.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv126.i.i.i9.i.i = zext i32 %add.i54.i to i64
  %shl127.i.i.i10.i.i = shl nuw nsw i64 %conv126.i.i.i9.i.i, 22
  %and128.i.i.i11.i.i = and i64 %shl127.i.i.i10.i.i, 34355544064
  %or102.i.i.i14.i.i = select i1 %.not.i55.i, i64 927712968994, i64 2027224596770
  %or156.i.i.i15.i.i = or i64 %or102.i.i.i14.i.i, %and128.i.i.i11.i.i
  %248 = ptrtoint ptr %prog.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %prog.i.i.i72.i, align 4
  %arrayidx.i.i.i.i17.i.i = getelementptr i64, ptr %249, i32 %246
  %250 = ptrtoint ptr %arrayidx.i.i.i.i17.i.i to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %or156.i.i.i15.i.i, ptr %arrayidx.i.i.i.i17.i.i, align 8
  %251 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %prog_len.i.i53.i, align 4
  %inc.i.i.i.i18.i.i = add i32 %252, 1
  store i32 %inc.i.i.i.i18.i.i, ptr %prog_len.i.i53.i, align 4
  br label %emit_br.exit24.i.i

emit_br.exit24.i.i:                               ; preds = %if.end.i.i.i.i19.i.i, %do.end.i.i.i.i8.i.i
  %253 = ptrtoint ptr %prog.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %prog.i.i.i72.i, align 4
  %255 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %prog_len.i.i53.i, align 4
  %sub.i.i21.i.i = add i32 %256, -1
  %arrayidx.i.i22.i.i = getelementptr i64, ptr %254, i32 %sub.i.i21.i.i
  %257 = ptrtoint ptr %arrayidx.i.i22.i.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %arrayidx.i.i22.i.i, align 8
  %or.i.i23.i.i = or i64 %258, 72057594037927936
  store i64 %or.i.i23.i.i, ptr %arrayidx.i.i22.i.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554454, i32 noundef 33554454, i32 noundef 1, i32 noundef 16777220) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 1077936128, i32 noundef 1077936128, i32 noundef 1, i32 noundef 16777220) #9
  %259 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %__prog_alloc_len.i.i.i.i.i56.i, align 4
  %div10.i.i.i.i26.i.i = lshr i32 %260, 3
  %261 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %prog_len.i.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i26.i.i, i32 %262)
  %cmp.i.i.i.i28.i.i = icmp eq i32 %div10.i.i.i.i26.i.i, %262
  br i1 %cmp.i.i.i.i28.i.i, label %do.end.i.i.i.i31.i.i, label %if.end.i.i.i.i42.i.i

do.end.i.i.i.i31.i.i:                             ; preds = %emit_br.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i26.i.i) #12
  %error.i.i.i.i30.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %263 = ptrtoint ptr %error.i.i.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 -28, ptr %error.i.i.i.i30.i.i, align 4
  br label %emit_br.exit47.i.i

if.end.i.i.i.i42.i.i:                             ; preds = %emit_br.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %264 = and i32 %add6.i.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %.not60.i.i = icmp eq i32 %264, 0
  %conv126.i.i.i32.i.i = zext i32 %add6.i.i to i64
  %shl127.i.i.i33.i.i = shl nuw nsw i64 %conv126.i.i.i32.i.i, 22
  %and128.i.i.i34.i.i = and i64 %shl127.i.i.i33.i.i, 34355544064
  %or102.i.i.i37.i.i = select i1 %.not60.i.i, i64 927715065912, i64 2027226693688
  %or156.i.i.i38.i.i = or i64 %or102.i.i.i37.i.i, %and128.i.i.i34.i.i
  %265 = ptrtoint ptr %prog.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %prog.i.i.i72.i, align 4
  %arrayidx.i.i.i.i40.i.i = getelementptr i64, ptr %266, i32 %262
  %267 = ptrtoint ptr %arrayidx.i.i.i.i40.i.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %or156.i.i.i38.i.i, ptr %arrayidx.i.i.i.i40.i.i, align 8
  %268 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %prog_len.i.i53.i, align 4
  %inc.i.i.i.i41.i.i = add i32 %269, 1
  store i32 %inc.i.i.i.i41.i.i, ptr %prog_len.i.i53.i, align 4
  br label %emit_br.exit47.i.i

emit_br.exit47.i.i:                               ; preds = %if.end.i.i.i.i42.i.i, %do.end.i.i.i.i31.i.i
  %270 = ptrtoint ptr %prog.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %prog.i.i.i72.i, align 4
  %272 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %prog_len.i.i53.i, align 4
  %sub.i.i44.i.i = add i32 %273, -1
  %arrayidx.i.i45.i.i = getelementptr i64, ptr %271, i32 %sub.i.i44.i.i
  %274 = ptrtoint ptr %arrayidx.i.i45.i.i to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %arrayidx.i.i45.i.i, align 8
  %or.i.i46.i.i = or i64 %275, 72057594037927936
  store i64 %or.i.i46.i.i, ptr %arrayidx.i.i45.i.i, align 8
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %error.i.i77.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %276 = ptrtoint ptr %error.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %error.i.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i.i78.i = icmp eq i32 %277, 0
  br i1 %tobool.not.i.i78.i, label %if.end.i.i80.i, label %emit_br.exit47.i.i.if.end20.i.i_crit_edge

emit_br.exit47.i.i.if.end20.i.i_crit_edge:        ; preds = %emit_br.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.end.i.i80.i:                                   ; preds = %emit_br.exit47.i.i
  %278 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %prog_len.i.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %add.i54.i)
  %cmp.not.i.i79.i = icmp eq i32 %279, %add.i54.i
  br i1 %cmp.not.i.i79.i, label %if.end.i.i80.i.if.end20.i.i_crit_edge, label %land.rhs.i.i82.i

if.end.i.i80.i.if.end20.i.i_crit_edge:            ; preds = %if.end.i.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.rhs.i.i82.i:                                 ; preds = %if.end.i.i80.i
  %.b44.i.i81.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i81.i, label %land.rhs.i.i82.i.return_crit_edge, label %land.rhs.i.i82.i.cleanup.sink.split.i.i_crit_edge, !prof !113

land.rhs.i.i82.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.rhs.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

land.rhs.i.i82.i.return_crit_edge:                ; preds = %land.rhs.i.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end20.i.i:                                     ; preds = %if.end.i.i80.i.if.end20.i.i_crit_edge, %emit_br.exit47.i.i.if.end20.i.i_crit_edge
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 21, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #9
  %280 = ptrtoint ptr %error.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %error.i.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i49.i.i = icmp eq i32 %281, 0
  br i1 %tobool.not.i49.i.i, label %if.end.i52.i.i, label %if.end20.i.i.return_crit_edge

if.end20.i.i.return_crit_edge:                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i52.i.i:                                   ; preds = %if.end20.i.i
  %282 = ptrtoint ptr %prog_len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %prog_len.i.i53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %add6.i.i)
  %cmp.not.i51.i.i = icmp eq i32 %283, %add6.i.i
  br i1 %cmp.not.i51.i.i, label %if.end.i52.i.i.return_crit_edge, label %land.rhs.i54.i.i

if.end.i52.i.i.return_crit_edge:                  ; preds = %if.end.i52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.rhs.i54.i.i:                                 ; preds = %if.end.i52.i.i
  %.b44.i53.i.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i53.i.i, label %land.rhs.i54.i.i.return_crit_edge, label %land.rhs.i54.i.i.cleanup.sink.split.i.i_crit_edge, !prof !113

land.rhs.i54.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.rhs.i54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

land.rhs.i54.i.i.return_crit_edge:                ; preds = %land.rhs.i54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup.sink.split.i.i:                           ; preds = %land.rhs.i54.i.i.cleanup.sink.split.i.i_crit_edge, %land.rhs.i.i82.i.cleanup.sink.split.i.i_crit_edge
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

sw.bb3.i:                                         ; preds = %if.else.sw.bb3.i_crit_edge, %if.else.sw.bb3.i_crit_edge40, %if.else.sw.bb3.i_crit_edge41
  %284 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %var_off6.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 2, i32 1
  %285 = ptrtoint ptr %var_off6.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %var_off6.i.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool.not.i.i16 = icmp eq i8 %286, 0
  br i1 %tobool.not.i.i16, label %lor.end.i.i, label %sw.bb3.i.if.then.i87.i_crit_edge

sw.bb3.i.if.then.i87.i_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i87.i

lor.end.i.i:                                      ; preds = %sw.bb3.i
  %stack_frame_depth.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 14
  %287 = ptrtoint ptr %stack_frame_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %stack_frame_depth.i.i, align 4
  %conv.i84.i = zext i32 %288 to i64
  %var_off.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 2, i32 0, i32 5
  %289 = ptrtoint ptr %var_off.i.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %var_off.i.i, align 8
  %off.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 2, i32 0, i32 1
  %291 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %off.i.i, align 4
  %conv3.i.i = sext i32 %292 to i64
  %add.i85.i = add i64 %290, %conv3.i.i
  %add4.i.i = sub nsw i64 0, %conv.i84.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i85.i, i64 %add4.i.i)
  %tobool8.not.i.i = icmp eq i64 %add.i85.i, %add4.i.i
  br i1 %tobool8.not.i.i, label %lor.end.i.i.if.end.i.i28_crit_edge, label %lor.end.i.i.if.then.i87.i_crit_edge

lor.end.i.i.if.then.i87.i_crit_edge:              ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i87.i

lor.end.i.i.if.end.i.i28_crit_edge:               ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i28

if.then.i87.i:                                    ; preds = %lor.end.i.i.if.then.i87.i_crit_edge, %sw.bb3.i.if.then.i87.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i.i.i) #9
  %293 = call ptr @memset(ptr %reg.i.i.i, i32 255, i32 16)
  %call6.i.i.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 33554436, i32 noundef 268435456, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i86.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i86.i, label %if.end8.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i.i88.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %294 = ptrtoint ptr %error.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %call6.i.i.i, ptr %error.i.i88.i, align 4
  br label %emit_csr_wr.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.then.i87.i
  %__prog_alloc_len.i.i.i.i.i17 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %295 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %__prog_alloc_len.i.i.i.i.i17, align 4
  %div10.i.i.i.i.i18 = lshr i32 %296, 3
  %prog_len.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %297 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i18, i32 %298)
  %cmp.i.i.i.i.i19 = icmp eq i32 %div10.i.i.i.i.i18, %298
  br i1 %cmp.i.i.i.i.i19, label %do.end.i.i.i.i.i22, label %if.end.i.i.i.i.i26

do.end.i.i.i.i.i22:                               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i18) #12
  %error.i.i.i.i.i21 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %299 = ptrtoint ptr %error.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -28, ptr %error.i.i.i.i.i21, align 4
  br label %emit_csr_wr.exit.i.i

if.end.i.i.i.i.i26:                               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i.i, i32 0, i32 7
  %300 = ptrtoint ptr %src_lmextn.i.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %src_lmextn.i.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool11.not.i.i.i = icmp eq i8 %301, 0
  %breg10.i.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i.i, i32 0, i32 3
  %302 = ptrtoint ptr %breg10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %breg10.i.i.i, align 4
  %areg9.i.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i.i.i, i32 0, i32 2
  %304 = ptrtoint ptr %areg9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %areg9.i.i.i, align 2
  %conv40.i.i.i.i = zext i16 %303 to i64
  %shl41.i.i.i.i = shl nuw nsw i64 %conv40.i.i.i.i, 10
  %and42.i.i.i.i = and i64 %shl41.i.i.i.i, 1047552
  %306 = and i16 %305, 1023
  %and16.i.i.i.i = zext i16 %306 to i64
  %shl133.i.i.i.i = select i1 %tobool11.not.i.i.i, i64 0, i64 4398046511104
  %or.i.i.i89.i = or i64 %and42.i.i.i.i, %and16.i.i.i.i
  %or43.i.i.i.i = or i64 %or.i.i.i89.i, %shl133.i.i.i.i
  %or135.i.i.i.i = or i64 %or43.i.i.i.i, 1082438713344
  %prog.i.i.i.i.i23 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %307 = ptrtoint ptr %prog.i.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %prog.i.i.i.i.i23, align 4
  %arrayidx.i.i.i.i.i24 = getelementptr i64, ptr %308, i32 %298
  %309 = ptrtoint ptr %arrayidx.i.i.i.i.i24 to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %or135.i.i.i.i, ptr %arrayidx.i.i.i.i.i24, align 8
  %310 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  %inc.i.i.i.i.i25 = add i32 %311, 1
  store i32 %inc.i.i.i.i.i25, ptr %prog_len.i.i.i.i.i, align 4
  br label %emit_csr_wr.exit.i.i

emit_csr_wr.exit.i.i:                             ; preds = %if.end.i.i.i.i.i26, %do.end.i.i.i.i.i22, %if.then7.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i.i.i) #9
  br label %if.end.i.i28

if.end.i.i28:                                     ; preds = %emit_csr_wr.exit.i.i, %lor.end.i.i.if.end.i.i28_crit_edge
  %312 = phi i1 [ false, %emit_csr_wr.exit.i.i ], [ true, %lor.end.i.i.if.end.i.i28_crit_edge ]
  %313 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %284, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %314)
  %cmp.i.i27 = icmp eq i32 %314, 2
  br i1 %cmp.i.i27, label %if.then11.i.i, label %if.end.i.i28.if.end13.i.i_crit_edge

if.end.i.i28.if.end13.i.i_crit_edge:              ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i47.i.i) #9
  %315 = call ptr @memset(ptr %reg.i47.i.i, i32 255, i32 16)
  %call6.i48.i.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 33554438, i32 noundef 268435456, ptr noundef nonnull %reg.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i48.i.i)
  %tobool.not.i49.i90.i = icmp eq i32 %call6.i48.i.i, 0
  br i1 %tobool.not.i49.i90.i, label %if.end8.i57.i.i, label %if.then7.i51.i.i

if.then7.i51.i.i:                                 ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %error.i50.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %316 = ptrtoint ptr %error.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %call6.i48.i.i, ptr %error.i50.i.i, align 4
  br label %emit_csr_wr.exit83.i.i

if.end8.i57.i.i:                                  ; preds = %if.then11.i.i
  %__prog_alloc_len.i.i.i63.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %317 = ptrtoint ptr %__prog_alloc_len.i.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %__prog_alloc_len.i.i.i63.i.i, align 4
  %div10.i.i.i64.i.i = lshr i32 %318, 3
  %prog_len.i.i.i65.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %319 = ptrtoint ptr %prog_len.i.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %prog_len.i.i.i65.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i64.i.i, i32 %320)
  %cmp.i.i.i66.i.i = icmp eq i32 %div10.i.i.i64.i.i, %320
  br i1 %cmp.i.i.i66.i.i, label %do.end.i.i.i69.i.i, label %if.end.i.i.i82.i.i

do.end.i.i.i69.i.i:                               ; preds = %if.end8.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i64.i.i) #12
  %error.i.i.i68.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %321 = ptrtoint ptr %error.i.i.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 -28, ptr %error.i.i.i68.i.i, align 4
  br label %emit_csr_wr.exit83.i.i

if.end.i.i.i82.i.i:                               ; preds = %if.end8.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i54.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i47.i.i, i32 0, i32 7
  %322 = ptrtoint ptr %src_lmextn.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %src_lmextn.i54.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool11.not.i55.i.i = icmp eq i8 %323, 0
  %breg10.i53.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i47.i.i, i32 0, i32 3
  %324 = ptrtoint ptr %breg10.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %breg10.i53.i.i, align 4
  %areg9.i52.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i47.i.i, i32 0, i32 2
  %326 = ptrtoint ptr %areg9.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %areg9.i52.i.i, align 2
  %conv40.i.i70.i.i = zext i16 %325 to i64
  %shl41.i.i71.i.i = shl nuw nsw i64 %conv40.i.i70.i.i, 10
  %and42.i.i72.i.i = and i64 %shl41.i.i71.i.i, 1047552
  %328 = and i16 %327, 1023
  %and16.i.i73.i.i = zext i16 %328 to i64
  %shl133.i.i74.i.i = select i1 %tobool11.not.i55.i.i, i64 0, i64 4398046511104
  %or.i.i75.i.i = or i64 %and42.i.i72.i.i, %and16.i.i73.i.i
  %or43.i.i76.i.i = or i64 %or.i.i75.i.i, %shl133.i.i74.i.i
  %or135.i.i78.i.i = or i64 %or43.i.i76.i.i, 1082489044992
  %prog.i.i.i79.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %329 = ptrtoint ptr %prog.i.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %prog.i.i.i79.i.i, align 4
  %arrayidx.i.i.i80.i.i = getelementptr i64, ptr %330, i32 %320
  %331 = ptrtoint ptr %arrayidx.i.i.i80.i.i to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 %or135.i.i78.i.i, ptr %arrayidx.i.i.i80.i.i, align 8
  %332 = ptrtoint ptr %prog_len.i.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %prog_len.i.i.i65.i.i, align 4
  %inc.i.i.i81.i.i = add i32 %333, 1
  store i32 %inc.i.i.i81.i.i, ptr %prog_len.i.i.i65.i.i, align 4
  br label %emit_csr_wr.exit83.i.i

emit_csr_wr.exit83.i.i:                           ; preds = %if.end.i.i.i82.i.i, %do.end.i.i.i69.i.i, %if.then7.i51.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i47.i.i) #9
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %emit_csr_wr.exit83.i.i, %if.end.i.i28.if.end13.i.i_crit_edge
  %__prog_alloc_len.i.i.i84.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %334 = ptrtoint ptr %__prog_alloc_len.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %__prog_alloc_len.i.i.i84.i.i, align 4
  %div10.i.i.i85.i.i = lshr i32 %335, 3
  %prog_len.i.i.i86.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %336 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i85.i.i, i32 %337)
  %cmp.i.i.i87.i.i = icmp eq i32 %div10.i.i.i85.i.i, %337
  br i1 %cmp.i.i.i87.i.i, label %do.end.i.i.i90.i.i, label %if.end.i.i.i94.i.i

do.end.i.i.i90.i.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i88.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i85.i.i) #12
  %error.i.i.i89.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %338 = ptrtoint ptr %error.i.i.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 -28, ptr %error.i.i.i89.i.i, align 4
  br label %emit_br_relo.exit.i.i

if.end.i.i.i94.i.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %339 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %284, align 8
  %341 = trunc i32 %340 to i16
  %conv16.i.i = add i16 %341, 15000
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv16.i.i)
  %342 = icmp ugt i16 %conv16.i.i, 8191
  %conv126.i.i.i.i29 = zext i16 %conv16.i.i to i64
  %shl127.i.i.i.i30 = shl nuw nsw i64 %conv126.i.i.i.i29, 22
  %and128.i.i.i.i31 = and i64 %shl127.i.i.i.i30, 34355544064
  %or102.i.i.i.i32 = select i1 %342, i64 2027226693688, i64 927715065912
  %or156.i.i.i.i33 = or i64 %and128.i.i.i.i31, %or102.i.i.i.i32
  %prog.i.i.i91.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %343 = ptrtoint ptr %prog.i.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %prog.i.i.i91.i.i, align 4
  %arrayidx.i.i.i92.i.i = getelementptr i64, ptr %344, i32 %337
  %345 = ptrtoint ptr %arrayidx.i.i.i92.i.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 %or156.i.i.i.i33, ptr %arrayidx.i.i.i92.i.i, align 8
  %346 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %inc.i.i.i93.i.i = add i32 %347, 1
  store i32 %inc.i.i.i93.i.i, ptr %prog_len.i.i.i86.i.i, align 4
  br label %emit_br_relo.exit.i.i

emit_br_relo.exit.i.i:                            ; preds = %if.end.i.i.i94.i.i, %do.end.i.i.i90.i.i
  %prog.i.i.i34 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %348 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %prog.i.i.i34, align 4
  %350 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %sub.i.i.i35 = add i32 %351, -1
  %arrayidx.i.i.i36 = getelementptr i64, ptr %349, i32 %sub.i.i.i35
  %352 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %arrayidx.i.i.i36, align 8
  %or.i.i91.i = or i64 %353, 504403158265495552
  store i64 %or.i.i91.i, ptr %arrayidx.i.i.i36, align 8
  %354 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %add18.i.i = add i32 %354, 2
  call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777216, i32 noundef 536870912, i32 noundef 0, i32 noundef 16777218) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add18.i.i)
  %cmp.i.i.i = icmp ugt i32 %add18.i.i, 65535
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i93.i

do.end.i.i.i:                                     ; preds = %emit_br_relo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %error.i95.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %355 = ptrtoint ptr %error.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 -14, ptr %error.i95.i.i, align 4
  br label %wrp_immed_relo.exit.i.i

if.end.i.i93.i:                                   ; preds = %emit_br_relo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i92.i = trunc i32 %add18.i.i to i16
  call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554432, i16 noundef zeroext %conv.i.i92.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %356 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %prog.i.i.i34, align 4
  %358 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %sub.i98.i.i = add i32 %359, -1
  %arrayidx.i99.i.i = getelementptr i64, ptr %357, i32 %sub.i98.i.i
  %360 = ptrtoint ptr %arrayidx.i99.i.i to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %arrayidx.i99.i.i, align 8
  %or.i100.i.i = or i64 %361, 576460752303423488
  store i64 %or.i100.i.i, ptr %arrayidx.i99.i.i, align 8
  br label %wrp_immed_relo.exit.i.i

wrp_immed_relo.exit.i.i:                          ; preds = %if.end.i.i93.i, %do.end.i.i.i
  %error.i101.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %362 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %error.i101.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool.not.i102.i.i = icmp eq i32 %363, 0
  br i1 %tobool.not.i102.i.i, label %if.end.i103.i.i, label %wrp_immed_relo.exit.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge

wrp_immed_relo.exit.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge: ; preds = %wrp_immed_relo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_prog_confirm_current_offset.exit.i.i

if.end.i103.i.i:                                  ; preds = %wrp_immed_relo.exit.i.i
  %364 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %365, i32 %add18.i.i)
  %cmp.not.i.i94.i = icmp eq i32 %365, %add18.i.i
  br i1 %cmp.not.i.i94.i, label %if.end.i103.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge, label %land.rhs.i.i96.i

if.end.i103.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge: ; preds = %if.end.i103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_prog_confirm_current_offset.exit.i.i

land.rhs.i.i96.i:                                 ; preds = %if.end.i103.i.i
  %.b44.i.i95.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i95.i, label %land.rhs.i.i96.i.return_crit_edge, label %if.then8.i.i97.i, !prof !113

land.rhs.i.i96.i.return_crit_edge:                ; preds = %land.rhs.i.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8.i.i97.i:                                 ; preds = %land.rhs.i.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

nfp_prog_confirm_current_offset.exit.i.i:         ; preds = %if.end.i103.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge, %wrp_immed_relo.exit.i.i.nfp_prog_confirm_current_offset.exit.i.i_crit_edge
  br i1 %312, label %nfp_prog_confirm_current_offset.exit.i.i.return_crit_edge, label %if.end27.i.i

nfp_prog_confirm_current_offset.exit.i.i.return_crit_edge: ; preds = %nfp_prog_confirm_current_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end27.i.i:                                     ; preds = %nfp_prog_confirm_current_offset.exit.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i104.i.i) #9
  %366 = call ptr @memset(ptr %reg.i104.i.i, i32 255, i32 16)
  %call6.i105.i.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 16777238, i32 noundef 268435456, ptr noundef nonnull %reg.i104.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i105.i.i)
  %tobool.not.i106.i.i = icmp eq i32 %call6.i105.i.i, 0
  br i1 %tobool.not.i106.i.i, label %if.end8.i115.i.i, label %if.then7.i109.i.i

if.then7.i109.i.i:                                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %367 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %call6.i105.i.i, ptr %error.i101.i.i, align 4
  br label %emit_csr_wr.exit141.i.i

if.end8.i115.i.i:                                 ; preds = %if.end27.i.i
  %368 = ptrtoint ptr %__prog_alloc_len.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %__prog_alloc_len.i.i.i84.i.i, align 4
  %div10.i.i.i122.i.i = lshr i32 %369, 3
  %370 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i122.i.i, i32 %371)
  %cmp.i.i.i124.i.i = icmp eq i32 %div10.i.i.i122.i.i, %371
  br i1 %cmp.i.i.i124.i.i, label %do.end.i.i.i127.i.i, label %if.end.i.i.i140.i.i

do.end.i.i.i127.i.i:                              ; preds = %if.end8.i115.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i125.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i122.i.i) #12
  %372 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 -28, ptr %error.i101.i.i, align 4
  br label %emit_csr_wr.exit141.i.i

if.end.i.i.i140.i.i:                              ; preds = %if.end8.i115.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i112.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i104.i.i, i32 0, i32 7
  %373 = ptrtoint ptr %src_lmextn.i112.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %src_lmextn.i112.i.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool11.not.i113.i.i = icmp eq i8 %374, 0
  %breg10.i111.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i104.i.i, i32 0, i32 3
  %375 = ptrtoint ptr %breg10.i111.i.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %breg10.i111.i.i, align 4
  %areg9.i110.i.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i104.i.i, i32 0, i32 2
  %377 = ptrtoint ptr %areg9.i110.i.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %areg9.i110.i.i, align 2
  %conv40.i.i128.i.i = zext i16 %376 to i64
  %shl41.i.i129.i.i = shl nuw nsw i64 %conv40.i.i128.i.i, 10
  %and42.i.i130.i.i = and i64 %shl41.i.i129.i.i, 1047552
  %379 = and i16 %378, 1023
  %and16.i.i131.i.i = zext i16 %379 to i64
  %shl133.i.i132.i.i = select i1 %tobool11.not.i113.i.i, i64 0, i64 4398046511104
  %or.i.i133.i.i = or i64 %and42.i.i130.i.i, %and16.i.i131.i.i
  %or43.i.i134.i.i = or i64 %or.i.i133.i.i, %shl133.i.i132.i.i
  %or135.i.i136.i.i = or i64 %or43.i.i134.i.i, 1082438713344
  %380 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %prog.i.i.i34, align 4
  %arrayidx.i.i.i138.i.i = getelementptr i64, ptr %381, i32 %371
  %382 = ptrtoint ptr %arrayidx.i.i.i138.i.i to i32
  call void @__asan_store8_noabort(i32 %382)
  store i64 %or135.i.i136.i.i, ptr %arrayidx.i.i.i138.i.i, align 8
  %383 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %inc.i.i.i139.i.i = add i32 %384, 1
  store i32 %inc.i.i.i139.i.i, ptr %prog_len.i.i.i86.i.i, align 4
  br label %emit_csr_wr.exit141.i.i

emit_csr_wr.exit141.i.i:                          ; preds = %if.end.i.i.i140.i.i, %do.end.i.i.i127.i.i, %if.then7.i109.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i104.i.i) #9
  %385 = ptrtoint ptr %__prog_alloc_len.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %__prog_alloc_len.i.i.i84.i.i, align 4
  %div10.i.i.i.i.i98.i = lshr i32 %386, 3
  %387 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i98.i, i32 %388)
  %cmp.i.i.i.i.i99.i = icmp eq i32 %div10.i.i.i.i.i98.i, %388
  br i1 %cmp.i.i.i.i.i99.i, label %do.end.i.i.i.i.i101.i, label %if.end.i.i.i.i.i104.i

do.end.i.i.i.i.i101.i:                            ; preds = %emit_csr_wr.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i98.i) #12
  %389 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 -28, ptr %error.i101.i.i, align 4
  br label %emit_nop.exit.i.i.i

if.end.i.i.i.i.i104.i:                            ; preds = %emit_csr_wr.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %390 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %prog.i.i.i34, align 4
  %arrayidx.i.i.i.i.i102.i = getelementptr i64, ptr %391, i32 %388
  %392 = ptrtoint ptr %arrayidx.i.i.i.i.i102.i to i32
  call void @__asan_store8_noabort(i32 %392)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i.i102.i, align 8
  %393 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %inc.i.i.i.i.i103.i = add i32 %394, 1
  store i32 %inc.i.i.i.i.i103.i, ptr %prog_len.i.i.i86.i.i, align 4
  br label %emit_nop.exit.i.i.i

emit_nop.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i104.i, %do.end.i.i.i.i.i101.i
  %395 = ptrtoint ptr %__prog_alloc_len.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %__prog_alloc_len.i.i.i84.i.i, align 4
  %div10.i.i.i.i.1.i.i = lshr i32 %396, 3
  %397 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.1.i.i, i32 %398)
  %cmp.i.i.i.i.1.i.i = icmp eq i32 %div10.i.i.i.i.1.i.i, %398
  br i1 %cmp.i.i.i.i.1.i.i, label %do.end.i.i.i.i.1.i.i, label %if.end.i.i.i.i.1.i.i

if.end.i.i.i.i.1.i.i:                             ; preds = %emit_nop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %399 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %prog.i.i.i34, align 4
  %arrayidx.i.i.i.i.1.i.i = getelementptr i64, ptr %400, i32 %398
  %401 = ptrtoint ptr %arrayidx.i.i.i.i.1.i.i to i32
  call void @__asan_store8_noabort(i32 %401)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i.1.i.i, align 8
  %402 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %inc.i.i.i.i.1.i.i = add i32 %403, 1
  store i32 %inc.i.i.i.i.1.i.i, ptr %prog_len.i.i.i86.i.i, align 4
  br label %emit_nop.exit.i.1.i.i

do.end.i.i.i.i.1.i.i:                             ; preds = %emit_nop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.1.i.i) #12
  %404 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 -28, ptr %error.i101.i.i, align 4
  br label %emit_nop.exit.i.1.i.i

emit_nop.exit.i.1.i.i:                            ; preds = %do.end.i.i.i.i.1.i.i, %if.end.i.i.i.i.1.i.i
  %405 = ptrtoint ptr %__prog_alloc_len.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %__prog_alloc_len.i.i.i84.i.i, align 4
  %div10.i.i.i.i.2.i.i = lshr i32 %406, 3
  %407 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.2.i.i, i32 %408)
  %cmp.i.i.i.i.2.i.i = icmp eq i32 %div10.i.i.i.i.2.i.i, %408
  br i1 %cmp.i.i.i.i.2.i.i, label %do.end.i.i.i.i.2.i.i, label %if.end.i.i.i.i.2.i.i

if.end.i.i.i.i.2.i.i:                             ; preds = %emit_nop.exit.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %409 = ptrtoint ptr %prog.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %prog.i.i.i34, align 4
  %arrayidx.i.i.i.i.2.i.i = getelementptr i64, ptr %410, i32 %408
  %411 = ptrtoint ptr %arrayidx.i.i.i.i.2.i.i to i32
  call void @__asan_store8_noabort(i32 %411)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i.2.i.i, align 8
  %412 = ptrtoint ptr %prog_len.i.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %prog_len.i.i.i86.i.i, align 4
  %inc.i.i.i.i.2.i.i = add i32 %413, 1
  store i32 %inc.i.i.i.i.2.i.i, ptr %prog_len.i.i.i86.i.i, align 4
  br label %return

do.end.i.i.i.i.2.i.i:                             ; preds = %emit_nop.exit.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.2.i.i) #12
  %414 = ptrtoint ptr %error.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 -28, ptr %error.i101.i.i, align 4
  br label %return

sw.bb5.i:                                         ; preds = %if.else
  %__prog_alloc_len.i.i.i.i106.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %415 = ptrtoint ptr %__prog_alloc_len.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %__prog_alloc_len.i.i.i.i106.i, align 4
  %div10.i.i.i.i107.i = lshr i32 %416, 3
  %prog_len.i.i.i.i108.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %417 = ptrtoint ptr %prog_len.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %prog_len.i.i.i.i108.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i107.i, i32 %418)
  %cmp.i.i.i.i109.i = icmp eq i32 %div10.i.i.i.i107.i, %418
  br i1 %cmp.i.i.i.i109.i, label %do.end.i.i.i.i112.i, label %if.end.i.i.i.i116.i

do.end.i.i.i.i112.i:                              ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i107.i) #12
  %error.i.i.i.i111.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %419 = ptrtoint ptr %error.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 -28, ptr %error.i.i.i.i111.i, align 4
  br label %nfp_get_prandom_u32.exit.i

if.end.i.i.i.i116.i:                              ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i.i113.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %420 = ptrtoint ptr %prog.i.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %prog.i.i.i.i113.i, align 4
  %arrayidx.i.i.i.i114.i = getelementptr i64, ptr %421, i32 %418
  %422 = ptrtoint ptr %arrayidx.i.i.i.i114.i to i32
  call void @__asan_store8_noabort(i32 %422)
  store i64 1082675691520, ptr %arrayidx.i.i.i.i114.i, align 8
  %423 = ptrtoint ptr %prog_len.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %prog_len.i.i.i.i108.i, align 4
  %inc.i.i.i.i115.i = add i32 %424, 1
  store i32 %inc.i.i.i.i115.i, ptr %prog_len.i.i.i.i108.i, align 4
  br label %nfp_get_prandom_u32.exit.i

nfp_get_prandom_u32.exit.i:                       ; preds = %if.end.i.i.i.i116.i, %do.end.i.i.i.i112.i
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331648, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

sw.bb7.i:                                         ; preds = %if.else
  %425 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %arg1.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %426 = ptrtoint ptr %arg1.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arg1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %427)
  %tobool.not.i.i117.i = icmp ult i32 %427, 256
  br i1 %tobool.not.i.i117.i, label %if.then.i.i.i37, label %if.end.i.i119.i

if.then.i.i.i37:                                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i118.i = or i32 %427, 268435456
  br label %ur_load_imm_any.exit.i.i

if.end.i.i119.i:                                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %427) #9
  br label %ur_load_imm_any.exit.i.i

ur_load_imm_any.exit.i.i:                         ; preds = %if.end.i.i119.i, %if.then.i.i.i37
  %retval.0.i.i.i = phi i32 [ %or.i.i.i118.i, %if.then.i.i.i37 ], [ 16777237, %if.end.i.i119.i ]
  %prog_len.i.i120.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %428 = ptrtoint ptr %prog_len.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %prog_len.i.i120.i, align 4
  %add.i121.i = add i32 %429, 3
  %__prog_alloc_len.i.i.i.i122.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %430 = ptrtoint ptr %__prog_alloc_len.i.i.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %__prog_alloc_len.i.i.i.i122.i, align 4
  %div10.i.i.i.i123.i = lshr i32 %431, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i123.i, i32 %429)
  %cmp.i.i.i.i124.i = icmp eq i32 %div10.i.i.i.i123.i, %429
  br i1 %cmp.i.i.i.i124.i, label %do.end.i.i.i.i127.i, label %if.end.i.i.i.i137.i

do.end.i.i.i.i127.i:                              ; preds = %ur_load_imm_any.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %429) #12
  %error.i.i.i.i126.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %432 = ptrtoint ptr %error.i.i.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 -28, ptr %error.i.i.i.i126.i, align 4
  br label %emit_br_relo.exit.i143.i

if.end.i.i.i.i137.i:                              ; preds = %ur_load_imm_any.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %433 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %425, align 8
  %435 = trunc i32 %434 to i16
  %conv.i128.i = add i16 %435, 15000
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv.i128.i)
  %436 = icmp ugt i16 %conv.i128.i, 8191
  %conv126.i.i.i129.i = zext i16 %conv.i128.i to i64
  %shl127.i.i.i130.i = shl nuw nsw i64 %conv126.i.i.i129.i, 22
  %and128.i.i.i131.i = and i64 %shl127.i.i.i130.i, 34355544064
  %or102.i.i.i132.i = select i1 %436, i64 2027226693688, i64 927715065912
  %or156.i.i.i133.i = or i64 %and128.i.i.i131.i, %or102.i.i.i132.i
  %prog.i.i.i.i134.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %437 = ptrtoint ptr %prog.i.i.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %prog.i.i.i.i134.i, align 4
  %arrayidx.i.i.i.i135.i = getelementptr i64, ptr %438, i32 %429
  %439 = ptrtoint ptr %arrayidx.i.i.i.i135.i to i32
  call void @__asan_store8_noabort(i32 %439)
  store i64 %or156.i.i.i133.i, ptr %arrayidx.i.i.i.i135.i, align 8
  %440 = ptrtoint ptr %prog_len.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %prog_len.i.i120.i, align 4
  %inc.i.i.i.i136.i = add i32 %441, 1
  store i32 %inc.i.i.i.i136.i, ptr %prog_len.i.i120.i, align 4
  br label %emit_br_relo.exit.i143.i

emit_br_relo.exit.i143.i:                         ; preds = %if.end.i.i.i.i137.i, %do.end.i.i.i.i127.i
  %prog.i.i138.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %442 = ptrtoint ptr %prog.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %prog.i.i138.i, align 4
  %444 = ptrtoint ptr %prog_len.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %prog_len.i.i120.i, align 4
  %sub.i.i139.i = add i32 %445, -1
  %arrayidx.i.i140.i = getelementptr i64, ptr %443, i32 %sub.i.i139.i
  %446 = ptrtoint ptr %arrayidx.i.i140.i to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %arrayidx.i.i140.i, align 8
  %or.i.i141.i = or i64 %447, 504403158265495552
  store i64 %or.i.i141.i, ptr %arrayidx.i.i140.i, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777217, i32 noundef 536870912, i32 noundef 0, i32 noundef %retval.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i121.i)
  %cmp.i.i142.i = icmp ugt i32 %add.i121.i, 65535
  br i1 %cmp.i.i142.i, label %do.end.i.i146.i, label %if.end.i20.i.i

do.end.i.i146.i:                                  ; preds = %emit_br_relo.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %error.i.i145.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %448 = ptrtoint ptr %error.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 -14, ptr %error.i.i145.i, align 4
  br label %wrp_immed_relo.exit.i148.i

if.end.i20.i.i:                                   ; preds = %emit_br_relo.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i147.i = trunc i32 %add.i121.i to i16
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 33554432, i16 noundef zeroext %conv.i.i147.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %449 = ptrtoint ptr %prog.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %prog.i.i138.i, align 4
  %451 = ptrtoint ptr %prog_len.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %prog_len.i.i120.i, align 4
  %sub.i17.i.i = add i32 %452, -1
  %arrayidx.i18.i.i = getelementptr i64, ptr %450, i32 %sub.i17.i.i
  %453 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_load8_noabort(i32 %453)
  %454 = load i64, ptr %arrayidx.i18.i.i, align 8
  %or.i19.i.i = or i64 %454, 576460752303423488
  store i64 %or.i19.i.i, ptr %arrayidx.i18.i.i, align 8
  br label %wrp_immed_relo.exit.i148.i

wrp_immed_relo.exit.i148.i:                       ; preds = %if.end.i20.i.i, %do.end.i.i146.i
  %error.i21.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %455 = ptrtoint ptr %error.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %error.i21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %456)
  %tobool.not.i22.i.i = icmp eq i32 %456, 0
  br i1 %tobool.not.i22.i.i, label %if.end.i23.i.i, label %wrp_immed_relo.exit.i148.i.return_crit_edge

wrp_immed_relo.exit.i148.i.return_crit_edge:      ; preds = %wrp_immed_relo.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i23.i.i:                                   ; preds = %wrp_immed_relo.exit.i148.i
  %457 = ptrtoint ptr %prog_len.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %prog_len.i.i120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %add.i121.i)
  %cmp.not.i.i149.i = icmp eq i32 %458, %add.i121.i
  br i1 %cmp.not.i.i149.i, label %if.end.i23.i.i.return_crit_edge, label %land.rhs.i.i151.i

if.end.i23.i.i.return_crit_edge:                  ; preds = %if.end.i23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.rhs.i.i151.i:                                ; preds = %if.end.i23.i.i
  %.b44.i.i150.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i.i150.i, label %land.rhs.i.i151.i.return_crit_edge, label %if.then8.i.i152.i, !prof !113

land.rhs.i.i151.i.return_crit_edge:               ; preds = %land.rhs.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8.i.i152.i:                                ; preds = %land.rhs.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %return

land.end.i:                                       ; preds = %if.else
  %.b52.i = load i1, ptr @helper_call.__already_done, align 1
  br i1 %.b52.i, label %land.end.i.return_crit_edge, label %if.then.i38, !prof !113

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i38:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @helper_call.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3363, i32 noundef 9, ptr noundef nonnull @.str.42) #9
  br label %return

return:                                           ; preds = %if.then.i38, %land.end.i.return_crit_edge, %if.then8.i.i152.i, %land.rhs.i.i151.i.return_crit_edge, %if.end.i23.i.i.return_crit_edge, %wrp_immed_relo.exit.i148.i.return_crit_edge, %nfp_get_prandom_u32.exit.i, %do.end.i.i.i.i.2.i.i, %if.end.i.i.i.i.2.i.i, %nfp_prog_confirm_current_offset.exit.i.i.return_crit_edge, %if.then8.i.i97.i, %land.rhs.i.i96.i.return_crit_edge, %cleanup.sink.split.i.i, %land.rhs.i54.i.i.return_crit_edge, %if.end.i52.i.i.return_crit_edge, %if.end20.i.i.return_crit_edge, %land.rhs.i.i82.i.return_crit_edge, %if.then8.i215.i.i, %land.rhs.i214.i.i.return_crit_edge, %if.end.i212.i.i.return_crit_edge, %if.end87.i.i.return_crit_edge, %if.then8.i.i.i, %land.rhs.i.i.i.return_crit_edge, %if.end45.i.i, %if.then13.i.i, %land.rhs.i.i10.return_crit_edge, %if.end31.i, %if.then8.i.i, %land.rhs.i.i.return_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end31.i ], [ -40, %do.end.i ], [ -22, %land.rhs.i.i.return_crit_edge ], [ -22, %if.then8.i.i ], [ 0, %nfp_get_prandom_u32.exit.i ], [ -95, %if.then.i38 ], [ -95, %land.end.i.return_crit_edge ], [ 0, %if.end45.i.i ], [ -22, %if.then13.i.i ], [ -22, %land.rhs.i.i10.return_crit_edge ], [ -22, %land.rhs.i.i.i.return_crit_edge ], [ -22, %if.then8.i.i.i ], [ -22, %land.rhs.i214.i.i.return_crit_edge ], [ -22, %if.then8.i215.i.i ], [ 0, %if.end87.i.i.return_crit_edge ], [ 0, %if.end.i212.i.i.return_crit_edge ], [ -22, %land.rhs.i.i82.i.return_crit_edge ], [ -22, %land.rhs.i54.i.i.return_crit_edge ], [ 0, %if.end20.i.i.return_crit_edge ], [ 0, %if.end.i52.i.i.return_crit_edge ], [ -22, %cleanup.sink.split.i.i ], [ 0, %nfp_prog_confirm_current_offset.exit.i.i.return_crit_edge ], [ -22, %if.then8.i.i97.i ], [ -22, %land.rhs.i.i96.i.return_crit_edge ], [ 0, %do.end.i.i.i.i.2.i.i ], [ 0, %if.end.i.i.i.i.2.i.i ], [ -22, %land.rhs.i.i151.i.return_crit_edge ], [ -22, %if.then8.i.i152.i ], [ 0, %wrp_immed_relo.exit.i148.i.return_crit_edge ], [ 0, %if.end.i23.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @neg_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i32 = or i32 %conv.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 268435456, i32 noundef 21, i32 noundef %or.i32)
  %3 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load12 = load i8, ptr %dst_reg, align 1
  %4 = lshr i8 %bf.load12, 3
  %5 = or i8 %4, 1
  %conv.i33 = zext i8 %5 to i32
  %or.i34 = or i32 %conv.i33, 50331648
  %or.i36 = or i32 %conv.i33, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i34, i32 noundef 268435456, i32 noundef 13, i32 noundef %or.i36)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jmp_exit(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %subprog_idx.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 5
  %0 = ptrtoint ptr %subprog_idx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subprog_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %2 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %3, 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %4 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %5)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %5
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %6 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %goto_out.exit

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %7 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %8, i32 %5
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2055779418168, ptr %arrayidx.i.i.i.i, align 8
  %10 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %goto_out.exit

goto_out.exit:                                    ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %12 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prog.i.i, align 4
  %14 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prog_len.i.i.i.i, align 4
  %sub.i.i = add i32 %15, -1
  %arrayidx.i.i = getelementptr i64, ptr %13, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i = or i64 %17, 144115188075855872
  store i64 %or.i.i, ptr %arrayidx.i.i, align 8
  br label %return

if.else:                                          ; preds = %entry
  %subprog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 19
  %18 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subprog.i, align 4
  %idxprom.i = zext i16 %1 to i32
  %needs_reg_push.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %19, i32 %idxprom.i, i32 1
  %20 = ptrtoint ptr %needs_reg_push.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %needs_reg_push.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %__prog_alloc_len.i.i.i.i7 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %21 = ptrtoint ptr %__prog_alloc_len.i.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %__prog_alloc_len.i.i.i.i7, align 4
  %div10.i.i.i.i8 = lshr i32 %22, 3
  %prog_len.i.i.i.i9 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %23 = ptrtoint ptr %prog_len.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prog_len.i.i.i.i9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i8, i32 %24)
  %cmp.i.i.i.i10 = icmp eq i32 %div10.i.i.i.i8, %24
  br i1 %cmp.i.i.i.i10, label %do.end.i.i.i.i13, label %if.end.i.i.i.i17

do.end.i.i.i.i13:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i8) #12
  %error.i.i.i.i12 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %25 = ptrtoint ptr %error.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -28, ptr %error.i.i.i.i12, align 4
  br label %emit_br_relo.exit.i

if.end.i.i.i.i17:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i.i14 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %26 = ptrtoint ptr %prog.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.i.i.i.i14, align 4
  %arrayidx.i.i.i.i15 = getelementptr i64, ptr %27, i32 %24
  %28 = ptrtoint ptr %arrayidx.i.i.i.i15 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 2055780466744, ptr %arrayidx.i.i.i.i15, align 8
  %29 = ptrtoint ptr %prog_len.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prog_len.i.i.i.i9, align 4
  %inc.i.i.i.i16 = add i32 %30, 1
  store i32 %inc.i.i.i.i16, ptr %prog_len.i.i.i.i9, align 4
  br label %emit_br_relo.exit.i

emit_br_relo.exit.i:                              ; preds = %if.end.i.i.i.i17, %do.end.i.i.i.i13
  %prog.i.i18 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %31 = ptrtoint ptr %prog.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prog.i.i18, align 4
  %33 = ptrtoint ptr %prog_len.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog_len.i.i.i.i9, align 4
  %sub.i.i19 = add i32 %34, -1
  %arrayidx.i.i20 = getelementptr i64, ptr %32, i32 %sub.i.i19
  %35 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i.i20, align 8
  %or.i.i21 = or i64 %36, 360287970189639680
  store i64 %or.i.i21, ptr %arrayidx.i.i20, align 8
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741824) #9
  br label %return

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 536870912, i32 noundef 0, i32 noundef 1073741824) #9
  tail call fastcc void @emit_rtn(ptr noundef %nfp_prog, i32 noundef 16777237, i8 noundef zeroext 0) #9
  br label %return

return:                                           ; preds = %if.else.i, %emit_br_relo.exit.i, %goto_out.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xor_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %4, label %if.end41.i [
    i32 -1, label %if.then28.i
    i32 0, label %entry.wrp_alu_imm.exit_crit_edge
  ]

entry.wrp_alu_imm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu_imm.exit

if.then28.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i72.i = zext i8 %2 to i32
  %or.i73.i = or i32 %conv.i72.i, 50331648
  %or.i75.i = or i32 %conv.i72.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i73.i, i32 noundef 536870912, i32 noundef 4, i32 noundef %or.i75.i) #9
  br label %wrp_alu_imm.exit

if.end41.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i.i1 = icmp ult i32 %4, 256
  br i1 %tobool.not.i.i1, label %if.then.i.i3, label %if.end.i.i

if.then.i.i3:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i2 = or i32 %4, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i3
  %retval.0.i.i = phi i32 [ %or.i.i.i2, %if.then.i.i3 ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %2 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 24, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu_imm.exit

wrp_alu_imm.exit:                                 ; preds = %ur_load_imm_any.exit.i, %if.then28.i, %entry.wrp_alu_imm.exit_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 2
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge, label %if.then.i.i

wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge:    ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_imm.exit

if.then.i.i:                                      ; preds = %wrp_alu_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_imm.exit

wrp_alu32_imm.exit:                               ; preds = %if.then.i.i, %wrp_alu_imm.exit.wrp_alu32_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xor_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = or i16 %3, 8
  store i16 %4, ptr %flags.i, align 2
  br label %wrp_alu64_imm.exit

if.end.i:                                         ; preds = %entry
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %5 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %6 = lshr i8 %bf.load.i, 3
  %7 = and i8 %6, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %wrp_alu_imm.exit16.thread, label %if.end41.i7

wrp_alu_imm.exit16.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i72.i2 = zext i8 %7 to i32
  %or.i73.i3 = or i32 %conv.i72.i2, 50331648
  %or.i75.i4 = or i32 %conv.i72.i2, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i73.i3, i32 noundef 536870912, i32 noundef 4, i32 noundef %or.i75.i4) #9
  %8 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9.i17 = load i8, ptr %dst_reg.i, align 1
  %9 = lshr i8 %bf.load9.i17, 3
  %10 = or i8 %9, 1
  br label %if.then28.i

if.end41.i7:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i.i6 = icmp ult i32 %1, 256
  br i1 %tobool.not.i.i6, label %if.then.i.i9, label %if.end.i.i10

if.then.i.i9:                                     ; preds = %if.end41.i7
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i8 = or i32 %1, 268435456
  br label %wrp_alu_imm.exit16

if.end.i.i10:                                     ; preds = %if.end41.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %1) #9
  br label %wrp_alu_imm.exit16

wrp_alu_imm.exit16:                               ; preds = %if.end.i.i10, %if.then.i.i9
  %retval.0.i.i11 = phi i32 [ %or.i.i.i8, %if.then.i.i9 ], [ 33554453, %if.end.i.i10 ]
  %conv.i76.i12 = zext i8 %7 to i32
  %or.i77.i13 = or i32 %conv.i76.i12, 50331648
  %or.i79.i14 = or i32 %conv.i76.i12, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i13, i32 noundef %or.i79.i14, i32 noundef 24, i32 noundef %retval.0.i.i11) #9
  %11 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load9.i = load i8, ptr %dst_reg.i, align 1
  %12 = lshr i8 %bf.load9.i, 3
  %13 = or i8 %12, 1
  %14 = ashr i32 %1, 31
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %14, label %if.end41.i [
    i32 -1, label %wrp_alu_imm.exit16.if.then28.i_crit_edge
    i32 0, label %wrp_alu_imm.exit16.wrp_alu64_imm.exit_crit_edge
  ]

wrp_alu_imm.exit16.wrp_alu64_imm.exit_crit_edge:  ; preds = %wrp_alu_imm.exit16
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu64_imm.exit

wrp_alu_imm.exit16.if.then28.i_crit_edge:         ; preds = %wrp_alu_imm.exit16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

if.then28.i:                                      ; preds = %wrp_alu_imm.exit16.if.then28.i_crit_edge, %wrp_alu_imm.exit16.thread
  %16 = phi i8 [ %10, %wrp_alu_imm.exit16.thread ], [ %13, %wrp_alu_imm.exit16.if.then28.i_crit_edge ]
  %conv.i72.i = zext i8 %16 to i32
  %or.i73.i = or i32 %conv.i72.i, 50331648
  %or.i75.i = or i32 %conv.i72.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i73.i, i32 noundef 536870912, i32 noundef 4, i32 noundef %or.i75.i) #9
  br label %wrp_alu64_imm.exit

if.end41.i:                                       ; preds = %wrp_alu_imm.exit16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not.i.i = icmp sgt i32 %1, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %14, 268435456
  br label %ur_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %14) #9
  br label %ur_load_imm_any.exit.i

ur_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %conv.i76.i = zext i8 %13 to i32
  %or.i77.i = or i32 %conv.i76.i, 50331648
  %or.i79.i = or i32 %conv.i76.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i77.i, i32 noundef %or.i79.i, i32 noundef 24, i32 noundef %retval.0.i.i) #9
  br label %wrp_alu64_imm.exit

wrp_alu64_imm.exit:                               ; preds = %ur_load_imm_any.exit.i, %if.then28.i, %wrp_alu_imm.exit16.wrp_alu64_imm.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xor_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 24, i32 noundef %or.i4.i) #9
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i, align 2
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i.i, label %entry.wrp_alu32_reg.exit_crit_edge, label %if.then.i.i

entry.wrp_alu32_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wrp_alu32_reg.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %wrp_alu32_reg.exit

wrp_alu32_reg.exit:                               ; preds = %if.then.i.i, %entry.wrp_alu32_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xor_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %1 = lshr i8 %bf.load.i, 3
  %2 = and i8 %1, 30
  %bf.clear.i = shl i8 %bf.load.i, 1
  %3 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %or.i2.i = or i32 %conv.i.i, 16777216
  %conv.i3.i = zext i8 %3 to i32
  %or.i4.i = or i32 %conv.i3.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef %or.i2.i, i32 noundef 24, i32 noundef %or.i4.i) #9
  %4 = or i8 %1, 1
  %conv.i5.i = zext i8 %4 to i32
  %or.i6.i = or i32 %conv.i5.i, 50331648
  %or.i8.i = or i32 %conv.i5.i, 16777216
  %or.i10.i = or i32 %conv.i3.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i6.i, i32 noundef %or.i8.i, i32 noundef 24, i32 noundef %or.i10.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mov_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %4)
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load4 = load i8, ptr %dst_reg, align 1
  %6 = lshr i8 %bf.load4, 3
  %conv.i13 = zext i8 %6 to i32
  %or.i14 = or i32 %conv.i13, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i14, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mov_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm1 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm1, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  %conv.i = zext i8 %4 to i32
  %or.i = or i32 %conv.i, 50331648
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %1)
  %5 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load8 = load i8, ptr %dst_reg, align 1
  %6 = lshr i8 %bf.load8, 3
  %conv.i19 = zext i8 %6 to i32
  %or.i20 = or i32 %conv.i19, 50331649
  %7 = ashr i32 %1, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef %or.i20, i32 noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mov_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 50331648
  %conv.i2.i = zext i8 %3 to i32
  %or.i3.i = or i32 %conv.i2.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i) #9
  %4 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load8 = load i8, ptr %dst_reg, align 1
  %5 = lshr i8 %bf.load8, 3
  %conv.i = zext i8 %5 to i32
  %or.i = or i32 %conv.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mov_reg64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %stack_frame_depth = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 14
  %3 = ptrtoint ptr %stack_frame_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stack_frame_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i = icmp ult i32 %4, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %4, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %4) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 16777238, i32 noundef 1, i32 noundef %retval.0.i)
  %conv.i38 = zext i8 %1 to i32
  %or.i39 = or i32 %conv.i38, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i39, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul5 = shl nuw nsw i8 %bf.clear, 1
  %conv.i.i = zext i8 %2 to i32
  %or.i.i41 = or i32 %conv.i.i, 50331648
  %conv.i2.i = zext i8 %mul5 to i32
  %or.i3.i = or i32 %conv.i2.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i41, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i) #9
  %conv.i.i42 = zext i8 %1 to i32
  %or.i.i43 = or i32 %conv.i.i42, 50331649
  %or.i3.i45 = or i32 %conv.i2.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i43, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i45) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %ur_load_imm_any.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_atomic4(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @mem_xadd(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashr_imm(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %2 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not.i = icmp eq i8 %conv3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = and i8 %1, 30
  %conv.i.i = zext i8 %4 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i2.i = or i32 %conv.i.i, 50331648
  %or.i4.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i2.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i4.i, i32 noundef 1, i8 noundef zeroext %conv3) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 2
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.__ashr_imm.exit_crit_edge, label %if.then.i.i

if.end.i.__ashr_imm.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ashr_imm.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i8 %1 to i32
  %or.i.i.i = or i32 %conv1.i.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %__ashr_imm.exit

__ashr_imm.exit:                                  ; preds = %if.then.i.i, %if.end.i.__ashr_imm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashr_imm64(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  %conv3 = trunc i32 %4 to i8
  tail call fastcc void @__ashr_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashr_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = trunc i64 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not.i = icmp eq i8 %conv4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %or.i2.i = or i32 %conv.i.i, 50331648
  %or.i4.i = or i32 %conv.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i2.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i4.i, i32 noundef 1, i8 noundef zeroext %conv4) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i.i, align 2
  %10 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %11 = and i8 %bf.clear, 30
  %conv.i = zext i8 %11 to i32
  %or.i = or i32 %conv.i, 16777216
  %conv.i36 = zext i8 %2 to i32
  %or.i37 = or i32 %conv.i36, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef %or.i37)
  %or.i39 = or i32 %conv.i36, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i39, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i37, i32 noundef 1, i8 noundef zeroext 0) #9
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %14 = and i16 %13, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i42 = icmp eq i16 %14, 0
  br i1 %tobool.not.i42, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %conv1.i = zext i8 %1 to i32
  %or.i.i43 = or i32 %conv1.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i43, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashr_reg64(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %3 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i64 %5 to i8
  tail call fastcc void @__ashr_imm64(ptr noundef %nfp_prog, i8 noundef zeroext %2, i8 noundef zeroext %conv4)
  br label %cleanup34

if.end:                                           ; preds = %entry
  %bf.clear = shl i8 %bf.load, 1
  %8 = and i8 %bf.clear, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %7)
  %cmp9 = icmp ult i64 %7, 32
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i8 %8 to i32
  %or.i.i.i.i = or i32 %conv.i.i.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i.i.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i.i.i = zext i8 %2 to i32
  %or.i14.i.i.i = or i32 %conv3.i.i.i, 50331648
  %or.i16.i.i.i = or i32 %conv3.i.i.i, 16777217
  %or.i18.i.i.i = or i32 %conv3.i.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i.i.i, i32 noundef %or.i16.i.i.i, i32 noundef 0, i32 noundef %or.i18.i.i.i, i32 noundef 3, i8 noundef zeroext 0) #9
  %or.i18.i.i = or i32 %conv3.i.i.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i.i.i, i32 noundef 20, i32 noundef %or.i18.i.i) #9
  %or.i20.i.i = or i32 %conv3.i.i.i, 50331649
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i18.i.i, i32 noundef 1, i8 noundef zeroext 0) #9
  br label %cleanup34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %5)
  %cmp12 = icmp ugt i64 %5, 31
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  %conv2.i = zext i8 %2 to i32
  %or.i28.i = or i32 %conv2.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef 20, i32 noundef %or.i28.i) #9
  %or.i30.i = or i32 %conv2.i, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i30.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i28.i, i32 noundef 1, i8 noundef zeroext 0) #9
  %or.i34.i = or i32 %conv2.i, 50331649
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i34.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i28.i, i32 noundef 1, i8 noundef zeroext 31) #9
  br label %cleanup34

if.else15:                                        ; preds = %if.else
  %prog_len.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %9 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prog_len.i, align 4
  %11 = trunc i32 %10 to i16
  %conv17 = add i16 %11, 6
  %conv.i = zext i8 %8 to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_br_bset(ptr noundef %nfp_prog, i32 noundef %or.i, i16 noundef zeroext %conv17)
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef 268435456) #9
  %conv3.i.i = zext i8 %2 to i32
  %or.i14.i.i = or i32 %conv3.i.i, 50331648
  %or.i16.i.i = or i32 %conv3.i.i, 16777217
  %or.i18.i.i69 = or i32 %conv3.i.i, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i.i, i32 noundef %or.i16.i.i, i32 noundef 0, i32 noundef %or.i18.i.i69, i32 noundef 3, i8 noundef zeroext 0) #9
  %12 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i, align 4
  %14 = trunc i32 %13 to i16
  %conv22 = add i16 %14, 6
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %13
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %13) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %17 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv22)
  %18 = icmp ugt i16 %conv22, 8191
  %conv126.i.i.i = zext i16 %conv22 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or102.i.i.i = select i1 %18, i64 2027226693688, i64 927715065912
  %or156.i.i.i = or i64 %or102.i.i.i, %and128.i.i.i
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %19 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %20, i32 %13
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %22 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prog_len.i, align 4
  %inc.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %24 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog.i.i, align 4
  %26 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prog_len.i, align 4
  %sub.i.i = add i32 %27, -1
  %arrayidx.i.i = getelementptr i64, ptr %25, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i71 = or i64 %29, 72057594037927936
  store i64 %or.i.i71, ptr %arrayidx.i.i, align 8
  %or.i18.i = or i32 %conv3.i.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef %or.i18.i) #9
  %or.i20.i = or i32 %conv3.i.i, 50331649
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i18.i, i32 noundef 1, i8 noundef zeroext 0) #9
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end.i, label %emit_br.exit.if.end26_crit_edge

emit_br.exit.if.end26_crit_edge:                  ; preds = %emit_br.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i:                                         ; preds = %emit_br.exit
  %conv23 = zext i16 %conv17 to i32
  %32 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv23)
  %cmp.not.i = icmp eq i32 %33, %conv23
  br i1 %cmp.not.i, label %if.end.i.if.end26_crit_edge, label %land.rhs.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.rhs.i:                                       ; preds = %if.end.i
  %.b44.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.cleanup34_crit_edge, label %if.then8.i, !prof !113

land.rhs.i.cleanup34_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %emit_br.exit.if.end26_crit_edge
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i, i32 noundef 20, i32 noundef %or.i18.i) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i14.i.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i18.i, i32 noundef 1, i8 noundef zeroext 0) #9
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i20.i, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i18.i, i32 noundef 1, i8 noundef zeroext 31) #9
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i84 = icmp eq i32 %35, 0
  br i1 %tobool.not.i84, label %if.end.i87, label %if.end26.cleanup34_crit_edge

if.end26.cleanup34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.end.i87:                                       ; preds = %if.end26
  %conv27 = zext i16 %conv22 to i32
  %36 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv27)
  %cmp.not.i86 = icmp eq i32 %37, %conv27
  br i1 %cmp.not.i86, label %if.end.i87.cleanup34_crit_edge, label %land.rhs.i89

if.end.i87.cleanup34_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

land.rhs.i89:                                     ; preds = %if.end.i87
  %.b44.i88 = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i88, label %land.rhs.i89.cleanup34_crit_edge, label %if.then8.i90, !prof !113

land.rhs.i89.cleanup34_crit_edge:                 ; preds = %land.rhs.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup34

if.then8.i90:                                     ; preds = %land.rhs.i89
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup34

cleanup34:                                        ; preds = %if.then8.i90, %land.rhs.i89.cleanup34_crit_edge, %if.end.i87.cleanup34_crit_edge, %if.end26.cleanup34_crit_edge, %if.then8.i, %land.rhs.i.cleanup34_crit_edge, %if.then14, %if.then11, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -22, %land.rhs.i.cleanup34_crit_edge ], [ -22, %if.then8.i ], [ -22, %land.rhs.i89.cleanup34_crit_edge ], [ -22, %if.then8.i90 ], [ 0, %if.then14 ], [ 0, %if.then11 ], [ 0, %if.end26.cleanup34_crit_edge ], [ 0, %if.end.i87.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_atomic8(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @mem_xadd(ptr noundef %nfp_prog, ptr noundef %meta, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_reg32(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %sw.bb13
    i32 64, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i52 = or i32 %conv.i, 33554432
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i, i8 noundef zeroext 9, i32 noundef %or.i52, i32 noundef 0, i8 noundef zeroext 8, i1 noundef zeroext false) #9
  %or.i56 = or i32 %conv.i, 16777216
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i, i8 noundef zeroext 14, i32 noundef %or.i56, i32 noundef 1, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  %conv.i57 = zext i8 %1 to i32
  %or.i58 = or i32 %conv.i57, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i58, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i59 = zext i8 %2 to i32
  %or.i60 = or i32 %conv.i59, 16777216
  %or.i.i = or i32 %conv.i59, 50331648
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i, i8 noundef zeroext 15, i32 noundef %or.i60, i32 noundef 0, i8 noundef zeroext 8, i1 noundef zeroext false) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i, i8 noundef zeroext 5, i32 noundef %or.i60, i32 noundef 0, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  %conv.i61 = zext i8 %1 to i32
  %or.i62 = or i32 %conv.i61, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i62, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = or i8 %1, 1
  %conv.i64 = zext i8 %6 to i32
  %or.i65 = or i32 %conv.i64, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i65) #9
  %conv.i66 = zext i8 %2 to i32
  %or.i67 = or i32 %conv.i66, 16777216
  %or.i.i69 = or i32 %conv.i64, 50331648
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i69, i8 noundef zeroext 15, i32 noundef %or.i67, i32 noundef 0, i8 noundef zeroext 8, i1 noundef zeroext false) #9
  %or.i11.i70 = or i32 %conv.i64, 16777216
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i69, i8 noundef zeroext 5, i32 noundef %or.i11.i70, i32 noundef 0, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  %or.i.i72 = or i32 %conv.i66, 50331648
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i72, i8 noundef zeroext 15, i32 noundef 16777237, i32 noundef 0, i8 noundef zeroext 8, i1 noundef zeroext false) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i72, i8 noundef zeroext 5, i32 noundef %or.i67, i32 noundef 0, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb13, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imm_ld8_part2(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prev1 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev1, align 4
  %dst_reg = getelementptr i8, ptr %1, i32 -263
  %2 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dst_reg, align 1
  %3 = lshr i8 %bf.load, 3
  %4 = and i8 %3, 30
  %imm = getelementptr i8, ptr %1, i32 -260
  %5 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %imm, align 4
  %imm5 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %7 = ptrtoint ptr %imm5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %imm5, align 4
  %conv.i = zext i8 %4 to i32
  %or.i = or i32 %conv.i, 50331648
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp = icmp eq i32 %8, %6
  %conv.i26 = zext i8 %3 to i32
  %or.i27 = or i32 %conv.i26, 50331649
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i29 = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i27, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i29) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef %or.i27, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @construct_data_ld(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i16 noundef zeroext %offset, i8 noundef zeroext %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %conv1 = zext i8 %size to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %tobool.not.i = icmp ult i32 %add, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %add, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %add) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 16777237, %if.end.i ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 33554454, i32 noundef 21, i32 noundef %retval.0.i)
  %__prog_alloc_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %0 = ptrtoint ptr %__prog_alloc_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__prog_alloc_len.i.i.i, align 4
  %div10.i.i.i = lshr i32 %1, 3
  %prog_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %2 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i, i32 %3)
  %cmp.i.i.i = icmp eq i32 %div10.i.i.i, %3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i) #12
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %4 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -28, ptr %error.i.i.i, align 4
  br label %emit_br_relo.exit

if.end.i.i.i:                                     ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %5 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prog.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %6, i32 %3
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2055779418405, ptr %arrayidx.i.i.i, align 8
  %8 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prog_len.i.i.i, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %prog_len.i.i.i, align 4
  br label %emit_br_relo.exit

emit_br_relo.exit:                                ; preds = %if.end.i.i.i, %do.end.i.i.i
  %prog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %10 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prog.i, align 4
  %12 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i.i.i, align 4
  %sub.i = add i32 %13, -1
  %arrayidx.i = getelementptr i64, ptr %11, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  %or.i = or i64 %15, 216172782113783808
  store i64 %or.i, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %offset)
  %tobool.not.i1 = icmp ult i16 %offset, 128
  br i1 %tobool.not.i1, label %if.then.i3, label %if.end.i4

if.then.i3:                                       ; preds = %emit_br_relo.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i2 = or i32 %conv, 268435456
  br label %re_load_imm_any.exit

if.end.i4:                                        ; preds = %emit_br_relo.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv) #9
  br label %re_load_imm_any.exit

re_load_imm_any.exit:                             ; preds = %if.end.i4, %if.then.i3
  %retval.0.i5 = phi i32 [ %or.i.i2, %if.then.i3 ], [ 33554453, %if.end.i4 ]
  tail call fastcc void @data_ld(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef %retval.0.i5, i32 noundef %conv1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @data_ld(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i32 noundef %offset, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp1 = icmp sgt i32 %size, 3
  %0 = trunc i32 %size to i16
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 1077936130, i32 noundef %offset, i8 noundef zeroext 3, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %0)
  %tobool.not5 = icmp eq i16 %0, 4
  %tobool.not = or i1 %cmp1, %tobool.not5
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %if.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = trunc i32 %size to i8
  %.neg = mul i8 %1, -8
  %mul = add i8 %.neg, 32
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef 50331648, i32 noundef 536870912, i32 noundef 0, i32 noundef 134217728, i32 noundef 1, i8 noundef zeroext %mul)
  br label %if.then27

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv.i = and i32 %i.07, 65535
  %or.i = or i32 %conv.i, 50331648
  %or.i2 = or i32 %conv.i, 134217728
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2) #9
  %inc = add i32 %i.07, 1
  %mul17 = shl i32 %inc, 2
  %cmp18 = icmp ult i32 %mul17, %size
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %phi.cmp = icmp ult i32 %inc, 2
  br i1 %phi.cmp, label %if.end.if.then27_crit_edge, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %if.end.if.then27_crit_edge, %if.end.thread
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then27.if.end28_crit_edge, label %if.then.i

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 50331649, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then.i, %if.then27.if.end28_crit_edge, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_cmd_any(ptr nocapture noundef %nfp_prog, i32 noundef %op, i8 noundef zeroext %mode, i8 noundef zeroext %xfer, i32 noundef %lreg, i32 noundef %rreg, i8 noundef zeroext %size, i32 noundef %ctx, i1 noundef zeroext %indir) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_re_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg) #9
  %0 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 7
  %3 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 8
  %4 = call ptr @memset(ptr %reg, i32 255, i32 12)
  %call1 = call i32 @swreg_to_restricted(i32 noundef 536870912, i32 noundef %lreg, i32 noundef %rreg, ptr noundef nonnull %reg, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  %error5 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %9 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -14, ptr %error5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end6.do.end12_crit_edge

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end16, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end6.do.end12_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  %error15 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %14 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -14, ptr %error15, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %16, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %17 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %18)
  %cmp.i.i = icmp eq i32 %div10.i.i, %18
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %19 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %tgt_cmd.i = getelementptr [10 x %struct.cmd_tgt_act], ptr @cmd_tgt_act, i32 0, i32 %op, i32 1
  %20 = ptrtoint ptr %tgt_cmd.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tgt_cmd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctx)
  %cmp.not.i = icmp eq i32 %ctx, 3
  %arrayidx.i = getelementptr [10 x %struct.cmd_tgt_act], ptr @cmd_tgt_act, i32 0, i32 %op
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 2
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %conv38.i = zext i32 %ctx to i64
  %shl39.i = shl nuw nsw i64 %conv38.i, 8
  %and40.i = and i64 %shl39.i, 768
  %conv13.i = zext i8 %27 to i64
  %or.i = or i64 %and40.i, %conv13.i
  %conv64.i = zext i8 %25 to i64
  %shl65.i = shl nuw nsw i64 %conv64.i, 10
  %or67.i = or i64 %shl65.i, %or.i
  %conv95.i = zext i8 %23 to i64
  %shl96.i = shl nuw nsw i64 %conv95.i, 18
  %and97.i = and i64 %shl96.i, 786432
  %or98.i = or i64 %and97.i, %or67.i
  %conv122.i = zext i8 %xfer to i64
  %shl123.i = shl nuw nsw i64 %conv122.i, 20
  %and124.i = and i64 %shl123.i, 32505856
  %or125.i = or i64 %or98.i, %and124.i
  %conv149.i = zext i8 %size to i64
  %shl150.i = shl nuw nsw i64 %conv149.i, 25
  %and151.i = and i64 %shl150.i, 234881024
  %or152.i = or i64 %or125.i, %and151.i
  %shl182.i = select i1 %cmp.not.i, i64 0, i64 268435456
  %or184.i = or i64 %or152.i, %shl182.i
  %conv213.i = zext i8 %21 to i64
  %shl214.i = shl nuw nsw i64 %conv213.i, 32
  %and215.i = and i64 %shl214.i, 545460846592
  %shl244.i = select i1 %indir, i64 2199023255552, i64 0
  %conv270.i = zext i8 %mode to i64
  %shl271.i = shl nuw nsw i64 %conv270.i, 42
  %and272.i = and i64 %shl271.i, 30786325577728
  %or216.i = or i64 %shl244.i, %and272.i
  %or246.i = or i64 %or216.i, %or184.i
  %or273.i = or i64 %or246.i, %and215.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %28 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %29, i32 %18
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or273.i, ptr %arrayidx.i.i, align 8
  %31 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %do.end12, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wrp_mul(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i1 noundef zeroext %gen_high_half, i1 noundef zeroext %ropnd_from_reg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg3 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg3, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %conv.i = zext i8 %2 to i32
  %or.i = or i32 %conv.i, 16777216
  %conv.i1 = zext i8 %1 to i32
  %or.i2 = or i32 %conv.i1, 50331649
  %or.i4 = or i32 %conv.i, 50331648
  %umax_dst = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %umax_dst to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %umax_dst, align 8
  br i1 %ropnd_from_reg, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear = shl i8 %bf.load, 1
  %5 = and i8 %bf.clear, 30
  %conv.i5 = zext i8 %5 to i32
  %or.i6 = or i32 %conv.i5, 33554432
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %umax_src, align 8
  %conv19 = trunc i64 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %imm20 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %8 = ptrtoint ptr %imm20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imm20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %tobool.not.i = icmp ult i32 %9, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %9, 268435456
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.i, %if.then
  %ropnd_max.0 = phi i32 [ %conv19, %if.then ], [ %9, %if.then.i ], [ %9, %if.end.i ]
  %multiplier.0 = phi i32 [ %or.i6, %if.then ], [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %10 = and i64 %4, 4294901760
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.not = icmp ne i64 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ropnd_max.0)
  %cmp24 = icmp ugt i32 %ropnd_max.0, 65535
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp24
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 0, i32 noundef 0, i32 noundef %multiplier.0) #9
  br i1 %or.cond, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.end
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 3, i32 noundef 0, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 3, i32 noundef 1, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 3, i32 noundef 2, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 3, i32 noundef 3, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i4, i32 noundef 3, i32 noundef 4, i32 noundef 536870912) #9
  br i1 %gen_high_half, label %if.then.i7, label %if.else.i

if.then.i7:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i2, i32 noundef 3, i32 noundef 5, i32 noundef 536870912) #9
  br label %if.end29

if.else.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i2, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end29

if.else28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 2, i32 noundef 0, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 2, i32 noundef 1, i32 noundef %multiplier.0) #9
  tail call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i4, i32 noundef 2, i32 noundef 4, i32 noundef 536870912) #9
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.else.i, %if.then.i7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_mul(ptr nocapture noundef %nfp_prog, i32 noundef %lreg, i32 noundef %type, i32 noundef %step, i32 noundef %rreg) unnamed_addr #1 align 64 {
entry:
  %reg = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #9
  %0 = call ptr @memset(ptr %reg, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp ne i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %step)
  %cmp1.not = icmp eq i32 %step, 0
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -22, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %step, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %switch = icmp eq i32 %2, 4
  br i1 %switch, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @swreg_to_unrestricted(i32 noundef %lreg, i32 noundef 536870912, i32 noundef %rreg, ptr noundef nonnull %reg) #9
  %dst = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dst, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef %lreg, i32 noundef %rreg, ptr noundef nonnull %reg) #9
  %areg8 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %areg8 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %areg8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %areg.0 = phi i16 [ %4, %if.then4 ], [ %6, %if.else ]
  %err.0 = phi i32 [ %call5, %if.then4 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %error11 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %7 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %err.0, ptr %error11, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %__prog_alloc_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %8 = ptrtoint ptr %__prog_alloc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__prog_alloc_len.i.i, align 4
  %div10.i.i = lshr i32 %9, 3
  %prog_len.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %10 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prog_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i, i32 %11)
  %cmp.i.i = icmp eq i32 %div10.i.i, %11
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i) #12
  %error.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %12 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -28, ptr %error.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 7
  %13 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src_lmextn, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 6
  %15 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dst_lmextn, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  %wr_both = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 5
  %17 = ptrtoint ptr %wr_both to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wr_both, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  %swap = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 4
  %19 = ptrtoint ptr %swap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %swap, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  %breg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %21 = ptrtoint ptr %breg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %breg, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %conv41.i = zext i16 %22 to i64
  %shl42.i = shl nuw nsw i64 %conv41.i, 10
  %and43.i = and i64 %shl42.i, 1047552
  %25 = and i16 %areg.0, 1023
  %and17.i = zext i16 %25 to i64
  %conv68.i = zext i32 %step to i64
  %shl69.i = shl nuw nsw i64 %conv68.i, 20
  %and70.i = and i64 %shl69.i, 7340032
  %conv95.i = zext i32 %24 to i64
  %shl96.i = shl nuw nsw i64 %conv95.i, 23
  %and97.i = and i64 %shl96.i, 8388608
  %shl126.i = select i1 %tobool13.not, i64 0, i64 1073741824
  %conv152.i = zext i32 %type to i64
  %shl153.i = shl nuw nsw i64 %conv152.i, 31
  %and154.i = and i64 %shl153.i, 6442450944
  %shl183.i = select i1 %tobool14.not, i64 0, i64 2199023255552
  %shl213.i = select i1 %tobool16.not, i64 0, i64 4398046511104
  %shl243.i = select i1 %tobool15.not, i64 0, i64 8796093022208
  %or.i = or i64 %and154.i, %and70.i
  %or44.i = or i64 %or.i, %and17.i
  %or71.i = or i64 %or44.i, %and97.i
  %or98.i = or i64 %or71.i, %shl126.i
  %or128.i = or i64 %or98.i, %and43.i
  %or155.i = or i64 %or128.i, %shl183.i
  %or185.i = or i64 %or155.i, %shl243.i
  %or215.i = or i64 %or185.i, %shl213.i
  %or245.i = or i64 %or215.i, 1065151889408
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %26 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %27, i32 %11
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or245.i, ptr %arrayidx.i.i, align 8
  %29 = ptrtoint ptr %prog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prog_len.i.i, align 4
  %inc.i.i = add i32 %30, 1
  store i32 %inc.i.i, ptr %prog_len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wrp_div_imm(ptr noundef %nfp_prog, i8 noundef zeroext %dst, i64 noundef %imm) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.reciprocal_value_adv, align 4
  %tmp27 = alloca %struct.reciprocal_value_adv, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %dst to i32
  %or.i = or i32 %conv.i, 50331648
  %or.i3 = or i32 %conv.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %imm)
  %cmp = icmp ugt i64 %imm, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %imm)
  %cmp6 = icmp ugt i64 %imm, 2147483648
  br i1 %cmp6, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv9 = trunc i64 %imm to i32
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv9) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i3, i32 noundef 21, i32 noundef 33554453)
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 16777237, i32 noundef 17, i32 noundef 268435456)
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #9
  %conv17 = trunc i64 %imm to i32
  call void @reciprocal_value_adv(ptr nonnull sret(%struct.reciprocal_value_adv) align 4 %tmp, i32 noundef %conv17, i8 noundef zeroext 32) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %0)
  %rvalue.sroa.0.0.copyload76 = load i32, ptr %tmp, align 4
  %rvalue.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %1 = ptrtoint ptr %rvalue.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rvalue.sroa.6.0.copyload78 = load i8, ptr %rvalue.sroa.6.0.tmp.sroa_idx, align 4
  %rvalue.sroa.8.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 5
  %2 = ptrtoint ptr %rvalue.sroa.8.0.tmp.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %rvalue.sroa.8.0.copyload81 = load i8, ptr %rvalue.sroa.8.0.tmp.sroa_idx, align 1
  %rvalue.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 6
  %3 = ptrtoint ptr %rvalue.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %rvalue.sroa.9.0.copyload83 = load i8, ptr %rvalue.sroa.9.0.tmp.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  %4 = and i8 %rvalue.sroa.9.0.copyload83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %and = and i64 %imm, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  %or.cond = and i1 %tobool20.not, %tobool.not
  br i1 %or.cond, label %if.then21, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nsw i64 0, %imm
  %and22 = and i64 %sub, %imm
  %conv23 = trunc i64 %and22 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %tobool.not.i = icmp eq i32 %conv23, 0
  %5 = call i32 @llvm.ctlz.i32(i32 %conv23, i1 true) #9, !range !114
  %6 = trunc i32 %5 to i8
  %7 = sub nuw nsw i8 32, %6
  %8 = select i1 %tobool.not.i, i8 0, i8 %7
  %conv26 = add nsw i8 %8, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp27) #9
  %sh_prom = zext i8 %conv26 to i64
  %shr = lshr i64 %imm, %sh_prom
  %conv29 = trunc i64 %shr to i32
  %sub31 = sub nuw nsw i8 33, %8
  call void @reciprocal_value_adv(ptr nonnull sret(%struct.reciprocal_value_adv) align 4 %tmp27, i32 noundef %conv29, i8 noundef zeroext %sub31) #9
  %9 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %rvalue.sroa.0.0.copyload77 = load i32, ptr %tmp27, align 4
  %rvalue.sroa.6.0.tmp27.sroa_idx = getelementptr inbounds i8, ptr %tmp27, i32 4
  %10 = ptrtoint ptr %rvalue.sroa.6.0.tmp27.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %rvalue.sroa.6.0.copyload79 = load i8, ptr %rvalue.sroa.6.0.tmp27.sroa_idx, align 4
  %rvalue.sroa.9.0.tmp27.sroa_idx = getelementptr inbounds i8, ptr %tmp27, i32 6
  %11 = ptrtoint ptr %rvalue.sroa.9.0.tmp27.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %rvalue.sroa.9.0.copyload84 = load i8, ptr %rvalue.sroa.9.0.tmp27.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp27) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then21, %if.end16.if.end33_crit_edge
  %rvalue.sroa.9.0.off0.in.in = phi i8 [ %rvalue.sroa.9.0.copyload84, %if.then21 ], [ %rvalue.sroa.9.0.copyload83, %if.end16.if.end33_crit_edge ]
  %rvalue.sroa.6.0 = phi i8 [ %rvalue.sroa.6.0.copyload79, %if.then21 ], [ %rvalue.sroa.6.0.copyload78, %if.end16.if.end33_crit_edge ]
  %rvalue.sroa.0.0 = phi i32 [ %rvalue.sroa.0.0.copyload77, %if.then21 ], [ %rvalue.sroa.0.0.copyload76, %if.end16.if.end33_crit_edge ]
  %pre_shift.0 = phi i8 [ %conv26, %if.then21 ], [ 0, %if.end16.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %rvalue.sroa.0.0)
  %tobool.not.i8 = icmp ult i32 %rvalue.sroa.0.0, 256
  br i1 %tobool.not.i8, label %if.then.i10, label %if.end.i11

if.then.i10:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i9 = or i32 %rvalue.sroa.0.0, 268435456
  br label %ur_load_imm_any.exit13

if.end.i11:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %rvalue.sroa.0.0) #9
  br label %ur_load_imm_any.exit13

ur_load_imm_any.exit13:                           ; preds = %if.end.i11, %if.then.i10
  %retval.0.i12 = phi i32 [ %or.i.i9, %if.then.i10 ], [ 33554453, %if.end.i11 ]
  %conv36 = zext i8 %rvalue.sroa.8.0.copyload81 to i32
  %shl = shl nuw i32 1, %conv36
  %conv37 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv37, i64 %imm)
  %cmp38 = icmp eq i64 %conv37, %imm
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %ur_load_imm_any.exit13
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3, i32 noundef 1, i8 noundef zeroext %rvalue.sroa.8.0.copyload81)
  br label %cleanup

if.else42:                                        ; preds = %ur_load_imm_any.exit13
  %rvalue.sroa.9.0.off0.in = and i8 %rvalue.sroa.9.0.off0.in.in, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rvalue.sroa.9.0.off0.in)
  %rvalue.sroa.9.0.off0.not = icmp eq i8 %rvalue.sroa.9.0.off0.in, 0
  br i1 %rvalue.sroa.9.0.off0.not, label %if.else55, label %if.then45

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 0, i32 noundef 0, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 0, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 1, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 2, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 3, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 3, i32 noundef 4, i32 noundef 536870912) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef 50331669, i32 noundef 3, i32 noundef 5, i32 noundef 536870912) #9
  call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i3, i32 noundef 21, i32 noundef 33554453)
  call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3, i32 noundef 1, i8 noundef zeroext 1)
  call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i3, i32 noundef 1, i32 noundef 33554453)
  %sub53 = add i8 %rvalue.sroa.6.0, -1
  call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3, i32 noundef 1, i8 noundef zeroext %sub53)
  br label %cleanup

if.else55:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pre_shift.0)
  %tobool56.not = icmp eq i8 %pre_shift.0, 0
  br i1 %tobool56.not, label %if.else55.if.end59_crit_edge, label %if.then57

if.else55.if.end59_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3, i32 noundef 1, i8 noundef zeroext %pre_shift.0)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.else55.if.end59_crit_edge
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 0, i32 noundef 0, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 0, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 1, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 2, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i3, i32 noundef 3, i32 noundef 3, i32 noundef %retval.0.i12) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 3, i32 noundef 4, i32 noundef 536870912) #9
  call fastcc void @emit_mul(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 3, i32 noundef 5, i32 noundef 536870912) #9
  call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3, i32 noundef 1, i8 noundef zeroext %rvalue.sroa.6.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then45, %if.then40, %if.then8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value_adv(ptr sret(%struct.reciprocal_value_adv) align 4, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @construct_data_ind_ld(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i16 noundef zeroext %offset, i16 noundef zeroext %src, i8 noundef zeroext %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %offset)
  %tobool.not.i = icmp ult i16 %offset, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %conv, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %conv.i = zext i16 %src to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 50331669, i32 noundef %or.i, i32 noundef 1, i32 noundef %retval.0.i)
  %conv.i1 = zext i8 %size to i32
  %or.i2 = or i32 %conv.i1, 268435456
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 16777237, i32 noundef 1, i32 noundef %or.i2)
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 33554454, i32 noundef 21, i32 noundef 16777237)
  %__prog_alloc_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %0 = ptrtoint ptr %__prog_alloc_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__prog_alloc_len.i.i.i, align 4
  %div10.i.i.i = lshr i32 %1, 3
  %prog_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %2 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i, i32 %3)
  %cmp.i.i.i = icmp eq i32 %div10.i.i.i, %3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i) #12
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %4 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -28, ptr %error.i.i.i, align 4
  br label %emit_br_relo.exit

if.end.i.i.i:                                     ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %5 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prog.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %6, i32 %3
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2055779418405, ptr %arrayidx.i.i.i, align 8
  %8 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prog_len.i.i.i, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %prog_len.i.i.i, align 4
  br label %emit_br_relo.exit

emit_br_relo.exit:                                ; preds = %if.end.i.i.i, %do.end.i.i.i
  %prog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %10 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prog.i, align 4
  %12 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prog_len.i.i.i, align 4
  %sub.i = add i32 %13, -1
  %arrayidx.i = getelementptr i64, ptr %11, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  %or.i3 = or i64 %15, 216172782113783808
  store i64 %or.i3, ptr %arrayidx.i, align 8
  tail call fastcc void @data_ld(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef 33554453, i32 noundef %conv.i1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wrp_test_reg(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i32 noundef %alu_op) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %off, align 2
  %conv.i.i = zext i8 %2 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  %conv.i1.i = zext i8 %3 to i32
  %or.i2.i = or i32 %conv.i1.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i, i32 noundef %alu_op, i32 noundef %or.i2.i) #9
  %__prog_alloc_len.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %6 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.i = lshr i32 %7, 3
  %prog_len.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %8 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i, i32 %9)
  %cmp.i.i.i.i.i = icmp eq i32 %div10.i.i.i.i.i, %9
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i) #12
  %error.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %10 = ptrtoint ptr %error.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -28, ptr %error.i.i.i.i.i, align 4
  br label %wrp_test_reg_one.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %5)
  %11 = icmp ugt i16 %5, 8191
  %conv126.i.i.i.i = zext i16 %5 to i64
  %shl127.i.i.i.i = shl nuw nsw i64 %conv126.i.i.i.i, 22
  %and128.i.i.i.i = and i64 %shl127.i.i.i.i, 34355544064
  %or102.i.i.i.i = select i1 %11, i64 2027224596769, i64 927712968993
  %or156.i.i.i.i = or i64 %and128.i.i.i.i, %or102.i.i.i.i
  %prog.i.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %12 = ptrtoint ptr %prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prog.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i64, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or156.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 8
  %15 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i.i, ptr %prog_len.i.i.i.i.i, align 4
  br label %wrp_test_reg_one.exit

wrp_test_reg_one.exit:                            ; preds = %if.end.i.i.i.i.i, %do.end.i.i.i.i.i
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %17 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prog.i.i.i, align 4
  %19 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  %sub.i.i.i = add i32 %20, -1
  %arrayidx.i.i.i = getelementptr i64, ptr %18, i32 %sub.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i.i, align 8
  %or.i.i.i = or i64 %22, 72057594037927936
  store i64 %or.i.i.i, ptr %arrayidx.i.i.i, align 8
  %23 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %meta, align 8
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp.i = icmp eq i8 %25, 5
  br i1 %cmp.i, label %if.then, label %wrp_test_reg_one.exit.if.end_crit_edge

wrp_test_reg_one.exit.if.end_crit_edge:           ; preds = %wrp_test_reg_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %wrp_test_reg_one.exit
  %26 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load8 = load i8, ptr %dst_reg, align 1
  %27 = lshr i8 %bf.load8, 3
  %bf.clear15 = shl i8 %bf.load8, 1
  %28 = and i8 %bf.clear15, 30
  %29 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %off, align 2
  %conv.i.i1 = zext i8 %27 to i32
  %or.i.i2 = or i32 %conv.i.i1, 16777217
  %conv.i1.i3 = zext i8 %28 to i32
  %or.i2.i4 = or i32 %conv.i1.i3, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i.i2, i32 noundef %alu_op, i32 noundef %or.i2.i4) #9
  %31 = ptrtoint ptr %__prog_alloc_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__prog_alloc_len.i.i.i.i.i, align 4
  %div10.i.i.i.i.i6 = lshr i32 %32, 3
  %33 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.i6, i32 %34)
  %cmp.i.i.i.i.i8 = icmp eq i32 %div10.i.i.i.i.i6, %34
  br i1 %cmp.i.i.i.i.i8, label %do.end.i.i.i.i.i11, label %if.end.i.i.i.i.i20

do.end.i.i.i.i.i11:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.i6) #12
  %error.i.i.i.i.i10 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %35 = ptrtoint ptr %error.i.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -28, ptr %error.i.i.i.i.i10, align 4
  br label %wrp_test_reg_one.exit25

if.end.i.i.i.i.i20:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %30)
  %36 = icmp ugt i16 %30, 8191
  %conv126.i.i.i.i12 = zext i16 %30 to i64
  %shl127.i.i.i.i13 = shl nuw nsw i64 %conv126.i.i.i.i12, 22
  %and128.i.i.i.i14 = and i64 %shl127.i.i.i.i13, 34355544064
  %or102.i.i.i.i15 = select i1 %36, i64 2027224596769, i64 927712968993
  %or156.i.i.i.i16 = or i64 %and128.i.i.i.i14, %or102.i.i.i.i15
  %37 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prog.i.i.i, align 4
  %arrayidx.i.i.i.i.i18 = getelementptr i64, ptr %38, i32 %34
  %39 = ptrtoint ptr %arrayidx.i.i.i.i.i18 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %or156.i.i.i.i16, ptr %arrayidx.i.i.i.i.i18, align 8
  %40 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  %inc.i.i.i.i.i19 = add i32 %41, 1
  store i32 %inc.i.i.i.i.i19, ptr %prog_len.i.i.i.i.i, align 4
  br label %wrp_test_reg_one.exit25

wrp_test_reg_one.exit25:                          ; preds = %if.end.i.i.i.i.i20, %do.end.i.i.i.i.i11
  %42 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prog.i.i.i, align 4
  %44 = ptrtoint ptr %prog_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prog_len.i.i.i.i.i, align 4
  %sub.i.i.i22 = add i32 %45, -1
  %arrayidx.i.i.i23 = getelementptr i64, ptr %43, i32 %sub.i.i.i22
  %46 = ptrtoint ptr %arrayidx.i.i.i23 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.i.i.i23, align 8
  %or.i.i.i24 = or i64 %47, 72057594037927936
  store i64 %or.i.i.i24, ptr %arrayidx.i.i.i23, align 8
  br label %if.end

if.end:                                           ; preds = %wrp_test_reg_one.exit25, %wrp_test_reg_one.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_ldx(ptr noundef %nfp_prog, ptr noundef readonly %meta, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %ldst_gather_len = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %ldst_gather_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ldst_gather_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i = icmp slt i16 %2, 0
  %3 = tail call i16 @llvm.abs.i16(i16 %2, i1 false) #9
  %off9.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %4 = ptrtoint ptr %off9.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %off9.i, align 2
  %conv10.i = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %5)
  %tobool.not.i.i = icmp ult i16 %5, 128
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %conv10.i, 268435456
  br label %re_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv10.i) #9
  br label %re_load_imm_any.exit.i

re_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp12.i = icmp eq i32 %7, 4
  %src_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %8 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %src_reg.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 1
  %9 = and i8 %bf.clear.i, 30
  %conv.i.i = zext i8 %9 to i32
  %or.i.i = or i32 %conv.i.i, 16777216
  %conv19.i = sext i16 %3 to i32
  %sub20.i = add nsw i32 %conv19.i, -1
  %or.i = or i32 %sub20.i, 3
  %add.i = add nsw i32 %or.i, 1
  %div.i = sdiv i32 %add.i, 4
  br i1 %cmp12.i, label %if.then.i, label %re_load_imm_any.exit.i.if.end.i_crit_edge

re_load_imm_any.exit.i.if.end.i_crit_edge:        ; preds = %re_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %re_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, 268435456
  br i1 %cmp.i.i, label %if.then.i11.i, label %if.end.i12.i

if.then.i11.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i24.i.i = or i32 %conv.i.i, 33554433
  br label %if.end.i

if.end.i12.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %or.i.i, i32 noundef 1, i32 noundef %retval.0.i.i) #9
  %or.i28.i.i = or i32 %conv.i.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i28.i.i, i32 noundef 17, i32 noundef 268435456) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i12.i, %if.then.i11.i, %re_load_imm_any.exit.i.if.end.i_crit_edge
  %src_base.1.i = phi i32 [ %or.i.i, %re_load_imm_any.exit.i.if.end.i_crit_edge ], [ %or.i.i, %if.then.i11.i ], [ 16777237, %if.end.i12.i ]
  %off.0.i = phi i32 [ %retval.0.i.i, %re_load_imm_any.exit.i.if.end.i_crit_edge ], [ %or.i24.i.i, %if.then.i11.i ], [ 33554453, %if.end.i12.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cmp30.i = icmp sgt i16 %3, 32
  %conv38.i = and i32 %div.i, 255
  %sub39.i = add nsw i32 %conv38.i, -1
  br i1 %cmp30.i, label %do.end54.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

do.end54.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nsw i32 %sub39.i, 8
  %and58.i = and i32 %shl.i, 7936
  %or59.i = or i32 %and58.i, 128
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or59.i) #9
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end54.i, %if.end.i.if.end60.i_crit_edge
  %conv64.i = select i1 %cmp12.i, i8 1, i8 4
  %conv67.i = trunc i32 %sub39.i to i8
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 5, i8 noundef zeroext %conv64.i, i8 noundef zeroext 0, i32 noundef %src_base.1.i, i32 noundef %off.0.i, i8 noundef zeroext %conv67.i, i32 noundef 0, i1 noundef zeroext %cmp30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38.i)
  %cmp7285.not.i = icmp eq i32 %conv38.i, 0
  br i1 %cmp7285.not.i, label %if.end60.i.for.end.i_crit_edge, label %if.end60.i.for.body.i_crit_edge

if.end60.i.for.body.i_crit_edge:                  ; preds = %if.end60.i
  br label %for.body.i

if.end60.i.for.end.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end60.i.for.body.i_crit_edge
  %i.086.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end60.i.for.body.i_crit_edge ]
  %or.i14.i = or i32 %i.086.i, 134217728
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i14.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i14.i) #9
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv38.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end60.i.for.end.i_crit_edge
  %paired_st.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 18
  %10 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %paired_st.i, align 8
  %off78.i = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %off78.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %off78.i, align 2
  %conv79.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %13)
  %tobool.not.i17.i = icmp ult i16 %13, 128
  br i1 %tobool.not.i17.i, label %if.then.i19.i, label %if.end.i20.i

if.then.i19.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i18.i = or i32 %conv79.i, 268435456
  br label %re_load_imm_any.exit22.i

if.end.i20.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv79.i) #9
  br label %re_load_imm_any.exit22.i

re_load_imm_any.exit22.i:                         ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %or.i.i18.i, %if.then.i19.i ], [ 33554453, %if.end.i20.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %3)
  %cmp83.i = icmp slt i16 %3, 9
  br i1 %cmp83.i, label %if.then85.i, label %if.else.i

if.then85.i:                                      ; preds = %re_load_imm_any.exit22.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %paired_st.i, align 8
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load87.i = load i8, ptr %dst_reg.i, align 1
  %17 = lshr i8 %bf.load87.i, 3
  %18 = and i8 %17, 30
  %conv.i23.i = zext i8 %18 to i32
  %or.i24.i = or i32 %conv.i23.i, 16777216
  %conv94.i = trunc i32 %sub20.i to i8
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i24.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext %conv94.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end315.i

if.else.i:                                        ; preds = %re_load_imm_any.exit22.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %3)
  %cmp96.i = icmp ult i16 %3, 33
  %and99.i = and i32 %conv19.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %cmp100.i = icmp eq i32 %and99.i, 0
  %or.cond2.i = select i1 %cmp96.i, i1 %cmp100.i, i1 false
  br i1 %or.cond2.i, label %if.then102.i, label %if.else114.i

if.then102.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %paired_st.i, align 8
  %dst_reg104.i = getelementptr inbounds %struct.bpf_insn, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dst_reg104.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load105.i = load i8, ptr %dst_reg104.i, align 1
  %22 = lshr i8 %bf.load105.i, 3
  %23 = and i8 %22, 30
  %conv.i25.i = zext i8 %23 to i32
  %or.i26.i = or i32 %conv.i25.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i26.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext %conv67.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end315.i

if.else114.i:                                     ; preds = %if.else.i
  br i1 %cmp96.i, label %do.end144.i, label %if.else162.i

do.end144.i:                                      ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl148.i = shl nsw i32 %sub20.i, 8
  %and149.i = and i32 %shl148.i, 7936
  %or150.i = or i32 %and149.i, 128
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or150.i) #9
  %24 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %paired_st.i, align 8
  %dst_reg152.i = getelementptr inbounds %struct.bpf_insn, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dst_reg152.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load153.i = load i8, ptr %dst_reg152.i, align 1
  %27 = lshr i8 %bf.load153.i, 3
  %28 = and i8 %27, 30
  %conv.i27.i = zext i8 %28 to i32
  %or.i28.i = or i32 %conv.i27.i, 16777216
  %conv161.i = trunc i32 %sub20.i to i8
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i28.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext %conv161.i, i32 noundef 0, i1 noundef zeroext true) #9
  br label %if.end315.i

if.else162.i:                                     ; preds = %if.else114.i
  br i1 %cmp100.i, label %do.end193.i, label %if.else211.i

do.end193.i:                                      ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl197.i = shl nsw i32 %sub39.i, 8
  %and198.i = and i32 %shl197.i, 7936
  %or199.i = or i32 %and198.i, 128
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or199.i) #9
  %29 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %paired_st.i, align 8
  %dst_reg201.i = getelementptr inbounds %struct.bpf_insn, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dst_reg201.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load202.i = load i8, ptr %dst_reg201.i, align 1
  %32 = lshr i8 %bf.load202.i, 3
  %33 = and i8 %32, 30
  %conv.i29.i = zext i8 %33 to i32
  %or.i30.i = or i32 %conv.i29.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i30.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext %conv67.i, i32 noundef 0, i1 noundef zeroext true) #9
  br label %if.end315.i

if.else211.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %3)
  %cmp213.i = icmp ult i16 %3, 41
  br i1 %cmp213.i, label %if.then215.i, label %do.end267.i

if.then215.i:                                     ; preds = %if.else211.i
  %34 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %paired_st.i, align 8
  %dst_reg217.i = getelementptr inbounds %struct.bpf_insn, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dst_reg217.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load218.i = load i8, ptr %dst_reg217.i, align 1
  %37 = lshr i8 %bf.load218.i, 3
  %38 = and i8 %37, 30
  %conv.i31.i = zext i8 %38 to i32
  %or.i32.i = or i32 %conv.i31.i, 16777216
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i32.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext 7, i32 noundef 0, i1 noundef zeroext false) #9
  %39 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %paired_st.i, align 8
  %off225.i = getelementptr inbounds %struct.bpf_insn, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %off225.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %off225.i, align 2
  %conv226.i = sext i16 %42 to i32
  %add227.i = add nsw i32 %conv226.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add227.i)
  %tobool.not.i33.i = icmp ult i32 %add227.i, 128
  br i1 %tobool.not.i33.i, label %if.then.i35.i, label %if.end.i36.i

if.then.i35.i:                                    ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i34.i = or i32 %add227.i, 268435456
  br label %re_load_imm_any.exit38.i

if.end.i36.i:                                     ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %add227.i) #9
  br label %re_load_imm_any.exit38.i

re_load_imm_any.exit38.i:                         ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %or.i.i34.i, %if.then.i35.i ], [ 33554453, %if.end.i36.i ]
  %43 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %paired_st.i, align 8
  %dst_reg231.i = getelementptr inbounds %struct.bpf_insn, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dst_reg231.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load232.i = load i8, ptr %dst_reg231.i, align 1
  %46 = lshr i8 %bf.load232.i, 3
  %47 = and i8 %46, 30
  %conv.i39.i = zext i8 %47 to i32
  %or.i40.i = or i32 %conv.i39.i, 16777216
  %48 = trunc i16 %3 to i8
  %conv240.i = add nsw i8 %48, -33
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 8, i32 noundef %or.i40.i, i32 noundef %retval.0.i37.i, i8 noundef zeroext %conv240.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end315.i

do.end267.i:                                      ; preds = %if.else211.i
  %sub251.i = add nsw i32 %conv38.i, -2
  %shl271.i = shl nsw i32 %sub251.i, 8
  %and272.i = and i32 %shl271.i, 7936
  %or273.i = or i32 %and272.i, 128
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or273.i) #9
  %49 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %paired_st.i, align 8
  %dst_reg275.i = getelementptr inbounds %struct.bpf_insn, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %dst_reg275.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load276.i = load i8, ptr %dst_reg275.i, align 1
  %52 = lshr i8 %bf.load276.i, 3
  %53 = and i8 %52, 30
  %conv.i41.i = zext i8 %53 to i32
  %or.i42.i = or i32 %conv.i41.i, 16777216
  %conv284.i = trunc i32 %sub251.i to i8
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i42.i, i32 noundef %retval.0.i21.i, i8 noundef zeroext %conv284.i, i32 noundef 0, i1 noundef zeroext true) #9
  %54 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %paired_st.i, align 8
  %off286.i = getelementptr inbounds %struct.bpf_insn, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %off286.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %off286.i, align 2
  %conv2871.i = zext i16 %57 to i32
  %mul290.i = shl nsw i32 %sub39.i, 2
  %add291.i = add nsw i32 %mul290.i, %conv2871.i
  %conv293.i = and i32 %add291.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv293.i)
  %tobool.not.i43.i = icmp ult i32 %conv293.i, 128
  br i1 %tobool.not.i43.i, label %if.then.i45.i, label %if.end.i46.i

if.then.i45.i:                                    ; preds = %do.end267.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i44.i = or i32 %conv293.i, 268435456
  br label %re_load_imm_any.exit48.i

if.end.i46.i:                                     ; preds = %do.end267.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv293.i) #9
  br label %re_load_imm_any.exit48.i

re_load_imm_any.exit48.i:                         ; preds = %if.end.i46.i, %if.then.i45.i
  %retval.0.i47.i = phi i32 [ %or.i.i44.i, %if.then.i45.i ], [ 33554453, %if.end.i46.i ]
  %58 = ptrtoint ptr %paired_st.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %paired_st.i, align 8
  %dst_reg300.i = getelementptr inbounds %struct.bpf_insn, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %dst_reg300.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load301.i = load i8, ptr %dst_reg300.i, align 1
  %61 = lshr i8 %bf.load301.i, 3
  %62 = and i8 %61, 30
  %conv.i49.i = zext i8 %62 to i32
  %or.i50.i = or i32 %conv.i49.i, 16777216
  %63 = trunc i32 %and99.i to i8
  %conv310.i = add nsw i8 %63, -1
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext %conv67.i, i32 noundef %or.i50.i, i32 noundef %retval.0.i47.i, i8 noundef zeroext %conv310.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end315.i

if.end315.i:                                      ; preds = %re_load_imm_any.exit48.i, %re_load_imm_any.exit38.i, %do.end193.i, %do.end144.i, %if.then102.i, %if.then85.i
  br i1 %cmp.i, label %if.end315.i.if.end333.i_crit_edge, label %if.else318.i

if.end315.i.if.end333.i_crit_edge:                ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333.i

if.else318.i:                                     ; preds = %if.end315.i
  %64 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %meta, align 8
  %66 = and i8 %65, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %66)
  %cmp322.not.i = icmp eq i8 %66, 24
  br i1 %cmp322.not.i, label %if.else328.i, label %if.else318.i.if.end333.i_crit_edge

if.else318.i.if.end333.i_crit_edge:               ; preds = %if.else318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333.i

if.else328.i:                                     ; preds = %if.else318.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = trunc i32 %div.i to i8
  %conv331.i = add i8 %67, -2
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.else328.i, %if.else318.i.if.end333.i_crit_edge, %if.end315.i.if.end333.i_crit_edge
  %xfer_num.0.i = phi i8 [ %conv331.i, %if.else328.i ], [ 0, %if.end315.i.if.end333.i_crit_edge ], [ %conv67.i, %if.else318.i.if.end333.i_crit_edge ]
  %68 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %meta, align 8
  %70 = lshr i8 %69, 3
  %71 = and i8 %70, 3
  %72 = zext i8 %71 to i32
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %72, label %if.end333.unreachabledefault.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb360.i
    i32 0, label %sw.bb374.i
    i32 3, label %sw.bb384.i
  ]

sw.bb.i:                                          ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load340.i = load i8, ptr %src_reg.i, align 1
  %75 = lshr i8 %bf.load340.i, 3
  %76 = and i8 %75, 30
  %conv.i51.i = zext i8 %76 to i32
  %or.i52.i = or i32 %conv.i51.i, 50331648
  %conv.i53.i = zext i8 %xfer_num.0.i to i32
  %or.i54.i = or i32 %conv.i53.i, 134217728
  %and349.i = and i32 %conv19.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349.i)
  %cmp350.i = icmp eq i32 %and349.i, 0
  %77 = trunc i32 %and349.i to i8
  %phi.cast.i = add nsw i8 %77, -1
  %cond358.i = select i1 %cmp350.i, i8 3, i8 %phi.cast.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond358.i)
  %tobool.not.i55.i = icmp ne i8 %cond358.i, 0
  %cond.i.i = zext i1 %tobool.not.i55.i to i32
  %mul.i.i = shl nsw i8 %cond358.i, 3
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i52.i, i8 noundef zeroext 1, i32 noundef %or.i54.i, i32 noundef %cond.i.i, i8 noundef zeroext %mul.i.i, i1 noundef zeroext true) #9
  br label %sw.epilog.i

sw.bb360.i:                                       ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load363.i = load i8, ptr %src_reg.i, align 1
  %79 = lshr i8 %bf.load363.i, 3
  %80 = and i8 %79, 30
  %conv.i56.i = zext i8 %80 to i32
  %or.i57.i = or i32 %conv.i56.i, 50331648
  %conv.i58.i = zext i8 %xfer_num.0.i to i32
  %or.i59.i = or i32 %conv.i58.i, 134217728
  %81 = trunc i16 %3 to i8
  %82 = and i8 %81, 3
  %conv373.i = xor i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv373.i)
  %tobool.not.i60.i = icmp ne i8 %conv373.i, 0
  %cond.i61.i = zext i1 %tobool.not.i60.i to i32
  %mul.i62.i = shl nuw nsw i8 %conv373.i, 3
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i57.i, i8 noundef zeroext 3, i32 noundef %or.i59.i, i32 noundef %cond.i61.i, i8 noundef zeroext %mul.i62.i, i1 noundef zeroext true) #9
  br label %sw.epilog.i

sw.bb374.i:                                       ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load377.i = load i8, ptr %src_reg.i, align 1
  %84 = lshr i8 %bf.load377.i, 3
  %85 = and i8 %84, 30
  %conv.i63.i = zext i8 %85 to i32
  %or.i64.i = or i32 %conv.i63.i, 50331648
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i64.i, i32 noundef 536870912, i32 noundef 0, i32 noundef 134217728) #9
  br label %sw.epilog.i

sw.bb384.i:                                       ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load387.i = load i8, ptr %src_reg.i, align 1
  %87 = lshr i8 %bf.load387.i, 3
  %88 = and i8 %87, 30
  %conv.i65.i = zext i8 %88 to i32
  %or.i66.i = or i32 %conv.i65.i, 50331648
  %conv393.i = zext i8 %xfer_num.0.i to i32
  %or.i68.i = or i32 %conv393.i, 134217728
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i66.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i68.i) #9
  %89 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load397.i = load i8, ptr %src_reg.i, align 1
  %90 = lshr i8 %bf.load397.i, 3
  %conv.i69.i = zext i8 %90 to i32
  %or.i70.i = or i32 %conv.i69.i, 50331649
  %or.i72.i = add nuw nsw i32 %conv393.i, 134217729
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i70.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i72.i) #9
  br label %sw.epilog.i

if.end333.unreachabledefault.i:                   ; preds = %if.end333.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb384.i, %sw.bb374.i, %sw.bb360.i, %sw.bb.i
  %91 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %meta, align 8
  %93 = and i8 %92, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %93)
  %cmp412.not.i = icmp eq i8 %93, 24
  br i1 %cmp412.not.i, label %sw.epilog.i.return_crit_edge, label %if.then414.i

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then414.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load417.i = load i8, ptr %src_reg.i, align 1
  %95 = lshr i8 %bf.load417.i, 3
  %conv.i73.i = zext i8 %95 to i32
  %or.i74.i = or i32 %conv.i73.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i74.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.end:                                           ; preds = %entry
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %0, align 8
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %97, label %if.end.return_crit_edge [
    i32 2, label %if.then1
    i32 8, label %if.then13
    i32 6, label %if.then28
    i32 4, label %if.then39
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then1:                                         ; preds = %if.end
  %type2 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 6
  %99 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %100)
  %cmp3 = icmp eq i32 %100, 6
  %conv = trunc i32 %size to i8
  %dst_reg.i72 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %101 = ptrtoint ptr %dst_reg.i72 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i73 = load i8, ptr %dst_reg.i72, align 1
  %102 = lshr i8 %bf.load.i73, 3
  %103 = and i8 %102, 30
  %conv.i.i74 = zext i8 %103 to i32
  %or.i.i75 = or i32 %conv.i.i74, 50331648
  %off.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %104 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %off.i, align 2
  %conv3.i = sext i16 %105 to i32
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  %106 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %conv3.i, label %if.then4.return_crit_edge [
    i32 0, label %sw.bb.i76
    i32 4, label %sw.bb7.i
  ]

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i76:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp.not.i = icmp eq i8 %conv, 4
  br i1 %cmp.not.i, label %if.end.i77, label %sw.bb.i76.return_crit_edge

sw.bb.i76.return_crit_edge:                       ; preds = %sw.bb.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i77:                                       ; preds = %sw.bb.i76
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i75, i32 noundef 536870912, i32 noundef 0, i32 noundef 1077936130) #9
  br label %sw.epilog.i80

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp9.not.i = icmp eq i8 %conv, 4
  br i1 %cmp9.not.i, label %if.end12.i, label %sw.bb7.i.return_crit_edge

sw.bb7.i.return_crit_edge:                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end12.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i75, i32 noundef 33554454, i32 noundef 1, i32 noundef 1077936130) #9
  br label %sw.epilog.i80

sw.epilog.i80:                                    ; preds = %if.end12.i, %if.end.i77
  %107 = ptrtoint ptr %dst_reg.i72 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load17.i = load i8, ptr %dst_reg.i72, align 1
  %108 = lshr i8 %bf.load17.i, 3
  %conv.i29.i78 = zext i8 %108 to i32
  %or.i30.i79 = or i32 %conv.i29.i78, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i30.i79, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.else:                                          ; preds = %if.then1
  %109 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %conv3.i, label %if.else.return_crit_edge [
    i32 0, label %sw.bb.i88
    i32 76, label %sw.bb7.i91
    i32 80, label %sw.bb14.i
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp.not.i87 = icmp eq i8 %conv, 4
  br i1 %cmp.not.i87, label %if.end.i89, label %sw.bb.i88.return_crit_edge

sw.bb.i88.return_crit_edge:                       ; preds = %sw.bb.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i89:                                       ; preds = %sw.bb.i88
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i75, i32 noundef 536870912, i32 noundef 0, i32 noundef 33554454) #9
  br label %sw.epilog.i95

sw.bb7.i91:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp9.not.i90 = icmp eq i8 %conv, 4
  br i1 %cmp9.not.i90, label %if.end12.i92, label %sw.bb7.i91.return_crit_edge

sw.bb7.i91.return_crit_edge:                      ; preds = %sw.bb7.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end12.i92:                                     ; preds = %sw.bb7.i91
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i75, i32 noundef 536870912, i32 noundef 0, i32 noundef 1077936130) #9
  br label %sw.epilog.i95

sw.bb14.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp16.not.i = icmp eq i8 %conv, 4
  br i1 %cmp16.not.i, label %if.end19.i, label %sw.bb14.i.return_crit_edge

sw.bb14.i.return_crit_edge:                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end19.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i75, i32 noundef 33554454, i32 noundef 1, i32 noundef 1077936130) #9
  br label %sw.epilog.i95

sw.epilog.i95:                                    ; preds = %if.end19.i, %if.end12.i92, %if.end.i89
  %110 = ptrtoint ptr %dst_reg.i72 to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load24.i = load i8, ptr %dst_reg.i72, align 1
  %111 = lshr i8 %bf.load24.i, 3
  %conv.i39.i93 = zext i8 %111 to i32
  %or.i40.i94 = or i32 %conv.i39.i93, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i40.i94, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.then13:                                        ; preds = %if.end
  %pkt_cache = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 2
  %range_end = getelementptr inbounds %struct.anon.160, ptr %pkt_cache, i32 0, i32 1
  %112 = ptrtoint ptr %range_end to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %range_end, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool14.not = icmp eq i16 %113, 0
  br i1 %tobool14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %if.then13
  %do_init = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 2, i32 0, i32 1
  %114 = ptrtoint ptr %do_init to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %do_init, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool17.not = icmp eq i8 %115, 0
  br i1 %tobool17.not, label %if.then15.if.end19_crit_edge, label %if.then18

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.then15
  %116 = ptrtoint ptr %pkt_cache to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %pkt_cache, align 8
  %conv.i = sext i16 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %117)
  %tobool.not.i.i97 = icmp ult i16 %117, 128
  br i1 %tobool.not.i.i97, label %if.then.i.i99, label %if.end.i.i100

if.then.i.i99:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i98 = or i32 %conv.i, 268435456
  br label %re_load_imm_any.exit.i108

if.end.i.i100:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv.i) #9
  br label %re_load_imm_any.exit.i108

re_load_imm_any.exit.i108:                        ; preds = %if.end.i.i100, %if.then.i.i99
  %retval.0.i.i101 = phi i32 [ %or.i.i.i98, %if.then.i.i99 ], [ 33554453, %if.end.i.i100 ]
  %src_reg.i102 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %118 = ptrtoint ptr %src_reg.i102 to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load.i103 = load i8, ptr %src_reg.i102, align 1
  %sub.i = sub i16 %113, %117
  %119 = and i16 %sub.i, 255
  %conv11.i = zext i16 %119 to i32
  %sub12.i = add nsw i32 %conv11.i, -1
  %or.i104 = or i32 %sub12.i, 3
  %add.i105 = add nsw i32 %or.i104, 1
  %div.i106 = sdiv i32 %add.i105, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %119)
  %cmp.i107 = icmp ugt i16 %119, 32
  br i1 %cmp.i107, label %do.end34.i, label %re_load_imm_any.exit.i108.mem_ldx_data_init_pktcache.exit_crit_edge

re_load_imm_any.exit.i108.mem_ldx_data_init_pktcache.exit_crit_edge: ; preds = %re_load_imm_any.exit.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_ldx_data_init_pktcache.exit

do.end34.i:                                       ; preds = %re_load_imm_any.exit.i108
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i = shl nsw i32 %div.i106, 8
  %shl.i112 = add nsw i32 %conv21.i, 7936
  %and37.i = and i32 %shl.i112, 7936
  %or38.i = or i32 %and37.i, 128
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or38.i) #9
  br label %mem_ldx_data_init_pktcache.exit

mem_ldx_data_init_pktcache.exit:                  ; preds = %do.end34.i, %re_load_imm_any.exit.i108.mem_ldx_data_init_pktcache.exit_crit_edge
  %bf.clear.i113 = shl i8 %bf.load.i103, 1
  %120 = and i8 %bf.clear.i113, 30
  %conv.i.i114 = zext i8 %120 to i32
  %or.i.i115 = or i32 %conv.i.i114, 16777216
  %121 = trunc i32 %div.i106 to i8
  %conv42.i = add i8 %121, -1
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 5, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i.i115, i32 noundef %retval.0.i.i101, i8 noundef zeroext %conv42.i, i32 noundef 0, i1 noundef zeroext %cmp.i107) #9
  br label %if.end19

if.end19:                                         ; preds = %mem_ldx_data_init_pktcache.exit, %if.then15.if.end19_crit_edge
  %off1.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %122 = ptrtoint ptr %off1.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %off1.i, align 2
  %conv.i116 = zext i16 %123 to i32
  %124 = ptrtoint ptr %pkt_cache to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pkt_cache, align 8
  %conv2.i = zext i16 %125 to i32
  %sub.i118 = sub nsw i32 %conv.i116, %conv2.i
  %and.i = and i32 %sub.i118, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i119 = icmp eq i32 %and.i, 0
  br i1 %cmp.i119, label %if.then.i123, label %if.end.i126

if.then.i123:                                     ; preds = %if.end19
  %conv.i.i120 = sext i16 %123 to i32
  %conv1.i.i = sext i16 %125 to i32
  %sub.i.i = sub nsw i32 %conv.i.i120, %conv1.i.i
  %div.i.i = sdiv i32 %sub.i.i, 4
  %dst_reg.i.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %126 = ptrtoint ptr %dst_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load.i.i = load i8, ptr %dst_reg.i.i, align 1
  %127 = lshr i8 %bf.load.i.i, 3
  %128 = and i8 %127, 30
  %conv.i.i.i = zext i8 %127 to i32
  %or.i.i.i121 = or i32 %conv.i.i.i, 50331649
  %conv.i1.i.i = zext i8 %128 to i32
  %or.i2.i.i = or i32 %conv.i1.i.i, 50331648
  %129 = trunc i32 %div.i.i to i16
  %conv10.i.i = and i16 %129, 255
  %conv.i3.i.i = zext i16 %conv10.i.i to i32
  %or.i4.i.i = or i32 %conv.i3.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp.i.i122 = icmp ult i32 %size, 4
  br i1 %cmp.i.i122, label %if.then.i.i124, label %if.else.i.i

if.then.i.i124:                                   ; preds = %if.then.i123
  %notmask.i.i.i = shl nsw i32 -1, %size
  %130 = trunc i32 %notmask.i.i.i to i8
  %conv2.i.i.i = xor i8 %130, -1
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i2.i.i, i8 noundef zeroext %conv2.i.i.i, i32 noundef %or.i4.i.i, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext true) #9
  %flags.i.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %131 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %flags.i.i.i, align 2
  %133 = and i16 %132, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i.i.i = icmp eq i16 %133, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i124.return_crit_edge, label %if.then.i.i.i

if.then.i.i124.return_crit_edge:                  ; preds = %if.then.i.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i.i.i:                                    ; preds = %if.then.i.i124
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i121, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.else.i.i:                                      ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp14.i.i = icmp eq i32 %size, 4
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else17.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i2.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i4.i.i) #9
  %flags.i6.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %134 = ptrtoint ptr %flags.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %flags.i6.i.i, align 2
  %136 = and i16 %135, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool.not.i7.i.i = icmp eq i16 %136, 0
  br i1 %tobool.not.i7.i.i, label %if.then16.i.i.return_crit_edge, label %if.then.i10.i.i

if.then16.i.i.return_crit_edge:                   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i10.i.i:                                  ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i.i121, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.else17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i.i = add nuw nsw i16 %conv10.i.i, 1
  %conv.i12.i.i = zext i16 %conv20.i.i to i32
  %or.i13.i.i = or i32 %conv.i12.i.i, 134217728
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i2.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i4.i.i) #9
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i.i121, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i13.i.i) #9
  br label %return

if.end.i126:                                      ; preds = %if.end19
  %sub.i3.i = sub i16 %123, %125
  %dst_reg.i4.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %137 = ptrtoint ptr %dst_reg.i4.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load.i5.i = load i8, ptr %dst_reg.i4.i, align 1
  %138 = lshr i8 %bf.load.i5.i, 3
  %139 = and i8 %138, 30
  %sub.i3.i.frozen = freeze i16 %sub.i3.i
  %div48.i.i = sdiv i16 %sub.i3.i.frozen, 4
  %140 = mul i16 %div48.i.i, 4
  %rem49.i.i.decomposed = sub i16 %sub.i3.i.frozen, %140
  %conv12.i.i = trunc i16 %rem49.i.i.decomposed to i8
  %conv.i.i6.i = zext i8 %138 to i32
  %or.i.i7.i = or i32 %conv.i.i6.i, 50331649
  %conv.i1.i8.i = zext i8 %139 to i32
  %or.i2.i9.i = or i32 %conv.i1.i8.i, 50331648
  %conv17.i.i = and i16 %div48.i.i, 255
  %conv.i3.i10.i = zext i16 %conv17.i.i to i32
  %or.i4.i11.i = or i32 %conv.i3.i10.i, 134217728
  %141 = and i16 %rem49.i.i.decomposed, 255
  %conv19.i.i = zext i16 %141 to i32
  %sub20.i.i = sub nsw i32 4, %conv19.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20.i.i, i32 %size)
  %cmp.i12.i = icmp uge i32 %sub20.i.i, %size
  %sub26.i.i = sub i32 %size, %sub20.i.i
  %conv27.i.i = trunc i32 %sub26.i.i to i8
  %sub29.i.i = sub nsw i32 8, %conv19.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.i.i, i32 %size)
  %cmp30.i.i = icmp ult i32 %sub29.i.i, %size
  %spec.store.select.i.i = select i1 %cmp30.i.i, i8 4, i8 %conv27.i.i
  %142 = tail call i32 @llvm.umin.i32(i32 %sub20.i.i, i32 %size) #9
  %len_lo.0.i.i = trunc i32 %142 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12.i.i)
  %tobool.not.i.i13.i = icmp ne i8 %conv12.i.i, 0
  %cond.i.i.i = zext i1 %tobool.not.i.i13.i to i32
  %conv1.i.i.i = and i32 %142, 255
  %notmask.i.i14.i = shl nsw i32 -1, %conv1.i.i.i
  %143 = trunc i32 %notmask.i.i14.i to i8
  %conv2.i.i15.i = xor i8 %143, -1
  %mul.i.i.i = shl nsw i8 %conv12.i.i, 3
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i2.i9.i, i8 noundef zeroext %conv2.i.i15.i, i32 noundef %or.i4.i11.i, i32 noundef %cond.i.i.i, i8 noundef zeroext %mul.i.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select.i.i)
  %tobool.not51.i.i = icmp eq i8 %spec.store.select.i.i, 0
  %tobool.not.i.i125 = select i1 %cmp.i12.i, i1 true, i1 %tobool.not51.i.i
  br i1 %tobool.not.i.i125, label %if.then34.i.i, label %if.end35.i.i

if.then34.i.i:                                    ; preds = %if.end.i126
  %flags.i.i16.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %144 = ptrtoint ptr %flags.i.i16.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %flags.i.i16.i, align 2
  %146 = and i16 %145, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool.not.i5.i.i = icmp eq i16 %146, 0
  br i1 %tobool.not.i5.i.i, label %if.then34.i.i.return_crit_edge, label %if.then.i.i17.i

if.then34.i.i.return_crit_edge:                   ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i.i17.i:                                  ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i7.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.end35.i.i:                                     ; preds = %if.end.i126
  %conv38.i.i = add nuw nsw i16 %conv17.i.i, 1
  %conv.i7.i.i = zext i16 %conv38.i.i to i32
  %or.i8.i.i = or i32 %conv.i7.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp40.i.i = icmp ult i32 %size, 5
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.else.i18.i

if.then42.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len_lo.0.i.i)
  %tobool.not.i10.i.i = icmp eq i8 %len_lo.0.i.i, 0
  %cond.i11.i.i = select i1 %tobool.not.i10.i.i, i32 0, i32 2
  %conv1.i12.i.i = zext i8 %spec.store.select.i.i to i32
  %notmask.i13.i.i = shl nsw i32 -1, %conv1.i12.i.i
  %sub.i.i.i = xor i32 %notmask.i13.i.i, -1
  %shl3.i.i.i = shl i32 %sub.i.i.i, %conv1.i.i.i
  %conv4.i.i.i = trunc i32 %shl3.i.i.i to i8
  %mul.neg.i.i.i = mul i8 %len_lo.0.i.i, -8
  %sub6.i.i.i = add i8 %mul.neg.i.i.i, 32
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i2.i9.i, i8 noundef zeroext %conv4.i.i.i, i32 noundef %or.i8.i.i, i32 noundef %cond.i11.i.i, i8 noundef zeroext %sub6.i.i.i, i1 noundef zeroext false) #9
  %flags.i14.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %147 = ptrtoint ptr %flags.i14.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %flags.i14.i.i, align 2
  %149 = and i16 %148, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool.not.i15.i.i = icmp eq i16 %149, 0
  br i1 %tobool.not.i15.i.i, label %if.then42.i.i.return_crit_edge, label %if.then.i18.i.i

if.then42.i.i.return_crit_edge:                   ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i18.i.i:                                  ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i7.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.else.i18.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv45.i.i = add nuw nsw i16 %conv17.i.i, 2
  %conv.i20.i.i = zext i16 %conv45.i.i to i32
  %or.i21.i.i = or i32 %conv.i20.i.i, 134217728
  %sub48.i.i = sub i8 4, %len_lo.0.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len_lo.0.i.i)
  %tobool.not.i23.i.i = icmp eq i8 %len_lo.0.i.i, 0
  %cond.i24.i.i = select i1 %tobool.not.i23.i.i, i32 0, i32 2
  %conv1.i25.i.i = zext i8 %sub48.i.i to i32
  %notmask.i26.i.i = shl nsw i32 -1, %conv1.i25.i.i
  %sub.i27.i.i = xor i32 %notmask.i26.i.i, -1
  %shl3.i28.i.i = shl i32 %sub.i27.i.i, %conv1.i.i.i
  %conv4.i29.i.i = trunc i32 %shl3.i28.i.i to i8
  %mul.neg.i30.i.i = mul i8 %len_lo.0.i.i, -8
  %sub6.i31.i.i = add i8 %mul.neg.i30.i.i, 32
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i2.i9.i, i8 noundef zeroext %conv4.i29.i.i, i32 noundef %or.i8.i.i, i32 noundef %cond.i24.i.i, i8 noundef zeroext %sub6.i31.i.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %len_lo.0.i.i)
  %tobool.not.i32.i.i = icmp ne i8 %len_lo.0.i.i, 4
  %cond.i33.i.i = zext i1 %tobool.not.i32.i.i to i32
  %mul.i37.i.i = shl i8 %sub48.i.i, 3
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i7.i, i8 noundef zeroext %conv2.i.i15.i, i32 noundef %or.i8.i.i, i32 noundef %cond.i33.i.i, i8 noundef zeroext %mul.i37.i.i, i1 noundef zeroext true) #9
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i.i7.i, i8 noundef zeroext %conv4.i29.i.i, i32 noundef %or.i21.i.i, i32 noundef %cond.i24.i.i, i8 noundef zeroext %sub6.i31.i.i, i1 noundef zeroext false) #9
  br label %return

if.else21:                                        ; preds = %if.then13
  %off.i127 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %150 = ptrtoint ptr %off.i127 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %off.i127, align 2
  %conv.i128 = sext i16 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %151)
  %tobool.not.i.i129 = icmp ult i16 %151, 128
  br i1 %tobool.not.i.i129, label %if.then.i.i131, label %if.end.i.i132

if.then.i.i131:                                   ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i130 = or i32 %conv.i128, 268435456
  br label %mem_ldx_data.exit

if.end.i.i132:                                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv.i128) #9
  br label %mem_ldx_data.exit

mem_ldx_data.exit:                                ; preds = %if.end.i.i132, %if.then.i.i131
  %retval.0.i.i133 = phi i32 [ %or.i.i.i130, %if.then.i.i131 ], [ 33554453, %if.end.i.i132 ]
  %src_reg.i134 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %152 = ptrtoint ptr %src_reg.i134 to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i135 = load i8, ptr %src_reg.i134, align 1
  %bf.clear.i136 = shl i8 %bf.load.i135, 1
  %153 = and i8 %bf.clear.i136, 30
  %154 = lshr i8 %bf.load.i135, 3
  %155 = and i8 %154, 30
  %conv.i.i.i137 = zext i8 %153 to i32
  %or.i.i1.i = or i32 %conv.i.i.i137, 16777216
  %conv1.i.i138 = and i32 %size, 255
  tail call fastcc void @data_ld_host_order(ptr noundef %nfp_prog, ptr noundef %meta, i8 noundef zeroext %155, i32 noundef %or.i.i1.i, i32 noundef %retval.0.i.i133, i32 noundef %conv1.i.i138, i32 noundef 4) #9
  br label %return

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_reg_state, ptr %0, i32 0, i32 1
  %156 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %off, align 4
  %var_off = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 3
  %158 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %var_off, align 8
  %160 = trunc i64 %159 to i32
  %conv32 = add i32 %157, %160
  %dst_reg.i140 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %161 = ptrtoint ptr %dst_reg.i140 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load.i141 = load i8, ptr %dst_reg.i140, align 1
  %162 = lshr i8 %bf.load.i141, 3
  %163 = and i8 %162, 30
  %bf.clear.i142 = shl i8 %bf.load.i141, 1
  %164 = and i8 %bf.clear.i142, 30
  %call.i = tail call fastcc i32 @mem_op_stack(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef %size, i32 noundef %conv32, i8 noundef zeroext %163, i8 noundef zeroext %164, i1 noundef zeroext true, ptr noundef nonnull @wrp_lmem_load) #9
  br label %return

if.then39:                                        ; preds = %if.end
  %off.i143 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %165 = ptrtoint ptr %off.i143 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %off.i143, align 2
  %conv.i144 = sext i16 %166 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %166)
  %tobool.not.i.i145 = icmp ult i16 %166, 128
  br i1 %tobool.not.i.i145, label %re_load_imm_any.exit.i151, label %re_load_imm_any.exit.thread.i

re_load_imm_any.exit.thread.i:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv.i144) #9
  %src_reg2.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %167 = ptrtoint ptr %src_reg2.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load3.i = load i8, ptr %src_reg2.i, align 1
  %bf.clear4.i = shl i8 %bf.load3.i, 1
  %168 = and i8 %bf.clear4.i, 30
  %169 = lshr i8 %bf.load3.i, 3
  %170 = and i8 %169, 30
  %conv.i.i7.i = zext i8 %168 to i32
  %or.i.i.i8.i = or i32 %conv.i.i7.i, 16777216
  br label %if.end.i.i.i

re_load_imm_any.exit.i151:                        ; preds = %if.then39
  %or.i.i.i146 = or i32 %conv.i144, 268435456
  %src_reg.i147 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %171 = ptrtoint ptr %src_reg.i147 to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load.i148 = load i8, ptr %src_reg.i147, align 1
  %bf.clear.i149 = shl i8 %bf.load.i148, 1
  %172 = and i8 %bf.clear.i149, 30
  %173 = lshr i8 %bf.load.i148, 3
  %174 = and i8 %173, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %or.i.i.i146)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i146, 268435456
  %conv.i.i.i150 = zext i8 %172 to i32
  %or.i.i.i.i = or i32 %conv.i.i.i150, 16777216
  br i1 %cmp.i.i.i, label %if.then.i.i.i152, label %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge

re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge: ; preds = %re_load_imm_any.exit.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i152:                                 ; preds = %re_load_imm_any.exit.i151
  call void @__sanitizer_cov_trace_pc() #11
  %or.i24.i.i.i = or i32 %conv.i.i.i150, 33554433
  br label %mem_ldx_emem.exit

if.end.i.i.i:                                     ; preds = %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge, %re_load_imm_any.exit.thread.i
  %or.i.i.i13.i = phi i32 [ %or.i.i.i8.i, %re_load_imm_any.exit.thread.i ], [ %or.i.i.i.i, %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge ]
  %conv.i.i12.i = phi i32 [ %conv.i.i7.i, %re_load_imm_any.exit.thread.i ], [ %conv.i.i.i150, %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge ]
  %175 = phi i8 [ %170, %re_load_imm_any.exit.thread.i ], [ %174, %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge ]
  %retval.0.i9.i = phi i32 [ 33554453, %re_load_imm_any.exit.thread.i ], [ %or.i.i.i146, %re_load_imm_any.exit.i151.if.end.i.i.i_crit_edge ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %or.i.i.i13.i, i32 noundef 1, i32 noundef %retval.0.i9.i) #9
  %or.i28.i.i.i = add nuw nsw i32 %conv.i.i12.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i28.i.i.i, i32 noundef 17, i32 noundef 268435456) #9
  br label %mem_ldx_emem.exit

mem_ldx_emem.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i152
  %176 = phi i8 [ %174, %if.then.i.i.i152 ], [ %175, %if.end.i.i.i ]
  %rega.0.i.i = phi i32 [ %or.i.i.i.i, %if.then.i.i.i152 ], [ 16777237, %if.end.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %or.i24.i.i.i, %if.then.i.i.i152 ], [ 33554453, %if.end.i.i.i ]
  %conv.i.i153 = and i32 %size, 255
  tail call fastcc void @data_ld_host_order(ptr noundef %nfp_prog, ptr noundef %meta, i8 noundef zeroext %176, i32 noundef %rega.0.i.i, i32 noundef %storemerge.i.i.i, i32 noundef %conv.i.i153, i32 noundef 1) #9
  br label %return

return:                                           ; preds = %mem_ldx_emem.exit, %if.then28, %mem_ldx_data.exit, %if.else.i18.i, %if.then.i18.i.i, %if.then42.i.i.return_crit_edge, %if.then.i.i17.i, %if.then34.i.i.return_crit_edge, %if.else17.i.i, %if.then.i10.i.i, %if.then16.i.i.return_crit_edge, %if.then.i.i.i, %if.then.i.i124.return_crit_edge, %sw.epilog.i95, %sw.bb14.i.return_crit_edge, %sw.bb7.i91.return_crit_edge, %sw.bb.i88.return_crit_edge, %if.else.return_crit_edge, %sw.epilog.i80, %sw.bb7.i.return_crit_edge, %sw.bb.i76.return_crit_edge, %if.then4.return_crit_edge, %if.end.return_crit_edge, %if.then414.i, %sw.epilog.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %mem_ldx_data.exit ], [ %call.i, %if.then28 ], [ 0, %mem_ldx_emem.exit ], [ -95, %if.end.return_crit_edge ], [ 0, %sw.epilog.i.return_crit_edge ], [ 0, %if.then414.i ], [ 0, %sw.epilog.i80 ], [ -95, %sw.bb.i76.return_crit_edge ], [ -95, %sw.bb7.i.return_crit_edge ], [ -95, %if.then4.return_crit_edge ], [ 0, %sw.epilog.i95 ], [ -95, %sw.bb.i88.return_crit_edge ], [ -95, %sw.bb7.i91.return_crit_edge ], [ -95, %sw.bb14.i.return_crit_edge ], [ -95, %if.else.return_crit_edge ], [ 0, %if.then.i.i124.return_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %if.then16.i.i.return_crit_edge ], [ 0, %if.then.i10.i.i ], [ 0, %if.else17.i.i ], [ 0, %if.then34.i.i.return_crit_edge ], [ 0, %if.then.i.i17.i ], [ 0, %if.then42.i.i.return_crit_edge ], [ 0, %if.then.i18.i.i ], [ 0, %if.else.i18.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @data_ld_host_order(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i8 noundef zeroext %dst_gpr, i32 noundef %lreg, i32 noundef %rreg, i32 noundef %size, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp sgt i32 %size, 4
  %0 = trunc i32 %size to i8
  %1 = lshr i8 %0, 2
  %phi.cast = add nsw i8 %1, -1
  %cond = select i1 %cmp, i8 %phi.cast, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp1 = icmp sgt i32 %size, 3
  %sub4 = sub i32 32, %size
  %shr = lshr i32 -1, %sub4
  %phi.cast1 = trunc i32 %shr to i8
  %conv9 = trunc i32 %mode to i8
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 5, i8 noundef zeroext %conv9, i8 noundef zeroext 0, i32 noundef %lreg, i32 noundef %rreg, i8 noundef zeroext %cond, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.cast1)
  %tobool.not10 = icmp eq i8 %phi.cast1, 0
  %tobool.not = select i1 %cmp1, i1 true, i1 %tobool.not10
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.thread

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1511.not = icmp eq i32 %size, 0
  br i1 %cmp1511.not, label %for.cond.preheader.if.then25_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv17 = zext i8 %dst_gpr to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %dst_gpr to i32
  %or.i = or i32 %conv.i, 50331648
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i, i8 noundef zeroext %phi.cast1, i32 noundef 134217728, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext true)
  br label %if.then25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add18 = add i32 %i.012, %conv17
  %conv.i4 = and i32 %add18, 65535
  %or.i5 = or i32 %conv.i4, 50331648
  %conv.i6 = and i32 %i.012, 65535
  %or.i7 = or i32 %conv.i6, 134217728
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i5, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i7) #9
  %inc = add i32 %i.012, 1
  %mul = shl i32 %inc, 2
  %cmp15 = icmp ult i32 %mul, %size
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %phi.cmp = icmp ult i32 %inc, 2
  br i1 %phi.cmp, label %if.end.if.then25_crit_edge, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %if.end.if.then25_crit_edge, %if.end.thread, %for.cond.preheader.if.then25_crit_edge
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then25.if.end26_crit_edge, label %if.then.i

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %dst_gpr to i32
  %or.i.i = add nuw nsw i32 %conv1.i, 50331649
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %if.then25.if.end26_crit_edge, %if.end.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_op_stack(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta, i32 noundef %size, i32 noundef %ptr_off, i8 noundef zeroext %gpr, i8 noundef zeroext %ptr_gpr, i1 noundef zeroext %clr_gpr, ptr nocapture noundef readonly %step) unnamed_addr #1 align 64 {
entry:
  %reg.i = alloca %struct.nfp_insn_ur_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_frame_depth = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 14
  %0 = ptrtoint ptr %stack_frame_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stack_frame_depth, align 4
  %off1 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %2 = ptrtoint ptr %off1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %off1, align 2
  %conv = sext i16 %3 to i32
  %add = add i32 %1, %ptr_off
  %add2 = add i32 %add, %conv
  %4 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %ptr_not_const = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ptr_not_const to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ptr_not_const, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %tobool.not.i = icmp ult i16 %3, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %conv, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %conv.i = zext i8 %ptr_gpr to i32
  %or.i = or i32 %conv.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %or.i, i32 noundef 1, i32 noundef %retval.0.i)
  br label %if.then42

if.else:                                          ; preds = %lor.lhs.false
  %add13 = add i32 %add2, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add13)
  %cmp = icmp ult i32 %add13, 65
  br i1 %cmp, label %if.end35, label %if.else16

if.else16:                                        ; preds = %if.else
  %and17 = and i32 %add2, -32
  %sub = add i32 %add13, -1
  %and19 = and i32 %sub, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and17, i32 %and19)
  %cmp20 = icmp eq i32 %and17, %and19
  br i1 %cmp20, label %if.then22, label %if.else28

if.then22:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and17)
  %tobool.not.i177 = icmp ult i32 %and17, 256
  br i1 %tobool.not.i177, label %if.then.i179, label %if.end.i180

if.then.i179:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i178 = or i32 %and17, 268435456
  br label %ur_load_imm_any.exit182

if.end.i180:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %and17) #9
  br label %ur_load_imm_any.exit182

ur_load_imm_any.exit182:                          ; preds = %if.end.i180, %if.then.i179
  %retval.0.i181 = phi i32 [ %or.i.i178, %if.then.i179 ], [ 33554453, %if.end.i180 ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef 16777238, i32 noundef 1, i32 noundef %retval.0.i181)
  %rem = srem i32 %add2, 32
  br label %if.then42

if.else28:                                        ; preds = %if.else16
  %and29 = and i32 %add2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and29)
  %tobool.not.i183 = icmp ult i32 %and29, 256
  br i1 %tobool.not.i183, label %if.then.i185, label %if.end.i186

if.then.i185:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i184 = or i32 %and29, 268435456
  br label %ur_load_imm_any.exit188

if.end.i186:                                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %and29) #9
  br label %ur_load_imm_any.exit188

ur_load_imm_any.exit188:                          ; preds = %if.end.i186, %if.then.i185
  %retval.0.i187 = phi i32 [ %or.i.i184, %if.then.i185 ], [ 33554453, %if.end.i186 ]
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef 16777238, i32 noundef 1, i32 noundef %retval.0.i187)
  br label %if.then42

if.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp38 = icmp ult i32 %size, 8
  %spec.select = and i1 %cmp38, %clr_gpr
  br i1 %spec.select, label %if.end35.if.then54_crit_edge, label %if.end35.if.end55_crit_edge

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end35.if.then54_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then42:                                        ; preds = %ur_load_imm_any.exit188, %ur_load_imm_any.exit182, %ur_load_imm_any.exit
  %off.0.ph = phi i32 [ %add2, %ur_load_imm_any.exit188 ], [ %rem, %ur_load_imm_any.exit182 ], [ %add2, %ur_load_imm_any.exit ]
  %needs_inc.0.off0.ph = phi i1 [ true, %ur_load_imm_any.exit188 ], [ false, %ur_load_imm_any.exit182 ], [ true, %ur_load_imm_any.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp38200 = icmp ult i32 %size, 8
  %spec.select201 = and i1 %cmp38200, %clr_gpr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i) #9
  %10 = call ptr @memset(ptr %reg.i, i32 255, i32 16)
  %call6.i = call i32 @swreg_to_unrestricted(i32 noundef 536870912, i32 noundef 33554453, i32 noundef 268435456, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i189 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i189, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6.i, ptr %error.i, align 4
  br label %emit_csr_wr.exit

if.end8.i:                                        ; preds = %if.then42
  %__prog_alloc_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %12 = ptrtoint ptr %__prog_alloc_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__prog_alloc_len.i.i.i, align 4
  %div10.i.i.i = lshr i32 %13, 3
  %prog_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %14 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i, i32 %15)
  %cmp.i.i.i = icmp eq i32 %div10.i.i.i, %15
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i) #12
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %16 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -28, ptr %error.i.i.i, align 4
  br label %emit_csr_wr.exit

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %src_lmextn.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i, i32 0, i32 7
  %17 = ptrtoint ptr %src_lmextn.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %src_lmextn.i, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not.i = icmp eq i8 %18, 0
  %breg10.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i, i32 0, i32 3
  %19 = ptrtoint ptr %breg10.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %breg10.i, align 4
  %areg9.i = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg.i, i32 0, i32 2
  %21 = ptrtoint ptr %areg9.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %areg9.i, align 2
  %conv40.i.i = zext i16 %20 to i64
  %shl41.i.i = shl nuw nsw i64 %conv40.i.i, 10
  %and42.i.i = and i64 %shl41.i.i, 1047552
  %23 = and i16 %22, 1023
  %and16.i.i = zext i16 %23 to i64
  %shl133.i.i = select i1 %tobool11.not.i, i64 0, i64 4398046511104
  %or.i.i191 = or i64 %and42.i.i, %and16.i.i
  %or43.i.i = or i64 %or.i.i191, %shl133.i.i
  %or135.i.i = or i64 %or43.i.i, 1082497433600
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %24 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prog.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %25, i32 %15
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or135.i.i, ptr %arrayidx.i.i.i, align 8
  %27 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prog_len.i.i.i, align 4
  %inc.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i, ptr %prog_len.i.i.i, align 4
  br label %emit_csr_wr.exit

emit_csr_wr.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i) #9
  br i1 %spec.select201, label %land.rhs46, label %emit_csr_wr.exit.land.end51_crit_edge

emit_csr_wr.exit.land.end51_crit_edge:            ; preds = %emit_csr_wr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end51

land.rhs46:                                       ; preds = %emit_csr_wr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %flags47 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %29 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags47, align 2
  %31 = lshr i16 %30, 6
  %.lobit = and i16 %31, 1
  %32 = xor i16 %.lobit, 1
  %33 = zext i16 %32 to i32
  br label %land.end51

land.end51:                                       ; preds = %land.rhs46, %emit_csr_wr.exit.land.end51_crit_edge
  %34 = phi i32 [ 1, %emit_csr_wr.exit.land.end51_crit_edge ], [ %33, %land.rhs46 ]
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %prog_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %35 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %36, 3
  %37 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %38
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %39 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %while.body.i.1

if.end.i.i.i.i:                                   ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %41, i32 %38
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i, align 8
  %43 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i.i.i.i, align 4
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %45 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i.1 = lshr i32 %46, 3
  %47 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.1, i32 %48)
  %cmp.i.i.i.i.1 = icmp eq i32 %div10.i.i.i.i.1, %48
  br i1 %cmp.i.i.i.i.1, label %do.end.i.i.i.i.1, label %if.end.i.i.i.i.1

if.end.i.i.i.i.1:                                 ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i.1 = getelementptr i64, ptr %50, i32 %48
  %51 = ptrtoint ptr %arrayidx.i.i.i.i.1 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i.1, align 8
  %52 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i.1 = add i32 %53, 1
  store i32 %inc.i.i.i.i.1, ptr %prog_len.i.i.i.i, align 4
  br label %emit_nop.exit.i.1

do.end.i.i.i.i.1:                                 ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.1) #12
  %54 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_nop.exit.i.1

emit_nop.exit.i.1:                                ; preds = %do.end.i.i.i.i.1, %if.end.i.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i192.1 = icmp eq i32 %34, 0
  br i1 %tobool.not.i192.1, label %emit_nop.exit.i.1.if.end52_crit_edge, label %while.body.i.2

emit_nop.exit.i.1.if.end52_crit_edge:             ; preds = %emit_nop.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

while.body.i.2:                                   ; preds = %emit_nop.exit.i.1
  %55 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i.2 = lshr i32 %56, 3
  %57 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %prog_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i.2, i32 %58)
  %cmp.i.i.i.i.2 = icmp eq i32 %div10.i.i.i.i.2, %58
  br i1 %cmp.i.i.i.i.2, label %do.end.i.i.i.i.2, label %if.end.i.i.i.i.2

if.end.i.i.i.i.2:                                 ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i.2 = getelementptr i64, ptr %60, i32 %58
  %61 = ptrtoint ptr %arrayidx.i.i.i.i.2 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1030792938240, ptr %arrayidx.i.i.i.i.2, align 8
  %62 = ptrtoint ptr %prog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prog_len.i.i.i.i, align 4
  %inc.i.i.i.i.2 = add i32 %63, 1
  store i32 %inc.i.i.i.i.2, ptr %prog_len.i.i.i.i, align 4
  br label %if.end52

do.end.i.i.i.i.2:                                 ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i.2) #12
  %64 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %do.end.i.i.i.i.2, %if.end.i.i.i.i.2, %emit_nop.exit.i.1.if.end52_crit_edge
  br i1 %spec.select201, label %if.end52.if.then54_crit_edge, label %if.end52.if.end55_crit_edge

if.end52.if.end55_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %if.end35.if.then54_crit_edge
  %off.0202215 = phi i32 [ %add2, %if.end35.if.then54_crit_edge ], [ %off.0.ph, %if.end52.if.then54_crit_edge ]
  %needs_inc.0.off0204213 = phi i1 [ false, %if.end35.if.then54_crit_edge ], [ %needs_inc.0.off0.ph, %if.end52.if.then54_crit_edge ]
  %lm3.0.off0206211 = phi i1 [ false, %if.end35.if.then54_crit_edge ], [ true, %if.end52.if.then54_crit_edge ]
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flags.i, align 2
  %67 = and i16 %66, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i193 = icmp eq i16 %67, 0
  br i1 %tobool.not.i193, label %if.then54.if.end55_crit_edge, label %if.then.i195

if.then54.if.end55_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then.i195:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %gpr to i32
  %or.i.i194 = add nuw nsw i32 %conv1.i, 50331649
  call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i.i194, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then.i195, %if.then54.if.end55_crit_edge, %if.end52.if.end55_crit_edge, %if.end35.if.end55_crit_edge
  %off.0202214 = phi i32 [ %add2, %if.end35.if.end55_crit_edge ], [ %off.0.ph, %if.end52.if.end55_crit_edge ], [ %off.0202215, %if.then54.if.end55_crit_edge ], [ %off.0202215, %if.then.i195 ]
  %needs_inc.0.off0204212 = phi i1 [ false, %if.end35.if.end55_crit_edge ], [ %needs_inc.0.off0.ph, %if.end52.if.end55_crit_edge ], [ %needs_inc.0.off0204213, %if.then54.if.end55_crit_edge ], [ %needs_inc.0.off0204213, %if.then.i195 ]
  %lm3.0.off0206210 = phi i1 [ false, %if.end35.if.end55_crit_edge ], [ true, %if.end52.if.end55_crit_edge ], [ %lm3.0.off0206211, %if.then54.if.end55_crit_edge ], [ %lm3.0.off0206211, %if.then.i195 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool56.not223 = icmp eq i32 %size, 0
  br i1 %tobool56.not223, label %if.end55.cleanup110_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  br label %while.body

if.end55.cleanup110_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end55.while.body_crit_edge
  %size.addr.0229 = phi i32 [ %sub106, %cleanup.while.body_crit_edge ], [ %size, %if.end55.while.body_crit_edge ]
  %gpr_byte.0228 = phi i32 [ %gpr_byte.1, %cleanup.while.body_crit_edge ], [ 0, %if.end55.while.body_crit_edge ]
  %prev_gpr.0227 = phi i8 [ %gpr.addr.0224, %cleanup.while.body_crit_edge ], [ -1, %if.end55.while.body_crit_edge ]
  %first.0.off0226 = phi i1 [ false, %cleanup.while.body_crit_edge ], [ true, %if.end55.while.body_crit_edge ]
  %off.1225 = phi i32 [ %add108, %cleanup.while.body_crit_edge ], [ %off.0202214, %if.end55.while.body_crit_edge ]
  %gpr.addr.0224 = phi i8 [ %gpr.addr.1, %cleanup.while.body_crit_edge ], [ %gpr, %if.end55.while.body_crit_edge ]
  %sub57 = sub i32 4, %gpr_byte.0228
  %68 = call i32 @llvm.umin.i32(i32 %size.addr.0229, i32 %sub57)
  %conv62 = and i32 %68, 255
  %add63 = add i32 %conv62, %off.1225
  %or = or i32 %off.1225, 3
  %add66 = add i32 %or, 1
  %69 = call i32 @llvm.smin.i32(i32 %add63, i32 %add66)
  %sub74 = sub i32 %69, %off.1225
  %conv76 = and i32 %sub74, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0229, i32 %conv76)
  %cmp77 = icmp eq i32 %size.addr.0229, %conv76
  %rem82 = srem i32 %off.1225, 4
  %off.2 = select i1 %needs_inc.0.off0204212, i32 %rem82, i32 %off.1225
  %conv84 = trunc i32 %gpr_byte.0228 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %gpr.addr.0224, i8 %prev_gpr.0227)
  %cmp89 = icmp ne i8 %gpr.addr.0224, %prev_gpr.0227
  %call94 = call i32 %step(ptr noundef %nfp_prog, i8 noundef zeroext %gpr.addr.0224, i8 noundef zeroext %conv84, i32 noundef %off.2, i32 noundef %conv76, i1 noundef zeroext %first.0.off0226, i1 noundef zeroext %cmp89, i1 noundef zeroext %cmp77, i1 noundef zeroext %lm3.0.off0206210, i1 noundef zeroext %needs_inc.0.off0204212) #9, !callees !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %while.body.cleanup110_crit_edge

while.body.cleanup110_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

cleanup:                                          ; preds = %while.body
  %add99 = add i32 %conv76, %gpr_byte.0228
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add99)
  %cmp100 = icmp ugt i32 %add99, 3
  %sub103 = add i32 %add99, -4
  %inc = zext i1 %cmp100 to i8
  %gpr.addr.1 = add i8 %gpr.addr.0224, %inc
  %gpr_byte.1 = select i1 %cmp100, i32 %sub103, i32 %add99
  %sub106 = sub i32 %size.addr.0229, %conv76
  %add108 = add i32 %conv76, %off.2
  %tobool56.not = icmp eq i32 %sub106, 0
  br i1 %tobool56.not, label %cleanup.cleanup110_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup110_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

cleanup110:                                       ; preds = %cleanup.cleanup110_crit_edge, %while.body.cleanup110_crit_edge, %if.end55.cleanup110_crit_edge
  %retval.2 = phi i32 [ 0, %if.end55.cleanup110_crit_edge ], [ %call94, %while.body.cleanup110_crit_edge ], [ 0, %cleanup.cleanup110_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wrp_lmem_load(ptr nocapture noundef %nfp_prog, i8 noundef zeroext %dst, i8 noundef zeroext %dst_byte, i32 noundef %off, i32 noundef %size, i1 noundef zeroext %first, i1 noundef zeroext %new_gpr, i1 noundef zeroext %last, i1 noundef zeroext %lm3, i1 noundef zeroext %needs_inc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %needs_inc, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lnot = xor i1 %last, true
  %spec.select = and i1 %lnot, %new_gpr
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv = zext i8 %dst_byte to i32
  %add = add i32 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp ugt i32 %add, 4
  %div = sdiv i32 %off, 4
  %1 = mul i32 %div, 4
  %rem.decomposed = sub i32 %off, %1
  %add9 = add i32 %rem.decomposed, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add9)
  %cmp10 = icmp ugt i32 %add9, 4
  %2 = or i1 %cmp, %cmp10
  br i1 %2, label %land.rhs17, label %if.end54

land.rhs17:                                       ; preds = %land.end
  %.b294 = load i1, ptr @wrp_lmem_load.__already_done, align 1
  br i1 %.b294, label %land.rhs17.cleanup_crit_edge, label %if.then, !prof !113

land.rhs17.cleanup_crit_edge:                     ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_load.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1031, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end54:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp55 = icmp eq i32 %size, 4
  br i1 %cmp55, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %dst to i32
  %or.i = or i32 %conv.i, 50331648
  %conv.i301 = select i1 %lm3, i32 12582912, i32 0
  %conv87.i = and i32 %div, 255
  %or86.i = or i32 %conv87.i, %conv.i301
  %or88.i = or i32 %or86.i, 1073741824
  %cond67 = select i1 %0, i32 1087373312, i32 %or88.i
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %cond67) #9
  br label %cleanup

if.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp73 = icmp ugt i32 %div, 7
  %spec.select296 = and i1 %cmp73, %lm3
  br i1 %spec.select296, label %land.rhs83, label %if.end131

land.rhs83:                                       ; preds = %if.end68
  %.b290293 = load i1, ptr @wrp_lmem_load.__already_done.32, align 1
  br i1 %.b290293, label %land.rhs83.cleanup_crit_edge, label %if.then94, !prof !113

land.rhs83.cleanup_crit_edge:                     ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then94:                                        ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_load.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1043, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end68
  %notmask = shl nsw i32 -1, %size
  %conv135 = xor i32 %notmask, -1
  %shl136 = shl i32 %conv135, %conv
  %conv137 = trunc i32 %shl136 to i8
  %conv139 = and i32 %shl136, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv139)
  %cmp140.not = icmp eq i32 %conv139, 0
  br i1 %cmp140.not, label %if.end197, label %land.rhs149

land.rhs149:                                      ; preds = %if.end131
  %.b291292 = load i1, ptr @wrp_lmem_load.__already_done.33, align 1
  br i1 %.b291292, label %land.rhs149.cleanup_crit_edge, label %if.then160, !prof !113

land.rhs149.cleanup_crit_edge:                    ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then160:                                       ; preds = %land.rhs149
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_load.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1051, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end197:                                        ; preds = %if.end131
  %sub199 = sub nsw i32 %rem.decomposed, %conv
  %3 = tail call i32 @llvm.abs.i32(i32 %sub199, i1 true)
  %mul = shl nuw nsw i32 %3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %conv)
  %cmp209 = icmp eq i32 %rem.decomposed, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %conv)
  %cmp213 = icmp ult i32 %rem.decomposed, %conv
  %sub216 = sub nsw i32 32, %mul
  %spec.select299 = select i1 %cmp213, i32 %sub216, i32 %mul
  %spec.select300 = select i1 %cmp213, i32 2, i32 1
  %shf.0 = select i1 %cmp209, i32 %mul, i32 %spec.select299
  %sc.0 = select i1 %cmp209, i32 0, i32 %spec.select300
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp220 = icmp ult i32 %div, 8
  br i1 %cmp220, label %__enc_swreg_lm.exit312, label %if.else229

__enc_swreg_lm.exit312:                           ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i302 = select i1 %lm3, i32 12582912, i32 0
  %or86.i310 = or i32 %div, %conv.i302
  %or88.i311 = or i32 %or86.i310, 1073741824
  br label %if.end238

if.else229:                                       ; preds = %if.end197
  %new_gpr.not = xor i1 %new_gpr, true
  %brmerge = or i1 %new_gpr.not, %first
  br i1 %brmerge, label %if.then234, label %if.else229.if.end238_crit_edge

if.else229.if.end238_crit_edge:                   ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then234:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #11
  %conv87.i314 = and i32 %div, 255
  %or88.i315 = or i32 %conv87.i314, 1073741824
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 536870912, i32 noundef 0, i32 noundef %or88.i315) #9
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.else229.if.end238_crit_edge, %__enc_swreg_lm.exit312
  %reg.0 = phi i32 [ %or88.i311, %__enc_swreg_lm.exit312 ], [ 16777237, %if.then234 ], [ 16777237, %if.else229.if.end238_crit_edge ]
  %conv.i316 = zext i8 %dst to i32
  %or.i317 = or i32 %conv.i316, 50331648
  %conv241 = trunc i32 %shf.0 to i8
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %or.i317, i8 noundef zeroext %conv137, i32 noundef %reg.0, i32 noundef %sc.0, i8 noundef zeroext %conv241, i1 noundef zeroext %new_gpr)
  br i1 %0, label %if.then244, label %if.end238.cleanup_crit_edge

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then244:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 536870912, i32 noundef 0, i32 noundef 1087373312) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then244, %if.end238.cleanup_crit_edge, %if.then160, %land.rhs149.cleanup_crit_edge, %if.then94, %land.rhs83.cleanup_crit_edge, %if.then57, %if.then, %land.rhs17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then57 ], [ -95, %if.then ], [ -95, %if.then94 ], [ -95, %if.then160 ], [ 0, %if.then244 ], [ 0, %if.end238.cleanup_crit_edge ], [ -95, %land.rhs17.cleanup_crit_edge ], [ -95, %land.rhs83.cleanup_crit_edge ], [ -95, %land.rhs149.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_st(ptr nocapture noundef %nfp_prog, ptr nocapture noundef readonly %meta, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %imm1.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %3 = ptrtoint ptr %imm1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imm1.i, align 4
  %off.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %5 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %off.i, align 2
  %conv3.i = sext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %6)
  %tobool.not.i.i = icmp ult i16 %6, 128
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %conv3.i, 268435456
  br label %re_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv3.i) #9
  br label %re_load_imm_any.exit.i

re_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %7 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %conv8.i = trunc i32 %size to i8
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 134217728, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv8.i)
  %cmp.i.i = icmp eq i8 %conv8.i, 8
  br i1 %cmp.i.i, label %if.then.i1.i, label %re_load_imm_any.exit.i.mem_st_data.exit_crit_edge

re_load_imm_any.exit.i.mem_st_data.exit_crit_edge: ; preds = %re_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_st_data.exit

if.then.i1.i:                                     ; preds = %re_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ashr i32 %4, 31
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 134217729, i32 noundef %8) #9
  br label %mem_st_data.exit

mem_st_data.exit:                                 ; preds = %if.then.i1.i, %re_load_imm_any.exit.i.mem_st_data.exit_crit_edge
  %9 = lshr i8 %bf.load.i, 3
  %10 = and i8 %9, 30
  %conv.i.i.i = zext i8 %10 to i32
  %or.i.i2.i = or i32 %conv.i.i.i, 16777216
  %sub.i.i = add i8 %conv8.i, -1
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i.i2.i, i32 noundef %retval.0.i.i, i8 noundef zeroext %sub.i.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %return

return:                                           ; preds = %mem_st_data.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %mem_st_data.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_stx(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %2, label %entry.return_crit_edge [
    i32 8, label %if.then
    i32 6, label %if.then4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %off.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %4 = ptrtoint ptr %off.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %off.i, align 2
  %conv.i = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %5)
  %tobool.not.i.i = icmp ult i16 %5, 128
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %conv.i, 268435456
  br label %re_load_imm_any.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv.i) #9
  br label %re_load_imm_any.exit.i

re_load_imm_any.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ 33554453, %if.end.i.i ]
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %6 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %conv10.i = trunc i32 %size to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10.i)
  %cmp5.not.i.i = icmp eq i8 %conv10.i, 0
  br i1 %cmp5.not.i.i, label %re_load_imm_any.exit.i.mem_stx_data.exit_crit_edge, label %for.body.lr.ph.i.i

re_load_imm_any.exit.i.mem_stx_data.exit_crit_edge: ; preds = %re_load_imm_any.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_stx_data.exit

for.body.lr.ph.i.i:                               ; preds = %re_load_imm_any.exit.i
  %bf.clear.i = shl i8 %bf.load.i, 1
  %7 = and i8 %bf.clear.i, 30
  %conv.i.i = and i32 %size, 255
  %conv3.i.i = zext i8 %7 to i32
  %8 = add nsw i32 %conv.i.i, -1
  %9 = lshr i32 %8, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %or.i.i1.i = or i32 %i.06.i.i, 134217728
  %add.i.i = add nuw nsw i32 %i.06.i.i, %conv3.i.i
  %or.i2.i.i = or i32 %add.i.i, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i1.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i2.i.i) #9
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.06.i.i, %9
  br i1 %exitcond.not.i.i, label %for.body.i.i.mem_stx_data.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.mem_stx_data.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_stx_data.exit

mem_stx_data.exit:                                ; preds = %for.body.i.i.mem_stx_data.exit_crit_edge, %re_load_imm_any.exit.i.mem_stx_data.exit_crit_edge
  %10 = lshr i8 %bf.load.i, 3
  %11 = and i8 %10, 30
  %conv.i3.i.i = zext i8 %11 to i32
  %or.i4.i.i = or i32 %conv.i3.i.i, 16777216
  %sub.i.i = add i8 %conv10.i, -1
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %or.i4.i.i, i32 noundef %retval.0.i.i, i8 noundef zeroext %sub.i.i, i32 noundef 0, i1 noundef zeroext false) #9
  br label %return

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %off = getelementptr inbounds %struct.bpf_reg_state, ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %off, align 4
  %var_off = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %var_off, align 8
  %16 = trunc i64 %15 to i32
  %conv7 = add i32 %13, %16
  %src_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %17 = ptrtoint ptr %src_reg.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i18 = load i8, ptr %src_reg.i, align 1
  %bf.clear.i19 = shl i8 %bf.load.i18, 1
  %18 = and i8 %bf.clear.i19, 30
  %19 = lshr i8 %bf.load.i18, 3
  %20 = and i8 %19, 30
  %call.i = tail call fastcc i32 @mem_op_stack(ptr noundef %nfp_prog, ptr noundef %meta, i32 noundef %size, i32 noundef %conv7, i8 noundef zeroext %18, i8 noundef zeroext %20, i1 noundef zeroext false, ptr noundef nonnull @wrp_lmem_store) #9
  br label %return

return:                                           ; preds = %if.then4, %mem_stx_data.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %mem_stx_data.exit ], [ %call.i, %if.then4 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wrp_lmem_store(ptr nocapture noundef %nfp_prog, i8 noundef zeroext %src, i8 noundef zeroext %src_byte, i32 noundef %off, i32 noundef %size, i1 noundef zeroext %first, i1 noundef zeroext %new_gpr, i1 noundef zeroext %last, i1 noundef zeroext %lm3, i1 noundef zeroext %needs_inc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %needs_inc, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lnot = xor i1 %last, true
  %spec.select = and i1 %lnot, %new_gpr
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv = zext i8 %src_byte to i32
  %add = add i32 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp ugt i32 %add, 4
  %div = sdiv i32 %off, 4
  %1 = mul i32 %div, 4
  %rem.decomposed = sub i32 %off, %1
  %add9 = add i32 %rem.decomposed, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add9)
  %cmp10 = icmp ugt i32 %add9, 4
  %2 = or i1 %cmp, %cmp10
  br i1 %2, label %land.rhs17, label %if.end54

land.rhs17:                                       ; preds = %land.end
  %.b311 = load i1, ptr @wrp_lmem_store.__already_done, align 1
  br i1 %.b311, label %land.rhs17.cleanup_crit_edge, label %if.then, !prof !113

land.rhs17.cleanup_crit_edge:                     ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1100, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end54:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp55 = icmp eq i32 %size, 4
  br i1 %cmp55, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = select i1 %lm3, i32 12582912, i32 0
  %conv87.i = and i32 %div, 255
  %or86.i = or i32 %conv87.i, %conv.i
  %or88.i = or i32 %or86.i, 1073741824
  %cond65 = select i1 %0, i32 1087373312, i32 %or88.i
  %conv.i319 = zext i8 %src to i32
  %or.i = or i32 %conv.i319, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %cond65, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i) #9
  br label %cleanup

if.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp73 = icmp ugt i32 %div, 7
  %spec.select313 = and i1 %cmp73, %lm3
  br i1 %spec.select313, label %land.rhs83, label %if.end131

land.rhs83:                                       ; preds = %if.end68
  %.b307310 = load i1, ptr @wrp_lmem_store.__already_done.34, align 1
  br i1 %.b307310, label %land.rhs83.cleanup_crit_edge, label %if.then94, !prof !113

land.rhs83.cleanup_crit_edge:                     ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then94:                                        ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_store.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1113, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end68
  %notmask = shl nsw i32 -1, %size
  %conv134 = xor i32 %notmask, -1
  %shl135 = shl i32 %conv134, %rem.decomposed
  %conv136 = trunc i32 %shl135 to i8
  %conv138 = and i32 %shl135, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv138)
  %cmp139.not = icmp eq i32 %conv138, 0
  br i1 %cmp139.not, label %if.end196, label %land.rhs148

land.rhs148:                                      ; preds = %if.end131
  %.b308309 = load i1, ptr @wrp_lmem_store.__already_done.35, align 1
  br i1 %.b308309, label %land.rhs148.cleanup_crit_edge, label %if.then159, !prof !113

land.rhs148.cleanup_crit_edge:                    ; preds = %land.rhs148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then159:                                       ; preds = %land.rhs148
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @wrp_lmem_store.__already_done.35, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1121, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end196:                                        ; preds = %if.end131
  %sub198 = sub nsw i32 %conv, %rem.decomposed
  %3 = tail call i32 @llvm.abs.i32(i32 %sub198, i1 true)
  %mul = shl nuw nsw i32 %3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %conv)
  %cmp208 = icmp eq i32 %rem.decomposed, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %conv)
  %cmp212 = icmp ugt i32 %rem.decomposed, %conv
  %sub215 = sub nsw i32 32, %mul
  %spec.select317 = select i1 %cmp212, i32 %sub215, i32 %mul
  %spec.select318 = select i1 %cmp212, i32 2, i32 1
  %shf.0 = select i1 %cmp208, i32 %mul, i32 %spec.select317
  %sc.0 = select i1 %cmp208, i32 0, i32 %spec.select318
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp219 = icmp ult i32 %div, 8
  br i1 %cmp219, label %__enc_swreg_lm.exit330, label %if.else228

__enc_swreg_lm.exit330:                           ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i320 = select i1 %lm3, i32 12582912, i32 0
  %or86.i328 = or i32 %div, %conv.i320
  %or88.i329 = or i32 %or86.i328, 1073741824
  br label %if.end238

if.else228:                                       ; preds = %if.end196
  %brmerge = or i1 %first, %last
  br i1 %brmerge, label %if.then234, label %if.else228.if.end238_crit_edge

if.else228.if.end238_crit_edge:                   ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then234:                                       ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #11
  %conv87.i332 = and i32 %div, 255
  %or88.i333 = or i32 %conv87.i332, 1073741824
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef 536870912, i32 noundef 0, i32 noundef %or88.i333) #9
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.else228.if.end238_crit_edge, %__enc_swreg_lm.exit330
  %reg.0 = phi i32 [ %or88.i329, %__enc_swreg_lm.exit330 ], [ 16777237, %if.then234 ], [ 16777237, %if.else228.if.end238_crit_edge ]
  %conv.i334 = zext i8 %src to i32
  %or.i335 = or i32 %conv.i334, 33554432
  %conv241 = trunc i32 %shf.0 to i8
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef %reg.0, i8 noundef zeroext %conv136, i32 noundef %or.i335, i32 noundef %sc.0, i8 noundef zeroext %conv241, i1 noundef zeroext false) #9
  %brmerge316 = or i1 %new_gpr, %last
  br i1 %brmerge316, label %if.then247, label %if.end238.cleanup_crit_edge

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then247:                                       ; preds = %if.end238
  br i1 %cmp73, label %if.then250, label %if.then247.if.end253_crit_edge

if.then247.if.end253_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253

if.then250:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  %conv87.i337 = and i32 %div, 255
  %or88.i338 = or i32 %conv87.i337, 1073741824
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or88.i338, i32 noundef 536870912, i32 noundef 0, i32 noundef %reg.0) #9
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.then247.if.end253_crit_edge
  br i1 %0, label %if.then255, label %if.end253.cleanup_crit_edge

if.end253.cleanup_crit_edge:                      ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then255:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 536870912, i32 noundef 0, i32 noundef 1087373312) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then255, %if.end253.cleanup_crit_edge, %if.end238.cleanup_crit_edge, %if.then159, %land.rhs148.cleanup_crit_edge, %if.then94, %land.rhs83.cleanup_crit_edge, %if.then57, %if.then, %land.rhs17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then57 ], [ -95, %if.then ], [ -95, %if.then94 ], [ -95, %if.then159 ], [ 0, %if.end238.cleanup_crit_edge ], [ 0, %if.end253.cleanup_crit_edge ], [ 0, %if.then255 ], [ -95, %land.rhs17.cleanup_crit_edge ], [ -95, %land.rhs83.cleanup_crit_edge ], [ -95, %land.rhs148.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__shl_imm64(ptr nocapture noundef %nfp_prog, i8 noundef zeroext %dst, i8 noundef zeroext %shift_amt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift_amt)
  %tobool.not = icmp eq i8 %shift_amt, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp = icmp ult i8 %shift_amt, 32
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %dst to i32
  %add = add nuw nsw i32 %conv3, 1
  %or.i = or i32 %add, 50331648
  %or.i2 = or i32 %add, 16777216
  %or.i4 = or i32 %conv3, 33554432
  %sub = sub nuw nsw i8 32, %shift_amt
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i2, i32 noundef 0, i32 noundef %or.i4, i32 noundef 3, i8 noundef zeroext %sub)
  %or.i6 = or i32 %conv3, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i6, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i4, i32 noundef 2, i8 noundef zeroext %shift_amt)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp19 = icmp eq i8 %shift_amt, 32
  %conv22 = zext i8 %dst to i32
  %or.i.i = add nuw nsw i32 %conv22, 50331649
  %or.i3.i = or i32 %conv22, 33554432
  br i1 %cmp19, label %if.then21, label %if.then32

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i) #9
  %or.i10 = or i32 %conv22, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i10, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub41 = add i8 %shift_amt, -32
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i, i32 noundef 2, i8 noundef zeroext %sub41)
  %or.i17 = or i32 %conv22, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i17, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

return:                                           ; preds = %if.then32, %if.then21, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_br_bset(ptr nocapture noundef %nfp_prog, i32 noundef %src, i16 noundef zeroext %addr) unnamed_addr #1 align 64 {
entry:
  %reg.i = alloca %struct.nfp_insn_re_regs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg.i) #9
  %0 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg.i, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg.i, i32 0, i32 8
  %3 = call ptr @memset(ptr %reg.i, i32 255, i32 12)
  %call4.i = call i32 @swreg_to_restricted(i32 noundef 536870912, i32 noundef %src, i32 noundef 268435462, ptr noundef nonnull %reg.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %4 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4.i, ptr %error.i, align 4
  br label %emit_br_bit_relo.exit

if.end.i:                                         ; preds = %entry
  %__prog_alloc_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %5 = ptrtoint ptr %__prog_alloc_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__prog_alloc_len.i.i.i, align 4
  %div10.i.i.i = lshr i32 %6, 3
  %prog_len.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %7 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prog_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i, i32 %8)
  %cmp.i.i.i = icmp eq i32 %div10.i.i.i, %8
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i) #12
  %error.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %9 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -28, ptr %error.i.i.i, align 4
  br label %__emit_br_bit.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %addr)
  %10 = icmp ugt i16 %addr, 8191
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not.i = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 2
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %conv46.i.i = zext i8 %14 to i64
  %shl47.i.i = shl nuw nsw i64 %conv46.i.i, 10
  %and22.i.i = zext i8 %16 to i64
  %conv130.i.i = zext i16 %addr to i64
  %shl131.i.i = shl nuw nsw i64 %conv130.i.i, 22
  %and132.i.i = and i64 %shl131.i.i, 34355544064
  %shl188.i.i = select i1 %tobool8.not.i, i64 0, i64 4398046511104
  %or160.i.i = select i1 %10, i64 1992865087488, i64 893353459712
  %or133.i.i = or i64 %and132.i.i, %or160.i.i
  %or79.i.i = or i64 %or133.i.i, %shl188.i.i
  %or.i.i = or i64 %or79.i.i, %and22.i.i
  %or190.i.i = or i64 %or.i.i, %shl47.i.i
  %prog.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %17 = ptrtoint ptr %prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prog.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %18, i32 %8
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or190.i.i, ptr %arrayidx.i.i.i, align 8
  %20 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prog_len.i.i.i, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %prog_len.i.i.i, align 4
  br label %__emit_br_bit.exit.i

__emit_br_bit.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.i.i
  %prog.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %22 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prog.i, align 4
  %24 = ptrtoint ptr %prog_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prog_len.i.i.i, align 4
  %sub.i = add i32 %25, -1
  %arrayidx.i = getelementptr i64, ptr %23, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i, align 8
  %or.i = or i64 %27, 72057594037927936
  store i64 %or.i, ptr %arrayidx.i, align 8
  br label %emit_br_bit_relo.exit

emit_br_bit_relo.exit:                            ; preds = %__emit_br_bit.exit.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__shr_imm64(ptr nocapture noundef %nfp_prog, i8 noundef zeroext %dst, i8 noundef zeroext %shift_amt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift_amt)
  %tobool.not = icmp eq i8 %shift_amt, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp = icmp ult i8 %shift_amt, 32
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %dst to i32
  %or.i = or i32 %conv3, 50331648
  %add = add nuw nsw i32 %conv3, 1
  %or.i2 = or i32 %add, 16777216
  %or.i4 = or i32 %conv3, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i2, i32 noundef 0, i32 noundef %or.i4, i32 noundef 3, i8 noundef zeroext %shift_amt)
  %or.i6 = or i32 %add, 50331648
  %or.i8 = or i32 %add, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i6, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i8, i32 noundef 1, i8 noundef zeroext %shift_amt)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp19 = icmp eq i8 %shift_amt, 32
  %conv22 = zext i8 %dst to i32
  br i1 %cmp19, label %if.then21, label %if.then34

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add24 = add nuw nsw i32 %conv22, 1
  %or.i.i = or i32 %conv22, 50331648
  %or.i3.i = or i32 %add24, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i) #9
  %or.i10 = or i32 %add24, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i10, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or.i13 = or i32 %conv22, 50331648
  %add39 = add nuw nsw i32 %conv22, 1
  %or.i15 = or i32 %add39, 33554432
  %sub = add i8 %shift_amt, -32
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i13, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i15, i32 noundef 1, i8 noundef zeroext %sub)
  %or.i17 = or i32 %add39, 50331648
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef %or.i17, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  br label %return

return:                                           ; preds = %if.then34, %if.then21, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mem_xadd(ptr noundef %nfp_prog, ptr nocapture noundef readonly %meta, i1 noundef zeroext %is64) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %0 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dst_reg, align 1
  %1 = lshr i8 %bf.load, 3
  %2 = and i8 %1, 30
  %bf.clear = shl i8 %bf.load, 1
  %3 = and i8 %bf.clear, 30
  %off8 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %4 = ptrtoint ptr %off8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %off8, align 2
  %conv9 = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %tobool.not.i = icmp ult i16 %5, 256
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %conv9, 268435456
  br label %ur_load_imm_any.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 33554453, i32 noundef %conv9) #9
  br label %ur_load_imm_any.exit

ur_load_imm_any.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ 33554453, %if.end.i ]
  %prog_len.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 2
  %6 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prog_len.i, align 4
  %8 = ptrtoint ptr %off8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %off8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %add = add i32 %7, 2
  %full_add.0 = select i1 %tobool.not, i32 %7, i32 %add
  %10 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %xadd_maybe_16bit = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %xadd_maybe_16bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xadd_maybe_16bit, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %add18 = add i32 %full_add.0, 3
  %full_add.1 = select i1 %tobool16.not, i32 %full_add.0, i32 %add18
  %xadd_over_16bit = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %xadd_over_16bit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xadd_over_16bit, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %add25 = select i1 %is64, i32 3, i32 2
  %add26 = select i1 %tobool21.not, i32 0, i32 %add25
  %out.2 = add i32 %full_add.1, %add26
  %brmerge = select i1 %tobool16.not, i1 true, i1 %tobool21.not
  %out.2.mux = select i1 %tobool16.not, i32 %out.2, i32 %add18
  br i1 %brmerge, label %ur_load_imm_any.exit.if.end62_crit_edge, label %if.then45

ur_load_imm_any.exit.if.end62_crit_edge:          ; preds = %ur_load_imm_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then45:                                        ; preds = %ur_load_imm_any.exit
  %add35 = add i32 %out.2, 5
  %add36 = add i32 %full_add.1, 5
  tail call fastcc void @emit_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i16 noundef zeroext -1, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #9
  %conv.i = zext i8 %3 to i32
  %or.i = or i32 %conv.i, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 16777237, i32 noundef 21, i32 noundef %or.i)
  %or.i236 = or i32 %conv.i, 33554433
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef 268435456, i32 noundef 13, i32 noundef %or.i236)
  %__prog_alloc_len.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %15 = ptrtoint ptr %__prog_alloc_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__prog_alloc_len.i.i.i.i, align 4
  %div10.i.i.i.i = lshr i32 %16, 3
  %17 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %div10.i.i.i.i, %18
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i) #12
  %error.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %19 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -28, ptr %error.i.i.i.i, align 4
  br label %emit_br.exit

if.end.i.i.i.i:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %20 = and i32 %add36, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %off8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %off8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool60.not = icmp eq i16 %22, 0
  %conv99.i.i.i = select i1 %tobool60.not, i64 0, i64 2097152
  %conv126.i.i.i = zext i32 %add36 to i64
  %shl127.i.i.i = shl nuw nsw i64 %conv126.i.i.i, 22
  %and128.i.i.i = and i64 %shl127.i.i.i, 34355544064
  %or75.i.i.i = select i1 %.not, i64 261, i64 1099511628037
  %or102.i.i.i = or i64 %and128.i.i.i, %or75.i.i.i
  %or129.i.i.i = or i64 %or102.i.i.i, %conv99.i.i.i
  %or156.i.i.i = or i64 %or129.i.i.i, 927712968736
  %prog.i.i.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %23 = ptrtoint ptr %prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %24, i32 %18
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or156.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %26 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prog_len.i, align 4
  %inc.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i, ptr %prog_len.i, align 4
  br label %emit_br.exit

emit_br.exit:                                     ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %prog.i.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %28 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prog.i.i, align 4
  %30 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prog_len.i, align 4
  %sub.i.i = add i32 %31, -1
  %arrayidx.i.i = getelementptr i64, ptr %29, i32 %sub.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i, align 8
  %or.i.i237 = or i64 %33, 72057594037927936
  store i64 %or.i.i237, ptr %arrayidx.i.i, align 8
  br label %if.end62

if.end62:                                         ; preds = %emit_br.exit, %ur_load_imm_any.exit.if.end62_crit_edge
  %out.3293 = phi i32 [ %add35, %emit_br.exit ], [ %out.2.mux, %ur_load_imm_any.exit.if.end62_crit_edge ]
  %full_add.2291 = phi i32 [ %add36, %emit_br.exit ], [ %full_add.1, %ur_load_imm_any.exit.if.end62_crit_edge ]
  %34 = ptrtoint ptr %off8 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %off8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool65.not = icmp eq i16 %35, 0
  %conv.i238 = zext i8 %2 to i32
  %or.i239 = or i32 %conv.i238, 16777216
  br i1 %tobool65.not, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i240 = zext i8 %1 to i32
  %or.i241 = or i32 %conv.i240, 33554433
  br label %if.end84

if.else:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 16777236, i32 noundef %or.i239, i32 noundef 1, i32 noundef %retval.0.i)
  %conv.i244 = zext i8 %1 to i32
  %or.i245 = or i32 %conv.i244, 16777217
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 33554452, i32 noundef %or.i245, i32 noundef 17, i32 noundef 268435456)
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then66
  %addra.0 = phi i32 [ 16777236, %if.else ], [ %or.i239, %if.then66 ]
  %addrb.0 = phi i32 [ 33554452, %if.else ], [ %or.i241, %if.then66 ]
  %36 = ptrtoint ptr %xadd_maybe_16bit to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xadd_maybe_16bit, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool86.not = icmp eq i8 %37, 0
  br i1 %tobool86.not, label %if.end84.if.end141_crit_edge, label %if.then87

if.end84.if.end141_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then87:                                        ; preds = %if.end84
  %or133 = select i1 %is64, i32 3216, i32 2192
  tail call fastcc void @wrp_immed(ptr noundef %nfp_prog, i32 noundef 16777237, i32 noundef %or133)
  %conv.i246 = zext i8 %3 to i32
  %or.i247 = or i32 %conv.i246, 33554432
  tail call fastcc void @emit_ld_field_any(ptr noundef %nfp_prog, i32 noundef 16777237, i8 noundef zeroext 12, i32 noundef %or.i247, i32 noundef 2, i8 noundef zeroext 16, i1 noundef zeroext false) #9
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 9, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %addra.0, i32 noundef %addrb.0, i8 noundef zeroext 0, i32 noundef 3, i1 noundef zeroext true) #9
  %38 = ptrtoint ptr %xadd_over_16bit to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %xadd_over_16bit, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool137.not = icmp eq i8 %39, 0
  br i1 %tobool137.not, label %if.then87.if.end141_crit_edge, label %if.then138

if.then87.if.end141_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then138:                                       ; preds = %if.then87
  %__prog_alloc_len.i.i.i.i248 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 3
  %40 = ptrtoint ptr %__prog_alloc_len.i.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__prog_alloc_len.i.i.i.i248, align 4
  %div10.i.i.i.i249 = lshr i32 %41, 3
  %42 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i.i.i.i249, i32 %43)
  %cmp.i.i.i.i251 = icmp eq i32 %div10.i.i.i.i249, %43
  br i1 %cmp.i.i.i.i251, label %do.end.i.i.i.i254, label %if.end.i.i.i.i265

do.end.i.i.i.i254:                                ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div10.i.i.i.i249) #12
  %error.i.i.i.i253 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %44 = ptrtoint ptr %error.i.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -28, ptr %error.i.i.i.i253, align 4
  br label %emit_br.exit270

if.end.i.i.i.i265:                                ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %45 = and i32 %out.3293, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %.not299 = icmp eq i32 %45, 0
  %conv126.i.i.i255 = zext i32 %out.3293 to i64
  %shl127.i.i.i256 = shl nuw nsw i64 %conv126.i.i.i255, 22
  %and128.i.i.i257 = and i64 %shl127.i.i.i256, 34355544064
  %or75.i.i.i259 = select i1 %.not299, i64 24, i64 1099511627800
  %or102.i.i.i260 = or i64 %and128.i.i.i257, %or75.i.i.i259
  %or156.i.i.i261 = or i64 %or102.i.i.i260, 927712968736
  %prog.i.i.i.i262 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %46 = ptrtoint ptr %prog.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prog.i.i.i.i262, align 4
  %arrayidx.i.i.i.i263 = getelementptr i64, ptr %47, i32 %43
  %48 = ptrtoint ptr %arrayidx.i.i.i.i263 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %or156.i.i.i261, ptr %arrayidx.i.i.i.i263, align 8
  %49 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prog_len.i, align 4
  %inc.i.i.i.i264 = add i32 %50, 1
  store i32 %inc.i.i.i.i264, ptr %prog_len.i, align 4
  br label %emit_br.exit270

emit_br.exit270:                                  ; preds = %if.end.i.i.i.i265, %do.end.i.i.i.i254
  %prog.i.i266 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 1
  %51 = ptrtoint ptr %prog.i.i266 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prog.i.i266, align 4
  %53 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prog_len.i, align 4
  %sub.i.i267 = add i32 %54, -1
  %arrayidx.i.i268 = getelementptr i64, ptr %52, i32 %sub.i.i267
  %55 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx.i.i268, align 8
  %or.i.i269 = or i64 %56, 72057594037927936
  store i64 %or.i.i269, ptr %arrayidx.i.i268, align 8
  br label %if.end141

if.end141:                                        ; preds = %emit_br.exit270, %if.then87.if.end141_crit_edge, %if.end84.if.end141_crit_edge
  %error.i = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 13
  %57 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i271 = icmp eq i32 %58, 0
  br i1 %tobool.not.i271, label %if.end.i272, label %if.end141.if.end144_crit_edge

if.end141.if.end144_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.end.i272:                                      ; preds = %if.end141
  %59 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %full_add.2291)
  %cmp.not.i = icmp eq i32 %60, %full_add.2291
  br i1 %cmp.not.i, label %if.end.i272.if.end144_crit_edge, label %land.rhs.i

if.end.i272.if.end144_crit_edge:                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

land.rhs.i:                                       ; preds = %if.end.i272
  %.b44.i = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.cleanup.sink.split_crit_edge, !prof !113

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end144:                                        ; preds = %if.end.i272.if.end144_crit_edge, %if.end141.if.end144_crit_edge
  %61 = ptrtoint ptr %xadd_over_16bit to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %xadd_over_16bit, align 2, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool146.not = icmp eq i8 %62, 0
  br i1 %tobool146.not, label %if.end144.if.end166_crit_edge, label %if.then147

if.end144.if.end166_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then147:                                       ; preds = %if.end144
  %conv151 = select i1 %is64, i8 4, i8 0
  %cond154 = select i1 %is64, i32 2, i32 1
  tail call fastcc void @emit_cmd_any(ptr noundef %nfp_prog, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %addra.0, i32 noundef %addrb.0, i8 noundef zeroext %conv151, i32 noundef %cond154, i1 noundef zeroext false) #9
  %conv.i274 = zext i8 %3 to i32
  %or.i275 = or i32 %conv.i274, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 134217728, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i275) #9
  br i1 %is64, label %if.then159, label %if.then147.if.end166_crit_edge

if.then147.if.end166_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then159:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %or.i277 = or i32 %conv.i274, 16777217
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 134217729, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i277) #9
  br label %if.end166

if.end166:                                        ; preds = %if.then159, %if.then147.if.end166_crit_edge, %if.end144.if.end166_crit_edge
  %63 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i279 = icmp eq i32 %64, 0
  br i1 %tobool.not.i279, label %if.end.i282, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i282:                                      ; preds = %if.end166
  %65 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %out.3293)
  %cmp.not.i281 = icmp eq i32 %66, %out.3293
  br i1 %cmp.not.i281, label %if.end.i282.cleanup_crit_edge, label %land.rhs.i284

if.end.i282.cleanup_crit_edge:                    ; preds = %if.end.i282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i284:                                    ; preds = %if.end.i282
  %.b44.i283 = load i1, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  br i1 %.b44.i283, label %land.rhs.i284.cleanup_crit_edge, label %land.rhs.i284.cleanup.sink.split_crit_edge, !prof !113

land.rhs.i284.cleanup.sink.split_crit_edge:       ; preds = %land.rhs.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.rhs.i284.cleanup_crit_edge:                  ; preds = %land.rhs.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs.i284.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge
  store i1 true, ptr @nfp_prog_confirm_current_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i284.cleanup_crit_edge, %if.end.i282.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.rhs.i.cleanup_crit_edge ], [ -22, %land.rhs.i284.cleanup_crit_edge ], [ 0, %if.end166.cleanup_crit_edge ], [ 0, %if.end.i282.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ashr_imm64(ptr nocapture noundef %nfp_prog, i8 noundef zeroext %dst, i8 noundef zeroext %shift_amt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift_amt)
  %tobool.not = icmp eq i8 %shift_amt, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp = icmp ult i8 %shift_amt, 32
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %dst to i32
  %or.i = or i32 %conv3, 50331648
  %add = add nuw nsw i32 %conv3, 1
  %or.i2 = or i32 %add, 16777216
  %or.i4 = or i32 %conv3, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i, i32 noundef %or.i2, i32 noundef 0, i32 noundef %or.i4, i32 noundef 3, i8 noundef zeroext %shift_amt)
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i2, i32 noundef 20, i32 noundef 268435456)
  %or.i8 = or i32 %add, 50331648
  %or.i10 = or i32 %add, 33554432
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i8, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i10, i32 noundef 1, i8 noundef zeroext %shift_amt)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %shift_amt)
  %cmp25 = icmp eq i8 %shift_amt, 32
  %conv28 = zext i8 %dst to i32
  %add30 = add nuw nsw i32 %conv28, 1
  br i1 %cmp25, label %if.then27, label %if.then45

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %conv28, 50331648
  %or.i3.i = or i32 %add30, 33554432
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef %or.i.i, i32 noundef 536870912, i32 noundef 0, i32 noundef %or.i3.i) #9
  %or.i12 = or i32 %add30, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i12, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i3.i, i32 noundef 1, i8 noundef zeroext 31)
  br label %return

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or.i16 = or i32 %add30, 16777216
  tail call fastcc void @emit_alu(ptr noundef %nfp_prog, i32 noundef 536870912, i32 noundef %or.i16, i32 noundef 20, i32 noundef 268435456)
  %or.i18 = or i32 %conv28, 50331648
  %or.i20 = or i32 %add30, 33554432
  %sub = add i8 %shift_amt, -32
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i18, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i20, i32 noundef 1, i8 noundef zeroext %sub)
  %or.i22 = or i32 %add30, 50331648
  tail call fastcc void @emit_shf(ptr noundef %nfp_prog, i32 noundef %or.i22, i32 noundef 536870912, i32 noundef 6, i32 noundef %or.i20, i32 noundef 1, i8 noundef zeroext 31)
  br label %return

return:                                           ; preds = %if.then45, %if.then27, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ustore_check_valid_no_ecc(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_ustore_calc_ecc_insn(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 4481, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfp_bpf_jit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfp_bpf_jit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 4567, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nfp_bpf_relo_for_vnic._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @nfp_bpf_relo_for_vnic._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @nfp_bpf_relo_for_vnic._entry.5, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 4576, i32 5}
!13 = !{ptr @nfp_bpf_relo_for_vnic._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 4603, i32 5}
!16 = !{ptr @nfp_bpf_relo_for_vnic._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_bpf_relo_for_vnic._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nfp_bpf_opt_ld_mask.exp_mask, !19, !"exp_mask", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3961, i32 19}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 50, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nfp_prog_push._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfp_prog_push._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/../nfp_asm.h", i32 331, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 166, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @emit_br_relo._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @emit_br_relo._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3585, i32 4}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nfp_fixup_branches._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_fixup_branches._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3599, i32 4}
!39 = !{ptr @nfp_fixup_branches._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nfp_fixup_branches._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3606, i32 4}
!43 = !{ptr @nfp_fixup_branches._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_fixup_branches._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3545, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfp_fixup_immed_relo._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfp_fixup_immed_relo._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @instr_cb, !51, !"instr_cb", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3421, i32 25}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 112, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @emit_cmd_any._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @emit_cmd_any._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 117, i32 3}
!59 = !{ptr @emit_cmd_any._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @emit_cmd_any._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1392, i32 6}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @jmp_code_map, !65, !"jmp_code_map", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1375, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1031, i32 6}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1043, i32 6}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1051, i32 6}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 2976, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 74, i32 10}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1100, i32 6}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1113, i32 6}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1121, i32 6}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 385, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @emit_shf_indir._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @emit_shf_indir._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3312, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bpf_to_bpf_call._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @bpf_to_bpf_call._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 637, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @wrp_immed_relo._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @wrp_immed_relo._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 3363, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/jit.c", i32 1610, i32 7}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i8 0, i8 2}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i32 0, i32 33}
!115 = !{ptr @wrp_lmem_load, ptr @wrp_lmem_store}
