; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wcd-clsh-v2.c_pt.bc'
source_filename = "../sound/soc/codecs/wcd-clsh-v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wcd_clsh_ctrl = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@wcd_clsh_ctrl_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Class-H not a valid new state:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd_clsh_ctrl_set_state\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/codecs/wcd-clsh-v2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcd_clsh_ctrl_set_state._entry_ptr = internal global ptr @wcd_clsh_ctrl_set_state._entry, section ".printk_index", align 4
@wcd_clsh_v3_set_hph_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:Invalid mode %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcd_clsh_v3_set_hph_mode\00", [39 x i8] zeroinitializer }, align 32
@wcd_clsh_v3_set_hph_mode._entry_ptr = internal global ptr @wcd_clsh_v3_set_hph_mode._entry, section ".printk_index", align 4
@wcd_clsh_state_ear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: mode: %d cannot be used for EAR\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcd_clsh_state_ear\00", [45 x i8] zeroinitializer }, align 32
@wcd_clsh_state_ear._entry_ptr = internal global ptr @wcd_clsh_state_ear._entry, section ".printk_index", align 4
@wcd_clsh_v3_state_hph_l.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"snd_soc_wcd9335:snd_soc_wcd934x:snd_soc_wcd938x\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd_clsh_v3_state_hph_l\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Normal mode not applicable for hph_l\0A\00", [54 x i8] zeroinitializer }, align 32
@wcd_clsh_state_hph_l._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcd_clsh_state_hph_l\00", [43 x i8] zeroinitializer }, align 32
@wcd_clsh_state_hph_l._entry_ptr = internal global ptr @wcd_clsh_state_hph_l._entry, section ".printk_index", align 4
@wcd_clsh_v3_state_hph_r.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd_clsh_v3_state_hph_r\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Normal mode not applicable for hph_r\0A\00", [54 x i8] zeroinitializer }, align 32
@wcd_clsh_state_hph_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcd_clsh_state_hph_r\00", [43 x i8] zeroinitializer }, align 32
@wcd_clsh_state_hph_r._entry_ptr = internal global ptr @wcd_clsh_state_hph_r._entry, section ".printk_index", align 4
@wcd_clsh_state_lo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: LO cannot be in this mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcd_clsh_state_lo\00", [46 x i8] zeroinitializer }, align 32
@wcd_clsh_state_lo._entry_ptr = internal global ptr @wcd_clsh_state_lo._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.wcd_clsh_set_hph_mode = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 8, i32 4, i32 12, i32 4, i32 12, i32 8, i32 4, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_set_hph_mode.18 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 8, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_set_hph_mode.19 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 5, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_set_hph_mode.20 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_set_hph_mode.21 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 80, i32 80, i32 48], [20 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 0, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.22 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 112, i32 112, i32 128, i32 112, i32 128, i32 112, i32 128], [32 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.23 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 0, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.24 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 8, i32 4, i32 12, i32 4, i32 12, i32 8, i32 4, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.25 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 0, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.26 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 0, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table._wcd_clsh_ctrl_set_state.27 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 112, i32 112, i32 128, i32 112, i32 128, i32 112, i32 128], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_l = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 0, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_l.28 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 112, i32 112, i32 128, i32 112, i32 128, i32 112, i32 128], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_l.29 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 0, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_l.30 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 4, i32 12, i32 8, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_r = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 0, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_r.31 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 112, i32 112, i32 128, i32 112, i32 128, i32 112, i32 128], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_r.32 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 0, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd_clsh_v3_state_hph_r.33 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 12, i32 4, i32 12, i32 8, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 860, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 347, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 753, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 637, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 669, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 547, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 579, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [34 x i8] c"../sound/soc/codecs/wcd-clsh-v2.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 520, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [35 x i8] c"switch.table.wcd_clsh_set_hph_mode\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [38 x i8] c"switch.table.wcd_clsh_set_hph_mode.18\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [38 x i8] c"switch.table.wcd_clsh_set_hph_mode.19\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [38 x i8] c"switch.table.wcd_clsh_set_hph_mode.20\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [38 x i8] c"switch.table.wcd_clsh_set_hph_mode.21\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [38 x i8] c"switch.table._wcd_clsh_ctrl_set_state\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.22\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.23\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.24\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.25\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.26\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [41 x i8] c"switch.table._wcd_clsh_ctrl_set_state.27\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [37 x i8] c"switch.table.wcd_clsh_v3_state_hph_l\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_l.28\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_l.29\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_l.30\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [37 x i8] c"switch.table.wcd_clsh_v3_state_hph_r\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_r.31\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_r.32\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [40 x i8] c"switch.table.wcd_clsh_v3_state_hph_r.33\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @wcd_clsh_ctrl_set_state._entry, ptr @wcd_clsh_ctrl_set_state._entry_ptr, ptr @wcd_clsh_state_ear._entry, ptr @wcd_clsh_state_ear._entry_ptr, ptr @wcd_clsh_state_hph_l._entry, ptr @wcd_clsh_state_hph_l._entry_ptr, ptr @wcd_clsh_state_hph_r._entry, ptr @wcd_clsh_state_hph_r._entry_ptr, ptr @wcd_clsh_state_lo._entry, ptr @wcd_clsh_state_lo._entry_ptr, ptr @wcd_clsh_v3_set_hph_mode._entry, ptr @wcd_clsh_v3_set_hph_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.wcd_clsh_set_hph_mode, ptr @switch.table.wcd_clsh_set_hph_mode.18, ptr @switch.table.wcd_clsh_set_hph_mode.19, ptr @switch.table.wcd_clsh_set_hph_mode.20, ptr @switch.table.wcd_clsh_set_hph_mode.21, ptr @switch.table._wcd_clsh_ctrl_set_state, ptr @switch.table._wcd_clsh_ctrl_set_state.22, ptr @switch.table._wcd_clsh_ctrl_set_state.23, ptr @switch.table._wcd_clsh_ctrl_set_state.24, ptr @switch.table._wcd_clsh_ctrl_set_state.25, ptr @switch.table._wcd_clsh_ctrl_set_state.26, ptr @switch.table._wcd_clsh_ctrl_set_state.27, ptr @switch.table.wcd_clsh_v3_state_hph_l, ptr @switch.table.wcd_clsh_v3_state_hph_l.28, ptr @switch.table.wcd_clsh_v3_state_hph_l.29, ptr @switch.table.wcd_clsh_v3_state_hph_l.30, ptr @switch.table.wcd_clsh_v3_state_hph_r, ptr @switch.table.wcd_clsh_v3_state_hph_r.31, ptr @switch.table.wcd_clsh_v3_state_hph_r.32, ptr @switch.table.wcd_clsh_v3_state_hph_r.33], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_ctrl_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_v3_set_hph_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_state_ear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_state_hph_l._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_state_hph_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_clsh_state_lo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_set_hph_mode to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_set_hph_mode.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_set_hph_mode.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_set_hph_mode.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_set_hph_mode.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wcd_clsh_ctrl_set_state.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_l to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_l.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_l.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_l.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_r to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_r.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_r.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd_clsh_v3_state_hph_r.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcd_clsh_set_hph_mode(ptr nocapture noundef readonly %ctrl, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp1 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %comp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp1, align 4
  %codec_version = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %2 = ptrtoint ptr %codec_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %4 = icmp ult i32 %mode, 9
  br i1 %4, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %mode) #8
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.wcd_clsh_set_hph_mode, i32 0, i32 %mode
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12297, i32 noundef 12, i32 noundef %switch.load) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %8 = icmp ult i32 %mode, 3
  br i1 %8, label %switch.lookup10, label %if.else.sw.epilog.i9_crit_edge

if.else.sw.epilog.i9_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i9

switch.lookup10:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep11 = getelementptr inbounds [3 x i32], ptr @switch.table.wcd_clsh_set_hph_mode.18, i32 0, i32 %mode
  %9 = ptrtoint ptr %switch.gep11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load12 = load i32, ptr %switch.gep11, align 4
  %switch.gep13 = getelementptr inbounds [3 x i32], ptr @switch.table.wcd_clsh_set_hph_mode.19, i32 0, i32 %mode
  %10 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  %switch.gep15 = getelementptr inbounds [3 x i32], ptr @switch.table.wcd_clsh_set_hph_mode.20, i32 0, i32 %mode
  %11 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %switch.gep17 = getelementptr inbounds [3 x i32], ptr @switch.table.wcd_clsh_set_hph_mode.21, i32 0, i32 %mode
  %12 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load18 = load i32, ptr %switch.gep17, align 4
  br label %sw.epilog.i9

sw.epilog.i9:                                     ; preds = %switch.lookup10, %if.else.sw.epilog.i9_crit_edge
  %val.0.i7 = phi i32 [ 0, %if.else.sw.epilog.i9_crit_edge ], [ %switch.load12, %switch.lookup10 ]
  %gain.0.i = phi i32 [ 0, %if.else.sw.epilog.i9_crit_edge ], [ %switch.load14, %switch.lookup10 ]
  %res_val.0.i = phi i32 [ 0, %if.else.sw.epilog.i9_crit_edge ], [ %switch.load16, %switch.lookup10 ]
  %ipeak.0.i = phi i32 [ 80, %if.else.sw.epilog.i9_crit_edge ], [ %switch.load18, %switch.lookup10 ]
  %call.i8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1545, i32 noundef 12, i32 noundef %val.0.i7) #5
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1691, i32 noundef 48, i32 noundef %res_val.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not.i = icmp eq i32 %mode, 2
  br i1 %cmp.not.i, label %sw.epilog.i9.wcd_clsh_v2_set_hph_mode.exit_crit_edge, label %if.then.i

sw.epilog.i9.wcd_clsh_v2_set_hph_mode.exit_crit_edge: ; preds = %sw.epilog.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v2_set_hph_mode.exit

if.then.i:                                        ; preds = %sw.epilog.i9
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1757, i32 noundef 7, i32 noundef %gain.0.i) #5
  br label %wcd_clsh_v2_set_hph_mode.exit

wcd_clsh_v2_set_hph_mode.exit:                    ; preds = %if.then.i, %sw.epilog.i9.wcd_clsh_v2_set_hph_mode.exit_crit_edge
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1692, i32 noundef 240, i32 noundef %ipeak.0.i) #5
  br label %if.end

if.end:                                           ; preds = %wcd_clsh_v2_set_hph_mode.exit, %switch.lookup, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcd_clsh_ctrl_set_state(ptr noundef %ctrl, i32 noundef %clsh_event, i32 noundef %nstate, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp1 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %comp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp1, align 4
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nstate)
  %cmp = icmp eq i32 %3, %nstate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %nstate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %nstate, label %do.end [
    i32 0, label %if.end.if.end3_crit_edge
    i32 1, label %if.end.if.end3_crit_edge21
    i32 2, label %if.end.if.end3_crit_edge22
    i32 4, label %if.end.if.end3_crit_edge23
    i32 8, label %if.end.if.end3_crit_edge24
    i32 16, label %if.end.if.end3_crit_edge25
  ]

if.end.if.end3_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge21, %if.end.if.end3_crit_edge22, %if.end.if.end3_crit_edge23, %if.end.if.end3_crit_edge24, %if.end.if.end3_crit_edge25
  %7 = zext i32 %clsh_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %clsh_event, label %if.end3.sw.epilog_crit_edge [
    i32 1, label %if.end3.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb5
  ]

if.end3.sw.epilog.sink.split_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %if.end3.sw.epilog.sink.split_crit_edge
  %.sink = phi i1 [ false, %sw.bb5 ], [ true, %if.end3.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @_wcd_clsh_ctrl_set_state(ptr noundef %ctrl, i32 noundef %nstate, i1 noundef zeroext %.sink, i32 noundef %mode)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end3.sw.epilog_crit_edge
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nstate, ptr %ctrl, align 4
  %mode8 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 1
  %9 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %mode8, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_wcd_clsh_ctrl_set_state(ptr noundef %ctrl, i32 noundef %req_state, i1 noundef zeroext %is_enable, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %req_state, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb10
    i32 8, label %sw.bb18
    i32 16, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %codec_version = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %1 = ptrtoint ptr %codec_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %codec_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  %comp.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %3 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %comp.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  br i1 %is_enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %call.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 2, i32 noundef 0) #5
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 8
  br i1 %5, label %switch.lookup, label %if.then.i.wcd_clsh_v3_set_flyback_mode.exit.i_crit_edge

if.then.i.wcd_clsh_v3_set_flyback_mode.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_flyback_mode.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep188 = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.22, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep188 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load189 = load i32, ptr %switch.gep188, align 4
  br label %wcd_clsh_v3_set_flyback_mode.exit.i

wcd_clsh_v3_set_flyback_mode.exit.i:              ; preds = %switch.lookup, %if.then.i.wcd_clsh_v3_set_flyback_mode.exit.i_crit_edge
  %.sink15.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then.i.wcd_clsh_v3_set_flyback_mode.exit.i_crit_edge ]
  %.sink.i.i = phi i32 [ %switch.load189, %switch.lookup ], [ 112, %if.then.i.wcd_clsh_v3_set_flyback_mode.exit.i_crit_edge ]
  %call7.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 4, i32 noundef %.sink15.i.i) #5
  %call8.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12456, i32 noundef 240, i32 noundef %.sink.i.i) #5
  tail call fastcc void @wcd_clsh_v3_force_iq_ctl(ptr noundef %4, i32 noundef %mode, i1 noundef zeroext true) #5
  %flyback_users.i.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %8 = ptrtoint ptr %flyback_users.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flyback_users.i.i, align 4
  %inc.i.i = add i32 %9, 1
  store i32 %inc.i.i, ptr %flyback_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %wcd_clsh_v3_set_flyback_mode.exit.i.wcd_clsh_v3_flyback_ctrl.exit.i_crit_edge

wcd_clsh_v3_set_flyback_mode.exit.i.wcd_clsh_v3_flyback_ctrl.exit.i_crit_edge: ; preds = %wcd_clsh_v3_set_flyback_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit.i

if.then.i.i:                                      ; preds = %wcd_clsh_v3_set_flyback_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit.i

wcd_clsh_v3_flyback_ctrl.exit.i:                  ; preds = %if.then.i.i, %wcd_clsh_v3_set_flyback_mode.exit.i.wcd_clsh_v3_flyback_ctrl.exit.i_crit_edge
  %call.i3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12487, i32 noundef 15, i32 noundef 10) #5
  %call1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12487, i32 noundef 240, i32 noundef 160) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %switch.tableidx191 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx191)
  %10 = icmp ult i32 %switch.tableidx191, 8
  br i1 %10, label %switch.lookup190, label %wcd_clsh_v3_flyback_ctrl.exit.i.wcd_clsh_v3_set_buck_mode.exit.i_crit_edge

wcd_clsh_v3_flyback_ctrl.exit.i.wcd_clsh_v3_set_buck_mode.exit.i_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_buck_mode.exit.i

switch.lookup190:                                 ; preds = %wcd_clsh_v3_flyback_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep192 = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.23, i32 0, i32 %switch.tableidx191
  %11 = ptrtoint ptr %switch.gep192 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load193 = load i32, ptr %switch.gep192, align 4
  br label %wcd_clsh_v3_set_buck_mode.exit.i

wcd_clsh_v3_set_buck_mode.exit.i:                 ; preds = %switch.lookup190, %wcd_clsh_v3_flyback_ctrl.exit.i.wcd_clsh_v3_set_buck_mode.exit.i_crit_edge
  %.sink.i5.i = phi i32 [ %switch.load193, %switch.lookup190 ], [ 0, %wcd_clsh_v3_flyback_ctrl.exit.i.wcd_clsh_v3_set_buck_mode.exit.i_crit_edge ]
  %call6.i6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 8, i32 noundef %.sink.i5.i) #5
  tail call fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %4, ptr noundef %ctrl, i32 noundef %mode, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %12 = icmp ult i32 %mode, 9
  br i1 %12, label %switch.lookup194, label %do.end.i.i

do.end.i.i:                                       ; preds = %wcd_clsh_v3_set_buck_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %mode) #8
  br label %sw.epilog

switch.lookup194:                                 ; preds = %wcd_clsh_v3_set_buck_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep195 = getelementptr inbounds [9 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.24, i32 0, i32 %mode
  %15 = ptrtoint ptr %switch.gep195 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load196 = load i32, ptr %switch.gep195, align 4
  %call.i7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12297, i32 noundef 12, i32 noundef %switch.load196) #5
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then
  %call.i9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12297, i32 noundef 12, i32 noundef 0) #5
  %flyback_users.i11.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %16 = ptrtoint ptr %flyback_users.i11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flyback_users.i11.i, align 4
  %dec.i.i = add i32 %17, -1
  store i32 %dec.i.i, ptr %flyback_users.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp4.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp4.i.i, label %if.then.i15.i, label %if.else.i.wcd_clsh_v3_flyback_ctrl.exit16.i_crit_edge

if.else.i.wcd_clsh_v3_flyback_ctrl.exit16.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit16.i

if.then.i15.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i13.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i14.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit16.i

wcd_clsh_v3_flyback_ctrl.exit16.i:                ; preds = %if.then.i15.i, %if.else.i.wcd_clsh_v3_flyback_ctrl.exit16.i_crit_edge
  %buck_users.i.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %18 = ptrtoint ptr %buck_users.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buck_users.i.i, align 4
  %dec.i17.i = add i32 %19, -1
  store i32 %dec.i17.i, ptr %buck_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i17.i)
  %cmp4.i18.i = icmp eq i32 %dec.i17.i, 0
  br i1 %cmp4.i18.i, label %if.then.i20.i, label %wcd_clsh_v3_flyback_ctrl.exit16.i.wcd_clsh_v3_buck_ctrl.exit.i_crit_edge

wcd_clsh_v3_flyback_ctrl.exit16.i.wcd_clsh_v3_buck_ctrl.exit.i_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_buck_ctrl.exit.i

if.then.i20.i:                                    ; preds = %wcd_clsh_v3_flyback_ctrl.exit16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 128, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #5
  %call19.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12440, i32 noundef 255, i32 noundef 58) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_buck_ctrl.exit.i

wcd_clsh_v3_buck_ctrl.exit.i:                     ; preds = %if.then.i20.i, %wcd_clsh_v3_flyback_ctrl.exit16.i.wcd_clsh_v3_buck_ctrl.exit.i_crit_edge
  %call5.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12600, i32 noundef 32, i32 noundef 0) #5
  %call6.i22.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12479, i32 noundef 240, i32 noundef 128) #5
  %call7.i23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12497, i32 noundef 14, i32 noundef 6) #5
  %call7.i27.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 4, i32 noundef 0) #5
  %call8.i28.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12456, i32 noundef 240, i32 noundef 112) #5
  %call6.i31.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 12296, i32 noundef 8, i32 noundef 0) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.not.i = icmp eq i32 %mode, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %mode) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else
  br i1 %is_enable, label %if.then2.i, label %if.else.i9

if.then2.i:                                       ; preds = %if.end.i
  %clsh_users.i.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %22 = ptrtoint ptr %clsh_users.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clsh_users.i.i, align 4
  %inc.i.i1 = add i32 %23, 1
  store i32 %inc.i.i1, ptr %clsh_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i2 = icmp eq i32 %23, 0
  br i1 %cmp.i.i2, label %if.then.i.i4, label %if.then2.i.if.end.i.i_crit_edge

if.then2.i.if.end.i.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i4:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 3073, i32 noundef 1, i32 noundef 1) #5
  %24 = ptrtoint ptr %clsh_users.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %clsh_users.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i4, %if.then2.i.if.end.i.i_crit_edge
  %25 = phi i32 [ %.pr.i, %if.then.i.i4 ], [ %inc.i.i1, %if.then2.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.i.i = icmp slt i32 %25, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end.i.i.wcd_enable_clsh_block.exit.i_crit_edge

if.end.i.i.wcd_enable_clsh_block.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_enable_clsh_block.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %clsh_users.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %clsh_users.i.i, align 4
  br label %wcd_enable_clsh_block.exit.i

wcd_enable_clsh_block.exit.i:                     ; preds = %if.then10.i.i, %if.end.i.i.wcd_enable_clsh_block.exit.i_crit_edge
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 2882, i32 noundef 64, i32 noundef 64) #5
  %call1.i.i5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  %call1.i1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %27 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %comp.i, align 4
  %flyback_users.i.i6 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %29 = ptrtoint ptr %flyback_users.i.i6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flyback_users.i.i6, align 4
  %inc.i3.i = add i32 %30, 1
  store i32 %inc.i3.i, ptr %flyback_users.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i4.i = icmp eq i32 %30, 0
  br i1 %cmp.i4.i, label %if.then.i6.i, label %wcd_enable_clsh_block.exit.i.wcd_clsh_flyback_ctrl.exit.i_crit_edge

wcd_enable_clsh_block.exit.i.wcd_clsh_flyback_ctrl.exit.i_crit_edge: ; preds = %wcd_enable_clsh_block.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit.i

if.then.i6.i:                                     ; preds = %wcd_enable_clsh_block.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %28, i32 noundef 1544, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit.i

wcd_clsh_flyback_ctrl.exit.i:                     ; preds = %if.then.i6.i, %wcd_enable_clsh_block.exit.i.wcd_clsh_flyback_ctrl.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call.i8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1735, i32 noundef 15, i32 noundef 10) #5
  %call1.i9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1735, i32 noundef 240, i32 noundef 10) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %31 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %comp.i, align 4
  %buck_users.i.i7 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %33 = ptrtoint ptr %buck_users.i.i7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buck_users.i.i7, align 4
  %inc.i11.i = add i32 %34, 1
  store i32 %inc.i11.i, ptr %buck_users.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i12.i = icmp eq i32 %34, 0
  br i1 %cmp.i12.i, label %if.then.i14.i, label %wcd_clsh_flyback_ctrl.exit.i.wcd_clsh_buck_ctrl.exit.i_crit_edge

wcd_clsh_flyback_ctrl.exit.i.wcd_clsh_buck_ctrl.exit.i_crit_edge: ; preds = %wcd_clsh_flyback_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit.i

if.then.i14.i:                                    ; preds = %wcd_clsh_flyback_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i13.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %32, i32 noundef 1544, i32 noundef 128, i32 noundef 128) #5
  br label %wcd_clsh_buck_ctrl.exit.i

wcd_clsh_buck_ctrl.exit.i:                        ; preds = %if.then.i14.i, %wcd_clsh_flyback_ctrl.exit.i.wcd_clsh_buck_ctrl.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %sw.epilog

if.else.i9:                                       ; preds = %if.end.i
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 2882, i32 noundef 64, i32 noundef 0) #5
  %35 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %comp.i, align 4
  %clsh_users.i17.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %37 = ptrtoint ptr %clsh_users.i17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clsh_users.i17.i, align 4
  %dec.i.i8 = add i32 %38, -1
  store i32 %dec.i.i8, ptr %clsh_users.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i8)
  %cmp5.i.i = icmp eq i32 %dec.i.i8, 0
  br i1 %cmp5.i.i, label %if.then.i19.i, label %if.else.i9.if.end.i22.i_crit_edge

if.else.i9.if.end.i22.i_crit_edge:                ; preds = %if.else.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i22.i

if.then.i19.i:                                    ; preds = %if.else.i9
  call void @__sanitizer_cov_trace_pc() #7
  %call.i18.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %36, i32 noundef 3073, i32 noundef 1, i32 noundef 0) #5
  %39 = ptrtoint ptr %clsh_users.i17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr43.i = load i32, ptr %clsh_users.i17.i, align 4
  br label %if.end.i22.i

if.end.i22.i:                                     ; preds = %if.then.i19.i, %if.else.i9.if.end.i22.i_crit_edge
  %40 = phi i32 [ %.pr43.i, %if.then.i19.i ], [ %dec.i.i8, %if.else.i9.if.end.i22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp8.i21.i = icmp slt i32 %40, 0
  br i1 %cmp8.i21.i, label %if.then10.i23.i, label %if.end.i22.i.wcd_enable_clsh_block.exit24.i_crit_edge

if.end.i22.i.wcd_enable_clsh_block.exit24.i_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_enable_clsh_block.exit24.i

if.then10.i23.i:                                  ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %clsh_users.i17.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %clsh_users.i17.i, align 4
  br label %wcd_enable_clsh_block.exit24.i

wcd_enable_clsh_block.exit24.i:                   ; preds = %if.then10.i23.i, %if.end.i22.i.wcd_enable_clsh_block.exit24.i_crit_edge
  %42 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comp.i, align 4
  %buck_users.i26.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %44 = ptrtoint ptr %buck_users.i26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buck_users.i26.i, align 4
  %dec.i27.i = add i32 %45, -1
  store i32 %dec.i27.i, ptr %buck_users.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i27.i)
  %cmp5.i28.i = icmp eq i32 %dec.i27.i, 0
  br i1 %cmp5.i28.i, label %if.then.i30.i, label %wcd_enable_clsh_block.exit24.i.wcd_clsh_buck_ctrl.exit32.i_crit_edge

wcd_enable_clsh_block.exit24.i.wcd_clsh_buck_ctrl.exit32.i_crit_edge: ; preds = %wcd_enable_clsh_block.exit24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit32.i

if.then.i30.i:                                    ; preds = %wcd_enable_clsh_block.exit24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i29.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %43, i32 noundef 1544, i32 noundef 128, i32 noundef 0) #5
  br label %wcd_clsh_buck_ctrl.exit32.i

wcd_clsh_buck_ctrl.exit32.i:                      ; preds = %if.then.i30.i, %wcd_enable_clsh_block.exit24.i.wcd_clsh_buck_ctrl.exit32.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %46 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %comp.i, align 4
  %flyback_users.i34.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %48 = ptrtoint ptr %flyback_users.i34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flyback_users.i34.i, align 4
  %dec.i35.i = add i32 %49, -1
  store i32 %dec.i35.i, ptr %flyback_users.i34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i35.i)
  %cmp5.i36.i = icmp eq i32 %dec.i35.i, 0
  br i1 %cmp5.i36.i, label %if.then.i38.i, label %wcd_clsh_buck_ctrl.exit32.i.wcd_clsh_flyback_ctrl.exit40.i_crit_edge

wcd_clsh_buck_ctrl.exit32.i.wcd_clsh_flyback_ctrl.exit40.i_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit40.i

if.then.i38.i:                                    ; preds = %wcd_clsh_buck_ctrl.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %47, i32 noundef 1544, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit40.i

wcd_clsh_flyback_ctrl.exit40.i:                   ; preds = %if.then.i38.i, %wcd_clsh_buck_ctrl.exit32.i.wcd_clsh_flyback_ctrl.exit40.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call1.i41.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %call1.i42.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %codec_version3 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %50 = ptrtoint ptr %codec_version3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %codec_version3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp4 = icmp sgt i32 %51, 1
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wcd_clsh_v3_state_hph_l(ptr noundef %ctrl, i1 noundef zeroext %is_enable, i32 noundef %mode)
  br label %sw.epilog

if.else7:                                         ; preds = %sw.bb2
  %comp1.i10 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %52 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %comp1.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 0
  br i1 %cmp.i, label %do.end.i12, label %if.end.i13

do.end.i12:                                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i11 = getelementptr inbounds %struct.snd_soc_component, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8
  br label %sw.epilog

if.end.i13:                                       ; preds = %if.else7
  br i1 %is_enable, label %if.then2.i14, label %if.else.i40

if.then2.i14:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp3.not.i = icmp eq i32 %mode, 3
  br i1 %cmp3.not.i, label %if.then2.i14.if.end7.i_crit_edge, label %if.then4.i

if.then2.i14.if.end7.i_crit_edge:                 ; preds = %if.then2.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then2.i14
  %clsh_users.i.i15 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %56 = ptrtoint ptr %clsh_users.i.i15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %clsh_users.i.i15, align 4
  %inc.i.i16 = add i32 %57, 1
  store i32 %inc.i.i16, ptr %clsh_users.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i17 = icmp eq i32 %57, 0
  br i1 %cmp.i.i17, label %if.then.i.i20, label %if.then4.i.if.end.i.i22_crit_edge

if.then4.i.if.end.i.i22_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i22

if.then.i.i20:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 3073, i32 noundef 1, i32 noundef 1) #5
  %58 = ptrtoint ptr %clsh_users.i.i15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr.i19 = load i32, ptr %clsh_users.i.i15, align 4
  br label %if.end.i.i22

if.end.i.i22:                                     ; preds = %if.then.i.i20, %if.then4.i.if.end.i.i22_crit_edge
  %59 = phi i32 [ %.pr.i19, %if.then.i.i20 ], [ %inc.i.i16, %if.then4.i.if.end.i.i22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp8.i.i21 = icmp slt i32 %59, 0
  br i1 %cmp8.i.i21, label %if.then10.i.i23, label %if.end.i.i22.wcd_enable_clsh_block.exit.i25_crit_edge

if.end.i.i22.wcd_enable_clsh_block.exit.i25_crit_edge: ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_enable_clsh_block.exit.i25

if.then10.i.i23:                                  ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %clsh_users.i.i15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %clsh_users.i.i15, align 4
  br label %wcd_enable_clsh_block.exit.i25

wcd_enable_clsh_block.exit.i25:                   ; preds = %if.then10.i.i23, %if.end.i.i22.wcd_enable_clsh_block.exit.i25_crit_edge
  %call.i24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 3080, i32 noundef 15, i32 noundef 0) #5
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 3081, i32 noundef 255, i32 noundef 192) #5
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 2902, i32 noundef 64, i32 noundef 64) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %wcd_enable_clsh_block.exit.i25, %if.then2.i14.if.end7.i_crit_edge
  %..i.i = phi i32 [ 0, %wcd_enable_clsh_block.exit.i25 ], [ 2, %if.then2.i14.if.end7.i_crit_edge ]
  %call1.i.i26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 2, i32 noundef %..i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.i2.i = icmp eq i32 %mode, 1
  %..i3.i = select i1 %cmp.i2.i, i32 4, i32 0
  %call1.i4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 4, i32 noundef %..i3.i) #5
  %61 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %comp1.i10, align 4
  %flyback_users.i.i27 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %63 = ptrtoint ptr %flyback_users.i.i27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flyback_users.i.i27, align 4
  %inc.i6.i = add i32 %64, 1
  store i32 %inc.i6.i, ptr %flyback_users.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i7.i = icmp eq i32 %64, 0
  br i1 %cmp.i7.i, label %if.then.i9.i, label %if.end7.i.wcd_clsh_flyback_ctrl.exit.i30_crit_edge

if.end7.i.wcd_clsh_flyback_ctrl.exit.i30_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit.i30

if.then.i9.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i8.i28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %62, i32 noundef 1544, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit.i30

wcd_clsh_flyback_ctrl.exit.i30:                   ; preds = %if.then.i9.i, %if.end7.i.wcd_clsh_flyback_ctrl.exit.i30_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call.i11.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1735, i32 noundef 15, i32 noundef 10) #5
  %call1.i12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1735, i32 noundef 240, i32 noundef 10) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %..i14.i = select i1 %cmp.i2.i, i32 8, i32 0
  %call1.i15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 8, i32 noundef %..i14.i) #5
  %65 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %comp1.i10, align 4
  %buck_users.i.i29 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %67 = ptrtoint ptr %buck_users.i.i29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buck_users.i.i29, align 4
  %inc.i17.i = add i32 %68, 1
  store i32 %inc.i17.i, ptr %buck_users.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i18.i = icmp eq i32 %68, 0
  br i1 %cmp.i18.i, label %if.then.i20.i32, label %wcd_clsh_flyback_ctrl.exit.i30.wcd_clsh_buck_ctrl.exit.i33_crit_edge

wcd_clsh_flyback_ctrl.exit.i30.wcd_clsh_buck_ctrl.exit.i33_crit_edge: ; preds = %wcd_clsh_flyback_ctrl.exit.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit.i33

if.then.i20.i32:                                  ; preds = %wcd_clsh_flyback_ctrl.exit.i30
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19.i31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %66, i32 noundef 1544, i32 noundef 128, i32 noundef 128) #5
  br label %wcd_clsh_buck_ctrl.exit.i33

wcd_clsh_buck_ctrl.exit.i33:                      ; preds = %if.then.i20.i32, %wcd_clsh_flyback_ctrl.exit.i30.wcd_clsh_buck_ctrl.exit.i33_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %69 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mode, label %wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge [
    i32 1, label %sw.bb2.i.i34
    i32 2, label %sw.bb3.i.i35
  ]

wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i37

sw.bb2.i.i34:                                     ; preds = %wcd_clsh_buck_ctrl.exit.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i37

sw.bb3.i.i35:                                     ; preds = %wcd_clsh_buck_ctrl.exit.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i37

sw.epilog.i.i37:                                  ; preds = %sw.bb3.i.i35, %sw.bb2.i.i34, %wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge
  %val.0.i.i36 = phi i32 [ 4, %sw.bb3.i.i35 ], [ 8, %sw.bb2.i.i34 ], [ 0, %wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge ]
  %gain.0.i.i = phi i32 [ 0, %sw.bb3.i.i35 ], [ 5, %sw.bb2.i.i34 ], [ 0, %wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge ]
  %ipeak.0.i.i = phi i32 [ 48, %sw.bb3.i.i35 ], [ 80, %sw.bb2.i.i34 ], [ 80, %wcd_clsh_buck_ctrl.exit.i33.sw.epilog.i.i37_crit_edge ]
  %call.i22.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1545, i32 noundef 12, i32 noundef %val.0.i.i36) #5
  %call4.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1691, i32 noundef 48, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not.i.i = icmp eq i32 %mode, 2
  br i1 %cmp.not.i.i, label %sw.epilog.i.i37.wcd_clsh_v2_set_hph_mode.exit.i_crit_edge, label %if.then.i23.i

sw.epilog.i.i37.wcd_clsh_v2_set_hph_mode.exit.i_crit_edge: ; preds = %sw.epilog.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v2_set_hph_mode.exit.i

if.then.i23.i:                                    ; preds = %sw.epilog.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1757, i32 noundef 7, i32 noundef %gain.0.i.i) #5
  br label %wcd_clsh_v2_set_hph_mode.exit.i

wcd_clsh_v2_set_hph_mode.exit.i:                  ; preds = %if.then.i23.i, %sw.epilog.i.i37.wcd_clsh_v2_set_hph_mode.exit.i_crit_edge
  %call6.i.i39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1692, i32 noundef 240, i32 noundef %ipeak.0.i.i) #5
  %70 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %comp1.i10, align 4
  %switch.select.i.i = select i1 %cmp.i2.i, i32 128, i32 0
  %switch.select8.i.i = select i1 %cmp.not.i.i, i32 64, i32 %switch.select.i.i
  %call.i26.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %71, i32 noundef 1747, i32 noundef 248, i32 noundef %switch.select8.i.i) #5
  %call4.i27.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %71, i32 noundef 1750, i32 noundef 248, i32 noundef %switch.select8.i.i) #5
  br label %sw.epilog

if.else.i40:                                      ; preds = %if.end.i13
  %call.i33.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1545, i32 noundef 12, i32 noundef 0) #5
  %call4.i34.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1691, i32 noundef 48, i32 noundef 32) #5
  %call5.i36.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1757, i32 noundef 7, i32 noundef 0) #5
  %call6.i38.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1692, i32 noundef 240, i32 noundef 80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp8.not.i = icmp eq i32 %mode, 3
  br i1 %cmp8.not.i, label %if.else.i40.if.end11.i_crit_edge, label %if.then9.i

if.else.i40.if.end11.i_crit_edge:                 ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.else.i40
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 2902, i32 noundef 64, i32 noundef 0) #5
  %72 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %comp1.i10, align 4
  %clsh_users.i41.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %74 = ptrtoint ptr %clsh_users.i41.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clsh_users.i41.i, align 4
  %dec.i.i41 = add i32 %75, -1
  store i32 %dec.i.i41, ptr %clsh_users.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i41)
  %cmp5.i.i42 = icmp eq i32 %dec.i.i41, 0
  br i1 %cmp5.i.i42, label %if.then.i43.i, label %if.then9.i.if.end.i46.i_crit_edge

if.then9.i.if.end.i46.i_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i46.i

if.then.i43.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i42.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %73, i32 noundef 3073, i32 noundef 1, i32 noundef 0) #5
  %76 = ptrtoint ptr %clsh_users.i41.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr68.i = load i32, ptr %clsh_users.i41.i, align 4
  br label %if.end.i46.i

if.end.i46.i:                                     ; preds = %if.then.i43.i, %if.then9.i.if.end.i46.i_crit_edge
  %77 = phi i32 [ %.pr68.i, %if.then.i43.i ], [ %dec.i.i41, %if.then9.i.if.end.i46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp8.i45.i = icmp slt i32 %77, 0
  br i1 %cmp8.i45.i, label %if.then10.i47.i, label %if.end.i46.i.if.end11.i_crit_edge

if.end.i46.i.if.end11.i_crit_edge:                ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then10.i47.i:                                  ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %clsh_users.i41.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %clsh_users.i41.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i47.i, %if.end.i46.i.if.end11.i_crit_edge, %if.else.i40.if.end11.i_crit_edge
  %79 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %comp1.i10, align 4
  %buck_users.i50.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %81 = ptrtoint ptr %buck_users.i50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buck_users.i50.i, align 4
  %dec.i51.i = add i32 %82, -1
  store i32 %dec.i51.i, ptr %buck_users.i50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i51.i)
  %cmp5.i52.i = icmp eq i32 %dec.i51.i, 0
  br i1 %cmp5.i52.i, label %if.then.i54.i, label %if.end11.i.wcd_clsh_buck_ctrl.exit56.i_crit_edge

if.end11.i.wcd_clsh_buck_ctrl.exit56.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit56.i

if.then.i54.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i53.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %80, i32 noundef 1544, i32 noundef 128, i32 noundef 0) #5
  br label %wcd_clsh_buck_ctrl.exit56.i

wcd_clsh_buck_ctrl.exit56.i:                      ; preds = %if.then.i54.i, %if.end11.i.wcd_clsh_buck_ctrl.exit56.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %83 = ptrtoint ptr %comp1.i10 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %comp1.i10, align 4
  %flyback_users.i58.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %85 = ptrtoint ptr %flyback_users.i58.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flyback_users.i58.i, align 4
  %dec.i59.i = add i32 %86, -1
  store i32 %dec.i59.i, ptr %flyback_users.i58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i59.i)
  %cmp5.i60.i = icmp eq i32 %dec.i59.i, 0
  br i1 %cmp5.i60.i, label %if.then.i62.i, label %wcd_clsh_buck_ctrl.exit56.i.wcd_clsh_flyback_ctrl.exit64.i_crit_edge

wcd_clsh_buck_ctrl.exit56.i.wcd_clsh_flyback_ctrl.exit64.i_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit64.i

if.then.i62.i:                                    ; preds = %wcd_clsh_buck_ctrl.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i61.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %84, i32 noundef 1544, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit64.i

wcd_clsh_flyback_ctrl.exit64.i:                   ; preds = %if.then.i62.i, %wcd_clsh_buck_ctrl.exit56.i.wcd_clsh_flyback_ctrl.exit64.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call1.i65.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %call1.i66.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  %call1.i67.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 1544, i32 noundef 2, i32 noundef 0) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %codec_version11 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %87 = ptrtoint ptr %codec_version11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %codec_version11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp12 = icmp sgt i32 %88, 1
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @wcd_clsh_v3_state_hph_r(ptr noundef %ctrl, i1 noundef zeroext %is_enable, i32 noundef %mode)
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb10
  %comp1.i43 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %89 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %comp1.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.i44 = icmp eq i32 %mode, 0
  br i1 %cmp.i44, label %do.end.i46, label %if.end.i47

do.end.i46:                                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i45 = getelementptr inbounds %struct.snd_soc_component, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #8
  br label %sw.epilog

if.end.i47:                                       ; preds = %if.else15
  br i1 %is_enable, label %if.then2.i49, label %if.else.i108

if.then2.i49:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp3.not.i48 = icmp eq i32 %mode, 3
  br i1 %cmp3.not.i48, label %if.then2.i49.if.end7.i72_crit_edge, label %if.then4.i53

if.then2.i49.if.end7.i72_crit_edge:               ; preds = %if.then2.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i72

if.then4.i53:                                     ; preds = %if.then2.i49
  %clsh_users.i.i50 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %93 = ptrtoint ptr %clsh_users.i.i50 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clsh_users.i.i50, align 4
  %inc.i.i51 = add i32 %94, 1
  store i32 %inc.i.i51, ptr %clsh_users.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i52 = icmp eq i32 %94, 0
  br i1 %cmp.i.i52, label %if.then.i.i56, label %if.then4.i53.if.end.i.i58_crit_edge

if.then4.i53.if.end.i.i58_crit_edge:              ; preds = %if.then4.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i58

if.then.i.i56:                                    ; preds = %if.then4.i53
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 3073, i32 noundef 1, i32 noundef 1) #5
  %95 = ptrtoint ptr %clsh_users.i.i50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i55 = load i32, ptr %clsh_users.i.i50, align 4
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %if.then.i.i56, %if.then4.i53.if.end.i.i58_crit_edge
  %96 = phi i32 [ %.pr.i55, %if.then.i.i56 ], [ %inc.i.i51, %if.then4.i53.if.end.i.i58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp8.i.i57 = icmp slt i32 %96, 0
  br i1 %cmp8.i.i57, label %if.then10.i.i59, label %if.end.i.i58.wcd_enable_clsh_block.exit.i63_crit_edge

if.end.i.i58.wcd_enable_clsh_block.exit.i63_crit_edge: ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_enable_clsh_block.exit.i63

if.then10.i.i59:                                  ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %clsh_users.i.i50 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %clsh_users.i.i50, align 4
  br label %wcd_enable_clsh_block.exit.i63

wcd_enable_clsh_block.exit.i63:                   ; preds = %if.then10.i.i59, %if.end.i.i58.wcd_enable_clsh_block.exit.i63_crit_edge
  %call.i60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 3080, i32 noundef 15, i32 noundef 0) #5
  %call5.i61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 3081, i32 noundef 255, i32 noundef 192) #5
  %call6.i62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 2922, i32 noundef 64, i32 noundef 64) #5
  br label %if.end7.i72

if.end7.i72:                                      ; preds = %wcd_enable_clsh_block.exit.i63, %if.then2.i49.if.end7.i72_crit_edge
  %..i.i64 = phi i32 [ 0, %wcd_enable_clsh_block.exit.i63 ], [ 2, %if.then2.i49.if.end7.i72_crit_edge ]
  %call1.i.i65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 2, i32 noundef %..i.i64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.i2.i66 = icmp eq i32 %mode, 1
  %..i3.i67 = select i1 %cmp.i2.i66, i32 4, i32 0
  %call1.i4.i68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 4, i32 noundef %..i3.i67) #5
  %98 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %comp1.i43, align 4
  %flyback_users.i.i69 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %100 = ptrtoint ptr %flyback_users.i.i69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flyback_users.i.i69, align 4
  %inc.i6.i70 = add i32 %101, 1
  store i32 %inc.i6.i70, ptr %flyback_users.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i7.i71 = icmp eq i32 %101, 0
  br i1 %cmp.i7.i71, label %if.then.i9.i74, label %if.end7.i72.wcd_clsh_flyback_ctrl.exit.i82_crit_edge

if.end7.i72.wcd_clsh_flyback_ctrl.exit.i82_crit_edge: ; preds = %if.end7.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit.i82

if.then.i9.i74:                                   ; preds = %if.end7.i72
  call void @__sanitizer_cov_trace_pc() #7
  %call.i8.i73 = tail call i32 @snd_soc_component_update_bits(ptr noundef %99, i32 noundef 1544, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit.i82

wcd_clsh_flyback_ctrl.exit.i82:                   ; preds = %if.then.i9.i74, %if.end7.i72.wcd_clsh_flyback_ctrl.exit.i82_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call.i11.i75 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1735, i32 noundef 15, i32 noundef 10) #5
  %call1.i12.i76 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1735, i32 noundef 240, i32 noundef 10) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %..i14.i77 = select i1 %cmp.i2.i66, i32 8, i32 0
  %call1.i15.i78 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 8, i32 noundef %..i14.i77) #5
  %102 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %comp1.i43, align 4
  %buck_users.i.i79 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %104 = ptrtoint ptr %buck_users.i.i79 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buck_users.i.i79, align 4
  %inc.i17.i80 = add i32 %105, 1
  store i32 %inc.i17.i80, ptr %buck_users.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i18.i81 = icmp eq i32 %105, 0
  br i1 %cmp.i18.i81, label %if.then.i20.i84, label %wcd_clsh_flyback_ctrl.exit.i82.wcd_clsh_buck_ctrl.exit.i85_crit_edge

wcd_clsh_flyback_ctrl.exit.i82.wcd_clsh_buck_ctrl.exit.i85_crit_edge: ; preds = %wcd_clsh_flyback_ctrl.exit.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit.i85

if.then.i20.i84:                                  ; preds = %wcd_clsh_flyback_ctrl.exit.i82
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19.i83 = tail call i32 @snd_soc_component_update_bits(ptr noundef %103, i32 noundef 1544, i32 noundef 128, i32 noundef 128) #5
  br label %wcd_clsh_buck_ctrl.exit.i85

wcd_clsh_buck_ctrl.exit.i85:                      ; preds = %if.then.i20.i84, %wcd_clsh_flyback_ctrl.exit.i82.wcd_clsh_buck_ctrl.exit.i85_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %106 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mode, label %wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge [
    i32 1, label %sw.bb2.i.i86
    i32 2, label %sw.bb3.i.i87
  ]

wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i94

sw.bb2.i.i86:                                     ; preds = %wcd_clsh_buck_ctrl.exit.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i94

sw.bb3.i.i87:                                     ; preds = %wcd_clsh_buck_ctrl.exit.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i94

sw.epilog.i.i94:                                  ; preds = %sw.bb3.i.i87, %sw.bb2.i.i86, %wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge
  %val.0.i.i88 = phi i32 [ 4, %sw.bb3.i.i87 ], [ 8, %sw.bb2.i.i86 ], [ 0, %wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge ]
  %gain.0.i.i89 = phi i32 [ 0, %sw.bb3.i.i87 ], [ 5, %sw.bb2.i.i86 ], [ 0, %wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge ]
  %ipeak.0.i.i90 = phi i32 [ 48, %sw.bb3.i.i87 ], [ 80, %sw.bb2.i.i86 ], [ 80, %wcd_clsh_buck_ctrl.exit.i85.sw.epilog.i.i94_crit_edge ]
  %call.i22.i91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1545, i32 noundef 12, i32 noundef %val.0.i.i88) #5
  %call4.i.i92 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1691, i32 noundef 48, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not.i.i93 = icmp eq i32 %mode, 2
  br i1 %cmp.not.i.i93, label %sw.epilog.i.i94.wcd_clsh_v2_set_hph_mode.exit.i102_crit_edge, label %if.then.i23.i96

sw.epilog.i.i94.wcd_clsh_v2_set_hph_mode.exit.i102_crit_edge: ; preds = %sw.epilog.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v2_set_hph_mode.exit.i102

if.then.i23.i96:                                  ; preds = %sw.epilog.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i95 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1757, i32 noundef 7, i32 noundef %gain.0.i.i89) #5
  br label %wcd_clsh_v2_set_hph_mode.exit.i102

wcd_clsh_v2_set_hph_mode.exit.i102:               ; preds = %if.then.i23.i96, %sw.epilog.i.i94.wcd_clsh_v2_set_hph_mode.exit.i102_crit_edge
  %call6.i.i97 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1692, i32 noundef 240, i32 noundef %ipeak.0.i.i90) #5
  %107 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %comp1.i43, align 4
  %switch.select.i.i98 = select i1 %cmp.i2.i66, i32 128, i32 0
  %switch.select8.i.i99 = select i1 %cmp.not.i.i93, i32 64, i32 %switch.select.i.i98
  %call.i26.i100 = tail call i32 @snd_soc_component_update_bits(ptr noundef %108, i32 noundef 1747, i32 noundef 248, i32 noundef %switch.select8.i.i99) #5
  %call4.i27.i101 = tail call i32 @snd_soc_component_update_bits(ptr noundef %108, i32 noundef 1750, i32 noundef 248, i32 noundef %switch.select8.i.i99) #5
  br label %sw.epilog

if.else.i108:                                     ; preds = %if.end.i47
  %call.i33.i103 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1545, i32 noundef 12, i32 noundef 0) #5
  %call4.i34.i104 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1691, i32 noundef 48, i32 noundef 32) #5
  %call5.i36.i105 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1757, i32 noundef 7, i32 noundef 0) #5
  %call6.i38.i106 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1692, i32 noundef 240, i32 noundef 80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp8.not.i107 = icmp eq i32 %mode, 3
  br i1 %cmp8.not.i107, label %if.else.i108.if.end11.i123_crit_edge, label %if.then9.i113

if.else.i108.if.end11.i123_crit_edge:             ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i123

if.then9.i113:                                    ; preds = %if.else.i108
  %call10.i109 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 2922, i32 noundef 64, i32 noundef 0) #5
  %109 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %comp1.i43, align 4
  %clsh_users.i41.i110 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 4
  %111 = ptrtoint ptr %clsh_users.i41.i110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %clsh_users.i41.i110, align 4
  %dec.i.i111 = add i32 %112, -1
  store i32 %dec.i.i111, ptr %clsh_users.i41.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i111)
  %cmp5.i.i112 = icmp eq i32 %dec.i.i111, 0
  br i1 %cmp5.i.i112, label %if.then.i43.i116, label %if.then9.i113.if.end.i46.i118_crit_edge

if.then9.i113.if.end.i46.i118_crit_edge:          ; preds = %if.then9.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i46.i118

if.then.i43.i116:                                 ; preds = %if.then9.i113
  call void @__sanitizer_cov_trace_pc() #7
  %call.i42.i114 = tail call i32 @snd_soc_component_update_bits(ptr noundef %110, i32 noundef 3073, i32 noundef 1, i32 noundef 0) #5
  %113 = ptrtoint ptr %clsh_users.i41.i110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr68.i115 = load i32, ptr %clsh_users.i41.i110, align 4
  br label %if.end.i46.i118

if.end.i46.i118:                                  ; preds = %if.then.i43.i116, %if.then9.i113.if.end.i46.i118_crit_edge
  %114 = phi i32 [ %.pr68.i115, %if.then.i43.i116 ], [ %dec.i.i111, %if.then9.i113.if.end.i46.i118_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp8.i45.i117 = icmp slt i32 %114, 0
  br i1 %cmp8.i45.i117, label %if.then10.i47.i119, label %if.end.i46.i118.if.end11.i123_crit_edge

if.end.i46.i118.if.end11.i123_crit_edge:          ; preds = %if.end.i46.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i123

if.then10.i47.i119:                               ; preds = %if.end.i46.i118
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %clsh_users.i41.i110 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %clsh_users.i41.i110, align 4
  br label %if.end11.i123

if.end11.i123:                                    ; preds = %if.then10.i47.i119, %if.end.i46.i118.if.end11.i123_crit_edge, %if.else.i108.if.end11.i123_crit_edge
  %116 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %comp1.i43, align 4
  %buck_users.i50.i120 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %118 = ptrtoint ptr %buck_users.i50.i120 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %buck_users.i50.i120, align 4
  %dec.i51.i121 = add i32 %119, -1
  store i32 %dec.i51.i121, ptr %buck_users.i50.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i51.i121)
  %cmp5.i52.i122 = icmp eq i32 %dec.i51.i121, 0
  br i1 %cmp5.i52.i122, label %if.then.i54.i125, label %if.end11.i123.wcd_clsh_buck_ctrl.exit56.i129_crit_edge

if.end11.i123.wcd_clsh_buck_ctrl.exit56.i129_crit_edge: ; preds = %if.end11.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit56.i129

if.then.i54.i125:                                 ; preds = %if.end11.i123
  call void @__sanitizer_cov_trace_pc() #7
  %call.i53.i124 = tail call i32 @snd_soc_component_update_bits(ptr noundef %117, i32 noundef 1544, i32 noundef 128, i32 noundef 0) #5
  br label %wcd_clsh_buck_ctrl.exit56.i129

wcd_clsh_buck_ctrl.exit56.i129:                   ; preds = %if.then.i54.i125, %if.end11.i123.wcd_clsh_buck_ctrl.exit56.i129_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %120 = ptrtoint ptr %comp1.i43 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %comp1.i43, align 4
  %flyback_users.i58.i126 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %122 = ptrtoint ptr %flyback_users.i58.i126 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flyback_users.i58.i126, align 4
  %dec.i59.i127 = add i32 %123, -1
  store i32 %dec.i59.i127, ptr %flyback_users.i58.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i59.i127)
  %cmp5.i60.i128 = icmp eq i32 %dec.i59.i127, 0
  br i1 %cmp5.i60.i128, label %if.then.i62.i131, label %wcd_clsh_buck_ctrl.exit56.i129.wcd_clsh_flyback_ctrl.exit64.i135_crit_edge

wcd_clsh_buck_ctrl.exit56.i129.wcd_clsh_flyback_ctrl.exit64.i135_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit56.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit64.i135

if.then.i62.i131:                                 ; preds = %wcd_clsh_buck_ctrl.exit56.i129
  call void @__sanitizer_cov_trace_pc() #7
  %call.i61.i130 = tail call i32 @snd_soc_component_update_bits(ptr noundef %121, i32 noundef 1544, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit64.i135

wcd_clsh_flyback_ctrl.exit64.i135:                ; preds = %if.then.i62.i131, %wcd_clsh_buck_ctrl.exit56.i129.wcd_clsh_flyback_ctrl.exit64.i135_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call1.i65.i132 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %call1.i66.i133 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  %call1.i67.i134 = tail call i32 @snd_soc_component_update_bits(ptr noundef %90, i32 noundef 1544, i32 noundef 2, i32 noundef 0) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %codec_version19 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %124 = ptrtoint ptr %codec_version19 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %codec_version19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp20 = icmp slt i32 %125, 2
  br i1 %cmp20, label %if.then21, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb18
  %comp1.i136 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %126 = ptrtoint ptr %comp1.i136 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %comp1.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp.not.i137 = icmp eq i32 %mode, 3
  br i1 %cmp.not.i137, label %if.end.i140, label %do.end.i139

do.end.i139:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i138 = getelementptr inbounds %struct.snd_soc_component, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %mode) #8
  br label %sw.epilog

if.end.i140:                                      ; preds = %if.then21
  br i1 %is_enable, label %if.then2.i146, label %if.else.i160

if.then2.i146:                                    ; preds = %if.end.i140
  %call1.i.i141 = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 2, i32 noundef 2) #5
  %call1.i1.i142 = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  %call1.i2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %130 = ptrtoint ptr %comp1.i136 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %comp1.i136, align 4
  %flyback_users.i.i143 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %132 = ptrtoint ptr %flyback_users.i.i143 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flyback_users.i.i143, align 4
  %inc.i.i144 = add i32 %133, 1
  store i32 %inc.i.i144, ptr %flyback_users.i.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i.i145 = icmp eq i32 %133, 0
  br i1 %cmp.i.i145, label %if.then.i.i148, label %if.then2.i146.wcd_clsh_flyback_ctrl.exit.i154_crit_edge

if.then2.i146.wcd_clsh_flyback_ctrl.exit.i154_crit_edge: ; preds = %if.then2.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit.i154

if.then.i.i148:                                   ; preds = %if.then2.i146
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i147 = tail call i32 @snd_soc_component_update_bits(ptr noundef %131, i32 noundef 1544, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit.i154

wcd_clsh_flyback_ctrl.exit.i154:                  ; preds = %if.then.i.i148, %if.then2.i146.wcd_clsh_flyback_ctrl.exit.i154_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call.i3.i149 = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1735, i32 noundef 15, i32 noundef 10) #5
  %call1.i4.i150 = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1735, i32 noundef 240, i32 noundef 10) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %134 = ptrtoint ptr %comp1.i136 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %comp1.i136, align 4
  %buck_users.i.i151 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %136 = ptrtoint ptr %buck_users.i.i151 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %buck_users.i.i151, align 4
  %inc.i6.i152 = add i32 %137, 1
  store i32 %inc.i6.i152, ptr %buck_users.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i7.i153 = icmp eq i32 %137, 0
  br i1 %cmp.i7.i153, label %if.then.i9.i156, label %wcd_clsh_flyback_ctrl.exit.i154.wcd_clsh_buck_ctrl.exit.i157_crit_edge

wcd_clsh_flyback_ctrl.exit.i154.wcd_clsh_buck_ctrl.exit.i157_crit_edge: ; preds = %wcd_clsh_flyback_ctrl.exit.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit.i157

if.then.i9.i156:                                  ; preds = %wcd_clsh_flyback_ctrl.exit.i154
  call void @__sanitizer_cov_trace_pc() #7
  %call.i8.i155 = tail call i32 @snd_soc_component_update_bits(ptr noundef %135, i32 noundef 1544, i32 noundef 128, i32 noundef 128) #5
  br label %wcd_clsh_buck_ctrl.exit.i157

wcd_clsh_buck_ctrl.exit.i157:                     ; preds = %if.then.i9.i156, %wcd_clsh_flyback_ctrl.exit.i154.wcd_clsh_buck_ctrl.exit.i157_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %sw.epilog

if.else.i160:                                     ; preds = %if.end.i140
  %buck_users.i11.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %138 = ptrtoint ptr %buck_users.i11.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buck_users.i11.i, align 4
  %dec.i.i158 = add i32 %139, -1
  store i32 %dec.i.i158, ptr %buck_users.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i158)
  %cmp5.i.i159 = icmp eq i32 %dec.i.i158, 0
  br i1 %cmp5.i.i159, label %if.then.i13.i, label %if.else.i160.wcd_clsh_buck_ctrl.exit14.i_crit_edge

if.else.i160.wcd_clsh_buck_ctrl.exit14.i_crit_edge: ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_buck_ctrl.exit14.i

if.then.i13.i:                                    ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #7
  %call.i12.i161 = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 128, i32 noundef 0) #5
  br label %wcd_clsh_buck_ctrl.exit14.i

wcd_clsh_buck_ctrl.exit14.i:                      ; preds = %if.then.i13.i, %if.else.i160.wcd_clsh_buck_ctrl.exit14.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %140 = ptrtoint ptr %comp1.i136 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %comp1.i136, align 4
  %flyback_users.i16.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %142 = ptrtoint ptr %flyback_users.i16.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flyback_users.i16.i, align 4
  %dec.i17.i162 = add i32 %143, -1
  store i32 %dec.i17.i162, ptr %flyback_users.i16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i17.i162)
  %cmp5.i18.i = icmp eq i32 %dec.i17.i162, 0
  br i1 %cmp5.i18.i, label %if.then.i20.i164, label %wcd_clsh_buck_ctrl.exit14.i.wcd_clsh_flyback_ctrl.exit21.i_crit_edge

wcd_clsh_buck_ctrl.exit14.i.wcd_clsh_flyback_ctrl.exit21.i_crit_edge: ; preds = %wcd_clsh_buck_ctrl.exit14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_flyback_ctrl.exit21.i

if.then.i20.i164:                                 ; preds = %wcd_clsh_buck_ctrl.exit14.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19.i163 = tail call i32 @snd_soc_component_update_bits(ptr noundef %141, i32 noundef 1544, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  br label %wcd_clsh_flyback_ctrl.exit21.i

wcd_clsh_flyback_ctrl.exit21.i:                   ; preds = %if.then.i20.i164, %wcd_clsh_buck_ctrl.exit14.i.wcd_clsh_flyback_ctrl.exit21.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  %call1.i22.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 4, i32 noundef 0) #5
  %call1.i23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 8, i32 noundef 0) #5
  %call1.i24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %127, i32 noundef 1544, i32 noundef 2, i32 noundef 0) #5
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %codec_version25 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 5
  %144 = ptrtoint ptr %codec_version25 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %codec_version25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp26 = icmp sgt i32 %145, 1
  br i1 %cmp26, label %if.then27, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb24
  %comp.i165 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %146 = ptrtoint ptr %comp.i165 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %comp.i165, align 4
  br i1 %is_enable, label %if.then.i166, label %if.else.i185

if.then.i166:                                     ; preds = %if.then27
  %switch.tableidx198 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx198)
  %148 = icmp ult i32 %switch.tableidx198, 8
  br i1 %148, label %switch.lookup197, label %if.then.i166.wcd_clsh_v3_set_buck_mode.exit.i170_crit_edge

if.then.i166.wcd_clsh_v3_set_buck_mode.exit.i170_crit_edge: ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_buck_mode.exit.i170

switch.lookup197:                                 ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep199 = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.25, i32 0, i32 %switch.tableidx198
  %149 = ptrtoint ptr %switch.gep199 to i32
  call void @__asan_load4_noabort(i32 %149)
  %switch.load200 = load i32, ptr %switch.gep199, align 4
  br label %wcd_clsh_v3_set_buck_mode.exit.i170

wcd_clsh_v3_set_buck_mode.exit.i170:              ; preds = %switch.lookup197, %if.then.i166.wcd_clsh_v3_set_buck_mode.exit.i170_crit_edge
  %.sink.i.i168 = phi i32 [ %switch.load200, %switch.lookup197 ], [ 0, %if.then.i166.wcd_clsh_v3_set_buck_mode.exit.i170_crit_edge ]
  %call6.i.i169 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 8, i32 noundef %.sink.i.i168) #5
  %switch.tableidx202 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx202)
  %150 = icmp ult i32 %switch.tableidx202, 8
  br i1 %150, label %switch.lookup201, label %wcd_clsh_v3_set_buck_mode.exit.i170.wcd_clsh_v3_set_flyback_mode.exit.i177_crit_edge

wcd_clsh_v3_set_buck_mode.exit.i170.wcd_clsh_v3_set_flyback_mode.exit.i177_crit_edge: ; preds = %wcd_clsh_v3_set_buck_mode.exit.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_flyback_mode.exit.i177

switch.lookup201:                                 ; preds = %wcd_clsh_v3_set_buck_mode.exit.i170
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep203 = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.26, i32 0, i32 %switch.tableidx202
  %151 = ptrtoint ptr %switch.gep203 to i32
  call void @__asan_load4_noabort(i32 %151)
  %switch.load204 = load i32, ptr %switch.gep203, align 4
  %switch.gep205 = getelementptr inbounds [8 x i32], ptr @switch.table._wcd_clsh_ctrl_set_state.27, i32 0, i32 %switch.tableidx202
  %152 = ptrtoint ptr %switch.gep205 to i32
  call void @__asan_load4_noabort(i32 %152)
  %switch.load206 = load i32, ptr %switch.gep205, align 4
  br label %wcd_clsh_v3_set_flyback_mode.exit.i177

wcd_clsh_v3_set_flyback_mode.exit.i177:           ; preds = %switch.lookup201, %wcd_clsh_v3_set_buck_mode.exit.i170.wcd_clsh_v3_set_flyback_mode.exit.i177_crit_edge
  %.sink15.i.i171 = phi i32 [ %switch.load204, %switch.lookup201 ], [ 0, %wcd_clsh_v3_set_buck_mode.exit.i170.wcd_clsh_v3_set_flyback_mode.exit.i177_crit_edge ]
  %.sink.i2.i = phi i32 [ %switch.load206, %switch.lookup201 ], [ 112, %wcd_clsh_v3_set_buck_mode.exit.i170.wcd_clsh_v3_set_flyback_mode.exit.i177_crit_edge ]
  %call7.i.i172 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 4, i32 noundef %.sink15.i.i171) #5
  %call8.i.i173 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12456, i32 noundef 240, i32 noundef %.sink.i2.i) #5
  %flyback_users.i.i174 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %153 = ptrtoint ptr %flyback_users.i.i174 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flyback_users.i.i174, align 4
  %inc.i.i175 = add i32 %154, 1
  store i32 %inc.i.i175, ptr %flyback_users.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i176 = icmp eq i32 %154, 0
  br i1 %cmp.i.i176, label %if.then.i.i179, label %wcd_clsh_v3_set_flyback_mode.exit.i177.wcd_clsh_v3_flyback_ctrl.exit.i182_crit_edge

wcd_clsh_v3_set_flyback_mode.exit.i177.wcd_clsh_v3_flyback_ctrl.exit.i182_crit_edge: ; preds = %wcd_clsh_v3_set_flyback_mode.exit.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit.i182

if.then.i.i179:                                   ; preds = %wcd_clsh_v3_set_flyback_mode.exit.i177
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i178 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit.i182

wcd_clsh_v3_flyback_ctrl.exit.i182:               ; preds = %if.then.i.i179, %wcd_clsh_v3_set_flyback_mode.exit.i177.wcd_clsh_v3_flyback_ctrl.exit.i182_crit_edge
  %call.i5.i180 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12487, i32 noundef 15, i32 noundef 10) #5
  %call1.i.i181 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12487, i32 noundef 240, i32 noundef 160) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  tail call fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %147, ptr noundef %ctrl, i32 noundef %mode, i1 noundef zeroext true) #5
  br label %sw.epilog

if.else.i185:                                     ; preds = %if.then27
  tail call fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %147, ptr noundef %ctrl, i32 noundef %mode, i1 noundef zeroext false) #5
  %flyback_users.i6.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %155 = ptrtoint ptr %flyback_users.i6.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flyback_users.i6.i, align 4
  %dec.i.i183 = add i32 %156, -1
  store i32 %dec.i.i183, ptr %flyback_users.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i183)
  %cmp4.i.i184 = icmp eq i32 %dec.i.i183, 0
  br i1 %cmp4.i.i184, label %if.then.i10.i, label %if.else.i185.wcd_clsh_v3_flyback_ctrl.exit11.i_crit_edge

if.else.i185.wcd_clsh_v3_flyback_ctrl.exit11.i_crit_edge: ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit11.i

if.then.i10.i:                                    ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i186 = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit11.i

wcd_clsh_v3_flyback_ctrl.exit11.i:                ; preds = %if.then.i10.i, %if.else.i185.wcd_clsh_v3_flyback_ctrl.exit11.i_crit_edge
  %call7.i15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 4, i32 noundef 0) #5
  %call8.i16.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12456, i32 noundef 240, i32 noundef 112) #5
  %call6.i19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %147, i32 noundef 12296, i32 noundef 8, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %wcd_clsh_v3_flyback_ctrl.exit11.i, %wcd_clsh_v3_flyback_ctrl.exit.i182, %sw.bb24.sw.epilog_crit_edge, %wcd_clsh_flyback_ctrl.exit21.i, %wcd_clsh_buck_ctrl.exit.i157, %do.end.i139, %sw.bb18.sw.epilog_crit_edge, %wcd_clsh_flyback_ctrl.exit64.i135, %wcd_clsh_v2_set_hph_mode.exit.i102, %do.end.i46, %if.then13, %wcd_clsh_flyback_ctrl.exit64.i, %wcd_clsh_v2_set_hph_mode.exit.i, %do.end.i12, %if.then5, %wcd_clsh_flyback_ctrl.exit40.i, %wcd_clsh_buck_ctrl.exit.i, %do.end.i, %wcd_clsh_v3_buck_ctrl.exit.i, %switch.lookup194, %do.end.i.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wcd_clsh_ctrl_get_state(ptr nocapture noundef readonly %ctrl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wcd_clsh_ctrl_alloc(ptr noundef %comp, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i, align 8
  %comp2 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %comp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %comp, ptr %comp2, align 8
  %codec_version = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %codec_version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %version, ptr %codec_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wcd_clsh_ctrl_free(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ctrl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd_clsh_v3_state_hph_l(ptr nocapture noundef %ctrl, i1 noundef zeroext %is_enable, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd_clsh_v3_state_hph_l.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd_clsh_v3_state_hph_l, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !49

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd_clsh_v3_state_hph_l.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  br i1 %is_enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 2, i32 noundef 0) #5
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.lookup, label %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge

if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_flyback_mode.exit

switch.lookup:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_l, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep33 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_l.28, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load34 = load i32, ptr %switch.gep33, align 4
  br label %wcd_clsh_v3_set_flyback_mode.exit

wcd_clsh_v3_set_flyback_mode.exit:                ; preds = %switch.lookup, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge
  %.sink15.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge ]
  %.sink.i = phi i32 [ %switch.load34, %switch.lookup ], [ 112, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge ]
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 4, i32 noundef %.sink15.i) #5
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12456, i32 noundef 240, i32 noundef %.sink.i) #5
  tail call fastcc void @wcd_clsh_v3_force_iq_ctl(ptr noundef %1, i32 noundef %mode, i1 noundef zeroext true)
  %flyback_users.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %7 = ptrtoint ptr %flyback_users.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flyback_users.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %flyback_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge

wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge: ; preds = %wcd_clsh_v3_set_flyback_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit

if.then.i:                                        ; preds = %wcd_clsh_v3_set_flyback_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit

wcd_clsh_v3_flyback_ctrl.exit:                    ; preds = %if.then.i, %wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge
  %call.i3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12487, i32 noundef 15, i32 noundef 10) #5
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12487, i32 noundef 240, i32 noundef 160) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %switch.tableidx36 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx36)
  %9 = icmp ult i32 %switch.tableidx36, 8
  br i1 %9, label %switch.lookup35, label %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge

wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_buck_mode.exit

switch.lookup35:                                  ; preds = %wcd_clsh_v3_flyback_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep37 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_l.29, i32 0, i32 %switch.tableidx36
  %10 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  br label %wcd_clsh_v3_set_buck_mode.exit

wcd_clsh_v3_set_buck_mode.exit:                   ; preds = %switch.lookup35, %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge
  %.sink.i5 = phi i32 [ %switch.load38, %switch.lookup35 ], [ 0, %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge ]
  %call6.i6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 8, i32 noundef %.sink.i5) #5
  tail call fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %1, ptr noundef %ctrl, i32 noundef %mode, i1 noundef zeroext true)
  %switch.tableidx40 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx40)
  %11 = icmp ult i32 %switch.tableidx40, 8
  br i1 %11, label %switch.lookup39, label %do.end.i

do.end.i:                                         ; preds = %wcd_clsh_v3_set_buck_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %mode) #8
  br label %cleanup

switch.lookup39:                                  ; preds = %wcd_clsh_v3_set_buck_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep41 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_l.30, i32 0, i32 %switch.tableidx40
  %14 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %call.i7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12297, i32 noundef 12, i32 noundef %switch.load42) #5
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call.i9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12297, i32 noundef 12, i32 noundef 0) #5
  %flyback_users.i11 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %15 = ptrtoint ptr %flyback_users.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flyback_users.i11, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %flyback_users.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %if.then.i15, label %if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge

if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit16

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit16

wcd_clsh_v3_flyback_ctrl.exit16:                  ; preds = %if.then.i15, %if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge
  %buck_users.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %17 = ptrtoint ptr %buck_users.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buck_users.i, align 4
  %dec.i17 = add i32 %18, -1
  store i32 %dec.i17, ptr %buck_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i17)
  %cmp4.i18 = icmp eq i32 %dec.i17, 0
  br i1 %cmp4.i18, label %if.then.i20, label %wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge

wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit16
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_buck_ctrl.exit

if.then.i20:                                      ; preds = %wcd_clsh_v3_flyback_ctrl.exit16
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 128, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #5
  %call19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12440, i32 noundef 255, i32 noundef 58) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_buck_ctrl.exit

wcd_clsh_v3_buck_ctrl.exit:                       ; preds = %if.then.i20, %wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12600, i32 noundef 32, i32 noundef 0) #5
  %call6.i22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12479, i32 noundef 240, i32 noundef 128) #5
  %call7.i23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12497, i32 noundef 14, i32 noundef 6) #5
  %call7.i27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 4, i32 noundef 0) #5
  %call8.i28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12456, i32 noundef 240, i32 noundef 112) #5
  %call6.i31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 8, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %wcd_clsh_v3_buck_ctrl.exit, %switch.lookup39, %do.end.i, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd_clsh_v3_state_hph_r(ptr nocapture noundef %ctrl, i1 noundef zeroext %is_enable, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd_clsh_v3_state_hph_r.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd_clsh_v3_state_hph_r, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !49

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd_clsh_v3_state_hph_r.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  br i1 %is_enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 2, i32 noundef 0) #5
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.lookup, label %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge

if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_flyback_mode.exit

switch.lookup:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_r, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep33 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_r.31, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load34 = load i32, ptr %switch.gep33, align 4
  br label %wcd_clsh_v3_set_flyback_mode.exit

wcd_clsh_v3_set_flyback_mode.exit:                ; preds = %switch.lookup, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge
  %.sink15.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge ]
  %.sink.i = phi i32 [ %switch.load34, %switch.lookup ], [ 112, %if.then7.wcd_clsh_v3_set_flyback_mode.exit_crit_edge ]
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 4, i32 noundef %.sink15.i) #5
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12456, i32 noundef 240, i32 noundef %.sink.i) #5
  tail call fastcc void @wcd_clsh_v3_force_iq_ctl(ptr noundef %1, i32 noundef %mode, i1 noundef zeroext true)
  %flyback_users.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %7 = ptrtoint ptr %flyback_users.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flyback_users.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %flyback_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge

wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge: ; preds = %wcd_clsh_v3_set_flyback_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit

if.then.i:                                        ; preds = %wcd_clsh_v3_set_flyback_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 64, i32 noundef 64) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit

wcd_clsh_v3_flyback_ctrl.exit:                    ; preds = %if.then.i, %wcd_clsh_v3_set_flyback_mode.exit.wcd_clsh_v3_flyback_ctrl.exit_crit_edge
  %call.i3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12487, i32 noundef 15, i32 noundef 10) #5
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12487, i32 noundef 240, i32 noundef 160) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %switch.tableidx36 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx36)
  %9 = icmp ult i32 %switch.tableidx36, 8
  br i1 %9, label %switch.lookup35, label %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge

wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_set_buck_mode.exit

switch.lookup35:                                  ; preds = %wcd_clsh_v3_flyback_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep37 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_r.32, i32 0, i32 %switch.tableidx36
  %10 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load38 = load i32, ptr %switch.gep37, align 4
  br label %wcd_clsh_v3_set_buck_mode.exit

wcd_clsh_v3_set_buck_mode.exit:                   ; preds = %switch.lookup35, %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge
  %.sink.i5 = phi i32 [ %switch.load38, %switch.lookup35 ], [ 0, %wcd_clsh_v3_flyback_ctrl.exit.wcd_clsh_v3_set_buck_mode.exit_crit_edge ]
  %call6.i6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 8, i32 noundef %.sink.i5) #5
  tail call fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %1, ptr noundef %ctrl, i32 noundef %mode, i1 noundef zeroext true)
  %switch.tableidx40 = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx40)
  %11 = icmp ult i32 %switch.tableidx40, 8
  br i1 %11, label %switch.lookup39, label %do.end.i

do.end.i:                                         ; preds = %wcd_clsh_v3_set_buck_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %mode) #8
  br label %cleanup

switch.lookup39:                                  ; preds = %wcd_clsh_v3_set_buck_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep41 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd_clsh_v3_state_hph_r.33, i32 0, i32 %switch.tableidx40
  %14 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %call.i7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12297, i32 noundef 12, i32 noundef %switch.load42) #5
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call.i9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12297, i32 noundef 12, i32 noundef 0) #5
  %flyback_users.i11 = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 2
  %15 = ptrtoint ptr %flyback_users.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flyback_users.i11, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %flyback_users.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %if.then.i15, label %if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge

if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_flyback_ctrl.exit16

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12453, i32 noundef 224, i32 noundef 224) #5
  %call6.i13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 64, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call7.i14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12463, i32 noundef 224, i32 noundef 224) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_flyback_ctrl.exit16

wcd_clsh_v3_flyback_ctrl.exit16:                  ; preds = %if.then.i15, %if.else.wcd_clsh_v3_flyback_ctrl.exit16_crit_edge
  %buck_users.i = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %17 = ptrtoint ptr %buck_users.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buck_users.i, align 4
  %dec.i17 = add i32 %18, -1
  store i32 %dec.i17, ptr %buck_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i17)
  %cmp4.i18 = icmp eq i32 %dec.i17, 0
  br i1 %cmp4.i18, label %if.then.i20, label %wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge

wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge: ; preds = %wcd_clsh_v3_flyback_ctrl.exit16
  call void @__sanitizer_cov_trace_pc() #7
  br label %wcd_clsh_v3_buck_ctrl.exit

if.then.i20:                                      ; preds = %wcd_clsh_v3_flyback_ctrl.exit16
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 128, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #5
  %call19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12440, i32 noundef 255, i32 noundef 58) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %wcd_clsh_v3_buck_ctrl.exit

wcd_clsh_v3_buck_ctrl.exit:                       ; preds = %if.then.i20, %wcd_clsh_v3_flyback_ctrl.exit16.wcd_clsh_v3_buck_ctrl.exit_crit_edge
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12600, i32 noundef 32, i32 noundef 0) #5
  %call6.i22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12479, i32 noundef 240, i32 noundef 128) #5
  %call7.i23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12497, i32 noundef 14, i32 noundef 6) #5
  %call7.i27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 4, i32 noundef 0) #5
  %call8.i28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12456, i32 noundef 240, i32 noundef 112) #5
  %call6.i31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12296, i32 noundef 8, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %wcd_clsh_v3_buck_ctrl.exit, %switch.lookup39, %do.end.i, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd_clsh_v3_force_iq_ctl(ptr noundef %component, i32 noundef %mode, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end11.sink.split_crit_edge

entry.if.end11.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.sink.split

if.then:                                          ; preds = %entry
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12463, i32 noundef 224, i32 noundef 160) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12441, i32 noundef 2, i32 noundef 2) #5
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12440, i32 noundef 255, i32 noundef 28) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mode, label %if.then.if.end11_crit_edge [
    i32 4, label %if.then.if.end11.sink.split_crit_edge
    i32 8, label %if.then.if.end11.sink.split_crit_edge23
  ]

if.then.if.end11.sink.split_crit_edge23:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.sink.split

if.then.if.end11.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.sink.split

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11.sink.split:                              ; preds = %if.then.if.end11.sink.split_crit_edge, %if.then.if.end11.sink.split_crit_edge23, %entry.if.end11.sink.split_crit_edge
  %.sink22 = phi i32 [ 32, %if.then.if.end11.sink.split_crit_edge ], [ 32, %if.then.if.end11.sink.split_crit_edge23 ], [ 0, %entry.if.end11.sink.split_crit_edge ]
  %.sink21 = phi i32 [ 192, %if.then.if.end11.sink.split_crit_edge ], [ 192, %if.then.if.end11.sink.split_crit_edge23 ], [ 128, %entry.if.end11.sink.split_crit_edge ]
  %.sink = phi i32 [ 2, %if.then.if.end11.sink.split_crit_edge ], [ 2, %if.then.if.end11.sink.split_crit_edge23 ], [ 6, %entry.if.end11.sink.split_crit_edge ]
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12600, i32 noundef 32, i32 noundef %.sink22) #5
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12479, i32 noundef 240, i32 noundef %.sink21) #5
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12497, i32 noundef 14, i32 noundef %.sink) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.then.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd_clsh_v3_buck_ctrl(ptr noundef %component, ptr nocapture noundef %ctrl, i32 noundef %mode, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buck_users = getelementptr inbounds %struct.wcd_clsh_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %buck_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buck_users, align 4
  br i1 %enable, label %land.lhs.true, label %land.lhs.true2.critedge

land.lhs.true:                                    ; preds = %entry
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %buck_users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %buck_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true2.critedge:                          ; preds = %entry
  %dec = add i32 %1, -1
  %3 = ptrtoint ptr %buck_users to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %buck_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %land.lhs.true2.critedge.if.then_crit_edge, label %land.lhs.true2.critedge.if.end20_crit_edge

land.lhs.true2.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true2.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true2.critedge.if.then_crit_edge:        ; preds = %land.lhs.true2.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true2.critedge.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %shl = phi i32 [ 0, %land.lhs.true2.critedge.if.then_crit_edge ], [ 128, %land.lhs.true.if.then_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12296, i32 noundef 128, i32 noundef %shl) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #5
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %mode, label %if.then.if.end_crit_edge [
    i32 4, label %if.then.if.then17_crit_edge
    i32 5, label %if.then.if.then17_crit_edge29
    i32 1, label %if.then.if.then17_crit_edge30
    i32 2, label %if.then.if.then17_crit_edge31
  ]

if.then.if.then17_crit_edge31:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then.if.then17_crit_edge30:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then.if.then17_crit_edge29:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then.if.then17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then17:                                        ; preds = %if.then.if.then17_crit_edge, %if.then.if.then17_crit_edge29, %if.then.if.then17_crit_edge30, %if.then.if.then17_crit_edge31
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12441, i32 noundef 2, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12440, i32 noundef 255, i32 noundef 58) #5
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 550, i32 noundef 2) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end, %land.lhs.true2.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 860, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wcd_clsh_ctrl_set_state._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wcd_clsh_ctrl_set_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 347, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wcd_clsh_v3_set_hph_mode._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @wcd_clsh_v3_set_hph_mode._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 753, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wcd_clsh_state_ear._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @wcd_clsh_state_ear._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 637, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wcd_clsh_v3_state_hph_l.__UNIQUE_ID_ddebug239, !19, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 669, i32 3}
!25 = !{ptr @wcd_clsh_state_hph_l._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wcd_clsh_state_hph_l._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 547, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wcd_clsh_v3_state_hph_r.__UNIQUE_ID_ddebug238, !28, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 579, i32 3}
!33 = !{ptr @wcd_clsh_state_hph_r._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wcd_clsh_state_hph_r._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wcd-clsh-v2.c", i32 520, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wcd_clsh_state_lo._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @wcd_clsh_state_lo._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148227603, i64 2148227608, i64 2148227621, i64 2148227665, i64 2148227699, i64 2148227720}
