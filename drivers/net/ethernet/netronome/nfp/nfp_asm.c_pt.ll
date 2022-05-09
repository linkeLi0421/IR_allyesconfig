; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_asm.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_asm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cmd_tgt_act = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_insn_ur_regs = type { i32, i16, i16, i16, i8, i8, i8, i8 }
%struct.nfp_insn_re_regs = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@cmd_tgt_act = dso_local constant { [10 x %struct.cmd_tgt_act], [44 x i8] } { [10 x %struct.cmd_tgt_act] [%struct.cmd_tgt_act { i8 1, i8 67 }, %struct.cmd_tgt_act { i8 2, i8 66 }, %struct.cmd_tgt_act { i8 2, i8 95 }, %struct.cmd_tgt_act { i8 0, i8 92 }, %struct.cmd_tgt_act { i8 1, i8 92 }, %struct.cmd_tgt_act { i8 2, i8 92 }, %struct.cmd_tgt_act { i8 1, i8 64 }, %struct.cmd_tgt_act { i8 3, i8 64 }, %struct.cmd_tgt_act { i8 0, i8 71 }, %struct.cmd_tgt_act { i8 2, i8 71 }], [44 x i8] zeroinitializer }, align 32
@nfp_ustore_ecc_polynomials = internal constant { [7 x i64], [40 x i8] } { [7 x i64] [i64 17557826338815, i64 19756883083295, i64 33227981423073, i64 26163031871010, i64 29642568839748, i64 34457806591112, i64 15047042820368], [40 x i8] zeroinitializer }, align 32
@immed_can_modify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Can't decode/encode immed!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"immed_can_modify\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_asm.c\00", [51 x i8] zeroinitializer }, align 32
@immed_can_modify._entry_ptr = internal global ptr @immed_can_modify._entry, section ".printk_index", align 4
@nfp_swreg_to_unreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013LM offset too large\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_swreg_to_unreg\00", [45 x i8] zeroinitializer }, align 32
@nfp_swreg_to_unreg._entry_ptr = internal global ptr @nfp_swreg_to_unreg._entry, section ".printk_index", align 4
@nfp_swreg_to_unreg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013LM offset in inc/dev mode\0A\00", [35 x i8] zeroinitializer }, align 32
@nfp_swreg_to_unreg._entry_ptr.7 = internal global ptr @nfp_swreg_to_unreg._entry.5, section ".printk_index", align 4
@nfp_swreg_to_unreg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bad LM mode for unrestricted operands %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_swreg_to_unreg._entry_ptr.10 = internal global ptr @nfp_swreg_to_unreg._entry.8, section ".printk_index", align 4
@nfp_swreg_to_unreg._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013immediate too large\0A\00", [41 x i8] zeroinitializer }, align 32
@nfp_swreg_to_unreg._entry_ptr.13 = internal global ptr @nfp_swreg_to_unreg._entry.11, section ".printk_index", align 4
@nfp_swreg_to_unreg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013unrecognized reg encoding %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_swreg_to_unreg._entry_ptr.16 = internal global ptr @nfp_swreg_to_unreg._entry.14, section ".printk_index", align 4
@nfp_swreg_to_rereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bad LM mode for restricted operands %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_swreg_to_rereg\00", [45 x i8] zeroinitializer }, align 32
@nfp_swreg_to_rereg._entry_ptr = internal global ptr @nfp_swreg_to_rereg._entry, section ".printk_index", align 4
@nfp_swreg_to_rereg._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.18, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfp_swreg_to_rereg._entry_ptr.20 = internal global ptr @nfp_swreg_to_rereg._entry.19, section ".printk_index", align 4
@nfp_swreg_to_rereg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfp_swreg_to_rereg._entry_ptr.22 = internal global ptr @nfp_swreg_to_rereg._entry.21, section ".printk_index", align 4
@nfp_swreg_to_rereg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013NNRs used with restricted encoding\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_swreg_to_rereg._entry_ptr.25 = internal global ptr @nfp_swreg_to_rereg._entry.23, section ".printk_index", align 4
@nfp_swreg_to_rereg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013unrecognized reg encoding\0A\00", [35 x i8] zeroinitializer }, align 32
@nfp_swreg_to_rereg._entry_ptr.28 = internal global ptr @nfp_swreg_to_rereg._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 8, i64 16, i64 32, i64 64]
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"cmd_tgt_act\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 12, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"nfp_ustore_ecc_polynomials\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 288, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 65, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 133, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 143, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 150, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 164, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 220, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 226, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 233, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 241, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_asm.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 245, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @immed_can_modify._entry, ptr @immed_can_modify._entry_ptr, ptr @nfp_swreg_to_rereg._entry, ptr @nfp_swreg_to_rereg._entry.19, ptr @nfp_swreg_to_rereg._entry.21, ptr @nfp_swreg_to_rereg._entry.23, ptr @nfp_swreg_to_rereg._entry.26, ptr @nfp_swreg_to_rereg._entry_ptr, ptr @nfp_swreg_to_rereg._entry_ptr.20, ptr @nfp_swreg_to_rereg._entry_ptr.22, ptr @nfp_swreg_to_rereg._entry_ptr.25, ptr @nfp_swreg_to_rereg._entry_ptr.28, ptr @nfp_swreg_to_unreg._entry, ptr @nfp_swreg_to_unreg._entry.11, ptr @nfp_swreg_to_unreg._entry.14, ptr @nfp_swreg_to_unreg._entry.5, ptr @nfp_swreg_to_unreg._entry.8, ptr @nfp_swreg_to_unreg._entry_ptr, ptr @nfp_swreg_to_unreg._entry_ptr.10, ptr @nfp_swreg_to_unreg._entry_ptr.13, ptr @nfp_swreg_to_unreg._entry_ptr.16, ptr @nfp_swreg_to_unreg._entry_ptr.7, ptr @cmd_tgt_act, ptr @nfp_ustore_ecc_polynomials, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_tgt_act to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ustore_ecc_polynomials to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @immed_can_modify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_unreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_unreg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_unreg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_unreg._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_unreg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_rereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_rereg._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_rereg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_rereg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_swreg_to_rereg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @br_get_offset(i64 noundef %instr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i64 %instr, 22
  %0 = lshr i64 %instr, 27
  %mul = and i64 %0, 8192
  %conv33 = and i64 %and, 8191
  %or = or i64 %mul, %conv33
  %conv34 = trunc i64 %or to i16
  ret i16 %conv34
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @br_set_offset(ptr nocapture noundef %instr, i16 noundef zeroext %offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %offset)
  %0 = icmp ugt i16 %offset, 8191
  %1 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %instr, align 8
  %and6 = and i64 %2, -1133867171841
  %shl = select i1 %0, i64 1099511627776, i64 0
  %conv46 = zext i16 %offset to i64
  %shl47 = shl nuw nsw i64 %conv46, 22
  %and48 = and i64 %shl47, 34355544064
  %or = or i64 %and48, %shl
  %or49 = or i64 %or, %and6
  store i64 %or49, ptr %instr, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @br_add_offset(ptr nocapture noundef %instr, i16 noundef zeroext %offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %and.i = lshr i64 %1, 22
  %2 = lshr i64 %1, 27
  %mul.i = and i64 %2, 8192
  %conv33.i = and i64 %and.i, 8191
  %or.i = or i64 %mul.i, %conv33.i
  %conv34.i = trunc i64 %or.i to i16
  %add = add i16 %conv34.i, %offset
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %add)
  %3 = icmp ugt i16 %add, 8191
  %and6.i = and i64 %1, -1133867171841
  %shl.i = select i1 %3, i64 1099511627776, i64 0
  %conv46.i = zext i16 %add to i64
  %shl47.i = shl nuw nsw i64 %conv46.i, 22
  %and48.i = and i64 %shl47.i, 34355544064
  %or.i4 = or i64 %shl.i, %and6.i
  %or49.i = or i64 %or.i4, %and48.i
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %or49.i, ptr %instr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @immed_get_value(i64 noundef %instr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %instr, 29527900160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %do.end12, label %immed_can_modify.exit

immed_can_modify.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = trunc i64 %instr to i16
  %3 = and i16 %2, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %3)
  %cmp.i = icmp eq i16 %3, 768
  %and31 = lshr i64 %instr, 10
  %4 = trunc i64 %and31 to i16
  %reg.0.v = select i1 %cmp.i, i16 %2, i16 %4
  %5 = and i16 %reg.0.v, 255
  %6 = lshr i64 %instr, 12
  %7 = trunc i64 %6 to i16
  %8 = and i16 %7, -256
  %conv56 = or i16 %5, %8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %immed_can_modify.exit
  %retval.0 = phi i16 [ %conv56, %do.end12 ], [ 0, %immed_can_modify.exit ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @immed_set_value(ptr nocapture noundef %instr, i16 noundef zeroext %immed) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %2 = and i64 %1, 29527900160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %do.end8, label %immed_can_modify.exit

immed_can_modify.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %return

do.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %instr, align 8
  %6 = and i64 %5, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 768, i64 %6)
  %cmp.i = icmp eq i64 %6, 768
  br i1 %cmp.i, label %do.end20, label %do.end55

do.end20:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %and22 = and i64 %5, -256
  %7 = and i16 %immed, 255
  %8 = zext i16 %7 to i64
  %or = or i64 %and22, %8
  br label %if.end87

do.end55:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %and58 = and i64 %5, -261121
  %9 = and i16 %immed, 255
  %10 = zext i16 %9 to i64
  %shl84 = shl nuw nsw i64 %10, 10
  %or86 = or i64 %and58, %shl84
  br label %if.end87

if.end87:                                         ; preds = %do.end55, %do.end20
  %storemerge = phi i64 [ %or86, %do.end55 ], [ %or, %do.end20 ]
  %and88 = and i64 %storemerge, -267386881
  %11 = lshr i16 %immed, 8
  %12 = zext i16 %11 to i64
  %shl114 = shl nuw nsw i64 %12, 20
  %or116 = or i64 %and88, %shl114
  %13 = ptrtoint ptr %instr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or116, ptr %instr, align 8
  br label %return

return:                                           ; preds = %if.end87, %immed_can_modify.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @immed_add_value(ptr nocapture noundef %instr, i16 noundef zeroext %offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %2 = and i64 %1, 29527900160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %if.end, label %immed_can_modify.exit

immed_can_modify.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %instr, align 8
  %6 = and i64 %5, 29527900160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %do.end12.i, label %immed_can_modify.exit.i

immed_can_modify.exit.i:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %immed_get_value.exit

do.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = trunc i64 %5 to i16
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 768
  %and31.i = lshr i64 %5, 10
  %10 = trunc i64 %and31.i to i16
  %reg.0.v.i = select i1 %cmp.i.i, i16 %8, i16 %10
  %11 = and i16 %reg.0.v.i, 255
  %12 = lshr i64 %5, 12
  %13 = trunc i64 %12 to i16
  %14 = and i16 %13, -256
  %conv56.i = or i16 %11, %14
  br label %immed_get_value.exit

immed_get_value.exit:                             ; preds = %do.end12.i, %immed_can_modify.exit.i
  %retval.0.i = phi i16 [ %conv56.i, %do.end12.i ], [ 0, %immed_can_modify.exit.i ]
  %add = add i16 %retval.0.i, %offset
  %15 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %instr, align 8
  %17 = and i64 %16, 29527900160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %do.end8.i, label %immed_can_modify.exit.i7

immed_can_modify.exit.i7:                         ; preds = %immed_get_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

do.end8.i:                                        ; preds = %immed_get_value.exit
  %19 = and i64 %16, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 768, i64 %19)
  %cmp.i.i8 = icmp eq i64 %19, 768
  br i1 %cmp.i.i8, label %do.end20.i, label %do.end55.i

do.end20.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %and22.i = and i64 %16, -256
  %20 = and i16 %add, 255
  %21 = zext i16 %20 to i64
  %or.i = or i64 %and22.i, %21
  br label %if.end87.i

do.end55.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %and58.i = and i64 %16, -261121
  %22 = and i16 %add, 255
  %23 = zext i16 %22 to i64
  %shl84.i = shl nuw nsw i64 %23, 10
  %or86.i = or i64 %shl84.i, %and58.i
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end55.i, %do.end20.i
  %storemerge.i = phi i64 [ %or86.i, %do.end55.i ], [ %or.i, %do.end20.i ]
  %and88.i = and i64 %storemerge.i, -267386881
  %24 = lshr i16 %add, 8
  %25 = zext i16 %24 to i64
  %shl114.i = shl nuw nsw i64 %25, 20
  %or116.i = or i64 %and88.i, %shl114.i
  %26 = ptrtoint ptr %instr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or116.i, ptr %instr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end87.i, %immed_can_modify.exit.i7, %immed_can_modify.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swreg_to_unrestricted(i32 noundef %dst, i32 noundef %lreg, i32 noundef %rreg, ptr nocapture noundef writeonly %reg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %reg, i32 0, i32 16)
  %shr.i = lshr i32 %dst, 24
  %trunc = trunc i32 %shr.i to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.if.end8_crit_edge [
    i8 16, label %entry.return_crit_edge
    i8 2, label %if.end4.thread
    i8 3, label %if.then7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %reg, align 4
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wr_both = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 5
  %3 = ptrtoint ptr %wr_both to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %wr_both, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.thread, %entry.if.end8_crit_edge
  %call9 = tail call fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %dst, i1 noundef zeroext true)
  %dst10 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %dst10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call9, ptr %dst10, align 4
  %shr.i59 = lshr i32 %lreg, 24
  %shr.i60 = lshr i32 %rreg, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i59, i32 %shr.i60)
  %cmp13 = icmp eq i32 %shr.i59, %shr.i60
  br i1 %cmp13, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i59)
  %cmp15.not = icmp eq i32 %shr.i59, 32
  br i1 %cmp15.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i59)
  %cmp19 = icmp eq i32 %shr.i59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i60)
  %cmp21 = icmp eq i32 %shr.i60, 1
  %or.cond = or i1 %cmp19, %cmp21
  br i1 %or.cond, label %if.then22, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %rreg, i1 noundef zeroext false)
  %areg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %areg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call23, ptr %areg, align 2
  %call24 = tail call fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %lreg, i1 noundef zeroext false)
  %breg = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %breg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call24, ptr %breg, align 4
  %swap = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 4
  %7 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %swap, align 2
  br label %if.end29

if.else:                                          ; preds = %if.end17.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %call25 = tail call fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %lreg, i1 noundef zeroext false)
  %areg26 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %areg26 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call25, ptr %areg26, align 2
  %call27 = tail call fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %rreg, i1 noundef zeroext false)
  %breg28 = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %breg28 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call27, ptr %breg28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 6
  %10 = lshr i32 %dst, 23
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %dst_lmextn, align 4
  %14 = or i32 %rreg, %lreg
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_ur_regs, ptr %reg, i32 0, i32 7
  %15 = lshr i32 %14, 23
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %src_lmextn, align 1
  br label %return

return:                                           ; preds = %if.end29, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -14, %entry.return_crit_edge ], [ -14, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nfp_swreg_to_unreg(i32 noundef %reg, i1 noundef zeroext %is_dst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %reg to i16
  %conv.i = and i16 %0, 255
  %shr.i = lshr i32 %reg, 24
  %trunc = trunc i32 %shr.i to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %trunc, label %do.end142 [
    i8 1, label %entry.cleanup_crit_edge
    i8 2, label %entry.cleanup_crit_edge169
    i8 3, label %entry.cleanup_crit_edge170
    i8 4, label %sw.bb2
    i8 8, label %sw.bb4
    i8 64, label %sw.bb8
    i8 16, label %if.end132
    i8 32, label %sw.bb136
  ]

entry.cleanup_crit_edge170:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge169:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = or i16 %conv.i, 640
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = or i16 %conv.i, 384
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %4 = and i32 %reg, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  %and.i = lshr i32 %reg, 20
  %shr.i166 = and i32 %and.i, 3
  %5 = zext i32 %shr.i166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i166, label %do.end118 [
    i32 0, label %sw.bb12
    i32 2, label %sw.bb45
    i32 1, label %sw.bb8.sw.bb46_crit_edge
  ]

sw.bb8.sw.bb46_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46

sw.bb12:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv.i)
  %tobool.not = icmp ult i16 %conv.i, 16
  br i1 %tobool.not, label %do.body21, label %do.end

do.end:                                           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.body21:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %or41 = select i1 %tobool.i.not, i16 512, i16 544
  %or43 = or i16 %or41, %conv.i
  br label %cleanup

sw.bb45:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb45, %sw.bb8.sw.bb46_crit_edge
  %lm_dec.0.off0 = phi i1 [ false, %sw.bb8.sw.bb46_crit_edge ], [ true, %sw.bb45 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool47.not = icmp eq i16 %conv.i, 0
  br i1 %tobool47.not, label %do.body61, label %do.end51

do.end51:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

do.body61:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  %or84 = select i1 %tobool.i.not, i16 528, i16 560
  %conv111 = zext i1 %lm_dec.0.off0 to i16
  %or114 = or i16 %or84, %conv111
  br label %cleanup

do.end118:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shr.i166) #9
  br label %cleanup

if.end132:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or134 = or i16 %conv.i, 768
  br label %cleanup

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv139 = select i1 %is_dst, i16 768, i16 0
  br label %cleanup

do.end142:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %reg) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %sw.bb136, %if.end132, %do.end118, %do.body61, %do.end51, %do.body21, %do.end, %sw.bb4, %sw.bb2, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge169, %entry.cleanup_crit_edge170
  %retval.0 = phi i16 [ 0, %do.end142 ], [ %conv139, %sw.bb136 ], [ %or134, %if.end132 ], [ 0, %do.end118 ], [ 0, %do.end51 ], [ %or114, %do.body61 ], [ 0, %do.end ], [ %or43, %do.body21 ], [ %3, %sw.bb4 ], [ %2, %sw.bb2 ], [ %conv.i, %entry.cleanup_crit_edge ], [ %conv.i, %entry.cleanup_crit_edge169 ], [ %conv.i, %entry.cleanup_crit_edge170 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swreg_to_restricted(i32 noundef %dst, i32 noundef %lreg, i32 noundef %rreg, ptr nocapture noundef writeonly %reg, i1 noundef zeroext %has_imm8) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %reg, i32 0, i32 12)
  %shr.i = lshr i32 %dst, 24
  %trunc = trunc i32 %shr.i to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %trunc, label %entry.if.end8_crit_edge [
    i8 16, label %entry.return_crit_edge
    i8 2, label %if.end4.thread
    i8 3, label %if.then7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %reg, align 4
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wr_both = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 5
  %3 = ptrtoint ptr %wr_both to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %wr_both, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.thread, %entry.if.end8_crit_edge
  %call9 = tail call fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %dst, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null)
  %conv = trunc i16 %call9 to i8
  %dst10 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %dst10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %dst10, align 4
  %shr.i83 = lshr i32 %lreg, 24
  %shr.i84 = lshr i32 %rreg, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i83, i32 %shr.i84)
  %cmp13 = icmp eq i32 %shr.i83, %shr.i84
  br i1 %cmp13, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i83)
  %cmp16.not = icmp eq i32 %shr.i83, 32
  br i1 %cmp16.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i83)
  %cmp21 = icmp eq i32 %shr.i83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i84)
  %cmp24 = icmp eq i32 %shr.i84, 1
  %or.cond = or i1 %cmp21, %cmp24
  br i1 %or.cond, label %if.then26, label %if.end19.if.else_crit_edge

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %i8 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 6
  %call27 = tail call fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %rreg, i1 noundef zeroext false, i1 noundef zeroext %has_imm8, ptr noundef %i8)
  %conv28 = trunc i16 %call27 to i8
  %areg = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %areg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv28, ptr %areg, align 1
  %call31 = tail call fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %lreg, i1 noundef zeroext false, i1 noundef zeroext %has_imm8, ptr noundef %i8)
  %conv32 = trunc i16 %call31 to i8
  %breg = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %breg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv32, ptr %breg, align 2
  %swap = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 4
  %7 = ptrtoint ptr %swap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %swap, align 1
  br label %if.end43

if.else:                                          ; preds = %if.end19.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %i834 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 6
  %call35 = tail call fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %lreg, i1 noundef zeroext false, i1 noundef zeroext %has_imm8, ptr noundef %i834)
  %conv36 = trunc i16 %call35 to i8
  %areg37 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %areg37 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv36, ptr %areg37, align 1
  %call40 = tail call fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %rreg, i1 noundef zeroext false, i1 noundef zeroext %has_imm8, ptr noundef %i834)
  %conv41 = trunc i16 %call40 to i8
  %breg42 = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %breg42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv41, ptr %breg42, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then26
  %dst_lmextn = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 7
  %10 = lshr i32 %dst, 23
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %dst_lmextn to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %dst_lmextn, align 2
  %14 = or i32 %rreg, %lreg
  %src_lmextn = getelementptr inbounds %struct.nfp_insn_re_regs, ptr %reg, i32 0, i32 8
  %15 = lshr i32 %14, 23
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %src_lmextn to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %src_lmextn, align 1
  br label %return

return:                                           ; preds = %if.end43, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -14, %entry.return_crit_edge ], [ -14, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nfp_swreg_to_rereg(i32 noundef %reg, i1 noundef zeroext %is_dst, i1 noundef zeroext %has_imm8, ptr nocapture noundef writeonly %i8) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %reg to i16
  %conv.i = and i16 %0, 255
  %shr.i = lshr i32 %reg, 24
  %trunc = trunc i32 %shr.i to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %trunc, label %do.end91 [
    i8 1, label %entry.cleanup_crit_edge
    i8 2, label %entry.cleanup_crit_edge111
    i8 3, label %entry.cleanup_crit_edge112
    i8 8, label %sw.bb3
    i8 64, label %sw.bb5
    i8 16, label %sw.bb50
    i8 32, label %sw.bb79
    i8 4, label %do.end86
  ]

entry.cleanup_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = or i16 %conv.i, 128
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %3 = and i32 %reg, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  %and.i = lshr i32 %reg, 20
  %shr.i108 = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i108)
  %cmp.not = icmp eq i32 %shr.i108, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %shr.i108) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv.i)
  %tobool.not = icmp ult i16 %conv.i, 8
  br i1 %tobool.not, label %do.body26, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or46 = select i1 %tobool.i.not, i16 80, i16 88
  %or48 = or i16 %or46, %conv.i
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  %conv51 = zext i16 %conv.i to i32
  %neg = select i1 %has_imm8, i32 0, i32 128
  %and56 = and i32 %neg, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end64:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %reg to i8
  %5 = lshr i8 %4, 7
  %6 = ptrtoint ptr %i8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %i8, align 1
  %and71 = and i16 %0, 31
  %and75 = shl nuw nsw i16 %conv.i, 1
  %shl76 = and i16 %and75, 192
  %or72 = or i16 %and71, %shl76
  %or77 = or i16 %or72, 32
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv82 = select i1 %is_dst, i16 32, i16 0
  br label %cleanup

do.end86:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

do.end91:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %do.end86, %sw.bb79, %if.end64, %do.end61, %do.body26, %do.end16, %do.end, %sw.bb3, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge111, %entry.cleanup_crit_edge112
  %retval.0 = phi i16 [ 0, %do.end91 ], [ 0, %do.end86 ], [ %conv82, %sw.bb79 ], [ 0, %do.end61 ], [ %or77, %if.end64 ], [ 0, %do.end ], [ 0, %do.end16 ], [ %or48, %do.body26 ], [ %2, %sw.bb3 ], [ %conv.i, %entry.cleanup_crit_edge ], [ %conv.i, %entry.cleanup_crit_edge111 ], [ %conv.i, %entry.cleanup_crit_edge112 ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_ustore_check_valid_no_ecc(i64 noundef %insn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177664, i64 %insn)
  %tobool.not = icmp ult i64 %insn, 70368744177664
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_ustore_calc_ecc_insn(i64 noundef %insn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %insn, 17557826338815
  %call.i.i = tail call i32 @__sw_hweight64(i64 noundef %and) #6
  %0 = trunc i32 %call.i.i to i8
  %1 = and i8 %0, 1
  %and.1 = and i64 %insn, 19756883083295
  %call.i.i.1 = tail call i32 @__sw_hweight64(i64 noundef %and.1) #6
  %call.i.i.1.tr = trunc i32 %call.i.i.1 to i8
  %2 = shl i8 %call.i.i.1.tr, 1
  %3 = and i8 %2, 2
  %conv2.1 = or i8 %1, %3
  %and.2 = and i64 %insn, 33227981423073
  %call.i.i.2 = tail call i32 @__sw_hweight64(i64 noundef %and.2) #6
  %call.i.i.2.tr = trunc i32 %call.i.i.2 to i8
  %4 = shl i8 %call.i.i.2.tr, 2
  %5 = and i8 %4, 4
  %conv2.2 = or i8 %conv2.1, %5
  %and.3 = and i64 %insn, 26163031871010
  %call.i.i.3 = tail call i32 @__sw_hweight64(i64 noundef %and.3) #6
  %call.i.i.3.tr = trunc i32 %call.i.i.3 to i8
  %6 = shl i8 %call.i.i.3.tr, 3
  %7 = and i8 %6, 8
  %conv2.3 = or i8 %conv2.2, %7
  %and.4 = and i64 %insn, 29642568839748
  %call.i.i.4 = tail call i32 @__sw_hweight64(i64 noundef %and.4) #6
  %call.i.i.4.tr = trunc i32 %call.i.i.4 to i8
  %8 = shl i8 %call.i.i.4.tr, 4
  %9 = and i8 %8, 16
  %conv2.4 = or i8 %conv2.3, %9
  %and.5 = and i64 %insn, 34457806591112
  %call.i.i.5 = tail call i32 @__sw_hweight64(i64 noundef %and.5) #6
  %call.i.i.5.tr = trunc i32 %call.i.i.5 to i8
  %10 = shl i8 %call.i.i.5.tr, 5
  %11 = and i8 %10, 32
  %conv2.5 = or i8 %conv2.4, %11
  %and.6 = and i64 %insn, 15047042820368
  %call.i.i.6 = tail call i32 @__sw_hweight64(i64 noundef %and.6) #6
  %call.i.i.6.tr = trunc i32 %call.i.i.6 to i8
  %12 = shl i8 %call.i.i.6.tr, 6
  %13 = and i8 %12, 64
  %conv2.6 = or i8 %conv2.5, %13
  %conv3 = zext i8 %conv2.6 to i64
  %shl4 = shl nuw nsw i64 %conv3, 45
  %or5 = or i64 %shl4, %insn
  ret i64 %or5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @cmd_tgt_act, !1, !"cmd_tgt_act", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 12, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 65, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @immed_can_modify._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @immed_can_modify._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 133, i32 5}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfp_swreg_to_unreg._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfp_swreg_to_unreg._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 143, i32 5}
!15 = !{ptr @nfp_swreg_to_unreg._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_swreg_to_unreg._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 150, i32 4}
!19 = !{ptr @nfp_swreg_to_unreg._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_swreg_to_unreg._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 156, i32 4}
!23 = !{ptr @nfp_swreg_to_unreg._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfp_swreg_to_unreg._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 164, i32 2}
!27 = !{ptr @nfp_swreg_to_unreg._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfp_swreg_to_unreg._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 220, i32 4}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nfp_swreg_to_rereg._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nfp_swreg_to_rereg._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @nfp_swreg_to_rereg._entry.19, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 226, i32 4}
!36 = !{ptr @nfp_swreg_to_rereg._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @nfp_swreg_to_rereg._entry.21, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 233, i32 4}
!39 = !{ptr @nfp_swreg_to_rereg._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 241, i32 3}
!42 = !{ptr @nfp_swreg_to_rereg._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_swreg_to_rereg._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 245, i32 2}
!46 = !{ptr @nfp_swreg_to_rereg._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_swreg_to_rereg._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @nfp_ustore_ecc_polynomials, !49, !"nfp_ustore_ecc_polynomials", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_asm.c", i32 288, i32 18}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
