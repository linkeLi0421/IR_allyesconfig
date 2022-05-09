; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ramfuc_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.gt215_ram = type { %struct.nvkm_ram, %struct.gt215_ramfuc, %struct.gt215_ltrain }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.135, i32, i32, i32, i32, i32, i32, %union.anon.139, i32, i32, [11 x i32], %union.anon.143 }>
%union.anon.135 = type { %struct.anon.138 }
%struct.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32, i8 }
%union.anon.143 = type <{ %struct.anon.145, [12 x i8] }>
%struct.anon.145 = type { i48 }
%struct.gt215_ramfuc = type { %struct.ramfuc, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, [9 x %struct.ramfuc_reg], %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, [4 x %struct.ramfuc_reg], [4 x %struct.ramfuc_reg] }
%struct.ramfuc = type { ptr, ptr, i32 }
%struct.gt215_ltrain = type { i32, i32, i32, i32, ptr }
%struct.nvbios_M0205E = type { i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.146, %struct.anon.147, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.146 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.147 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_M0205T = type { i16 }
%struct.gt215_clk_info = type { i32, i32, i32, i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@gt215_ram_func = internal constant { %struct.nvkm_ram_func, [56 x i8] } { %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr @gt215_ram_dtor, ptr @gt215_ram_init, ptr @gt215_ram_calc, ptr @gt215_ram_prog, ptr @gt215_ram_tidy }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gt215_link_train_init.pattern = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1431655766, i32 -858993460, i32 -572662307, i32 -286331154, i32 0, i32 286331153, i32 1145324612, i32 -572662307, i32 858993459, i32 1431655765, i32 2004318071, i32 1717986918, i32 -1717986919, i32 -2004318072, i32 -286331154, i32 -1145324613], [32 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing rammap entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gt215_ram_calc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry_ptr = internal global ptr @gt215_ram_calc._entry, section ".printk_index", align 4
@gt215_ram_calc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid ramcfg strap\0A\00", [38 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry_ptr.7 = internal global ptr @gt215_ram_calc._entry.5, section ".printk_index", align 4
@gt215_ram_calc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing ramcfg entry\0A\00", [62 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry_ptr.10 = internal global ptr @gt215_ram_calc._entry.8, section ".printk_index", align 4
@gt215_ram_calc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing timing entry\0A\00", [62 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry_ptr.13 = internal global ptr @gt215_ram_calc._entry.11, section ".printk_index", align 4
@gt215_ram_calc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed mclk calculation\0A\00", [35 x i8] zeroinitializer }, align 32
@gt215_ram_calc._entry_ptr.16 = internal global ptr @gt215_ram_calc._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NvMemExec\00", [22 x i8] zeroinitializer }, align 32
@gt215_link_train._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 248, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Train: %08x\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gt215_link_train\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gt215_link_train._entry_ptr = internal global ptr @gt215_link_train._entry, section ".printk_index", align 4
@gt215_link_train._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 252, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Train: %08x %08x %08x\00", [38 x i8] zeroinitializer }, align 32
@gt215_link_train._entry_ptr.23 = internal global ptr @gt215_link_train._entry.21, section ".printk_index", align 4
@gt215_ram_timing_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 415, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Entry: 220: %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gt215_ram_timing_calc\00", [42 x i8] zeroinitializer }, align 32
@gt215_ram_timing_calc._entry_ptr = internal global ptr @gt215_ram_timing_calc._entry, section ".printk_index", align 4
@gt215_ram_timing_calc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 417, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:   230: %08x %08x %08x %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@gt215_ram_timing_calc._entry_ptr.28 = internal global ptr @gt215_ram_timing_calc._entry.26, section ".printk_index", align 4
@gt215_ram_timing_calc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 418, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:   240: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@gt215_ram_timing_calc._entry_ptr.31 = internal global ptr @gt215_ram_timing_calc._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"gt215_ram_func\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 931, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 274, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 522, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 529, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 536, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 546, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 553, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 170, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 248, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 251, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 414, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 416, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 418, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @gt215_link_train._entry, ptr @gt215_link_train._entry.21, ptr @gt215_link_train._entry_ptr, ptr @gt215_link_train._entry_ptr.23, ptr @gt215_ram_calc._entry, ptr @gt215_ram_calc._entry.11, ptr @gt215_ram_calc._entry.14, ptr @gt215_ram_calc._entry.5, ptr @gt215_ram_calc._entry.8, ptr @gt215_ram_calc._entry_ptr, ptr @gt215_ram_calc._entry_ptr.10, ptr @gt215_ram_calc._entry_ptr.13, ptr @gt215_ram_calc._entry_ptr.16, ptr @gt215_ram_calc._entry_ptr.7, ptr @gt215_ram_timing_calc._entry, ptr @gt215_ram_timing_calc._entry.26, ptr @gt215_ram_timing_calc._entry.29, ptr @gt215_ram_timing_calc._entry_ptr, ptr @gt215_ram_timing_calc._entry_ptr.28, ptr @gt215_ram_timing_calc._entry_ptr.31, ptr @gt215_ram_func, ptr @gt215_link_train_init.pattern, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_link_train_init.pattern to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_calc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_calc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_calc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_calc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_link_train._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_link_train._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_timing_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_timing_calc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_ram_timing_calc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_ram_new(ptr noundef %fb, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.ramfuc_reg, align 4
  %tmp7 = alloca %struct.ramfuc_reg, align 4
  %tmp9 = alloca %struct.ramfuc_reg, align 4
  %tmp11 = alloca %struct.ramfuc_reg, align 4
  %tmp13 = alloca %struct.ramfuc_reg, align 4
  %tmp15 = alloca %struct.ramfuc_reg, align 4
  %tmp17 = alloca %struct.ramfuc_reg, align 4
  %tmp19 = alloca %struct.ramfuc_reg, align 4
  %tmp21 = alloca %struct.ramfuc_reg, align 4
  %tmp23 = alloca %struct.ramfuc_reg, align 4
  %tmp25 = alloca %struct.ramfuc_reg, align 4
  %tmp27 = alloca %struct.ramfuc_reg, align 4
  %tmp29 = alloca %struct.ramfuc_reg, align 4
  %tmp31 = alloca %struct.ramfuc_reg, align 4
  %tmp33 = alloca %struct.ramfuc_reg, align 4
  %tmp35 = alloca %struct.ramfuc_reg, align 4
  %tmp37 = alloca %struct.ramfuc_reg, align 4
  %tmp39 = alloca %struct.ramfuc_reg, align 4
  %tmp41 = alloca %struct.ramfuc_reg, align 4
  %tmp43 = alloca %struct.ramfuc_reg, align 4
  %tmp45 = alloca %struct.ramfuc_reg, align 4
  %tmp47 = alloca %struct.ramfuc_reg, align 4
  %tmp49 = alloca %struct.ramfuc_reg, align 4
  %tmp51 = alloca %struct.ramfuc_reg, align 4
  %tmp68 = alloca %struct.ramfuc_reg, align 4
  %tmp74 = alloca %struct.ramfuc_reg, align 4
  %tmp76 = alloca %struct.ramfuc_reg, align 4
  %tmp78 = alloca %struct.ramfuc_reg, align 4
  %tmp80 = alloca %struct.ramfuc_reg, align 4
  %tmp82 = alloca %struct.ramfuc_reg, align 4
  %tmp104 = alloca %struct.ramfuc_reg, align 4
  %tmp108 = alloca %struct.ramfuc_reg, align 4
  %tmp112 = alloca %struct.ramfuc_reg, align 4
  %tmp116 = alloca %struct.ramfuc_reg, align 4
  %tmp120 = alloca %struct.ramfuc_reg, align 4
  %tmp124 = alloca %struct.ramfuc_reg, align 4
  %tmp128 = alloca %struct.ramfuc_reg, align 4
  %tmp132 = alloca %struct.ramfuc_reg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1928) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pram, align 4
  %call2 = tail call i32 @nv50_ram_ctor(ptr noundef nonnull @gt215_ram_func, ptr noundef %fb, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %r_0x001610 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp, i32 noundef 5648)
  %2 = call ptr @memcpy(ptr %r_0x001610, ptr %tmp, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #8
  %r_0x001700 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp7) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp7, i32 noundef 5888)
  %3 = call ptr @memcpy(ptr %r_0x001700, ptr %tmp7, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp7) #8
  %r_0x002504 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp9) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp9, i32 noundef 9476)
  %4 = call ptr @memcpy(ptr %r_0x002504, ptr %tmp9, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp9) #8
  %r_0x004000 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp11) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp11, i32 noundef 16384)
  %5 = call ptr @memcpy(ptr %r_0x004000, ptr %tmp11, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp11) #8
  %r_0x004004 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp13) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp13, i32 noundef 16388)
  %6 = call ptr @memcpy(ptr %r_0x004004, ptr %tmp13, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp13) #8
  %r_0x004018 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp15) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp15, i32 noundef 16408)
  %7 = call ptr @memcpy(ptr %r_0x004018, ptr %tmp15, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp15) #8
  %r_0x004128 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp17) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp17, i32 noundef 16680)
  %8 = call ptr @memcpy(ptr %r_0x004128, ptr %tmp17, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp17) #8
  %r_0x004168 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp19) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp19, i32 noundef 16744)
  %9 = call ptr @memcpy(ptr %r_0x004168, ptr %tmp19, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp19) #8
  %r_0x100080 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp21) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp21, i32 noundef 1048704)
  %10 = call ptr @memcpy(ptr %r_0x100080, ptr %tmp21, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp21) #8
  %r_0x100200 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp23) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp23, i32 noundef 1049088)
  %11 = call ptr @memcpy(ptr %r_0x100200, ptr %tmp23, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp23) #8
  %r_0x100210 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp25) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp25, i32 noundef 1049104)
  %12 = call ptr @memcpy(ptr %r_0x100210, ptr %tmp25, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp25) #8
  %arrayidx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049120)
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.1 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049124)
  %14 = call ptr @memcpy(ptr %arrayidx.1, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.2 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049128)
  %15 = call ptr @memcpy(ptr %arrayidx.2, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.3 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049132)
  %16 = call ptr @memcpy(ptr %arrayidx.3, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.4 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049136)
  %17 = call ptr @memcpy(ptr %arrayidx.4, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.5 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049140)
  %18 = call ptr @memcpy(ptr %arrayidx.5, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.6 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049144)
  %19 = call ptr @memcpy(ptr %arrayidx.6, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.7 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049148)
  %20 = call ptr @memcpy(ptr %arrayidx.7, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %arrayidx.8 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp27) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp27, i32 noundef 1049152)
  %21 = call ptr @memcpy(ptr %arrayidx.8, ptr %tmp27, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp27) #8
  %r_0x100264 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp29) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp29, i32 noundef 1049188)
  %22 = call ptr @memcpy(ptr %r_0x100264, ptr %tmp29, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp29) #8
  %r_0x1002d0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp31) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp31, i32 noundef 1049296)
  %23 = call ptr @memcpy(ptr %r_0x1002d0, ptr %tmp31, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp31) #8
  %r_0x1002d4 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp33) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp33, i32 noundef 1049300)
  %24 = call ptr @memcpy(ptr %r_0x1002d4, ptr %tmp33, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp33) #8
  %r_0x1002dc = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp35) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp35, i32 noundef 1049308)
  %25 = call ptr @memcpy(ptr %r_0x1002dc, ptr %tmp35, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp35) #8
  %r_0x10053c = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp37) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp37, i32 noundef 1049916)
  %26 = call ptr @memcpy(ptr %r_0x10053c, ptr %tmp37, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp37) #8
  %r_0x1005a0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp39) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp39, i32 noundef 1050016)
  %27 = call ptr @memcpy(ptr %r_0x1005a0, ptr %tmp39, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp39) #8
  %r_0x1005a4 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp41) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp41, i32 noundef 1050020)
  %28 = call ptr @memcpy(ptr %r_0x1005a4, ptr %tmp41, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp41) #8
  %r_0x100700 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp43) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp43, i32 noundef 1050368)
  %29 = call ptr @memcpy(ptr %r_0x100700, ptr %tmp43, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp43) #8
  %r_0x100714 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp45) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp45, i32 noundef 1050388)
  %30 = call ptr @memcpy(ptr %r_0x100714, ptr %tmp45, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp45) #8
  %r_0x100718 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp47) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp47, i32 noundef 1050392)
  %31 = call ptr @memcpy(ptr %r_0x100718, ptr %tmp47, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp47) #8
  %r_0x10071c = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp49) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp49, i32 noundef 1050396)
  %32 = call ptr @memcpy(ptr %r_0x10071c, ptr %tmp49, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp49) #8
  %r_0x100720 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp51) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp51, i32 noundef 1050400)
  %33 = call ptr @memcpy(ptr %r_0x100720, ptr %tmp51, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp51) #8
  %r_0x100760 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25
  %part_mask = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %part_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %part_mask, align 4
  %36 = ptrtoint ptr %r_0x100760 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %r_0x100760, align 4
  %tmp53.sroa.4.0.r_0x100760.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25, i32 1
  %37 = ptrtoint ptr %tmp53.sroa.4.0.r_0x100760.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %tmp53.sroa.4.0.r_0x100760.sroa_idx, align 8
  %tmp53.sroa.5238.0.r_0x100760.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25, i32 2
  %38 = ptrtoint ptr %tmp53.sroa.5238.0.r_0x100760.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1050464, ptr %tmp53.sroa.5238.0.r_0x100760.sroa_idx, align 4
  %tmp53.sroa.6.0.r_0x100760.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25, i32 3
  %39 = ptrtoint ptr %tmp53.sroa.6.0.r_0x100760.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %tmp53.sroa.6.0.r_0x100760.sroa_idx, align 8
  %tmp53.sroa.7.0.r_0x100760.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25, i32 4
  %40 = ptrtoint ptr %tmp53.sroa.7.0.r_0x100760.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %tmp53.sroa.7.0.r_0x100760.sroa_idx, align 4
  %tmp53.sroa.8.0.r_0x100760.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 25, i32 5
  %41 = ptrtoint ptr %tmp53.sroa.8.0.r_0x100760.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -559038737, ptr %tmp53.sroa.8.0.r_0x100760.sroa_idx, align 8
  %r_0x1007a0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26
  %42 = ptrtoint ptr %r_0x1007a0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %r_0x1007a0, align 4
  %tmp56.sroa.4.0.r_0x1007a0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26, i32 1
  %43 = ptrtoint ptr %tmp56.sroa.4.0.r_0x1007a0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %tmp56.sroa.4.0.r_0x1007a0.sroa_idx, align 8
  %tmp56.sroa.5237.0.r_0x1007a0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26, i32 2
  %44 = ptrtoint ptr %tmp56.sroa.5237.0.r_0x1007a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1050528, ptr %tmp56.sroa.5237.0.r_0x1007a0.sroa_idx, align 4
  %tmp56.sroa.6.0.r_0x1007a0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26, i32 3
  %45 = ptrtoint ptr %tmp56.sroa.6.0.r_0x1007a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %tmp56.sroa.6.0.r_0x1007a0.sroa_idx, align 8
  %tmp56.sroa.7.0.r_0x1007a0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26, i32 4
  %46 = ptrtoint ptr %tmp56.sroa.7.0.r_0x1007a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %35, ptr %tmp56.sroa.7.0.r_0x1007a0.sroa_idx, align 4
  %tmp56.sroa.8.0.r_0x1007a0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 26, i32 5
  %47 = ptrtoint ptr %tmp56.sroa.8.0.r_0x1007a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -559038737, ptr %tmp56.sroa.8.0.r_0x1007a0.sroa_idx, align 8
  %r_0x1007e0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27
  %48 = ptrtoint ptr %r_0x1007e0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %r_0x1007e0, align 4
  %tmp60.sroa.4.0.r_0x1007e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27, i32 1
  %49 = ptrtoint ptr %tmp60.sroa.4.0.r_0x1007e0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %tmp60.sroa.4.0.r_0x1007e0.sroa_idx, align 8
  %tmp60.sroa.5236.0.r_0x1007e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27, i32 2
  %50 = ptrtoint ptr %tmp60.sroa.5236.0.r_0x1007e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1050592, ptr %tmp60.sroa.5236.0.r_0x1007e0.sroa_idx, align 4
  %tmp60.sroa.6.0.r_0x1007e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27, i32 3
  %51 = ptrtoint ptr %tmp60.sroa.6.0.r_0x1007e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %tmp60.sroa.6.0.r_0x1007e0.sroa_idx, align 8
  %tmp60.sroa.7.0.r_0x1007e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27, i32 4
  %52 = ptrtoint ptr %tmp60.sroa.7.0.r_0x1007e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %35, ptr %tmp60.sroa.7.0.r_0x1007e0.sroa_idx, align 4
  %tmp60.sroa.8.0.r_0x1007e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 27, i32 5
  %53 = ptrtoint ptr %tmp60.sroa.8.0.r_0x1007e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -559038737, ptr %tmp60.sroa.8.0.r_0x1007e0.sroa_idx, align 8
  %r_0x100da0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28
  %54 = ptrtoint ptr %r_0x100da0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %r_0x100da0, align 4
  %tmp64.sroa.4.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28, i32 1
  %55 = ptrtoint ptr %tmp64.sroa.4.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tmp64.sroa.4.0.r_0x100da0.sroa_idx, align 8
  %tmp64.sroa.5235.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28, i32 2
  %56 = ptrtoint ptr %tmp64.sroa.5235.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1052064, ptr %tmp64.sroa.5235.0.r_0x100da0.sroa_idx, align 4
  %tmp64.sroa.6.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28, i32 3
  %57 = ptrtoint ptr %tmp64.sroa.6.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %tmp64.sroa.6.0.r_0x100da0.sroa_idx, align 8
  %tmp64.sroa.7.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28, i32 4
  %58 = ptrtoint ptr %tmp64.sroa.7.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %35, ptr %tmp64.sroa.7.0.r_0x100da0.sroa_idx, align 4
  %tmp64.sroa.8.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 28, i32 5
  %59 = ptrtoint ptr %tmp64.sroa.8.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -559038737, ptr %tmp64.sroa.8.0.r_0x100da0.sroa_idx, align 8
  %r_0x10f804 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp68) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp68, i32 noundef 1112068)
  %60 = call ptr @memcpy(ptr %r_0x10f804, ptr %tmp68, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp68) #8
  %r_0x1110e0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30
  %61 = ptrtoint ptr %r_0x1110e0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %r_0x1110e0, align 4
  %tmp70.sroa.4.0.r_0x1110e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30, i32 1
  %62 = ptrtoint ptr %tmp70.sroa.4.0.r_0x1110e0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %tmp70.sroa.4.0.r_0x1110e0.sroa_idx, align 8
  %tmp70.sroa.5234.0.r_0x1110e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30, i32 2
  %63 = ptrtoint ptr %tmp70.sroa.5234.0.r_0x1110e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1118432, ptr %tmp70.sroa.5234.0.r_0x1110e0.sroa_idx, align 4
  %tmp70.sroa.6.0.r_0x1110e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30, i32 3
  %64 = ptrtoint ptr %tmp70.sroa.6.0.r_0x1110e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %tmp70.sroa.6.0.r_0x1110e0.sroa_idx, align 8
  %tmp70.sroa.7.0.r_0x1110e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30, i32 4
  %65 = ptrtoint ptr %tmp70.sroa.7.0.r_0x1110e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %35, ptr %tmp70.sroa.7.0.r_0x1110e0.sroa_idx, align 4
  %tmp70.sroa.8.0.r_0x1110e0.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 30, i32 5
  %66 = ptrtoint ptr %tmp70.sroa.8.0.r_0x1110e0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -559038737, ptr %tmp70.sroa.8.0.r_0x1110e0.sroa_idx, align 8
  %r_0x111100 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp74) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp74, i32 noundef 1118464)
  %67 = call ptr @memcpy(ptr %r_0x111100, ptr %tmp74, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp74) #8
  %r_0x111104 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp76) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp76, i32 noundef 1118468)
  %68 = call ptr @memcpy(ptr %r_0x111104, ptr %tmp76, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp76) #8
  %r_0x1111e0 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp78) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp78, i32 noundef 1118688)
  %69 = call ptr @memcpy(ptr %r_0x1111e0, ptr %tmp78, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp78) #8
  %r_0x111400 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp80) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp80, i32 noundef 1119232)
  %70 = call ptr @memcpy(ptr %r_0x111400, ptr %tmp80, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp80) #8
  %r_0x611200 = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp82) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp82, i32 noundef 6361600)
  %71 = call ptr @memcpy(ptr %r_0x611200, ptr %tmp82, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp82) #8
  %ranks = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %ranks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ranks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp84 = icmp sgt i32 %73, 1
  %r_mr = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36
  br i1 %cmp84, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %r_mr, align 4
  %tmp88.sroa.4.0.r_mr.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 0, i32 1
  %75 = ptrtoint ptr %tmp88.sroa.4.0.r_mr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %tmp88.sroa.4.0.r_mr.sroa_idx, align 8
  %tmp88.sroa.5233.0.r_mr.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 0, i32 2
  %76 = ptrtoint ptr %tmp88.sroa.5233.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1049280, ptr %tmp88.sroa.5233.0.r_mr.sroa_idx, align 4
  %tmp88.sroa.6.0.r_mr.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 0, i32 3
  %77 = ptrtoint ptr %tmp88.sroa.6.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %tmp88.sroa.6.0.r_mr.sroa_idx, align 8
  %tmp88.sroa.7.0.r_mr.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 0, i32 4
  %78 = ptrtoint ptr %tmp88.sroa.7.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %tmp88.sroa.7.0.r_mr.sroa_idx, align 4
  %tmp88.sroa.8.0.r_mr.sroa_idx = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 0, i32 5
  %79 = ptrtoint ptr %tmp88.sroa.8.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -559038737, ptr %tmp88.sroa.8.0.r_mr.sroa_idx, align 8
  %arrayidx91 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1
  %80 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx91, align 4
  %tmp92.sroa.4.0.arrayidx91.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1, i32 1
  %81 = ptrtoint ptr %tmp92.sroa.4.0.arrayidx91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %tmp92.sroa.4.0.arrayidx91.sroa_idx, align 8
  %tmp92.sroa.5232.0.arrayidx91.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1, i32 2
  %82 = ptrtoint ptr %tmp92.sroa.5232.0.arrayidx91.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1049284, ptr %tmp92.sroa.5232.0.arrayidx91.sroa_idx, align 4
  %tmp92.sroa.6.0.arrayidx91.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1, i32 3
  %83 = ptrtoint ptr %tmp92.sroa.6.0.arrayidx91.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %tmp92.sroa.6.0.arrayidx91.sroa_idx, align 8
  %tmp92.sroa.7.0.arrayidx91.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1, i32 4
  %84 = ptrtoint ptr %tmp92.sroa.7.0.arrayidx91.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %tmp92.sroa.7.0.arrayidx91.sroa_idx, align 4
  %tmp92.sroa.8.0.arrayidx91.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1, i32 5
  %85 = ptrtoint ptr %tmp92.sroa.8.0.arrayidx91.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -559038737, ptr %tmp92.sroa.8.0.arrayidx91.sroa_idx, align 8
  %arrayidx95 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2
  %86 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx95, align 4
  %tmp96.sroa.4.0.arrayidx95.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2, i32 1
  %87 = ptrtoint ptr %tmp96.sroa.4.0.arrayidx95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %tmp96.sroa.4.0.arrayidx95.sroa_idx, align 8
  %tmp96.sroa.5231.0.arrayidx95.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2, i32 2
  %88 = ptrtoint ptr %tmp96.sroa.5231.0.arrayidx95.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1049312, ptr %tmp96.sroa.5231.0.arrayidx95.sroa_idx, align 4
  %tmp96.sroa.6.0.arrayidx95.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2, i32 3
  %89 = ptrtoint ptr %tmp96.sroa.6.0.arrayidx95.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8, ptr %tmp96.sroa.6.0.arrayidx95.sroa_idx, align 8
  %tmp96.sroa.7.0.arrayidx95.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2, i32 4
  %90 = ptrtoint ptr %tmp96.sroa.7.0.arrayidx95.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %tmp96.sroa.7.0.arrayidx95.sroa_idx, align 4
  %tmp96.sroa.8.0.arrayidx95.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2, i32 5
  %91 = ptrtoint ptr %tmp96.sroa.8.0.arrayidx95.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -559038737, ptr %tmp96.sroa.8.0.arrayidx95.sroa_idx, align 8
  %arrayidx99 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3
  %92 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx99, align 4
  %tmp100.sroa.4.0.arrayidx99.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3, i32 1
  %93 = ptrtoint ptr %tmp100.sroa.4.0.arrayidx99.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %tmp100.sroa.4.0.arrayidx99.sroa_idx, align 8
  %tmp100.sroa.5230.0.arrayidx99.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3, i32 2
  %94 = ptrtoint ptr %tmp100.sroa.5230.0.arrayidx99.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1049316, ptr %tmp100.sroa.5230.0.arrayidx99.sroa_idx, align 4
  %tmp100.sroa.6.0.arrayidx99.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3, i32 3
  %95 = ptrtoint ptr %tmp100.sroa.6.0.arrayidx99.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %tmp100.sroa.6.0.arrayidx99.sroa_idx, align 8
  %tmp100.sroa.7.0.arrayidx99.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3, i32 4
  %96 = ptrtoint ptr %tmp100.sroa.7.0.arrayidx99.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %tmp100.sroa.7.0.arrayidx99.sroa_idx, align 4
  %tmp100.sroa.8.0.arrayidx99.sroa_idx = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3, i32 5
  %97 = ptrtoint ptr %tmp100.sroa.8.0.arrayidx99.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -559038737, ptr %tmp100.sroa.8.0.arrayidx99.sroa_idx, align 8
  br label %if.end117

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp104) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp104, i32 noundef 1049280)
  %98 = call ptr @memcpy(ptr %r_mr, ptr %tmp104, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp104) #8
  %arrayidx107 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp108) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp108, i32 noundef 1049284)
  %99 = call ptr @memcpy(ptr %arrayidx107, ptr %tmp108, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp108) #8
  %arrayidx111 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp112) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp112, i32 noundef 1049312)
  %100 = call ptr @memcpy(ptr %arrayidx111, ptr %tmp112, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp112) #8
  %arrayidx115 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 36, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp116) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp116, i32 noundef 1049316)
  %101 = call ptr @memcpy(ptr %arrayidx115, ptr %tmp116, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp116) #8
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.then85
  %r_gpio = getelementptr inbounds %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp120) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp120, i32 noundef 57604)
  %102 = call ptr @memcpy(ptr %r_gpio, ptr %tmp120, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp120) #8
  %arrayidx123 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 37, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp124) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp124, i32 noundef 57608)
  %103 = call ptr @memcpy(ptr %arrayidx123, ptr %tmp124, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp124) #8
  %arrayidx127 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 37, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp128) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp128, i32 noundef 57632)
  %104 = call ptr @memcpy(ptr %arrayidx127, ptr %tmp128, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp128) #8
  %arrayidx131 = getelementptr %struct.gt215_ram, ptr %call7.i.i, i32 0, i32 1, i32 37, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp132) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp132, i32 noundef 57636)
  %105 = call ptr @memcpy(ptr %arrayidx131, ptr %tmp132, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp132) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end117 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ram_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ramfuc_reg(ptr noalias nocapture writeonly sret(%struct.ramfuc_reg) align 4 %agg.result, i32 noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %agg.result, align 4
  %force = getelementptr inbounds %struct.ramfuc_reg, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %force, align 4
  %addr1 = getelementptr inbounds %struct.ramfuc_reg, ptr %agg.result, i32 0, i32 2
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %addr1, align 4
  %stride = getelementptr inbounds %struct.ramfuc_reg, ptr %agg.result, i32 0, i32 3
  %3 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %stride, align 4
  %mask = getelementptr inbounds %struct.ramfuc_reg, ptr %agg.result, i32 0, i32 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mask, align 4
  %data = getelementptr inbounds %struct.ramfuc_reg, ptr %agg.result, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -559038737, ptr %data, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gt215_ram_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memory.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %memory.i) #8
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_ram_init(ptr noundef %base) #0 align 64 {
entry:
  %M0205E.i = alloca %struct.nvbios_M0205E, align 1
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ltrain.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2
  %fb.i = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %M0205E.i) #8
  %6 = ptrtoint ptr %M0205E.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %M0205E.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #8
  %7 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ver.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #8
  %8 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %hdr.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #8
  %9 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %cnt.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #8
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %len.i, align 1, !annotation !62
  %11 = ptrtoint ptr %ltrain.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ltrain.i, align 4
  %call.i = call i32 @nvbios_M0205Ep(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %M0205E.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.gt215_link_train_init.exit_crit_edge, label %if.end.i

entry.gt215_link_train_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train_init.exit

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %M0205E.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %M0205E.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp.not.i = icmp eq i8 %13, 5
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.gt215_link_train_init.exit_crit_edge

if.end.i.gt215_link_train_init.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train_init.exit

if.end5.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %ltrain.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %ltrain.i, align 4
  %memory.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 4
  %call8.i = call i32 @nvkm_ram_get(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16, i64 noundef 32768, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %memory.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.gt215_link_train_init.exit_crit_edge

if.end5.i.gt215_link_train_init.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train_init.exit

if.end11.i:                                       ; preds = %if.end5.i
  %15 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %addr14.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr14.i, align 4
  %call17.i = call i64 %20(ptr noundef %16) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @arm_heavy_mb() #8
  %shr.i = lshr i64 %call17.i, 16
  %21 = trunc i64 %shr.i to i32
  %conv18.i = or i32 %21, 268435456
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 1049912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv18.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %25, i32 1050024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 65535) #8, !srcloc !64
  %26 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %27, i32 1112064
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @arm_heavy_mb() #8
  %or30.i = or i32 %28, 1
  %29 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %30, i32 1112064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %or30.i) #8, !srcloc !64
  br label %do.body36.i

do.body36.i:                                      ; preds = %do.body36.i.do.body36.i_crit_edge, %if.end11.i
  %i.01.i = phi i32 [ 0, %if.end11.i ], [ %inc.i, %do.body36.i.do.body36.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @arm_heavy_mb() #8
  %shl.i = shl i32 %i.01.i, 8
  %or39.i = or i32 %shl.i, %i.01.i
  %31 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %32, i32 1112256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %or39.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @arm_heavy_mb() #8
  %rem.i = and i32 %i.01.i, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %rem.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %36, i32 1112320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %34) #8, !srcloc !64
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 48
  br i1 %exitcond.not.i, label %do.body36.i.do.body51.i_crit_edge, label %do.body36.i.do.body36.i_crit_edge

do.body36.i.do.body36.i_crit_edge:                ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36.i

do.body36.i.do.body51.i_crit_edge:                ; preds = %do.body36.i
  br label %do.body51.i

do.body51.i:                                      ; preds = %do.body51.i.do.body51.i_crit_edge, %do.body36.i.do.body51.i_crit_edge
  %i.12.i = phi i32 [ %inc66.i, %do.body51.i.do.body51.i_crit_edge ], [ 0, %do.body36.i.do.body51.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @arm_heavy_mb() #8
  %shl54.i = shl i32 %i.12.i, 8
  %or55.i = or i32 %shl54.i, %i.12.i
  %37 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %38, i32 1112288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %or55.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @arm_heavy_mb() #8
  %rem61.i = and i32 %i.12.i, 15
  %arrayidx62.i = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %rem61.i
  %39 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx62.i, align 4
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %42, i32 1112352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %40) #8, !srcloc !64
  %inc66.i = add nuw nsw i32 %i.12.i, 1
  %exitcond5.not.i = icmp eq i32 %inc66.i, 48
  br i1 %exitcond5.not.i, label %for.end67.i, label %do.body51.i.do.body51.i_crit_edge

do.body51.i.do.body51.i_crit_edge:                ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51.i

for.end67.i:                                      ; preds = %do.body51.i
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %44, i32 5888
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %47, i32 5888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %21) #8, !srcloc !64
  br label %do.body84.i

do.body84.i:                                      ; preds = %do.body84.i.do.body84.i_crit_edge, %for.end67.i
  %i.23.i = phi i32 [ 0, %for.end67.i ], [ %inc92.i, %do.body84.i.do.body84.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @arm_heavy_mb() #8
  %arrayidx87.i = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %i.23.i
  %48 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx87.i, align 4
  %50 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i, align 4
  %shl89.i = shl i32 %i.23.i, 2
  %add.i = add nuw nsw i32 %shl89.i, 7340032
  %add.ptr90.i = getelementptr i8, ptr %51, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 %49) #8, !srcloc !64
  %inc92.i = add nuw nsw i32 %i.23.i, 1
  %exitcond6.not.i = icmp eq i32 %inc92.i, 16
  br i1 %exitcond6.not.i, label %do.body84.i.do.body98.i_crit_edge, label %do.body84.i.do.body84.i_crit_edge

do.body84.i.do.body84.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84.i

do.body84.i.do.body98.i_crit_edge:                ; preds = %do.body84.i
  br label %do.body98.i

do.body98.i:                                      ; preds = %do.body98.i.do.body98.i_crit_edge, %do.body84.i.do.body98.i_crit_edge
  %i.34.i = phi i32 [ %inc107.i, %do.body98.i.do.body98.i_crit_edge ], [ 0, %do.body84.i.do.body98.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %arrayidx101.i = getelementptr [16 x i32], ptr @gt215_link_train_init.pattern, i32 0, i32 %i.34.i
  %52 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx101.i, align 4
  %54 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i, align 4
  %shl103.i = shl i32 %i.34.i, 2
  %add104.i = add nuw nsw i32 %shl103.i, 7340288
  %add.ptr105.i = getelementptr i8, ptr %55, i32 %add104.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %53) #8, !srcloc !64
  %inc107.i = add nuw nsw i32 %i.34.i, 1
  %exitcond7.not.i = icmp eq i32 %inc107.i, 16
  br i1 %exitcond7.not.i, label %do.body109.i, label %do.body98.i.do.body98.i_crit_edge

do.body98.i.do.body98.i_crit_edge:                ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body98.i

do.body109.i:                                     ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i, align 4
  %add.ptr113.i = getelementptr i8, ptr %57, i32 5888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 %45) #8, !srcloc !64
  %58 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i, align 4
  %add.ptr116.i = getelementptr i8, ptr %59, i32 1050400
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %r_100720.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %r_100720.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %r_100720.i, align 4
  %62 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %63, i32 1118688
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %r_1111e0.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %r_1111e0.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %r_1111e0.i, align 4
  %66 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %67, i32 1119232
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %r_111400.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 3
  %69 = ptrtoint ptr %r_111400.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %r_111400.i, align 4
  br label %gt215_link_train_init.exit

gt215_link_train_init.exit:                       ; preds = %do.body109.i, %if.end5.i.gt215_link_train_init.exit_crit_edge, %if.end.i.gt215_link_train_init.exit_crit_edge, %entry.gt215_link_train_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %M0205E.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_ram_calc(ptr noundef %base, i32 noundef %freq) #0 align 64 {
entry:
  %median.i.i = alloca [8 x i8], align 8
  %bins.i.i = alloca [4 x i8], align 4
  %M0205T.i = alloca %struct.nvbios_M0205T, align 2
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %snr.i = alloca i8, align 1
  %ssz.i = alloca i8, align 1
  %flags.i = alloca i32, align 4
  %mclk = alloca %struct.gt215_clk_info, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %timing = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fuc1 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1
  %ltrain = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %subdev3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %device4 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device4, align 4
  %bios5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios5, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mclk) #8
  %6 = getelementptr inbounds %struct.gt215_clk_info, ptr %mclk, i32 0, i32 1
  %gpio6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %7 = call ptr @memset(ptr %mclk, i32 255, i32 16)
  %8 = ptrtoint ptr %gpio6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #8
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ver, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %hdr, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #8
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cnt, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %len, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %timing) #8
  %14 = call ptr @memset(ptr %timing, i32 255, i32 36)
  %target = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16
  %freq8 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 2
  %15 = ptrtoint ptr %freq8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %freq, ptr %freq8, align 4
  %next10 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 13
  %16 = ptrtoint ptr %next10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %target, ptr %next10, align 8
  %17 = ptrtoint ptr %ltrain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ltrain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device4, align 4
  %bios4.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bios4.i, align 8
  %clk5.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 43
  %23 = ptrtoint ptr %clk5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk5.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %M0205T.i) #8
  %25 = ptrtoint ptr %M0205T.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %M0205T.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #8
  %26 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %ver.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #8
  %27 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %hdr.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #8
  %28 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %cnt.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #8
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %len.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i) #8
  %30 = ptrtoint ptr %snr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %snr.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i) #8
  %31 = ptrtoint ptr %ssz.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %ssz.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #8
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %flags.i, align 4, !annotation !62
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 6
  %33 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfgopt.i, align 4
  %call.i = tail call zeroext i1 @nvkm_boolopt(ptr noundef %34, ptr noundef nonnull @.str.17, i1 noundef zeroext true) #8
  br i1 %call.i, label %if.end.i, label %if.then.gt215_link_train.exit_crit_edge

if.then.gt215_link_train.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train.exit

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.gt215_link_train.exit_crit_edge, label %if.end9.i

if.end.i.gt215_link_train.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train.exit

if.end9.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %ltrain to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %ltrain, align 4
  %call10.i = call i32 @nvbios_M0205Tp(ptr noundef %22, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i, ptr noundef nonnull %M0205T.i) #8
  %37 = ptrtoint ptr %M0205T.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %M0205T.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp12.i = icmp eq i16 %38, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %gt215_link_train.exit

if.end15.i:                                       ; preds = %if.end9.i
  %call16.i = call i32 @nvkm_clk_read(ptr noundef %24, i32 noundef 18) #8
  %call17.i = call i32 @gt215_clk_pre(ptr noundef %24, ptr noundef nonnull %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.out.i_crit_edge

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end20.i:                                       ; preds = %if.end15.i
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 8
  %calc.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %calc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %calc.i, align 4
  %43 = ptrtoint ptr %M0205T.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %M0205T.i, align 2
  %conv24.i = zext i16 %44 to i32
  %mul.i = mul nuw nsw i32 %conv24.i, 1000
  %call25.i = call i32 %42(ptr noundef %base, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %do.body.i, label %if.end20.i.out.i_crit_edge

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.body.i:                                        ; preds = %if.end20.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %45 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 1119232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !64
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %48, i32 1050228
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @arm_heavy_mb() #8
  %and.i = and i32 %49, -65536
  %50 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %51, i32 1050228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %and.i) #8, !srcloc !64
  %52 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %53, i32 1050084
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @arm_heavy_mb() #8
  %and49.i = and i32 %54, -65536
  %55 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %56, i32 1050084
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %and49.i) #8, !srcloc !64
  %57 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %58, i32 1051404
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @arm_heavy_mb() #8
  %and65.i = and i32 %59, -256
  %60 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %61, i32 1051404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %and65.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %63, i32 1051652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 1024) #8, !srcloc !64
  %r_0x001700.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %r_0x001700.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %r_0x001700.i, align 4
  %sequence2.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp.not.i.i = icmp eq i32 %65, %67
  br i1 %cmp.not.i.i, label %do.body.i.ramfuc_rd32.exit.i_crit_edge, label %if.then.i.i

do.body.i.ramfuc_rd32.exit.i_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fb.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %69, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 2
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %75
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 5
  %77 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %data.i.i, align 4
  br label %ramfuc_rd32.exit.i

ramfuc_rd32.exit.i:                               ; preds = %if.then.i.i, %do.body.i.ramfuc_rd32.exit.i_crit_edge
  %data3.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 5
  %78 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data3.i.i, align 4
  %r_0x100200.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10
  %80 = ptrtoint ptr %r_0x100200.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %r_0x100200.i, align 4
  %82 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp.not.i.i.i = icmp eq i32 %81, %83
  br i1 %cmp.not.i.i.i, label %ramfuc_rd32.exit.i.ramfuc_rd32.exit.i.i_crit_edge, label %if.then.i.i.i

ramfuc_rd32.exit.i.ramfuc_rd32.exit.i.i_crit_edge: ; preds = %ramfuc_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i.i

if.then.i.i.i:                                    ; preds = %ramfuc_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %fb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fb.i.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %85, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %device1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device1.i.i.i, align 4
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %88 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 2
  %90 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %89, i32 %91
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 5
  %93 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %data.i.i.i, align 4
  br label %ramfuc_rd32.exit.i.i

ramfuc_rd32.exit.i.i:                             ; preds = %if.then.i.i.i, %ramfuc_rd32.exit.i.ramfuc_rd32.exit.i.i_crit_edge
  %data3.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 5
  %94 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data3.i.i.i, align 4
  %and.i.i = and i32 %95, -2049
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %and.i.i)
  %cmp.not.i1.i = icmp eq i32 %95, %and.i.i
  br i1 %cmp.not.i1.i, label %lor.lhs.false.i.i, label %ramfuc_rd32.exit.i.i.if.then.i2.i_crit_edge

ramfuc_rd32.exit.i.i.if.then.i2.i_crit_edge:      ; preds = %ramfuc_rd32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i2.i

lor.lhs.false.i.i:                                ; preds = %ramfuc_rd32.exit.i.i
  %force.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 1
  %96 = ptrtoint ptr %force.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %force.i.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.ramfuc_mask.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then.i2.i_crit_edge

lor.lhs.false.i.i.if.then.i2.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i2.i

lor.lhs.false.i.i.ramfuc_mask.exit.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit.i

if.then.i2.i:                                     ; preds = %lor.lhs.false.i.i.if.then.i2.i_crit_edge, %ramfuc_rd32.exit.i.i.if.then.i2.i_crit_edge
  %98 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sequence2.i.i, align 4
  %100 = ptrtoint ptr %r_0x100200.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %r_0x100200.i, align 4
  %101 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i.i, ptr %data3.i.i.i, align 4
  %mask3.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 4
  %102 = ptrtoint ptr %mask3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mask3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.not16.i.i.i = icmp eq i32 %103, 0
  br i1 %cmp.not16.i.i.i, label %if.then.i2.i.ramfuc_wr32.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i2.i.ramfuc_wr32.exit.i.i_crit_edge:      ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i2.i
  %addr.i1.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 2
  %stride.i.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %off.018.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add5.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %mask.017.i.i.i = phi i32 [ %103, %for.body.lr.ph.i.i.i ], [ %shr.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %and.i.i.i = and i32 %mask.017.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i2.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i2.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fuc1, align 4
  %106 = ptrtoint ptr %addr.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i1.i.i, align 4
  %add.i.i.i = add i32 %107, %off.018.i.i.i
  %108 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data3.i.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %105, i32 noundef %add.i.i.i, i32 noundef %109) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i2.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %110 = ptrtoint ptr %stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %stride.i.i.i, align 4
  %add5.i.i.i = add i32 %111, %off.018.i.i.i
  %shr.i.i.i = lshr i32 %mask.017.i.i.i, 1
  %cmp.not.i3.i.i = icmp ult i32 %mask.017.i.i.i, 2
  br i1 %cmp.not.i3.i.i, label %if.end.i.i.i.ramfuc_wr32.exit.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

if.end.i.i.i.ramfuc_wr32.exit.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i.i

ramfuc_wr32.exit.i.i:                             ; preds = %if.end.i.i.i.ramfuc_wr32.exit.i.i_crit_edge, %if.then.i2.i.ramfuc_wr32.exit.i.i_crit_edge
  %force4.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 1
  %112 = ptrtoint ptr %force4.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %force4.i.i, align 4
  br label %ramfuc_mask.exit.i

ramfuc_mask.exit.i:                               ; preds = %ramfuc_wr32.exit.i.i, %lor.lhs.false.i.i.ramfuc_mask.exit.i_crit_edge
  %r_0x611200.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35
  %113 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sequence2.i.i, align 4
  %115 = ptrtoint ptr %r_0x611200.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %r_0x611200.i, align 4
  %data2.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 5
  %116 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 13056, ptr %data2.i.i, align 4
  %mask3.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 4
  %117 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.not16.i.i = icmp eq i32 %118, 0
  br i1 %cmp.not16.i.i, label %ramfuc_mask.exit.i.ramfuc_wr32.exit.i_crit_edge, label %for.body.lr.ph.i.i

ramfuc_mask.exit.i.ramfuc_wr32.exit.i_crit_edge:  ; preds = %ramfuc_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

for.body.lr.ph.i.i:                               ; preds = %ramfuc_mask.exit.i
  %addr.i3.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 2
  %stride.i.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %118, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i4.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool.not.i5.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i6.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i6.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fuc1, align 4
  %121 = ptrtoint ptr %addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %addr.i3.i, align 4
  %add.i.i = add i32 %122, %off.018.i.i
  %123 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data2.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %120, i32 noundef %add.i.i, i32 noundef %124) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i6.i, %for.body.i.i.if.end.i.i_crit_edge
  %125 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %126, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i7.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i7.i, label %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.ramfuc_wr32.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

ramfuc_wr32.exit.i:                               ; preds = %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, %ramfuc_mask.exit.i.ramfuc_wr32.exit.i_crit_edge
  %127 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait_vblank(ptr noundef %128) #8
  %129 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait(ptr noundef %130, i32 noundef 6361600, i32 noundef 3, i32 noundef 0, i32 noundef 500000) #8
  %r_0x001610.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %r_0x001610.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %r_0x001610.i, align 4
  %133 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp.not.i.i9.i = icmp eq i32 %132, %134
  br i1 %cmp.not.i.i9.i, label %ramfuc_wr32.exit.i.ramfuc_rd32.exit.i20.i_crit_edge, label %if.then.i.i16.i

ramfuc_wr32.exit.i.ramfuc_rd32.exit.i20.i_crit_edge: ; preds = %ramfuc_wr32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i20.i

if.then.i.i16.i:                                  ; preds = %ramfuc_wr32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i10.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %135 = ptrtoint ptr %fb.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fb.i.i10.i, align 4
  %device1.i.i11.i = getelementptr inbounds %struct.nvkm_fb, ptr %136, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %device1.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device1.i.i11.i, align 4
  %pri.i.i12.i = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %pri.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri.i.i12.i, align 4
  %addr.i.i13.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 2
  %141 = ptrtoint ptr %addr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %addr.i.i13.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %140, i32 %142
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i15.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 5
  %144 = ptrtoint ptr %data.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %data.i.i15.i, align 4
  br label %ramfuc_rd32.exit.i20.i

ramfuc_rd32.exit.i20.i:                           ; preds = %if.then.i.i16.i, %ramfuc_wr32.exit.i.ramfuc_rd32.exit.i20.i_crit_edge
  %data3.i.i17.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 5
  %145 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %data3.i.i17.i, align 4
  %and.i18.i = and i32 %146, -132
  %or.i.i = or i32 %and.i18.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %or.i.i)
  %cmp.not.i19.i = icmp eq i32 %146, %or.i.i
  br i1 %cmp.not.i19.i, label %lor.lhs.false.i23.i, label %ramfuc_rd32.exit.i20.i.if.then.i26.i_crit_edge

ramfuc_rd32.exit.i20.i.if.then.i26.i_crit_edge:   ; preds = %ramfuc_rd32.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i26.i

lor.lhs.false.i23.i:                              ; preds = %ramfuc_rd32.exit.i20.i
  %force.i21.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 1
  %147 = ptrtoint ptr %force.i21.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %force.i21.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i22.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i22.i, label %lor.lhs.false.i23.i.ramfuc_mask.exit44.i_crit_edge, label %lor.lhs.false.i23.i.if.then.i26.i_crit_edge

lor.lhs.false.i23.i.if.then.i26.i_crit_edge:      ; preds = %lor.lhs.false.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i26.i

lor.lhs.false.i23.i.ramfuc_mask.exit44.i_crit_edge: ; preds = %lor.lhs.false.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit44.i

if.then.i26.i:                                    ; preds = %lor.lhs.false.i23.i.if.then.i26.i_crit_edge, %ramfuc_rd32.exit.i20.i.if.then.i26.i_crit_edge
  %149 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sequence2.i.i, align 4
  %151 = ptrtoint ptr %r_0x001610.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %r_0x001610.i, align 4
  %152 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i.i, ptr %data3.i.i17.i, align 4
  %mask3.i.i24.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 4
  %153 = ptrtoint ptr %mask3.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mask3.i.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.not16.i.i25.i = icmp eq i32 %154, 0
  br i1 %cmp.not16.i.i25.i, label %if.then.i26.i.ramfuc_wr32.exit.i42.i_crit_edge, label %for.body.lr.ph.i.i29.i

if.then.i26.i.ramfuc_wr32.exit.i42.i_crit_edge:   ; preds = %if.then.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i42.i

for.body.lr.ph.i.i29.i:                           ; preds = %if.then.i26.i
  %addr.i1.i27.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 2
  %stride.i.i28.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 3
  br label %for.body.i.i34.i

for.body.i.i34.i:                                 ; preds = %if.end.i.i40.i.for.body.i.i34.i_crit_edge, %for.body.lr.ph.i.i29.i
  %off.018.i.i30.i = phi i32 [ 0, %for.body.lr.ph.i.i29.i ], [ %add5.i.i37.i, %if.end.i.i40.i.for.body.i.i34.i_crit_edge ]
  %mask.017.i.i31.i = phi i32 [ %154, %for.body.lr.ph.i.i29.i ], [ %shr.i.i38.i, %if.end.i.i40.i.for.body.i.i34.i_crit_edge ]
  %and.i.i32.i = and i32 %mask.017.i.i31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32.i)
  %tobool.not.i.i33.i = icmp eq i32 %and.i.i32.i, 0
  br i1 %tobool.not.i.i33.i, label %for.body.i.i34.i.if.end.i.i40.i_crit_edge, label %if.then.i2.i36.i

for.body.i.i34.i.if.end.i.i40.i_crit_edge:        ; preds = %for.body.i.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i40.i

if.then.i2.i36.i:                                 ; preds = %for.body.i.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fuc1, align 4
  %157 = ptrtoint ptr %addr.i1.i27.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %addr.i1.i27.i, align 4
  %add.i.i35.i = add i32 %158, %off.018.i.i30.i
  %159 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %data3.i.i17.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %156, i32 noundef %add.i.i35.i, i32 noundef %160) #8
  br label %if.end.i.i40.i

if.end.i.i40.i:                                   ; preds = %if.then.i2.i36.i, %for.body.i.i34.i.if.end.i.i40.i_crit_edge
  %161 = ptrtoint ptr %stride.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %stride.i.i28.i, align 4
  %add5.i.i37.i = add i32 %162, %off.018.i.i30.i
  %shr.i.i38.i = lshr i32 %mask.017.i.i31.i, 1
  %cmp.not.i3.i39.i = icmp ult i32 %mask.017.i.i31.i, 2
  br i1 %cmp.not.i3.i39.i, label %if.end.i.i40.i.ramfuc_wr32.exit.i42.i_crit_edge, label %if.end.i.i40.i.for.body.i.i34.i_crit_edge

if.end.i.i40.i.for.body.i.i34.i_crit_edge:        ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i34.i

if.end.i.i40.i.ramfuc_wr32.exit.i42.i_crit_edge:  ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i42.i

ramfuc_wr32.exit.i42.i:                           ; preds = %if.end.i.i40.i.ramfuc_wr32.exit.i42.i_crit_edge, %if.then.i26.i.ramfuc_wr32.exit.i42.i_crit_edge
  %force4.i41.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 1
  %163 = ptrtoint ptr %force4.i41.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %force4.i41.i, align 4
  br label %ramfuc_mask.exit44.i

ramfuc_mask.exit44.i:                             ; preds = %ramfuc_wr32.exit.i42.i, %lor.lhs.false.i23.i.ramfuc_mask.exit44.i_crit_edge
  %r_0x100080.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9
  %164 = ptrtoint ptr %r_0x100080.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %r_0x100080.i, align 4
  %166 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp.not.i.i46.i = icmp eq i32 %165, %167
  br i1 %cmp.not.i.i46.i, label %ramfuc_mask.exit44.i.ramfuc_rd32.exit.i57.i_crit_edge, label %if.then.i.i53.i

ramfuc_mask.exit44.i.ramfuc_rd32.exit.i57.i_crit_edge: ; preds = %ramfuc_mask.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i57.i

if.then.i.i53.i:                                  ; preds = %ramfuc_mask.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i47.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %168 = ptrtoint ptr %fb.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fb.i.i47.i, align 4
  %device1.i.i48.i = getelementptr inbounds %struct.nvkm_fb, ptr %169, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %device1.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device1.i.i48.i, align 4
  %pri.i.i49.i = getelementptr inbounds %struct.nvkm_device, ptr %171, i32 0, i32 11
  %172 = ptrtoint ptr %pri.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri.i.i49.i, align 4
  %addr.i.i50.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 2
  %174 = ptrtoint ptr %addr.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %addr.i.i50.i, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %173, i32 %175
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i52.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 5
  %177 = ptrtoint ptr %data.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %data.i.i52.i, align 4
  br label %ramfuc_rd32.exit.i57.i

ramfuc_rd32.exit.i57.i:                           ; preds = %if.then.i.i53.i, %ramfuc_mask.exit44.i.ramfuc_rd32.exit.i57.i_crit_edge
  %data3.i.i54.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 5
  %178 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %data3.i.i54.i, align 4
  %and.i55.i = and i32 %179, -33
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %and.i55.i)
  %cmp.not.i56.i = icmp eq i32 %179, %and.i55.i
  br i1 %cmp.not.i56.i, label %lor.lhs.false.i60.i, label %ramfuc_rd32.exit.i57.i.if.then.i63.i_crit_edge

ramfuc_rd32.exit.i57.i.if.then.i63.i_crit_edge:   ; preds = %ramfuc_rd32.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i63.i

lor.lhs.false.i60.i:                              ; preds = %ramfuc_rd32.exit.i57.i
  %force.i58.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 1
  %180 = ptrtoint ptr %force.i58.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %force.i58.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i59.i = icmp eq i8 %181, 0
  br i1 %tobool.not.i59.i, label %lor.lhs.false.i60.i.ramfuc_mask.exit81.i_crit_edge, label %lor.lhs.false.i60.i.if.then.i63.i_crit_edge

lor.lhs.false.i60.i.if.then.i63.i_crit_edge:      ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i63.i

lor.lhs.false.i60.i.ramfuc_mask.exit81.i_crit_edge: ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit81.i

if.then.i63.i:                                    ; preds = %lor.lhs.false.i60.i.if.then.i63.i_crit_edge, %ramfuc_rd32.exit.i57.i.if.then.i63.i_crit_edge
  %182 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sequence2.i.i, align 4
  %184 = ptrtoint ptr %r_0x100080.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %r_0x100080.i, align 4
  %185 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %and.i55.i, ptr %data3.i.i54.i, align 4
  %mask3.i.i61.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 4
  %186 = ptrtoint ptr %mask3.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mask3.i.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.not16.i.i62.i = icmp eq i32 %187, 0
  br i1 %cmp.not16.i.i62.i, label %if.then.i63.i.ramfuc_wr32.exit.i79.i_crit_edge, label %for.body.lr.ph.i.i66.i

if.then.i63.i.ramfuc_wr32.exit.i79.i_crit_edge:   ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i79.i

for.body.lr.ph.i.i66.i:                           ; preds = %if.then.i63.i
  %addr.i1.i64.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 2
  %stride.i.i65.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 3
  br label %for.body.i.i71.i

for.body.i.i71.i:                                 ; preds = %if.end.i.i77.i.for.body.i.i71.i_crit_edge, %for.body.lr.ph.i.i66.i
  %off.018.i.i67.i = phi i32 [ 0, %for.body.lr.ph.i.i66.i ], [ %add5.i.i74.i, %if.end.i.i77.i.for.body.i.i71.i_crit_edge ]
  %mask.017.i.i68.i = phi i32 [ %187, %for.body.lr.ph.i.i66.i ], [ %shr.i.i75.i, %if.end.i.i77.i.for.body.i.i71.i_crit_edge ]
  %and.i.i69.i = and i32 %mask.017.i.i68.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69.i)
  %tobool.not.i.i70.i = icmp eq i32 %and.i.i69.i, 0
  br i1 %tobool.not.i.i70.i, label %for.body.i.i71.i.if.end.i.i77.i_crit_edge, label %if.then.i2.i73.i

for.body.i.i71.i.if.end.i.i77.i_crit_edge:        ; preds = %for.body.i.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i77.i

if.then.i2.i73.i:                                 ; preds = %for.body.i.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %fuc1, align 4
  %190 = ptrtoint ptr %addr.i1.i64.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %addr.i1.i64.i, align 4
  %add.i.i72.i = add i32 %191, %off.018.i.i67.i
  %192 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %data3.i.i54.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %189, i32 noundef %add.i.i72.i, i32 noundef %193) #8
  br label %if.end.i.i77.i

if.end.i.i77.i:                                   ; preds = %if.then.i2.i73.i, %for.body.i.i71.i.if.end.i.i77.i_crit_edge
  %194 = ptrtoint ptr %stride.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %stride.i.i65.i, align 4
  %add5.i.i74.i = add i32 %195, %off.018.i.i67.i
  %shr.i.i75.i = lshr i32 %mask.017.i.i68.i, 1
  %cmp.not.i3.i76.i = icmp ult i32 %mask.017.i.i68.i, 2
  br i1 %cmp.not.i3.i76.i, label %if.end.i.i77.i.ramfuc_wr32.exit.i79.i_crit_edge, label %if.end.i.i77.i.for.body.i.i71.i_crit_edge

if.end.i.i77.i.for.body.i.i71.i_crit_edge:        ; preds = %if.end.i.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i71.i

if.end.i.i77.i.ramfuc_wr32.exit.i79.i_crit_edge:  ; preds = %if.end.i.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i79.i

ramfuc_wr32.exit.i79.i:                           ; preds = %if.end.i.i77.i.ramfuc_wr32.exit.i79.i_crit_edge, %if.then.i63.i.ramfuc_wr32.exit.i79.i_crit_edge
  %force4.i78.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 1
  %196 = ptrtoint ptr %force4.i78.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %force4.i78.i, align 4
  br label %ramfuc_mask.exit81.i

ramfuc_mask.exit81.i:                             ; preds = %ramfuc_wr32.exit.i79.i, %lor.lhs.false.i60.i.ramfuc_mask.exit81.i_crit_edge
  %r_0x10f804.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29
  %197 = ptrtoint ptr %r_0x10f804.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %r_0x10f804.i, align 4
  %199 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp.not.i.i83.i = icmp eq i32 %198, %200
  br i1 %cmp.not.i.i83.i, label %ramfuc_mask.exit81.i.ramfuc_rd32.exit.i94.i_crit_edge, label %if.then.i.i90.i

ramfuc_mask.exit81.i.ramfuc_rd32.exit.i94.i_crit_edge: ; preds = %ramfuc_mask.exit81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i94.i

if.then.i.i90.i:                                  ; preds = %ramfuc_mask.exit81.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i84.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %201 = ptrtoint ptr %fb.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %fb.i.i84.i, align 4
  %device1.i.i85.i = getelementptr inbounds %struct.nvkm_fb, ptr %202, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %device1.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %device1.i.i85.i, align 4
  %pri.i.i86.i = getelementptr inbounds %struct.nvkm_device, ptr %204, i32 0, i32 11
  %205 = ptrtoint ptr %pri.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pri.i.i86.i, align 4
  %addr.i.i87.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 2
  %207 = ptrtoint ptr %addr.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %addr.i.i87.i, align 4
  %add.ptr.i.i88.i = getelementptr i8, ptr %206, i32 %208
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i89.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 5
  %210 = ptrtoint ptr %data.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %data.i.i89.i, align 4
  br label %ramfuc_rd32.exit.i94.i

ramfuc_rd32.exit.i94.i:                           ; preds = %if.then.i.i90.i, %ramfuc_mask.exit81.i.ramfuc_rd32.exit.i94.i_crit_edge
  %data3.i.i91.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 5
  %211 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %data3.i.i91.i, align 4
  %and.i92.i = and i32 %212, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %212)
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %lor.lhs.false.i97.i, label %ramfuc_rd32.exit.i94.i.if.then.i100.i_crit_edge

ramfuc_rd32.exit.i94.i.if.then.i100.i_crit_edge:  ; preds = %ramfuc_rd32.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i100.i

lor.lhs.false.i97.i:                              ; preds = %ramfuc_rd32.exit.i94.i
  %force.i95.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 1
  %214 = ptrtoint ptr %force.i95.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %force.i95.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i96.i = icmp eq i8 %215, 0
  br i1 %tobool.not.i96.i, label %lor.lhs.false.i97.i.ramfuc_mask.exit118.i_crit_edge, label %lor.lhs.false.i97.i.if.then.i100.i_crit_edge

lor.lhs.false.i97.i.if.then.i100.i_crit_edge:     ; preds = %lor.lhs.false.i97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i100.i

lor.lhs.false.i97.i.ramfuc_mask.exit118.i_crit_edge: ; preds = %lor.lhs.false.i97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit118.i

if.then.i100.i:                                   ; preds = %lor.lhs.false.i97.i.if.then.i100.i_crit_edge, %ramfuc_rd32.exit.i94.i.if.then.i100.i_crit_edge
  %216 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sequence2.i.i, align 4
  %218 = ptrtoint ptr %r_0x10f804.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %r_0x10f804.i, align 4
  %219 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %and.i92.i, ptr %data3.i.i91.i, align 4
  %mask3.i.i98.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 4
  %220 = ptrtoint ptr %mask3.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %mask3.i.i98.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp.not16.i.i99.i = icmp eq i32 %221, 0
  br i1 %cmp.not16.i.i99.i, label %if.then.i100.i.ramfuc_wr32.exit.i116.i_crit_edge, label %for.body.lr.ph.i.i103.i

if.then.i100.i.ramfuc_wr32.exit.i116.i_crit_edge: ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i116.i

for.body.lr.ph.i.i103.i:                          ; preds = %if.then.i100.i
  %addr.i1.i101.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 2
  %stride.i.i102.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 3
  br label %for.body.i.i108.i

for.body.i.i108.i:                                ; preds = %if.end.i.i114.i.for.body.i.i108.i_crit_edge, %for.body.lr.ph.i.i103.i
  %off.018.i.i104.i = phi i32 [ 0, %for.body.lr.ph.i.i103.i ], [ %add5.i.i111.i, %if.end.i.i114.i.for.body.i.i108.i_crit_edge ]
  %mask.017.i.i105.i = phi i32 [ %221, %for.body.lr.ph.i.i103.i ], [ %shr.i.i112.i, %if.end.i.i114.i.for.body.i.i108.i_crit_edge ]
  %and.i.i106.i = and i32 %mask.017.i.i105.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106.i)
  %tobool.not.i.i107.i = icmp eq i32 %and.i.i106.i, 0
  br i1 %tobool.not.i.i107.i, label %for.body.i.i108.i.if.end.i.i114.i_crit_edge, label %if.then.i2.i110.i

for.body.i.i108.i.if.end.i.i114.i_crit_edge:      ; preds = %for.body.i.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i114.i

if.then.i2.i110.i:                                ; preds = %for.body.i.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  %222 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fuc1, align 4
  %224 = ptrtoint ptr %addr.i1.i101.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %addr.i1.i101.i, align 4
  %add.i.i109.i = add i32 %225, %off.018.i.i104.i
  %226 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %data3.i.i91.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %223, i32 noundef %add.i.i109.i, i32 noundef %227) #8
  br label %if.end.i.i114.i

if.end.i.i114.i:                                  ; preds = %if.then.i2.i110.i, %for.body.i.i108.i.if.end.i.i114.i_crit_edge
  %228 = ptrtoint ptr %stride.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %stride.i.i102.i, align 4
  %add5.i.i111.i = add i32 %229, %off.018.i.i104.i
  %shr.i.i112.i = lshr i32 %mask.017.i.i105.i, 1
  %cmp.not.i3.i113.i = icmp ult i32 %mask.017.i.i105.i, 2
  br i1 %cmp.not.i3.i113.i, label %if.end.i.i114.i.ramfuc_wr32.exit.i116.i_crit_edge, label %if.end.i.i114.i.for.body.i.i108.i_crit_edge

if.end.i.i114.i.for.body.i.i108.i_crit_edge:      ; preds = %if.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i108.i

if.end.i.i114.i.ramfuc_wr32.exit.i116.i_crit_edge: ; preds = %if.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i116.i

ramfuc_wr32.exit.i116.i:                          ; preds = %if.end.i.i114.i.ramfuc_wr32.exit.i116.i_crit_edge, %if.then.i100.i.ramfuc_wr32.exit.i116.i_crit_edge
  %force4.i115.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 1
  %230 = ptrtoint ptr %force4.i115.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %force4.i115.i, align 4
  br label %ramfuc_mask.exit118.i

ramfuc_mask.exit118.i:                            ; preds = %ramfuc_wr32.exit.i116.i, %lor.lhs.false.i97.i.ramfuc_mask.exit118.i_crit_edge
  %231 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %sequence2.i.i, align 4
  %233 = ptrtoint ptr %r_0x001700.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %r_0x001700.i, align 4
  %234 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %data3.i.i, align 4
  %mask3.i121.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 4
  %235 = ptrtoint ptr %mask3.i121.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %mask3.i121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp.not16.i122.i = icmp eq i32 %236, 0
  br i1 %cmp.not16.i122.i, label %ramfuc_mask.exit118.i.ramfuc_wr32.exit137.i_crit_edge, label %for.body.lr.ph.i125.i

ramfuc_mask.exit118.i.ramfuc_wr32.exit137.i_crit_edge: ; preds = %ramfuc_mask.exit118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit137.i

for.body.lr.ph.i125.i:                            ; preds = %ramfuc_mask.exit118.i
  %addr.i123.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 2
  %stride.i124.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 3
  br label %for.body.i130.i

for.body.i130.i:                                  ; preds = %if.end.i136.i.for.body.i130.i_crit_edge, %for.body.lr.ph.i125.i
  %off.018.i126.i = phi i32 [ 0, %for.body.lr.ph.i125.i ], [ %add5.i133.i, %if.end.i136.i.for.body.i130.i_crit_edge ]
  %mask.017.i127.i = phi i32 [ %236, %for.body.lr.ph.i125.i ], [ %shr.i134.i, %if.end.i136.i.for.body.i130.i_crit_edge ]
  %and.i128.i = and i32 %mask.017.i127.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128.i)
  %tobool.not.i129.i = icmp eq i32 %and.i128.i, 0
  br i1 %tobool.not.i129.i, label %for.body.i130.i.if.end.i136.i_crit_edge, label %if.then.i132.i

for.body.i130.i.if.end.i136.i_crit_edge:          ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i136.i

if.then.i132.i:                                   ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %fuc1, align 4
  %239 = ptrtoint ptr %addr.i123.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %addr.i123.i, align 4
  %add.i131.i = add i32 %240, %off.018.i126.i
  %241 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %data3.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %238, i32 noundef %add.i131.i, i32 noundef %242) #8
  br label %if.end.i136.i

if.end.i136.i:                                    ; preds = %if.then.i132.i, %for.body.i130.i.if.end.i136.i_crit_edge
  %243 = ptrtoint ptr %stride.i124.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %stride.i124.i, align 4
  %add5.i133.i = add i32 %244, %off.018.i126.i
  %shr.i134.i = lshr i32 %mask.017.i127.i, 1
  %cmp.not.i135.i = icmp ult i32 %mask.017.i127.i, 2
  br i1 %cmp.not.i135.i, label %if.end.i136.i.ramfuc_wr32.exit137.i_crit_edge, label %if.end.i136.i.for.body.i130.i_crit_edge

if.end.i136.i.for.body.i130.i_crit_edge:          ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i130.i

if.end.i136.i.ramfuc_wr32.exit137.i_crit_edge:    ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit137.i

ramfuc_wr32.exit137.i:                            ; preds = %if.end.i136.i.ramfuc_wr32.exit137.i_crit_edge, %ramfuc_mask.exit118.i.ramfuc_wr32.exit137.i_crit_edge
  %245 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_train(ptr noundef %246) #8
  %247 = ptrtoint ptr %r_0x10f804.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %r_0x10f804.i, align 4
  %249 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %250)
  %cmp.not.i.i139.i = icmp eq i32 %248, %250
  br i1 %cmp.not.i.i139.i, label %ramfuc_wr32.exit137.i.ramfuc_rd32.exit.i151.i_crit_edge, label %if.then.i.i146.i

ramfuc_wr32.exit137.i.ramfuc_rd32.exit.i151.i_crit_edge: ; preds = %ramfuc_wr32.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i151.i

if.then.i.i146.i:                                 ; preds = %ramfuc_wr32.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i140.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %251 = ptrtoint ptr %fb.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %fb.i.i140.i, align 4
  %device1.i.i141.i = getelementptr inbounds %struct.nvkm_fb, ptr %252, i32 0, i32 1, i32 1
  %253 = ptrtoint ptr %device1.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %device1.i.i141.i, align 4
  %pri.i.i142.i = getelementptr inbounds %struct.nvkm_device, ptr %254, i32 0, i32 11
  %255 = ptrtoint ptr %pri.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pri.i.i142.i, align 4
  %addr.i.i143.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 2
  %257 = ptrtoint ptr %addr.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %addr.i.i143.i, align 4
  %add.ptr.i.i144.i = getelementptr i8, ptr %256, i32 %258
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i144.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %260 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %data3.i.i91.i, align 4
  br label %ramfuc_rd32.exit.i151.i

ramfuc_rd32.exit.i151.i:                          ; preds = %if.then.i.i146.i, %ramfuc_wr32.exit137.i.ramfuc_rd32.exit.i151.i_crit_edge
  %261 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %data3.i.i91.i, align 4
  %or.i149.i = or i32 %262, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %or.i149.i)
  %cmp.not.i150.i = icmp eq i32 %262, %or.i149.i
  br i1 %cmp.not.i150.i, label %lor.lhs.false.i154.i, label %ramfuc_rd32.exit.i151.i.if.then.i157.i_crit_edge

ramfuc_rd32.exit.i151.i.if.then.i157.i_crit_edge: ; preds = %ramfuc_rd32.exit.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157.i

lor.lhs.false.i154.i:                             ; preds = %ramfuc_rd32.exit.i151.i
  %force.i152.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 1
  %263 = ptrtoint ptr %force.i152.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %force.i152.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i153.i = icmp eq i8 %264, 0
  br i1 %tobool.not.i153.i, label %lor.lhs.false.i154.i.ramfuc_mask.exit175.i_crit_edge, label %lor.lhs.false.i154.i.if.then.i157.i_crit_edge

lor.lhs.false.i154.i.if.then.i157.i_crit_edge:    ; preds = %lor.lhs.false.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i157.i

lor.lhs.false.i154.i.ramfuc_mask.exit175.i_crit_edge: ; preds = %lor.lhs.false.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit175.i

if.then.i157.i:                                   ; preds = %lor.lhs.false.i154.i.if.then.i157.i_crit_edge, %ramfuc_rd32.exit.i151.i.if.then.i157.i_crit_edge
  %265 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sequence2.i.i, align 4
  %267 = ptrtoint ptr %r_0x10f804.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %r_0x10f804.i, align 4
  %268 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %or.i149.i, ptr %data3.i.i91.i, align 4
  %mask3.i.i155.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 4
  %269 = ptrtoint ptr %mask3.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %mask3.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp.not16.i.i156.i = icmp eq i32 %270, 0
  br i1 %cmp.not16.i.i156.i, label %if.then.i157.i.ramfuc_wr32.exit.i173.i_crit_edge, label %for.body.lr.ph.i.i160.i

if.then.i157.i.ramfuc_wr32.exit.i173.i_crit_edge: ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i173.i

for.body.lr.ph.i.i160.i:                          ; preds = %if.then.i157.i
  %addr.i1.i158.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 2
  %stride.i.i159.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 3
  br label %for.body.i.i165.i

for.body.i.i165.i:                                ; preds = %if.end.i.i171.i.for.body.i.i165.i_crit_edge, %for.body.lr.ph.i.i160.i
  %off.018.i.i161.i = phi i32 [ 0, %for.body.lr.ph.i.i160.i ], [ %add5.i.i168.i, %if.end.i.i171.i.for.body.i.i165.i_crit_edge ]
  %mask.017.i.i162.i = phi i32 [ %270, %for.body.lr.ph.i.i160.i ], [ %shr.i.i169.i, %if.end.i.i171.i.for.body.i.i165.i_crit_edge ]
  %and.i.i163.i = and i32 %mask.017.i.i162.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i163.i)
  %tobool.not.i.i164.i = icmp eq i32 %and.i.i163.i, 0
  br i1 %tobool.not.i.i164.i, label %for.body.i.i165.i.if.end.i.i171.i_crit_edge, label %if.then.i2.i167.i

for.body.i.i165.i.if.end.i.i171.i_crit_edge:      ; preds = %for.body.i.i165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i171.i

if.then.i2.i167.i:                                ; preds = %for.body.i.i165.i
  call void @__sanitizer_cov_trace_pc() #10
  %271 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %fuc1, align 4
  %273 = ptrtoint ptr %addr.i1.i158.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %addr.i1.i158.i, align 4
  %add.i.i166.i = add i32 %274, %off.018.i.i161.i
  %275 = ptrtoint ptr %data3.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %data3.i.i91.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %272, i32 noundef %add.i.i166.i, i32 noundef %276) #8
  br label %if.end.i.i171.i

if.end.i.i171.i:                                  ; preds = %if.then.i2.i167.i, %for.body.i.i165.i.if.end.i.i171.i_crit_edge
  %277 = ptrtoint ptr %stride.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %stride.i.i159.i, align 4
  %add5.i.i168.i = add i32 %278, %off.018.i.i161.i
  %shr.i.i169.i = lshr i32 %mask.017.i.i162.i, 1
  %cmp.not.i3.i170.i = icmp ult i32 %mask.017.i.i162.i, 2
  br i1 %cmp.not.i3.i170.i, label %if.end.i.i171.i.ramfuc_wr32.exit.i173.i_crit_edge, label %if.end.i.i171.i.for.body.i.i165.i_crit_edge

if.end.i.i171.i.for.body.i.i165.i_crit_edge:      ; preds = %if.end.i.i171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i165.i

if.end.i.i171.i.ramfuc_wr32.exit.i173.i_crit_edge: ; preds = %if.end.i.i171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i173.i

ramfuc_wr32.exit.i173.i:                          ; preds = %if.end.i.i171.i.ramfuc_wr32.exit.i173.i_crit_edge, %if.then.i157.i.ramfuc_wr32.exit.i173.i_crit_edge
  %force4.i172.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29, i32 1
  %279 = ptrtoint ptr %force4.i172.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %force4.i172.i, align 4
  br label %ramfuc_mask.exit175.i

ramfuc_mask.exit175.i:                            ; preds = %ramfuc_wr32.exit.i173.i, %lor.lhs.false.i154.i.ramfuc_mask.exit175.i_crit_edge
  %r_0x10053c.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17
  %280 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %sequence2.i.i, align 4
  %282 = ptrtoint ptr %r_0x10053c.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %r_0x10053c.i, align 4
  %data2.i177.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17, i32 5
  %283 = ptrtoint ptr %data2.i177.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %data2.i177.i, align 4
  %mask3.i178.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17, i32 4
  %284 = ptrtoint ptr %mask3.i178.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %mask3.i178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp.not16.i179.i = icmp eq i32 %285, 0
  br i1 %cmp.not16.i179.i, label %ramfuc_mask.exit175.i.ramfuc_wr32.exit194.i_crit_edge, label %for.body.lr.ph.i182.i

ramfuc_mask.exit175.i.ramfuc_wr32.exit194.i_crit_edge: ; preds = %ramfuc_mask.exit175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit194.i

for.body.lr.ph.i182.i:                            ; preds = %ramfuc_mask.exit175.i
  %addr.i180.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17, i32 2
  %stride.i181.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17, i32 3
  br label %for.body.i187.i

for.body.i187.i:                                  ; preds = %if.end.i193.i.for.body.i187.i_crit_edge, %for.body.lr.ph.i182.i
  %off.018.i183.i = phi i32 [ 0, %for.body.lr.ph.i182.i ], [ %add5.i190.i, %if.end.i193.i.for.body.i187.i_crit_edge ]
  %mask.017.i184.i = phi i32 [ %285, %for.body.lr.ph.i182.i ], [ %shr.i191.i, %if.end.i193.i.for.body.i187.i_crit_edge ]
  %and.i185.i = and i32 %mask.017.i184.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185.i)
  %tobool.not.i186.i = icmp eq i32 %and.i185.i, 0
  br i1 %tobool.not.i186.i, label %for.body.i187.i.if.end.i193.i_crit_edge, label %if.then.i189.i

for.body.i187.i.if.end.i193.i_crit_edge:          ; preds = %for.body.i187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i193.i

if.then.i189.i:                                   ; preds = %for.body.i187.i
  call void @__sanitizer_cov_trace_pc() #10
  %286 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %fuc1, align 4
  %288 = ptrtoint ptr %addr.i180.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %addr.i180.i, align 4
  %add.i188.i = add i32 %289, %off.018.i183.i
  %290 = ptrtoint ptr %data2.i177.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %data2.i177.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %287, i32 noundef %add.i188.i, i32 noundef %291) #8
  br label %if.end.i193.i

if.end.i193.i:                                    ; preds = %if.then.i189.i, %for.body.i187.i.if.end.i193.i_crit_edge
  %292 = ptrtoint ptr %stride.i181.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %stride.i181.i, align 4
  %add5.i190.i = add i32 %293, %off.018.i183.i
  %shr.i191.i = lshr i32 %mask.017.i184.i, 1
  %cmp.not.i192.i = icmp ult i32 %mask.017.i184.i, 2
  br i1 %cmp.not.i192.i, label %if.end.i193.i.ramfuc_wr32.exit194.i_crit_edge, label %if.end.i193.i.for.body.i187.i_crit_edge

if.end.i193.i.for.body.i187.i_crit_edge:          ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i187.i

if.end.i193.i.ramfuc_wr32.exit194.i_crit_edge:    ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit194.i

ramfuc_wr32.exit194.i:                            ; preds = %if.end.i193.i.ramfuc_wr32.exit194.i_crit_edge, %ramfuc_mask.exit175.i.ramfuc_wr32.exit194.i_crit_edge
  %r_0x100720.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24
  %r_100720.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 1
  %294 = ptrtoint ptr %r_100720.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %r_100720.i, align 4
  %296 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %sequence2.i.i, align 4
  %298 = ptrtoint ptr %r_0x100720.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %r_0x100720.i, align 4
  %data2.i196.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24, i32 5
  %299 = ptrtoint ptr %data2.i196.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %295, ptr %data2.i196.i, align 4
  %mask3.i197.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24, i32 4
  %300 = ptrtoint ptr %mask3.i197.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %mask3.i197.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp.not16.i198.i = icmp eq i32 %301, 0
  br i1 %cmp.not16.i198.i, label %ramfuc_wr32.exit194.i.ramfuc_wr32.exit213.i_crit_edge, label %for.body.lr.ph.i201.i

ramfuc_wr32.exit194.i.ramfuc_wr32.exit213.i_crit_edge: ; preds = %ramfuc_wr32.exit194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit213.i

for.body.lr.ph.i201.i:                            ; preds = %ramfuc_wr32.exit194.i
  %addr.i199.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24, i32 2
  %stride.i200.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24, i32 3
  br label %for.body.i206.i

for.body.i206.i:                                  ; preds = %if.end.i212.i.for.body.i206.i_crit_edge, %for.body.lr.ph.i201.i
  %off.018.i202.i = phi i32 [ 0, %for.body.lr.ph.i201.i ], [ %add5.i209.i, %if.end.i212.i.for.body.i206.i_crit_edge ]
  %mask.017.i203.i = phi i32 [ %301, %for.body.lr.ph.i201.i ], [ %shr.i210.i, %if.end.i212.i.for.body.i206.i_crit_edge ]
  %and.i204.i = and i32 %mask.017.i203.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204.i)
  %tobool.not.i205.i = icmp eq i32 %and.i204.i, 0
  br i1 %tobool.not.i205.i, label %for.body.i206.i.if.end.i212.i_crit_edge, label %if.then.i208.i

for.body.i206.i.if.end.i212.i_crit_edge:          ; preds = %for.body.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i212.i

if.then.i208.i:                                   ; preds = %for.body.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  %302 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %fuc1, align 4
  %304 = ptrtoint ptr %addr.i199.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %addr.i199.i, align 4
  %add.i207.i = add i32 %305, %off.018.i202.i
  %306 = ptrtoint ptr %data2.i196.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %data2.i196.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %303, i32 noundef %add.i207.i, i32 noundef %307) #8
  br label %if.end.i212.i

if.end.i212.i:                                    ; preds = %if.then.i208.i, %for.body.i206.i.if.end.i212.i_crit_edge
  %308 = ptrtoint ptr %stride.i200.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %stride.i200.i, align 4
  %add5.i209.i = add i32 %309, %off.018.i202.i
  %shr.i210.i = lshr i32 %mask.017.i203.i, 1
  %cmp.not.i211.i = icmp ult i32 %mask.017.i203.i, 2
  br i1 %cmp.not.i211.i, label %if.end.i212.i.ramfuc_wr32.exit213.i_crit_edge, label %if.end.i212.i.for.body.i206.i_crit_edge

if.end.i212.i.for.body.i206.i_crit_edge:          ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i206.i

if.end.i212.i.ramfuc_wr32.exit213.i_crit_edge:    ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit213.i

ramfuc_wr32.exit213.i:                            ; preds = %if.end.i212.i.ramfuc_wr32.exit213.i_crit_edge, %ramfuc_wr32.exit194.i.ramfuc_wr32.exit213.i_crit_edge
  %r_0x1111e0.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33
  %r_1111e0.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 2
  %310 = ptrtoint ptr %r_1111e0.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %r_1111e0.i, align 4
  %312 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %sequence2.i.i, align 4
  %314 = ptrtoint ptr %r_0x1111e0.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %r_0x1111e0.i, align 4
  %data2.i215.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33, i32 5
  %315 = ptrtoint ptr %data2.i215.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %311, ptr %data2.i215.i, align 4
  %mask3.i216.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33, i32 4
  %316 = ptrtoint ptr %mask3.i216.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %mask3.i216.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp.not16.i217.i = icmp eq i32 %317, 0
  br i1 %cmp.not16.i217.i, label %ramfuc_wr32.exit213.i.ramfuc_wr32.exit232.i_crit_edge, label %for.body.lr.ph.i220.i

ramfuc_wr32.exit213.i.ramfuc_wr32.exit232.i_crit_edge: ; preds = %ramfuc_wr32.exit213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit232.i

for.body.lr.ph.i220.i:                            ; preds = %ramfuc_wr32.exit213.i
  %addr.i218.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33, i32 2
  %stride.i219.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33, i32 3
  br label %for.body.i225.i

for.body.i225.i:                                  ; preds = %if.end.i231.i.for.body.i225.i_crit_edge, %for.body.lr.ph.i220.i
  %off.018.i221.i = phi i32 [ 0, %for.body.lr.ph.i220.i ], [ %add5.i228.i, %if.end.i231.i.for.body.i225.i_crit_edge ]
  %mask.017.i222.i = phi i32 [ %317, %for.body.lr.ph.i220.i ], [ %shr.i229.i, %if.end.i231.i.for.body.i225.i_crit_edge ]
  %and.i223.i = and i32 %mask.017.i222.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223.i)
  %tobool.not.i224.i = icmp eq i32 %and.i223.i, 0
  br i1 %tobool.not.i224.i, label %for.body.i225.i.if.end.i231.i_crit_edge, label %if.then.i227.i

for.body.i225.i.if.end.i231.i_crit_edge:          ; preds = %for.body.i225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i231.i

if.then.i227.i:                                   ; preds = %for.body.i225.i
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %fuc1, align 4
  %320 = ptrtoint ptr %addr.i218.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %addr.i218.i, align 4
  %add.i226.i = add i32 %321, %off.018.i221.i
  %322 = ptrtoint ptr %data2.i215.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %data2.i215.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %319, i32 noundef %add.i226.i, i32 noundef %323) #8
  br label %if.end.i231.i

if.end.i231.i:                                    ; preds = %if.then.i227.i, %for.body.i225.i.if.end.i231.i_crit_edge
  %324 = ptrtoint ptr %stride.i219.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %stride.i219.i, align 4
  %add5.i228.i = add i32 %325, %off.018.i221.i
  %shr.i229.i = lshr i32 %mask.017.i222.i, 1
  %cmp.not.i230.i = icmp ult i32 %mask.017.i222.i, 2
  br i1 %cmp.not.i230.i, label %if.end.i231.i.ramfuc_wr32.exit232.i_crit_edge, label %if.end.i231.i.for.body.i225.i_crit_edge

if.end.i231.i.for.body.i225.i_crit_edge:          ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i225.i

if.end.i231.i.ramfuc_wr32.exit232.i_crit_edge:    ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit232.i

ramfuc_wr32.exit232.i:                            ; preds = %if.end.i231.i.ramfuc_wr32.exit232.i_crit_edge, %ramfuc_wr32.exit213.i.ramfuc_wr32.exit232.i_crit_edge
  %r_0x111400.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34
  %r_111400.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 3
  %326 = ptrtoint ptr %r_111400.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %r_111400.i, align 4
  %328 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %sequence2.i.i, align 4
  %330 = ptrtoint ptr %r_0x111400.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %r_0x111400.i, align 4
  %data2.i234.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34, i32 5
  %331 = ptrtoint ptr %data2.i234.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %327, ptr %data2.i234.i, align 4
  %mask3.i235.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34, i32 4
  %332 = ptrtoint ptr %mask3.i235.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %mask3.i235.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp.not16.i236.i = icmp eq i32 %333, 0
  br i1 %cmp.not16.i236.i, label %ramfuc_wr32.exit232.i.ramfuc_wr32.exit251.i_crit_edge, label %for.body.lr.ph.i239.i

ramfuc_wr32.exit232.i.ramfuc_wr32.exit251.i_crit_edge: ; preds = %ramfuc_wr32.exit232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit251.i

for.body.lr.ph.i239.i:                            ; preds = %ramfuc_wr32.exit232.i
  %addr.i237.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34, i32 2
  %stride.i238.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34, i32 3
  br label %for.body.i244.i

for.body.i244.i:                                  ; preds = %if.end.i250.i.for.body.i244.i_crit_edge, %for.body.lr.ph.i239.i
  %off.018.i240.i = phi i32 [ 0, %for.body.lr.ph.i239.i ], [ %add5.i247.i, %if.end.i250.i.for.body.i244.i_crit_edge ]
  %mask.017.i241.i = phi i32 [ %333, %for.body.lr.ph.i239.i ], [ %shr.i248.i, %if.end.i250.i.for.body.i244.i_crit_edge ]
  %and.i242.i = and i32 %mask.017.i241.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i242.i)
  %tobool.not.i243.i = icmp eq i32 %and.i242.i, 0
  br i1 %tobool.not.i243.i, label %for.body.i244.i.if.end.i250.i_crit_edge, label %if.then.i246.i

for.body.i244.i.if.end.i250.i_crit_edge:          ; preds = %for.body.i244.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i250.i

if.then.i246.i:                                   ; preds = %for.body.i244.i
  call void @__sanitizer_cov_trace_pc() #10
  %334 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %fuc1, align 4
  %336 = ptrtoint ptr %addr.i237.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %addr.i237.i, align 4
  %add.i245.i = add i32 %337, %off.018.i240.i
  %338 = ptrtoint ptr %data2.i234.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %data2.i234.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %335, i32 noundef %add.i245.i, i32 noundef %339) #8
  br label %if.end.i250.i

if.end.i250.i:                                    ; preds = %if.then.i246.i, %for.body.i244.i.if.end.i250.i_crit_edge
  %340 = ptrtoint ptr %stride.i238.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %stride.i238.i, align 4
  %add5.i247.i = add i32 %341, %off.018.i240.i
  %shr.i248.i = lshr i32 %mask.017.i241.i, 1
  %cmp.not.i249.i = icmp ult i32 %mask.017.i241.i, 2
  br i1 %cmp.not.i249.i, label %if.end.i250.i.ramfuc_wr32.exit251.i_crit_edge, label %if.end.i250.i.for.body.i244.i_crit_edge

if.end.i250.i.for.body.i244.i_crit_edge:          ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i244.i

if.end.i250.i.ramfuc_wr32.exit251.i_crit_edge:    ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit251.i

ramfuc_wr32.exit251.i:                            ; preds = %if.end.i250.i.ramfuc_wr32.exit251.i_crit_edge, %ramfuc_wr32.exit232.i.ramfuc_wr32.exit251.i_crit_edge
  %force.i252.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 1
  %342 = ptrtoint ptr %force.i252.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 1, ptr %force.i252.i, align 4
  %343 = ptrtoint ptr %r_0x100080.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %r_0x100080.i, align 4
  %345 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %344, i32 %346)
  %cmp.not.i.i254.i = icmp eq i32 %344, %346
  br i1 %cmp.not.i.i254.i, label %ramfuc_wr32.exit251.i.ramfuc_rd32.exit.i266.i_crit_edge, label %if.then.i.i261.i

ramfuc_wr32.exit251.i.ramfuc_rd32.exit.i266.i_crit_edge: ; preds = %ramfuc_wr32.exit251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i266.i

if.then.i.i261.i:                                 ; preds = %ramfuc_wr32.exit251.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i255.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %347 = ptrtoint ptr %fb.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %fb.i.i255.i, align 4
  %device1.i.i256.i = getelementptr inbounds %struct.nvkm_fb, ptr %348, i32 0, i32 1, i32 1
  %349 = ptrtoint ptr %device1.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %device1.i.i256.i, align 4
  %pri.i.i257.i = getelementptr inbounds %struct.nvkm_device, ptr %350, i32 0, i32 11
  %351 = ptrtoint ptr %pri.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %pri.i.i257.i, align 4
  %addr.i.i258.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 2
  %353 = ptrtoint ptr %addr.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %addr.i.i258.i, align 4
  %add.ptr.i.i259.i = getelementptr i8, ptr %352, i32 %354
  %355 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i259.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %356 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %355, ptr %data3.i.i54.i, align 4
  br label %ramfuc_rd32.exit.i266.i

ramfuc_rd32.exit.i266.i:                          ; preds = %if.then.i.i261.i, %ramfuc_wr32.exit251.i.ramfuc_rd32.exit.i266.i_crit_edge
  %357 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %data3.i.i54.i, align 4
  %or.i264.i = or i32 %358, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %358, i32 %or.i264.i)
  %cmp.not.i265.i = icmp eq i32 %358, %or.i264.i
  br i1 %cmp.not.i265.i, label %lor.lhs.false.i269.i, label %ramfuc_rd32.exit.i266.i.if.then.i272.i_crit_edge

ramfuc_rd32.exit.i266.i.if.then.i272.i_crit_edge: ; preds = %ramfuc_rd32.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i272.i

lor.lhs.false.i269.i:                             ; preds = %ramfuc_rd32.exit.i266.i
  %359 = ptrtoint ptr %force.i252.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %force.i252.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %360)
  %tobool.not.i268.i = icmp eq i8 %360, 0
  br i1 %tobool.not.i268.i, label %lor.lhs.false.i269.i.ramfuc_mask.exit290.i_crit_edge, label %lor.lhs.false.i269.i.if.then.i272.i_crit_edge

lor.lhs.false.i269.i.if.then.i272.i_crit_edge:    ; preds = %lor.lhs.false.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i272.i

lor.lhs.false.i269.i.ramfuc_mask.exit290.i_crit_edge: ; preds = %lor.lhs.false.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit290.i

if.then.i272.i:                                   ; preds = %lor.lhs.false.i269.i.if.then.i272.i_crit_edge, %ramfuc_rd32.exit.i266.i.if.then.i272.i_crit_edge
  %361 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %sequence2.i.i, align 4
  %363 = ptrtoint ptr %r_0x100080.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %r_0x100080.i, align 4
  %364 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %or.i264.i, ptr %data3.i.i54.i, align 4
  %mask3.i.i270.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 4
  %365 = ptrtoint ptr %mask3.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %mask3.i.i270.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %cmp.not16.i.i271.i = icmp eq i32 %366, 0
  br i1 %cmp.not16.i.i271.i, label %if.then.i272.i.ramfuc_wr32.exit.i288.i_crit_edge, label %for.body.lr.ph.i.i275.i

if.then.i272.i.ramfuc_wr32.exit.i288.i_crit_edge: ; preds = %if.then.i272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i288.i

for.body.lr.ph.i.i275.i:                          ; preds = %if.then.i272.i
  %addr.i1.i273.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 2
  %stride.i.i274.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9, i32 3
  br label %for.body.i.i280.i

for.body.i.i280.i:                                ; preds = %if.end.i.i286.i.for.body.i.i280.i_crit_edge, %for.body.lr.ph.i.i275.i
  %off.018.i.i276.i = phi i32 [ 0, %for.body.lr.ph.i.i275.i ], [ %add5.i.i283.i, %if.end.i.i286.i.for.body.i.i280.i_crit_edge ]
  %mask.017.i.i277.i = phi i32 [ %366, %for.body.lr.ph.i.i275.i ], [ %shr.i.i284.i, %if.end.i.i286.i.for.body.i.i280.i_crit_edge ]
  %and.i.i278.i = and i32 %mask.017.i.i277.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i278.i)
  %tobool.not.i.i279.i = icmp eq i32 %and.i.i278.i, 0
  br i1 %tobool.not.i.i279.i, label %for.body.i.i280.i.if.end.i.i286.i_crit_edge, label %if.then.i2.i282.i

for.body.i.i280.i.if.end.i.i286.i_crit_edge:      ; preds = %for.body.i.i280.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i286.i

if.then.i2.i282.i:                                ; preds = %for.body.i.i280.i
  call void @__sanitizer_cov_trace_pc() #10
  %367 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %fuc1, align 4
  %369 = ptrtoint ptr %addr.i1.i273.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %addr.i1.i273.i, align 4
  %add.i.i281.i = add i32 %370, %off.018.i.i276.i
  %371 = ptrtoint ptr %data3.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %data3.i.i54.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %368, i32 noundef %add.i.i281.i, i32 noundef %372) #8
  br label %if.end.i.i286.i

if.end.i.i286.i:                                  ; preds = %if.then.i2.i282.i, %for.body.i.i280.i.if.end.i.i286.i_crit_edge
  %373 = ptrtoint ptr %stride.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %stride.i.i274.i, align 4
  %add5.i.i283.i = add i32 %374, %off.018.i.i276.i
  %shr.i.i284.i = lshr i32 %mask.017.i.i277.i, 1
  %cmp.not.i3.i285.i = icmp ult i32 %mask.017.i.i277.i, 2
  br i1 %cmp.not.i3.i285.i, label %if.end.i.i286.i.ramfuc_wr32.exit.i288.i_crit_edge, label %if.end.i.i286.i.for.body.i.i280.i_crit_edge

if.end.i.i286.i.for.body.i.i280.i_crit_edge:      ; preds = %if.end.i.i286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i280.i

if.end.i.i286.i.ramfuc_wr32.exit.i288.i_crit_edge: ; preds = %if.end.i.i286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i288.i

ramfuc_wr32.exit.i288.i:                          ; preds = %if.end.i.i286.i.ramfuc_wr32.exit.i288.i_crit_edge, %if.then.i272.i.ramfuc_wr32.exit.i288.i_crit_edge
  %375 = ptrtoint ptr %force.i252.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 0, ptr %force.i252.i, align 4
  br label %ramfuc_mask.exit290.i

ramfuc_mask.exit290.i:                            ; preds = %ramfuc_wr32.exit.i288.i, %lor.lhs.false.i269.i.ramfuc_mask.exit290.i_crit_edge
  %376 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %377, i32 noundef 1000) #8
  %378 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %sequence2.i.i, align 4
  %380 = ptrtoint ptr %r_0x001700.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %379, ptr %r_0x001700.i, align 4
  %381 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %79, ptr %data3.i.i, align 4
  %382 = ptrtoint ptr %mask3.i121.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %mask3.i121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %cmp.not16.i294.i = icmp eq i32 %383, 0
  br i1 %cmp.not16.i294.i, label %ramfuc_mask.exit290.i.ramfuc_wr32.exit309.i_crit_edge, label %for.body.lr.ph.i297.i

ramfuc_mask.exit290.i.ramfuc_wr32.exit309.i_crit_edge: ; preds = %ramfuc_mask.exit290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit309.i

for.body.lr.ph.i297.i:                            ; preds = %ramfuc_mask.exit290.i
  %addr.i295.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 2
  %stride.i296.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 2, i32 3
  br label %for.body.i302.i

for.body.i302.i:                                  ; preds = %if.end.i308.i.for.body.i302.i_crit_edge, %for.body.lr.ph.i297.i
  %off.018.i298.i = phi i32 [ 0, %for.body.lr.ph.i297.i ], [ %add5.i305.i, %if.end.i308.i.for.body.i302.i_crit_edge ]
  %mask.017.i299.i = phi i32 [ %383, %for.body.lr.ph.i297.i ], [ %shr.i306.i, %if.end.i308.i.for.body.i302.i_crit_edge ]
  %and.i300.i = and i32 %mask.017.i299.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300.i)
  %tobool.not.i301.i = icmp eq i32 %and.i300.i, 0
  br i1 %tobool.not.i301.i, label %for.body.i302.i.if.end.i308.i_crit_edge, label %if.then.i304.i

for.body.i302.i.if.end.i308.i_crit_edge:          ; preds = %for.body.i302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i308.i

if.then.i304.i:                                   ; preds = %for.body.i302.i
  call void @__sanitizer_cov_trace_pc() #10
  %384 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %fuc1, align 4
  %386 = ptrtoint ptr %addr.i295.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %addr.i295.i, align 4
  %add.i303.i = add i32 %387, %off.018.i298.i
  %388 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %data3.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %385, i32 noundef %add.i303.i, i32 noundef %389) #8
  br label %if.end.i308.i

if.end.i308.i:                                    ; preds = %if.then.i304.i, %for.body.i302.i.if.end.i308.i_crit_edge
  %390 = ptrtoint ptr %stride.i296.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %stride.i296.i, align 4
  %add5.i305.i = add i32 %391, %off.018.i298.i
  %shr.i306.i = lshr i32 %mask.017.i299.i, 1
  %cmp.not.i307.i = icmp ult i32 %mask.017.i299.i, 2
  br i1 %cmp.not.i307.i, label %if.end.i308.i.ramfuc_wr32.exit309.i_crit_edge, label %if.end.i308.i.for.body.i302.i_crit_edge

if.end.i308.i.for.body.i302.i_crit_edge:          ; preds = %if.end.i308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i302.i

if.end.i308.i.ramfuc_wr32.exit309.i_crit_edge:    ; preds = %if.end.i308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit309.i

ramfuc_wr32.exit309.i:                            ; preds = %if.end.i308.i.ramfuc_wr32.exit309.i_crit_edge, %ramfuc_mask.exit290.i.ramfuc_wr32.exit309.i_crit_edge
  %392 = ptrtoint ptr %r_0x001610.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %r_0x001610.i, align 4
  %394 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %393, i32 %395)
  %cmp.not.i.i311.i = icmp eq i32 %393, %395
  br i1 %cmp.not.i.i311.i, label %ramfuc_wr32.exit309.i.ramfuc_rd32.exit.i323.i_crit_edge, label %if.then.i.i318.i

ramfuc_wr32.exit309.i.ramfuc_rd32.exit.i323.i_crit_edge: ; preds = %ramfuc_wr32.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i323.i

if.then.i.i318.i:                                 ; preds = %ramfuc_wr32.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i312.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %396 = ptrtoint ptr %fb.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %fb.i.i312.i, align 4
  %device1.i.i313.i = getelementptr inbounds %struct.nvkm_fb, ptr %397, i32 0, i32 1, i32 1
  %398 = ptrtoint ptr %device1.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %device1.i.i313.i, align 4
  %pri.i.i314.i = getelementptr inbounds %struct.nvkm_device, ptr %399, i32 0, i32 11
  %400 = ptrtoint ptr %pri.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %pri.i.i314.i, align 4
  %addr.i.i315.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 2
  %402 = ptrtoint ptr %addr.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %addr.i.i315.i, align 4
  %add.ptr.i.i316.i = getelementptr i8, ptr %401, i32 %403
  %404 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i316.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %405 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %data3.i.i17.i, align 4
  br label %ramfuc_rd32.exit.i323.i

ramfuc_rd32.exit.i323.i:                          ; preds = %if.then.i.i318.i, %ramfuc_wr32.exit309.i.ramfuc_rd32.exit.i323.i_crit_edge
  %406 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %data3.i.i17.i, align 4
  %and.i320.i = and i32 %407, -132
  %or.i321.i = or i32 %and.i320.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %407, i32 %or.i321.i)
  %cmp.not.i322.i = icmp eq i32 %407, %or.i321.i
  br i1 %cmp.not.i322.i, label %lor.lhs.false.i326.i, label %ramfuc_rd32.exit.i323.i.if.then.i329.i_crit_edge

ramfuc_rd32.exit.i323.i.if.then.i329.i_crit_edge: ; preds = %ramfuc_rd32.exit.i323.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i329.i

lor.lhs.false.i326.i:                             ; preds = %ramfuc_rd32.exit.i323.i
  %force.i324.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 1
  %408 = ptrtoint ptr %force.i324.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %force.i324.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i325.i = icmp eq i8 %409, 0
  br i1 %tobool.not.i325.i, label %lor.lhs.false.i326.i.ramfuc_mask.exit347.i_crit_edge, label %lor.lhs.false.i326.i.if.then.i329.i_crit_edge

lor.lhs.false.i326.i.if.then.i329.i_crit_edge:    ; preds = %lor.lhs.false.i326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i329.i

lor.lhs.false.i326.i.ramfuc_mask.exit347.i_crit_edge: ; preds = %lor.lhs.false.i326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit347.i

if.then.i329.i:                                   ; preds = %lor.lhs.false.i326.i.if.then.i329.i_crit_edge, %ramfuc_rd32.exit.i323.i.if.then.i329.i_crit_edge
  %410 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %sequence2.i.i, align 4
  %412 = ptrtoint ptr %r_0x001610.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %r_0x001610.i, align 4
  %413 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or.i321.i, ptr %data3.i.i17.i, align 4
  %mask3.i.i327.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 4
  %414 = ptrtoint ptr %mask3.i.i327.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %mask3.i.i327.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %cmp.not16.i.i328.i = icmp eq i32 %415, 0
  br i1 %cmp.not16.i.i328.i, label %if.then.i329.i.ramfuc_wr32.exit.i345.i_crit_edge, label %for.body.lr.ph.i.i332.i

if.then.i329.i.ramfuc_wr32.exit.i345.i_crit_edge: ; preds = %if.then.i329.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i345.i

for.body.lr.ph.i.i332.i:                          ; preds = %if.then.i329.i
  %addr.i1.i330.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 2
  %stride.i.i331.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 3
  br label %for.body.i.i337.i

for.body.i.i337.i:                                ; preds = %if.end.i.i343.i.for.body.i.i337.i_crit_edge, %for.body.lr.ph.i.i332.i
  %off.018.i.i333.i = phi i32 [ 0, %for.body.lr.ph.i.i332.i ], [ %add5.i.i340.i, %if.end.i.i343.i.for.body.i.i337.i_crit_edge ]
  %mask.017.i.i334.i = phi i32 [ %415, %for.body.lr.ph.i.i332.i ], [ %shr.i.i341.i, %if.end.i.i343.i.for.body.i.i337.i_crit_edge ]
  %and.i.i335.i = and i32 %mask.017.i.i334.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i335.i)
  %tobool.not.i.i336.i = icmp eq i32 %and.i.i335.i, 0
  br i1 %tobool.not.i.i336.i, label %for.body.i.i337.i.if.end.i.i343.i_crit_edge, label %if.then.i2.i339.i

for.body.i.i337.i.if.end.i.i343.i_crit_edge:      ; preds = %for.body.i.i337.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i343.i

if.then.i2.i339.i:                                ; preds = %for.body.i.i337.i
  call void @__sanitizer_cov_trace_pc() #10
  %416 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %fuc1, align 4
  %418 = ptrtoint ptr %addr.i1.i330.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %addr.i1.i330.i, align 4
  %add.i.i338.i = add i32 %419, %off.018.i.i333.i
  %420 = ptrtoint ptr %data3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %data3.i.i17.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %417, i32 noundef %add.i.i338.i, i32 noundef %421) #8
  br label %if.end.i.i343.i

if.end.i.i343.i:                                  ; preds = %if.then.i2.i339.i, %for.body.i.i337.i.if.end.i.i343.i_crit_edge
  %422 = ptrtoint ptr %stride.i.i331.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %stride.i.i331.i, align 4
  %add5.i.i340.i = add i32 %423, %off.018.i.i333.i
  %shr.i.i341.i = lshr i32 %mask.017.i.i334.i, 1
  %cmp.not.i3.i342.i = icmp ult i32 %mask.017.i.i334.i, 2
  br i1 %cmp.not.i3.i342.i, label %if.end.i.i343.i.ramfuc_wr32.exit.i345.i_crit_edge, label %if.end.i.i343.i.for.body.i.i337.i_crit_edge

if.end.i.i343.i.for.body.i.i337.i_crit_edge:      ; preds = %if.end.i.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i337.i

if.end.i.i343.i.ramfuc_wr32.exit.i345.i_crit_edge: ; preds = %if.end.i.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i345.i

ramfuc_wr32.exit.i345.i:                          ; preds = %if.end.i.i343.i.ramfuc_wr32.exit.i345.i_crit_edge, %if.then.i329.i.ramfuc_wr32.exit.i345.i_crit_edge
  %force4.i344.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 1, i32 1
  %424 = ptrtoint ptr %force4.i344.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %force4.i344.i, align 4
  br label %ramfuc_mask.exit347.i

ramfuc_mask.exit347.i:                            ; preds = %ramfuc_wr32.exit.i345.i, %lor.lhs.false.i326.i.ramfuc_mask.exit347.i_crit_edge
  %425 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %sequence2.i.i, align 4
  %427 = ptrtoint ptr %r_0x611200.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %426, ptr %r_0x611200.i, align 4
  %428 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 13104, ptr %data2.i.i, align 4
  %429 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %cmp.not16.i351.i = icmp eq i32 %430, 0
  br i1 %cmp.not16.i351.i, label %ramfuc_mask.exit347.i.ramfuc_wr32.exit366.i_crit_edge, label %for.body.lr.ph.i354.i

ramfuc_mask.exit347.i.ramfuc_wr32.exit366.i_crit_edge: ; preds = %ramfuc_mask.exit347.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit366.i

for.body.lr.ph.i354.i:                            ; preds = %ramfuc_mask.exit347.i
  %addr.i352.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 2
  %stride.i353.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35, i32 3
  br label %for.body.i359.i

for.body.i359.i:                                  ; preds = %if.end.i365.i.for.body.i359.i_crit_edge, %for.body.lr.ph.i354.i
  %off.018.i355.i = phi i32 [ 0, %for.body.lr.ph.i354.i ], [ %add5.i362.i, %if.end.i365.i.for.body.i359.i_crit_edge ]
  %mask.017.i356.i = phi i32 [ %430, %for.body.lr.ph.i354.i ], [ %shr.i363.i, %if.end.i365.i.for.body.i359.i_crit_edge ]
  %and.i357.i = and i32 %mask.017.i356.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i357.i)
  %tobool.not.i358.i = icmp eq i32 %and.i357.i, 0
  br i1 %tobool.not.i358.i, label %for.body.i359.i.if.end.i365.i_crit_edge, label %if.then.i361.i

for.body.i359.i.if.end.i365.i_crit_edge:          ; preds = %for.body.i359.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i365.i

if.then.i361.i:                                   ; preds = %for.body.i359.i
  call void @__sanitizer_cov_trace_pc() #10
  %431 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %fuc1, align 4
  %433 = ptrtoint ptr %addr.i352.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %addr.i352.i, align 4
  %add.i360.i = add i32 %434, %off.018.i355.i
  %435 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %data2.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %432, i32 noundef %add.i360.i, i32 noundef %436) #8
  br label %if.end.i365.i

if.end.i365.i:                                    ; preds = %if.then.i361.i, %for.body.i359.i.if.end.i365.i_crit_edge
  %437 = ptrtoint ptr %stride.i353.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %stride.i353.i, align 4
  %add5.i362.i = add i32 %438, %off.018.i355.i
  %shr.i363.i = lshr i32 %mask.017.i356.i, 1
  %cmp.not.i364.i = icmp ult i32 %mask.017.i356.i, 2
  br i1 %cmp.not.i364.i, label %if.end.i365.i.ramfuc_wr32.exit366.i_crit_edge, label %if.end.i365.i.for.body.i359.i_crit_edge

if.end.i365.i.for.body.i359.i_crit_edge:          ; preds = %if.end.i365.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i359.i

if.end.i365.i.ramfuc_wr32.exit366.i_crit_edge:    ; preds = %if.end.i365.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit366.i

ramfuc_wr32.exit366.i:                            ; preds = %if.end.i365.i.ramfuc_wr32.exit366.i_crit_edge, %ramfuc_mask.exit347.i.ramfuc_wr32.exit366.i_crit_edge
  %439 = ptrtoint ptr %r_0x100200.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %r_0x100200.i, align 4
  %441 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %440, i32 %442)
  %cmp.not.i.i368.i = icmp eq i32 %440, %442
  br i1 %cmp.not.i.i368.i, label %ramfuc_wr32.exit366.i.ramfuc_rd32.exit.i380.i_crit_edge, label %if.then.i.i375.i

ramfuc_wr32.exit366.i.ramfuc_rd32.exit.i380.i_crit_edge: ; preds = %ramfuc_wr32.exit366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i380.i

if.then.i.i375.i:                                 ; preds = %ramfuc_wr32.exit366.i
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i369.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %443 = ptrtoint ptr %fb.i.i369.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %fb.i.i369.i, align 4
  %device1.i.i370.i = getelementptr inbounds %struct.nvkm_fb, ptr %444, i32 0, i32 1, i32 1
  %445 = ptrtoint ptr %device1.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %device1.i.i370.i, align 4
  %pri.i.i371.i = getelementptr inbounds %struct.nvkm_device, ptr %446, i32 0, i32 11
  %447 = ptrtoint ptr %pri.i.i371.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %pri.i.i371.i, align 4
  %addr.i.i372.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 2
  %449 = ptrtoint ptr %addr.i.i372.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %addr.i.i372.i, align 4
  %add.ptr.i.i373.i = getelementptr i8, ptr %448, i32 %450
  %451 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i373.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %452 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %data3.i.i.i, align 4
  br label %ramfuc_rd32.exit.i380.i

ramfuc_rd32.exit.i380.i:                          ; preds = %if.then.i.i375.i, %ramfuc_wr32.exit366.i.ramfuc_rd32.exit.i380.i_crit_edge
  %453 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %data3.i.i.i, align 4
  %or.i378.i = or i32 %454, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %454, i32 %or.i378.i)
  %cmp.not.i379.i = icmp eq i32 %454, %or.i378.i
  br i1 %cmp.not.i379.i, label %lor.lhs.false.i383.i, label %ramfuc_rd32.exit.i380.i.if.then.i386.i_crit_edge

ramfuc_rd32.exit.i380.i.if.then.i386.i_crit_edge: ; preds = %ramfuc_rd32.exit.i380.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i386.i

lor.lhs.false.i383.i:                             ; preds = %ramfuc_rd32.exit.i380.i
  %force.i381.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 1
  %455 = ptrtoint ptr %force.i381.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %force.i381.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %456)
  %tobool.not.i382.i = icmp eq i8 %456, 0
  br i1 %tobool.not.i382.i, label %lor.lhs.false.i383.i.ramfuc_mask.exit404.i_crit_edge, label %lor.lhs.false.i383.i.if.then.i386.i_crit_edge

lor.lhs.false.i383.i.if.then.i386.i_crit_edge:    ; preds = %lor.lhs.false.i383.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i386.i

lor.lhs.false.i383.i.ramfuc_mask.exit404.i_crit_edge: ; preds = %lor.lhs.false.i383.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit404.i

if.then.i386.i:                                   ; preds = %lor.lhs.false.i383.i.if.then.i386.i_crit_edge, %ramfuc_rd32.exit.i380.i.if.then.i386.i_crit_edge
  %457 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %sequence2.i.i, align 4
  %459 = ptrtoint ptr %r_0x100200.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %458, ptr %r_0x100200.i, align 4
  %460 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %or.i378.i, ptr %data3.i.i.i, align 4
  %mask3.i.i384.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 4
  %461 = ptrtoint ptr %mask3.i.i384.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %mask3.i.i384.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %cmp.not16.i.i385.i = icmp eq i32 %462, 0
  br i1 %cmp.not16.i.i385.i, label %if.then.i386.i.ramfuc_wr32.exit.i402.i_crit_edge, label %for.body.lr.ph.i.i389.i

if.then.i386.i.ramfuc_wr32.exit.i402.i_crit_edge: ; preds = %if.then.i386.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i402.i

for.body.lr.ph.i.i389.i:                          ; preds = %if.then.i386.i
  %addr.i1.i387.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 2
  %stride.i.i388.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 3
  br label %for.body.i.i394.i

for.body.i.i394.i:                                ; preds = %if.end.i.i400.i.for.body.i.i394.i_crit_edge, %for.body.lr.ph.i.i389.i
  %off.018.i.i390.i = phi i32 [ 0, %for.body.lr.ph.i.i389.i ], [ %add5.i.i397.i, %if.end.i.i400.i.for.body.i.i394.i_crit_edge ]
  %mask.017.i.i391.i = phi i32 [ %462, %for.body.lr.ph.i.i389.i ], [ %shr.i.i398.i, %if.end.i.i400.i.for.body.i.i394.i_crit_edge ]
  %and.i.i392.i = and i32 %mask.017.i.i391.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i392.i)
  %tobool.not.i.i393.i = icmp eq i32 %and.i.i392.i, 0
  br i1 %tobool.not.i.i393.i, label %for.body.i.i394.i.if.end.i.i400.i_crit_edge, label %if.then.i2.i396.i

for.body.i.i394.i.if.end.i.i400.i_crit_edge:      ; preds = %for.body.i.i394.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i400.i

if.then.i2.i396.i:                                ; preds = %for.body.i.i394.i
  call void @__sanitizer_cov_trace_pc() #10
  %463 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %fuc1, align 4
  %465 = ptrtoint ptr %addr.i1.i387.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %addr.i1.i387.i, align 4
  %add.i.i395.i = add i32 %466, %off.018.i.i390.i
  %467 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %data3.i.i.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %464, i32 noundef %add.i.i395.i, i32 noundef %468) #8
  br label %if.end.i.i400.i

if.end.i.i400.i:                                  ; preds = %if.then.i2.i396.i, %for.body.i.i394.i.if.end.i.i400.i_crit_edge
  %469 = ptrtoint ptr %stride.i.i388.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %stride.i.i388.i, align 4
  %add5.i.i397.i = add i32 %470, %off.018.i.i390.i
  %shr.i.i398.i = lshr i32 %mask.017.i.i391.i, 1
  %cmp.not.i3.i399.i = icmp ult i32 %mask.017.i.i391.i, 2
  br i1 %cmp.not.i3.i399.i, label %if.end.i.i400.i.ramfuc_wr32.exit.i402.i_crit_edge, label %if.end.i.i400.i.for.body.i.i394.i_crit_edge

if.end.i.i400.i.for.body.i.i394.i_crit_edge:      ; preds = %if.end.i.i400.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i394.i

if.end.i.i400.i.ramfuc_wr32.exit.i402.i_crit_edge: ; preds = %if.end.i.i400.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i402.i

ramfuc_wr32.exit.i402.i:                          ; preds = %if.end.i.i400.i.ramfuc_wr32.exit.i402.i_crit_edge, %if.then.i386.i.ramfuc_wr32.exit.i402.i_crit_edge
  %force4.i401.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10, i32 1
  %471 = ptrtoint ptr %force4.i401.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 0, ptr %force4.i401.i, align 4
  br label %ramfuc_mask.exit404.i

ramfuc_mask.exit404.i:                            ; preds = %ramfuc_wr32.exit.i402.i, %lor.lhs.false.i383.i.ramfuc_mask.exit404.i_crit_edge
  %fb.i405.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %472 = ptrtoint ptr %fb.i405.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %fb.i405.i, align 4
  %tobool.not.i406.i = icmp eq ptr %473, null
  br i1 %tobool.not.i406.i, label %ramfuc_mask.exit404.i.ramfuc_exec.exit.i_crit_edge, label %if.then.i407.i

ramfuc_mask.exit404.i.ramfuc_exec.exit.i_crit_edge: ; preds = %ramfuc_mask.exit404.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_exec.exit.i

if.then.i407.i:                                   ; preds = %ramfuc_mask.exit404.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @nvkm_memx_fini(ptr noundef %fuc1, i1 noundef zeroext true) #8
  %474 = ptrtoint ptr %fb.i405.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr null, ptr %fb.i405.i, align 4
  br label %ramfuc_exec.exit.i

ramfuc_exec.exit.i:                               ; preds = %if.then.i407.i, %ramfuc_mask.exit404.i.ramfuc_exec.exit.i_crit_edge
  %475 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %base, align 8
  %calc118.i = getelementptr inbounds %struct.nvkm_ram_func, ptr %476, i32 0, i32 6
  %477 = ptrtoint ptr %calc118.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %calc118.i, align 4
  %call120.i = call i32 %478(ptr noundef %base, i32 noundef %call16.i) #8
  %479 = ptrtoint ptr %fb.i405.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %fb.i405.i, align 4
  %tobool.not.i410.i = icmp eq ptr %480, null
  br i1 %tobool.not.i410.i, label %ramfuc_exec.exit.i.ramfuc_exec.exit414.i_crit_edge, label %if.then.i412.i

ramfuc_exec.exit.i.ramfuc_exec.exit414.i_crit_edge: ; preds = %ramfuc_exec.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_exec.exit414.i

if.then.i412.i:                                   ; preds = %ramfuc_exec.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i411.i = call i32 @nvkm_memx_fini(ptr noundef %fuc1, i1 noundef zeroext true) #8
  %481 = ptrtoint ptr %fb.i405.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr null, ptr %fb.i405.i, align 4
  br label %ramfuc_exec.exit414.i

ramfuc_exec.exit414.i:                            ; preds = %if.then.i412.i, %ramfuc_exec.exit.i.ramfuc_exec.exit414.i_crit_edge
  %482 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %pri.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %483, i32 6382344
  %484 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @arm_heavy_mb() #8
  %or135.i = or i32 %484, 16
  %485 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %pri.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %486, i32 6382344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137.i, i32 %or135.i) #8, !srcloc !64
  %487 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %pri.i, align 4
  %add.ptr144.i = getelementptr i8, ptr %488, i32 6384392
  %489 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @arm_heavy_mb() #8
  %or151.i = or i32 %489, 16
  %490 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %pri.i, align 4
  %add.ptr153.i = getelementptr i8, ptr %491, i32 6384392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.i, i32 %or151.i) #8, !srcloc !64
  call void @gt215_clk_post(ptr noundef %24, ptr noundef nonnull %flags.i) #8
  %492 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %fb, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %493, i32 0, i32 1, i32 1
  %494 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %device.i.i, align 4
  %pmu.i.i = getelementptr inbounds %struct.nvkm_device, ptr %495, i32 0, i32 39
  %496 = ptrtoint ptr %pmu.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %pmu.i.i, align 8
  %call.i415.i = call i32 @nvkm_memx_train_result(ptr noundef %497, ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #8
  %debug.i = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  br label %do.body160.i

do.body160.i:                                     ; preds = %if.end168.i.do.body160.i_crit_edge, %ramfuc_exec.exit414.i
  %i.0420.i = phi i32 [ 0, %ramfuc_exec.exit414.i ], [ %inc.i, %if.end168.i.do.body160.i_crit_edge ]
  %498 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %499)
  %cmp161.i = icmp ugt i32 %499, 3
  br i1 %cmp161.i, label %do.end166.i, label %do.body160.i.if.end168.i_crit_edge

do.body160.i.if.end168.i_crit_edge:               ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168.i

do.end166.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #10
  %500 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %device4, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %501, i32 0, i32 2
  %502 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %dev.i, align 8
  %arrayidx.i = getelementptr i32, ptr %call7.i.i.i, i32 %i.0420.i
  %504 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %503, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %505) #12
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end166.i, %do.body160.i.if.end168.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0420.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end168.i.do.body160.i_crit_edge

if.end168.i.do.body160.i_crit_edge:               ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body160.i

for.end.i:                                        ; preds = %if.end168.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %median.i.i) #8
  %506 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 1
  %507 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 2
  %508 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 3
  %509 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 4
  %510 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 5
  %511 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 6
  %512 = getelementptr inbounds [8 x i8], ptr %median.i.i, i32 0, i32 7
  %513 = ptrtoint ptr %median.i.i to i32
  call void @__asan_store8_noabort(i32 %513)
  store i64 -1, ptr %median.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bins.i.i) #8
  %514 = ptrtoint ptr %bins.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 0, ptr %bins.i.i, align 4
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.end28.i.i.for.cond1.preheader.i.i_crit_edge, %for.end.i
  %i.0162.i.i = phi i32 [ 0, %for.end.i ], [ %inc42.i.i, %for.end28.i.i.for.cond1.preheader.i.i_crit_edge ]
  %shl.i.i = shl i32 257, %i.0162.i.i
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %lo.0155.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %call7.i.i.i, i32 %lo.0155.i.i
  %515 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %516)
  %tobool.not.i416.i = icmp sgt i32 %516, -1
  %and5.i.i = and i32 %516, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i416.i, i1 true, i1 %tobool6.not.i.i
  %inc.i.i = add nuw i32 %lo.0155.i.i, 1
  br i1 %or.cond.i.i, label %for.inc.i.i, label %for.cond12.preheader.i.i

for.inc.i.i:                                      ; preds = %for.body3.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.gt215_link_train_calc.exit.i_crit_edge, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i.i

for.inc.i.i.gt215_link_train_calc.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gt215_link_train_calc.exit.i

for.cond12.preheader.i.i:                         ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i.i)
  %cmp13158.i.i = icmp slt i32 %inc.i.i, 64
  br i1 %cmp13158.i.i, label %if.end19.i.preheader.i, label %for.cond12.preheader.i.i.for.end28.i.i_crit_edge

for.cond12.preheader.i.i.for.end28.i.i_crit_edge: ; preds = %for.cond12.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28.i.i

if.end19.i.preheader.i:                           ; preds = %for.cond12.preheader.i.i
  %arrayidx20.i422.i = getelementptr i32, ptr %call7.i.i.i, i32 %inc.i.i
  %517 = ptrtoint ptr %arrayidx20.i422.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx20.i422.i, align 4
  %and22.i423.i = and i32 %518, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i423.i)
  %tobool23.not.i424.i = icmp eq i32 %and22.i423.i, 0
  br i1 %tobool23.not.i424.i, label %if.end19.i.preheader.i.for.end28.i.i_crit_edge, label %if.end19.i.preheader.i.for.inc26.i.i_crit_edge

if.end19.i.preheader.i.for.inc26.i.i_crit_edge:   ; preds = %if.end19.i.preheader.i
  br label %for.inc26.i.i

if.end19.i.preheader.i.for.end28.i.i_crit_edge:   ; preds = %if.end19.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28.i.i

if.end19.i.i:                                     ; preds = %for.inc26.i.i
  %arrayidx20.i.i = getelementptr i32, ptr %call7.i.i.i, i32 %hi.0.i.i
  %519 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %arrayidx20.i.i, align 4
  %and22.i.i = and i32 %520, %shl.i.i
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end19.i.i.for.end28.i.i_crit_edge, label %if.end19.i.i.for.inc26.i.i_crit_edge

if.end19.i.i.for.inc26.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc26.i.i

if.end19.i.i.for.end28.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28.i.i

for.inc26.i.i:                                    ; preds = %if.end19.i.i.for.inc26.i.i_crit_edge, %if.end19.i.preheader.i.for.inc26.i.i_crit_edge
  %hi.0160.i425.i = phi i32 [ %hi.0.i.i, %if.end19.i.i.for.inc26.i.i_crit_edge ], [ %inc.i.i, %if.end19.i.preheader.i.for.inc26.i.i_crit_edge ]
  %hi.0.i.i = add nuw nsw i32 %hi.0160.i425.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %hi.0.i.i)
  %exitcond168.not.i.i = icmp eq i32 %hi.0.i.i, 64
  br i1 %exitcond168.not.i.i, label %for.inc26.i.i.for.end28.i.i_crit_edge, label %if.end19.i.i

for.inc26.i.i.for.end28.i.i_crit_edge:            ; preds = %for.inc26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28.i.i

for.end28.i.i:                                    ; preds = %for.inc26.i.i.for.end28.i.i_crit_edge, %if.end19.i.i.for.end28.i.i_crit_edge, %if.end19.i.preheader.i.for.end28.i.i_crit_edge, %for.cond12.preheader.i.i.for.end28.i.i_crit_edge
  %hi.1.i.i = phi i32 [ %inc.i.i, %for.cond12.preheader.i.i.for.end28.i.i_crit_edge ], [ %lo.0155.i.i, %if.end19.i.preheader.i.for.end28.i.i_crit_edge ], [ 64, %for.inc26.i.i.for.end28.i.i_crit_edge ], [ %hi.0160.i425.i, %if.end19.i.i.for.end28.i.i_crit_edge ]
  %sub.i.i = sub i32 %hi.1.i.i, %lo.0155.i.i
  %521 = lshr i32 %sub.i.i, 1
  %add29.i.i = add nuw i32 %521, %lo.0155.i.i
  %conv.i.i = trunc i32 %add29.i.i to i8
  %arrayidx30.i.i = getelementptr [8 x i8], ptr %median.i.i, i32 0, i32 %i.0162.i.i
  %and33.i.i = lshr i32 %add29.i.i, 4
  %522 = and i32 %and33.i.i, 15
  %arrayidx35.i.i = getelementptr [4 x i8], ptr %bins.i.i, i32 0, i32 %522
  %523 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %arrayidx35.i.i, align 1
  %inc36.i.i = add i8 %524, 1
  store i8 %inc36.i.i, ptr %arrayidx35.i.i, align 1
  %add39.i.i = add i8 %conv.i.i, 48
  %525 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %add39.i.i, ptr %arrayidx30.i.i, align 1
  %inc42.i.i = add nuw nsw i32 %i.0162.i.i, 1
  %exitcond169.not.i.i = icmp eq i32 %inc42.i.i, 8
  br i1 %exitcond169.not.i.i, label %for.body47.preheader.i.i, label %for.end28.i.i.for.cond1.preheader.i.i_crit_edge

for.end28.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i

for.body47.preheader.i.i:                         ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %526 = ptrtoint ptr %bins.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %bins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %cmp51.not.i.i = icmp eq i8 %527, 0
  %bin.1.i.i = select i1 %cmp51.not.i.i, i32 0, i32 3
  %arrayidx48.1.i.i = getelementptr inbounds [4 x i8], ptr %bins.i.i, i32 0, i32 1
  %528 = ptrtoint ptr %arrayidx48.1.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx48.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %529, i8 %527)
  %cmp51.1.i.i = icmp ugt i8 %529, %527
  %bin.1.1.i.i = select i1 %cmp51.1.i.i, i32 4, i32 %bin.1.i.i
  %530 = call i8 @llvm.umax.i8(i8 %529, i8 %527) #8
  %arrayidx48.2.i.i = getelementptr inbounds [4 x i8], ptr %bins.i.i, i32 0, i32 2
  %531 = ptrtoint ptr %arrayidx48.2.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %arrayidx48.2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %532, i8 %530)
  %cmp51.2.i.i = icmp ugt i8 %532, %530
  %bin.1.2.i.i = select i1 %cmp51.2.i.i, i32 5, i32 %bin.1.1.i.i
  %533 = call i8 @llvm.umax.i8(i8 %532, i8 %530) #8
  %arrayidx48.3.i.i = getelementptr inbounds [4 x i8], ptr %bins.i.i, i32 0, i32 3
  %534 = ptrtoint ptr %arrayidx48.3.i.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %arrayidx48.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %535, i8 %533)
  %cmp51.3.i.i = icmp ugt i8 %535, %533
  %bin.1.3.i.i = select i1 %cmp51.3.i.i, i32 6, i32 %bin.1.2.i.i
  %shl67.i.i = shl nuw nsw i32 %bin.1.3.i.i, 4
  %conv83.i.i = or i32 %shl67.i.i, 15
  %536 = ptrtoint ptr %median.i.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %median.i.i, align 8
  %conv69.i.i = zext i8 %537 to i32
  %538 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.i.i) #8
  %539 = call i32 @llvm.umin.i32(i32 %538, i32 %conv83.i.i) #8
  %and96.i.i = and i32 %539, 15
  %540 = ptrtoint ptr %506 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %506, align 1
  %conv69.1.i.i = zext i8 %541 to i32
  %542 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.1.i.i) #8
  %543 = call i32 @llvm.umin.i32(i32 %542, i32 %conv83.i.i) #8
  %and96.1.i.i = shl nuw nsw i32 %543, 4
  %shl98.1.i.i = and i32 %and96.1.i.i, 240
  %or100.1.i.i = or i32 %shl98.1.i.i, %and96.i.i
  %544 = ptrtoint ptr %507 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %507, align 2
  %conv69.2.i.i = zext i8 %545 to i32
  %546 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.2.i.i) #8
  %547 = call i32 @llvm.umin.i32(i32 %546, i32 %conv83.i.i) #8
  %and96.2.i.i = shl nuw nsw i32 %547, 8
  %shl98.2.i.i = and i32 %and96.2.i.i, 3840
  %or100.2.i.i = or i32 %or100.1.i.i, %shl98.2.i.i
  %548 = ptrtoint ptr %508 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %508, align 1
  %conv69.3.i.i = zext i8 %549 to i32
  %550 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.3.i.i) #8
  %551 = call i32 @llvm.umin.i32(i32 %550, i32 %conv83.i.i) #8
  %and96.3.i.i = shl nuw nsw i32 %551, 12
  %shl98.3.i.i = and i32 %and96.3.i.i, 61440
  %or100.3.i.i = or i32 %or100.2.i.i, %shl98.3.i.i
  %552 = ptrtoint ptr %509 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %509, align 4
  %conv69.4.i.i = zext i8 %553 to i32
  %554 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.4.i.i) #8
  %555 = call i32 @llvm.umin.i32(i32 %554, i32 %conv83.i.i) #8
  %and96.4.i.i = shl nuw nsw i32 %555, 16
  %shl98.4.i.i = and i32 %and96.4.i.i, 983040
  %or100.4.i.i = or i32 %or100.3.i.i, %shl98.4.i.i
  %556 = ptrtoint ptr %510 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %510, align 1
  %conv69.5.i.i = zext i8 %557 to i32
  %558 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.5.i.i) #8
  %559 = call i32 @llvm.umin.i32(i32 %558, i32 %conv83.i.i) #8
  %and96.5.i.i = shl nuw nsw i32 %559, 20
  %shl98.5.i.i = and i32 %and96.5.i.i, 15728640
  %or100.5.i.i = or i32 %or100.4.i.i, %shl98.5.i.i
  %560 = ptrtoint ptr %511 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %511, align 2
  %conv69.6.i.i = zext i8 %561 to i32
  %562 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.6.i.i) #8
  %563 = call i32 @llvm.umin.i32(i32 %562, i32 %conv83.i.i) #8
  %and96.6.i.i = shl nuw i32 %563, 24
  %shl98.6.i.i = and i32 %and96.6.i.i, 251658240
  %or100.6.i.i = or i32 %or100.5.i.i, %shl98.6.i.i
  %564 = ptrtoint ptr %512 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %512, align 1
  %conv69.7.i.i = zext i8 %565 to i32
  %566 = call i32 @llvm.umax.i32(i32 %shl67.i.i, i32 %conv69.7.i.i) #8
  %567 = call i32 @llvm.umin.i32(i32 %566, i32 %conv83.i.i) #8
  %shl98.7.i.i = shl i32 %567, 28
  %or100.7.i.i = or i32 %or100.6.i.i, %shl98.7.i.i
  %568 = ptrtoint ptr %r_100720.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %or100.7.i.i, ptr %r_100720.i, align 4
  %mul.i.i = mul nuw nsw i32 %bin.1.3.i.i, 257
  %or105.i.i = or i32 %mul.i.i, 33554432
  %569 = ptrtoint ptr %r_1111e0.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %or105.i.i, ptr %r_1111e0.i, align 4
  %570 = ptrtoint ptr %r_111400.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 0, ptr %r_111400.i, align 4
  br label %gt215_link_train_calc.exit.i

gt215_link_train_calc.exit.i:                     ; preds = %for.body47.preheader.i.i, %for.inc.i.i.gt215_link_train_calc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bins.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %median.i.i) #8
  %571 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %572)
  %cmp174.i = icmp ugt i32 %572, 3
  br i1 %cmp174.i, label %do.end179.i, label %gt215_link_train_calc.exit.i.if.end187.i_crit_edge

gt215_link_train_calc.exit.i.if.end187.i_crit_edge: ; preds = %gt215_link_train_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187.i

do.end179.i:                                      ; preds = %gt215_link_train_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %573 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %device4, align 4
  %dev181.i = getelementptr inbounds %struct.nvkm_device, ptr %574, i32 0, i32 2
  %575 = ptrtoint ptr %dev181.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %dev181.i, align 8
  %577 = ptrtoint ptr %r_100720.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %r_100720.i, align 4
  %579 = ptrtoint ptr %r_1111e0.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %r_1111e0.i, align 4
  %581 = ptrtoint ptr %r_111400.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %r_111400.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %576, ptr noundef nonnull @.str.22, ptr noundef %name.i, i32 noundef %578, i32 noundef %580, i32 noundef %582) #12
  br label %if.end187.i

if.end187.i:                                      ; preds = %do.end179.i, %gt215_link_train_calc.exit.i.if.end187.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %583 = ptrtoint ptr %ltrain to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 4, ptr %ltrain, align 4
  br label %gt215_link_train.exit

out.i:                                            ; preds = %if.end20.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call17.i, %if.end15.i.out.i_crit_edge ], [ %call25.i, %if.end20.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %ret.0.i)
  %cmp191.i = icmp eq i32 %ret.0.i, -16
  %spec.select.i = select i1 %cmp191.i, ptr null, ptr %flags.i
  %584 = ptrtoint ptr %ltrain to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 1, ptr %ltrain, align 4
  call void @gt215_clk_post(ptr noundef %24, ptr noundef %spec.select.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %gt215_link_train.exit

gt215_link_train.exit:                            ; preds = %out.i, %if.end187.i, %if.then14.i, %if.end.i.gt215_link_train.exit_crit_edge, %if.then.gt215_link_train.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %M0205T.i) #8
  br label %if.end

if.end:                                           ; preds = %gt215_link_train.exit, %entry.if.end_crit_edge
  %div = udiv i32 %freq, 1000
  %conv = trunc i32 %div to i16
  %bios12 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1
  %call13 = call i32 @nvbios_rammapEm(ptr noundef %5, i16 noundef zeroext %conv, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef %bios12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %585 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %586)
  %cmp15.not = icmp eq i8 %586, 16
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %587 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %588)
  %cmp19 = icmp ult i8 %588, 5
  br i1 %cmp19, label %lor.lhs.false17.do.body_crit_edge, label %if.end30

lor.lhs.false17.do.body_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false17.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %589 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %590)
  %cmp22.not = icmp eq i32 %590, 0
  br i1 %cmp22.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %591 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %device4, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %592, i32 0, i32 2
  %593 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %594, ptr noundef nonnull @.str, ptr noundef %name) #12
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false17
  %call31 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %subdev3) #8
  %595 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call31, i8 %596)
  %cmp34.not = icmp ult i8 %call31, %596
  br i1 %cmp34.not, label %if.end53, label %do.body37

do.body37:                                        ; preds = %if.end30
  %debug39 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %597 = ptrtoint ptr %debug39 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %debug39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %598)
  %cmp40.not = icmp eq i32 %598, 0
  br i1 %cmp40.not, label %do.body37.cleanup_crit_edge, label %do.end45

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %599 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %device4, align 4
  %dev47 = getelementptr inbounds %struct.nvkm_device, ptr %600, i32 0, i32 2
  %601 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %dev47, align 8
  %name48 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %602, ptr noundef nonnull @.str.6, ptr noundef %name48) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end30
  %conv32 = zext i8 %call31 to i32
  %603 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %ver, align 1
  %605 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %hdr, align 1
  %607 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %len, align 1
  %call56 = call i32 @nvbios_rammapSp(ptr noundef %5, i32 noundef %call13, i8 noundef zeroext %604, i8 noundef zeroext %606, i8 noundef zeroext %596, i8 noundef zeroext %608, i32 noundef %conv32, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef %bios12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.do.body67_crit_edge, label %lor.lhs.false58

if.end53.do.body67_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

lor.lhs.false58:                                  ; preds = %if.end53
  %609 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %610)
  %cmp60.not = icmp eq i8 %610, 16
  br i1 %cmp60.not, label %lor.lhs.false62, label %lor.lhs.false58.do.body67_crit_edge

lor.lhs.false58.do.body67_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %611 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %612)
  %cmp64 = icmp ult i8 %612, 9
  br i1 %cmp64, label %lor.lhs.false62.do.body67_crit_edge, label %if.end83

lor.lhs.false62.do.body67_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

do.body67:                                        ; preds = %lor.lhs.false62.do.body67_crit_edge, %lor.lhs.false58.do.body67_crit_edge, %if.end53.do.body67_crit_edge
  %debug69 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %613 = ptrtoint ptr %debug69 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %debug69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %614)
  %cmp70.not = icmp eq i32 %614, 0
  br i1 %cmp70.not, label %do.body67.cleanup_crit_edge, label %do.end75

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end75:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %615 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %device4, align 4
  %dev77 = getelementptr inbounds %struct.nvkm_device, ptr %616, i32 0, i32 2
  %617 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %dev77, align 8
  %name78 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %618, ptr noundef nonnull @.str.9, ptr noundef %name78) #12
  br label %cleanup

if.end83:                                         ; preds = %lor.lhs.false62
  %ramcfg_timing = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 7
  %619 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %ramcfg_timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %620)
  %cmp85.not = icmp eq i32 %620, 255
  br i1 %cmp85.not, label %if.end83.if.end119_crit_edge, label %if.then87

if.end83.if.end119_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then87:                                        ; preds = %if.end83
  %call91 = call i32 @nvbios_timingEp(ptr noundef %5, i32 noundef %620, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef %bios12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then87.do.body102_crit_edge, label %lor.lhs.false93

if.then87.do.body102_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

lor.lhs.false93:                                  ; preds = %if.then87
  %621 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %622)
  %cmp95.not = icmp eq i8 %622, 16
  br i1 %cmp95.not, label %lor.lhs.false97, label %lor.lhs.false93.do.body102_crit_edge

lor.lhs.false93.do.body102_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %623 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %624)
  %cmp99 = icmp ult i8 %624, 23
  br i1 %cmp99, label %lor.lhs.false97.do.body102_crit_edge, label %lor.lhs.false97.if.end119_crit_edge

lor.lhs.false97.if.end119_crit_edge:              ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

lor.lhs.false97.do.body102_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

do.body102:                                       ; preds = %lor.lhs.false97.do.body102_crit_edge, %lor.lhs.false93.do.body102_crit_edge, %if.then87.do.body102_crit_edge
  %debug104 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %625 = ptrtoint ptr %debug104 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %debug104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %626)
  %cmp105.not = icmp eq i32 %626, 0
  br i1 %cmp105.not, label %do.body102.cleanup_crit_edge, label %do.end110

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end110:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %627 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %device4, align 4
  %dev112 = getelementptr inbounds %struct.nvkm_device, ptr %628, i32 0, i32 2
  %629 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %dev112, align 8
  %name113 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %630, ptr noundef nonnull @.str.12, ptr noundef %name113) #12
  br label %cleanup

if.end119:                                        ; preds = %lor.lhs.false97.if.end119_crit_edge, %if.end83.if.end119_crit_edge
  %clk = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 43
  %631 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %clk, align 8
  %call120 = call i32 @gt215_pll_info(ptr noundef %632, i32 noundef 18, i32 noundef 16384, i32 noundef %freq, ptr noundef nonnull %mclk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.body124, label %if.end140

do.body124:                                       ; preds = %if.end119
  %debug126 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %633 = ptrtoint ptr %debug126 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %debug126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %634)
  %cmp127.not = icmp eq i32 %634, 0
  br i1 %cmp127.not, label %do.body124.cleanup_crit_edge, label %do.end132

do.body124.cleanup_crit_edge:                     ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end132:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  %635 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %device4, align 4
  %dev134 = getelementptr inbounds %struct.nvkm_device, ptr %636, i32 0, i32 2
  %637 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %dev134, align 8
  %name135 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %638, ptr noundef nonnull @.str.15, ptr noundef %name135) #12
  br label %cleanup

if.end140:                                        ; preds = %if.end119
  call fastcc void @gt215_ram_timing_calc(ptr noundef %base, ptr noundef nonnull %timing)
  %639 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %fb, align 4
  %device.i = getelementptr inbounds %struct.nvkm_fb, ptr %640, i32 0, i32 1, i32 1
  %641 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %device.i, align 4
  %pmu.i = getelementptr inbounds %struct.nvkm_device, ptr %642, i32 0, i32 39
  %643 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %pmu.i, align 8
  %call.i1123 = call i32 @nvkm_memx_init(ptr noundef %644, ptr noundef %fuc1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1123)
  %tobool.not.i1124 = icmp eq i32 %call.i1123, 0
  br i1 %tobool.not.i1124, label %if.end149, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end149:                                        ; preds = %if.end140
  %sequence.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 2
  %645 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %sequence.i, align 4
  %inc.i1125 = add i32 %646, 1
  store i32 %inc.i1125, ptr %sequence.i, align 4
  %fb1.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %647 = ptrtoint ptr %fb1.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %640, ptr %fb1.i, align 4
  %r_mr = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36
  %648 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %r_mr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %649, i32 %inc.i1125)
  %cmp.not.i = icmp eq i32 %649, %inc.i1125
  br i1 %cmp.not.i, label %if.end149.ramfuc_rd32.exit_crit_edge, label %if.then.i

if.end149.ramfuc_rd32.exit_crit_edge:             ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %650 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %fb1.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %651, i32 0, i32 1, i32 1
  %652 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %device1.i, align 4
  %pri.i1128 = getelementptr inbounds %struct.nvkm_device, ptr %653, i32 0, i32 11
  %654 = ptrtoint ptr %pri.i1128 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %pri.i1128, align 4
  %addr.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 0, i32 2
  %656 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %addr.i, align 4
  %add.ptr.i1129 = getelementptr i8, ptr %655, i32 %657
  %658 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1129) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 0, i32 5
  %659 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 %658, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %if.end149.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 0, i32 5
  %660 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %data3.i, align 4
  %mr = getelementptr %struct.nvkm_ram, ptr %base, i32 0, i32 11
  %662 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %661, ptr %mr, align 4
  %arrayidx156 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 1
  %663 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %arrayidx156, align 4
  %665 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %664, i32 %666)
  %cmp.not.i1132 = icmp eq i32 %664, %666
  br i1 %cmp.not.i1132, label %ramfuc_rd32.exit.ramfuc_rd32.exit1142_crit_edge, label %if.then.i1139

ramfuc_rd32.exit.ramfuc_rd32.exit1142_crit_edge:  ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1142

if.then.i1139:                                    ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %667 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %fb1.i, align 4
  %device1.i1134 = getelementptr inbounds %struct.nvkm_fb, ptr %668, i32 0, i32 1, i32 1
  %669 = ptrtoint ptr %device1.i1134 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %device1.i1134, align 4
  %pri.i1135 = getelementptr inbounds %struct.nvkm_device, ptr %670, i32 0, i32 11
  %671 = ptrtoint ptr %pri.i1135 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %pri.i1135, align 4
  %addr.i1136 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 1, i32 2
  %673 = ptrtoint ptr %addr.i1136 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %addr.i1136, align 4
  %add.ptr.i1137 = getelementptr i8, ptr %672, i32 %674
  %675 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1137) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1138 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 1, i32 5
  %676 = ptrtoint ptr %data.i1138 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %675, ptr %data.i1138, align 4
  br label %ramfuc_rd32.exit1142

ramfuc_rd32.exit1142:                             ; preds = %if.then.i1139, %ramfuc_rd32.exit.ramfuc_rd32.exit1142_crit_edge
  %data3.i1140 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 1, i32 5
  %677 = ptrtoint ptr %data3.i1140 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %data3.i1140, align 4
  %arrayidx160 = getelementptr %struct.nvkm_ram, ptr %base, i32 0, i32 11, i32 1
  %679 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %678, ptr %arrayidx160, align 4
  %arrayidx163 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 2
  %680 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx163, align 4
  %682 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %681, i32 %683)
  %cmp.not.i1144 = icmp eq i32 %681, %683
  br i1 %cmp.not.i1144, label %ramfuc_rd32.exit1142.ramfuc_rd32.exit1154_crit_edge, label %if.then.i1151

ramfuc_rd32.exit1142.ramfuc_rd32.exit1154_crit_edge: ; preds = %ramfuc_rd32.exit1142
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1154

if.then.i1151:                                    ; preds = %ramfuc_rd32.exit1142
  call void @__sanitizer_cov_trace_pc() #10
  %684 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %fb1.i, align 4
  %device1.i1146 = getelementptr inbounds %struct.nvkm_fb, ptr %685, i32 0, i32 1, i32 1
  %686 = ptrtoint ptr %device1.i1146 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %device1.i1146, align 4
  %pri.i1147 = getelementptr inbounds %struct.nvkm_device, ptr %687, i32 0, i32 11
  %688 = ptrtoint ptr %pri.i1147 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %pri.i1147, align 4
  %addr.i1148 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 2, i32 2
  %690 = ptrtoint ptr %addr.i1148 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %addr.i1148, align 4
  %add.ptr.i1149 = getelementptr i8, ptr %689, i32 %691
  %692 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1149) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1150 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 2, i32 5
  %693 = ptrtoint ptr %data.i1150 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %692, ptr %data.i1150, align 4
  br label %ramfuc_rd32.exit1154

ramfuc_rd32.exit1154:                             ; preds = %if.then.i1151, %ramfuc_rd32.exit1142.ramfuc_rd32.exit1154_crit_edge
  %data3.i1152 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 2, i32 5
  %694 = ptrtoint ptr %data3.i1152 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %data3.i1152, align 4
  %arrayidx167 = getelementptr %struct.nvkm_ram, ptr %base, i32 0, i32 11, i32 2
  %696 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %696)
  store i32 %695, ptr %arrayidx167, align 4
  %type = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 2
  %697 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %type, align 8
  %699 = zext i32 %698 to i64
  call void @__sanitizer_cov_trace_switch(i64 %699, ptr @__sancov_gen_cov_switch_values)
  switch i32 %698, label %ramfuc_rd32.exit1154.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb171
    i32 8, label %sw.bb174
  ]

ramfuc_rd32.exit1154.cleanup_crit_edge:           ; preds = %ramfuc_rd32.exit1154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %ramfuc_rd32.exit1154
  call void @__sanitizer_cov_trace_pc() #10
  %call170 = call i32 @nvkm_sddr2_calc(ptr noundef %base) #8
  br label %sw.epilog

sw.bb171:                                         ; preds = %ramfuc_rd32.exit1154
  call void @__sanitizer_cov_trace_pc() #10
  %call173 = call i32 @nvkm_sddr3_calc(ptr noundef %base) #8
  br label %sw.epilog

sw.bb174:                                         ; preds = %ramfuc_rd32.exit1154
  call void @__sanitizer_cov_trace_pc() #10
  %call176 = call i32 @nvkm_gddr3_calc(ptr noundef %base) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb174, %sw.bb171, %sw.bb
  %ret.0 = phi i32 [ %call176, %sw.bb174 ], [ %call173, %sw.bb171 ], [ %call170, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool177.not = icmp eq i32 %ret.0, 0
  br i1 %tobool177.not, label %if.end179, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end179:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 750001, i32 %freq)
  %cmp180 = icmp ult i32 %freq, 750001
  %. = select i1 %cmp180, i32 268435456, i32 0
  %.1116 = select i1 %cmp180, i32 572662306, i32 0
  %.1117 = select i1 %cmp180, i32 16, i32 0
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 8
  %700 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %701)
  %tobool185.not = icmp eq i32 %701, 0
  %or = or i32 %., 16384
  %r004018.1 = select i1 %tobool185.not, i32 %or, i32 %.
  %r_0x004000 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 4
  %702 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %r_0x004000, align 4
  %704 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %703, i32 %705)
  %cmp.not.i1156 = icmp eq i32 %703, %705
  br i1 %cmp.not.i1156, label %if.end179.ramfuc_rd32.exit1166_crit_edge, label %if.then.i1163

if.end179.ramfuc_rd32.exit1166_crit_edge:         ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1166

if.then.i1163:                                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %706 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %fb1.i, align 4
  %device1.i1158 = getelementptr inbounds %struct.nvkm_fb, ptr %707, i32 0, i32 1, i32 1
  %708 = ptrtoint ptr %device1.i1158 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %device1.i1158, align 4
  %pri.i1159 = getelementptr inbounds %struct.nvkm_device, ptr %709, i32 0, i32 11
  %710 = ptrtoint ptr %pri.i1159 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %pri.i1159, align 4
  %addr.i1160 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 4, i32 2
  %712 = ptrtoint ptr %addr.i1160 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %addr.i1160, align 4
  %add.ptr.i1161 = getelementptr i8, ptr %711, i32 %713
  %714 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1161) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1162 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 4, i32 5
  %715 = ptrtoint ptr %data.i1162 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 %714, ptr %data.i1162, align 4
  br label %ramfuc_rd32.exit1166

ramfuc_rd32.exit1166:                             ; preds = %if.then.i1163, %if.end179.ramfuc_rd32.exit1166_crit_edge
  %data3.i1164 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 4, i32 5
  %716 = ptrtoint ptr %data3.i1164 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %data3.i1164, align 4
  %and = and i32 %717, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool190.not = icmp eq i32 %and, 0
  br i1 %tobool190.not, label %land.rhs, label %ramfuc_rd32.exit1166.land.end_crit_edge

ramfuc_rd32.exit1166.land.end_crit_edge:          ; preds = %ramfuc_rd32.exit1166
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %ramfuc_rd32.exit1166
  call void @__sanitizer_cov_trace_pc() #10
  %718 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %719)
  %tobool191 = icmp ne i32 %719, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %ramfuc_rd32.exit1166.land.end_crit_edge
  %720 = phi i1 [ false, %ramfuc_rd32.exit1166.land.end_crit_edge ], [ %tobool191, %land.rhs ]
  %721 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 11
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %722)
  %bf.load = load i32, ptr %721, align 4
  %723 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %723)
  %tobool193.not = icmp eq i32 %723, 0
  br i1 %tobool193.not, label %if.else197, label %land.end.if.end203_crit_edge

land.end.if.end203_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.else197:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x111100 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111100, i32 noundef 1073741824, i32 noundef 1073741824)
  br label %if.end203

if.end203:                                        ; preds = %if.else197, %land.end.if.end203_crit_edge
  %.sink = phi i32 [ 384, %if.else197 ], [ 1536, %land.end.if.end203_crit_edge ]
  %r_0x111104201 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111104201, i32 noundef %.sink, i32 noundef 0)
  %r_0x100200 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100200, i32 noundef 2048, i32 noundef 0)
  %724 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %725)
  %tobool207.not = icmp eq i32 %725, 0
  %brmerge = select i1 %tobool207.not, i1 true, i1 %720
  br i1 %brmerge, label %if.end203.if.end214_crit_edge, label %if.then209

if.end203.if.end214_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then209:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x004128 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 7
  %726 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %mclk, align 4
  %or212 = or i32 %727, 257
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004128, i32 noundef 4141377, i32 noundef %or212)
  call fastcc void @gt215_ram_lock_pll(ptr noundef %fuc1, ptr noundef nonnull %mclk)
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.end203.if.end214_crit_edge
  %728 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait_vblank(ptr noundef %729) #8
  %r_0x611200 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x611200, i32 noundef 13056)
  %r_0x002504 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 3
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x002504, i32 noundef 1, i32 noundef 1)
  %730 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %731, i32 noundef 10000) #8
  %732 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait(ptr noundef %733, i32 noundef 9476, i32 noundef 16, i32 noundef 16, i32 noundef 20000) #8
  %734 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_block(ptr noundef %735) #8
  %736 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %737, i32 noundef 2000) #8
  %738 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %738)
  %bf.load224 = load i32, ptr %721, align 4
  %739 = and i32 %bf.load224, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %739)
  %tobool227.not = icmp eq i32 %739, 0
  br i1 %tobool227.not, label %if.then228, label %if.end214.if.end242_crit_edge

if.end214.if.end242_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

if.then228:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %740 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %741)
  %cmp231 = icmp eq i32 %741, 8
  %r_0x111100235 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31
  %.1251 = select i1 %cmp231, i32 131072, i32 67239936
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111100235, i32 noundef 67239936, i32 noundef %.1251)
  br label %if.end242

if.end242:                                        ; preds = %if.then228, %if.end214.if.end242_crit_edge
  %742 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %ramcfg_DLLoff, align 4
  %744 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %type, align 8
  %mul = mul i32 %745, %743
  %746 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %746, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mul, label %if.end242.sw.epilog255_crit_edge [
    i32 6, label %sw.bb247
    i32 8, label %sw.bb251
  ]

if.end242.sw.epilog255_crit_edge:                 ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog255

sw.bb247:                                         ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nvkm_sddr3_dll_disable(ptr noundef %fuc1, ptr noundef %mr)
  br label %sw.epilog255

sw.bb251:                                         ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nvkm_gddr3_dll_disable(ptr noundef %fuc1, ptr noundef %mr)
  br label %sw.epilog255

sw.epilog255:                                     ; preds = %sw.bb251, %sw.bb247, %if.end242.sw.epilog255_crit_edge
  %747 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15
  %748 = ptrtoint ptr %747 to i32
  call void @__asan_loadN_noabort(i32 %748, i32 12)
  %bf.load257 = load i96, ptr %747, align 4
  %749 = and i96 %bf.load257, 224
  %tobool260.not = icmp eq i96 %749, 0
  br i1 %tobool260.not, label %sw.epilog255.if.end262_crit_edge, label %if.then261

sw.epilog255.if.end262_crit_edge:                 ; preds = %sw.epilog255
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

if.then261:                                       ; preds = %sw.epilog255
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @gt215_ram_gpio(ptr noundef %fuc1, i8 noundef zeroext 46, i32 noundef 1)
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %sw.epilog255.if.end262_crit_edge
  %r_0x1002d4 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002d4, i32 noundef 1)
  %r_0x1002d0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002d0, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002d0, i32 noundef 1)
  %r_0x100210 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100210, i32 noundef 0)
  %r_0x1002dc = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002dc, i32 noundef 1)
  %750 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %751, i32 noundef 2000) #8
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %752 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %753)
  %cmp270 = icmp eq i32 %753, 163
  call void @__sanitizer_cov_trace_const_cmp4(i32 500001, i32 %freq)
  %cmp273 = icmp ult i32 %freq, 500001
  %or.cond = and i1 %cmp273, %cmp270
  br i1 %or.cond, label %if.then275, label %if.end262.if.end278_crit_edge

if.end262.if.end278_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end278

if.then275:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x100700 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 20
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100700, i32 noundef 6, i32 noundef 6)
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %if.end262.if.end278_crit_edge
  %call279 = call i32 @nvkm_gpio_get(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 24, i8 noundef zeroext -1) #8
  %ramcfg_FBVDDQ = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 10
  %754 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %ramcfg_FBVDDQ, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call279, i32 %755)
  %cmp281 = icmp eq i32 %call279, %755
  br i1 %cmp281, label %if.then283, label %if.end278.if.end312_crit_edge

if.end278.if.end312_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then283:                                       ; preds = %if.end278
  %756 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %r_0x004000, align 4
  %758 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %757, i32 %759)
  %cmp.not.i1168 = icmp eq i32 %757, %759
  br i1 %cmp.not.i1168, label %if.then283.ramfuc_rd32.exit1178_crit_edge, label %if.then.i1175

if.then283.ramfuc_rd32.exit1178_crit_edge:        ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1178

if.then.i1175:                                    ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  %760 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %fb1.i, align 4
  %device1.i1170 = getelementptr inbounds %struct.nvkm_fb, ptr %761, i32 0, i32 1, i32 1
  %762 = ptrtoint ptr %device1.i1170 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %device1.i1170, align 4
  %pri.i1171 = getelementptr inbounds %struct.nvkm_device, ptr %763, i32 0, i32 11
  %764 = ptrtoint ptr %pri.i1171 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %pri.i1171, align 4
  %addr.i1172 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 4, i32 2
  %766 = ptrtoint ptr %addr.i1172 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %addr.i1172, align 4
  %add.ptr.i1173 = getelementptr i8, ptr %765, i32 %767
  %768 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1173) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %769 = ptrtoint ptr %data3.i1164 to i32
  call void @__asan_store4_noabort(i32 %769)
  store i32 %768, ptr %data3.i1164, align 4
  br label %ramfuc_rd32.exit1178

ramfuc_rd32.exit1178:                             ; preds = %if.then.i1175, %if.then283.ramfuc_rd32.exit1178_crit_edge
  %770 = ptrtoint ptr %data3.i1164 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %data3.i1164, align 4
  %and287 = and i32 %771, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and287)
  %cmp288 = icmp eq i32 %and287, 1
  br i1 %cmp288, label %if.then290, label %ramfuc_rd32.exit1178.if.end294_crit_edge

ramfuc_rd32.exit1178.if.end294_crit_edge:         ; preds = %ramfuc_rd32.exit1178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294

if.then290:                                       ; preds = %ramfuc_rd32.exit1178
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 8, i32 noundef 8)
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %ramfuc_rd32.exit1178.if.end294_crit_edge
  %and295 = and i32 %771, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end312.critedge, label %if.then297

if.then297:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 1, i32 noundef 0)
  %772 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %ramcfg_FBVDDQ, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %773)
  %tobool304.not.c = icmp eq i32 %773, 0
  %lnot.ext.c = zext i1 %tobool304.not.c to i32
  call fastcc void @gt215_ram_gpio(ptr noundef %fuc1, i8 noundef zeroext 24, i32 noundef %lnot.ext.c)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 1, i32 noundef 1)
  br label %if.end312

if.end312.critedge:                               ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  %774 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %ramcfg_FBVDDQ, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %775)
  %tobool304.not.c1118 = icmp eq i32 %775, 0
  %lnot.ext.c1119 = zext i1 %tobool304.not.c1118 to i32
  call fastcc void @gt215_ram_gpio(ptr noundef %fuc1, i8 noundef zeroext 24, i32 noundef %lnot.ext.c1119)
  br label %if.end312

if.end312:                                        ; preds = %if.end312.critedge, %if.then297, %if.end278.if.end312_crit_edge
  br i1 %720, label %if.then314, label %if.end312.if.end326_crit_edge

if.end312.if.end326_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

if.then314:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 4, i32 noundef 4)
  %r_0x004168 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 8
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004168, i32 noundef 4141377, i32 noundef 536833)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 8, i32 noundef 8)
  %r_0x1110e0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1110e0, i32 noundef 557056, i32 noundef 557056)
  %r_0x004018 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 6
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x004018, i32 noundef 4096)
  call fastcc void @gt215_ram_lock_pll(ptr noundef %fuc1, ptr noundef nonnull %mclk)
  br label %if.end326

if.end326:                                        ; preds = %if.then314, %if.end312.if.end326_crit_edge
  %776 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %777)
  %tobool328.not = icmp eq i32 %777, 0
  br i1 %tobool328.not, label %if.else337, label %if.then329

if.then329:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 261, i32 noundef 261)
  br label %if.end354

if.else337:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x004168339 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 8
  %778 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %mclk, align 4
  %or341 = or i32 %779, 257
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004168339, i32 noundef 4141377, i32 noundef %or341)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 264, i32 noundef 8)
  %r_0x1110e0347 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1110e0347, i32 noundef 557056, i32 noundef 557056)
  br label %if.end354

if.end354:                                        ; preds = %if.else337, %if.then329
  %.sink1249 = phi i32 [ 36864, %if.else337 ], [ 4096, %if.then329 ]
  %r_0x004018350 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 6
  %or351 = or i32 %r004018.1, %.sink1249
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x004018350, i32 noundef %or351)
  %r_0x100da0353 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100da0353, i32 noundef %.1117)
  %780 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %781, i32 noundef 20000) #8
  %782 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 4
  %783 = ptrtoint ptr %782 to i32
  call void @__asan_load1_noabort(i32 %783)
  %bf.load357 = load i8, ptr %782, align 4
  %784 = and i8 %bf.load357, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %784)
  %tobool361.not = icmp eq i8 %784, 0
  br i1 %tobool361.not, label %if.else409, label %if.then362

if.then362:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x1005a0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 18
  %785 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %785)
  %bf.load365 = load i32, ptr %721, align 4
  %786 = shl i32 %bf.load365, 11
  %shl = and i32 %786, 16711680
  %bf.lshr370 = lshr i32 %bf.load365, 13
  %bf.clear371 = and i32 %bf.lshr370, 255
  %shl372 = shl nuw nsw i32 %bf.clear371, 8
  %or373 = or i32 %shl372, %shl
  %or378 = or i32 %or373, %bf.clear371
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1005a0, i32 noundef %or378)
  %r_0x1005a4 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 19
  %ramcfg_10_08 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 11, i32 0, i32 1
  %787 = ptrtoint ptr %ramcfg_10_08 to i32
  call void @__asan_load4_noabort(i32 %787)
  %bf.load381 = load i32, ptr %ramcfg_10_08, align 4
  %788 = lshr i32 %bf.load381, 8
  %shl384 = and i32 %788, 65280
  %bf.lshr387 = lshr i32 %bf.load381, 24
  %or388 = or i32 %shl384, %bf.lshr387
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1005a4, i32 noundef %or388)
  %r_0x10f804 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29
  %789 = ptrtoint ptr %ramcfg_10_08 to i32
  call void @__asan_load4_noabort(i32 %789)
  %bf.load391 = load i32, ptr %ramcfg_10_08, align 4
  %790 = shl i32 %bf.load391, 12
  %shl394 = and i32 %790, 15728640
  %791 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %791)
  %bf.load396 = load i32, ptr %721, align 4
  %792 = lshr i32 %bf.load396, 6
  %shl399 = and i32 %792, 983040
  %bf.lshr403 = lshr i32 %bf.load391, 12
  %bf.clear404 = and i32 %bf.lshr403, 15
  %or400 = or i32 %shl394, %bf.clear404
  %or405 = or i32 %or400, %shl399
  %or406 = or i32 %or405, -2147483648
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f804, i32 noundef %or406)
  %r_0x10053c = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10053c, i32 noundef 4096, i32 noundef 0)
  br label %if.end434

if.else409:                                       ; preds = %if.end354
  %793 = ptrtoint ptr %ltrain to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %ltrain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %794)
  %cmp411 = icmp eq i32 %794, 4
  br i1 %cmp411, label %if.then413, label %if.else409.if.end421_crit_edge

if.else409.if.end421_crit_edge:                   ; preds = %if.else409
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end421

if.then413:                                       ; preds = %if.else409
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x100080 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100080, i32 noundef 4128)
  %r_0x111400 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 34
  %r_111400 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 3
  %795 = ptrtoint ptr %r_111400 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %r_111400, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111400, i32 noundef -1, i32 noundef %796)
  %r_0x1111e0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 33
  %r_1111e0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 2
  %797 = ptrtoint ptr %r_1111e0 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %r_1111e0, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1111e0, i32 noundef -1, i32 noundef %798)
  %r_0x100720 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 24
  %r_100720 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 2, i32 1
  %799 = ptrtoint ptr %r_100720 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %r_100720, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100720, i32 noundef -1, i32 noundef %800)
  br label %if.end421

if.end421:                                        ; preds = %if.then413, %if.else409.if.end421_crit_edge
  %r_0x10053c423 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10053c423, i32 noundef 4096, i32 noundef 4096)
  %r_0x10f804426 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f804426, i32 noundef -2147483648, i32 noundef 0)
  %r_0x100760 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 25
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100760, i32 noundef 572662306, i32 noundef %.1116)
  %r_0x1007a0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 26
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1007a0, i32 noundef 572662306, i32 noundef %.1116)
  %r_0x1007e0 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1007e0, i32 noundef 572662306, i32 noundef %.1116)
  br label %if.end434

if.end434:                                        ; preds = %if.end421, %if.then362
  %801 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %802)
  %cmp436 = icmp eq i32 %802, 163
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %freq)
  %cmp439 = icmp ugt i32 %freq, 500000
  %or.cond1120 = and i1 %cmp439, %cmp436
  br i1 %or.cond1120, label %if.then441, label %if.end434.if.end445_crit_edge

if.end434.if.end445_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end445

if.then441:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x100700443 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 20
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100700443, i32 noundef 6, i32 noundef 0)
  br label %if.end445

if.end445:                                        ; preds = %if.then441, %if.end434.if.end445_crit_edge
  %803 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %804)
  %tobool447.not = icmp eq i32 %804, 0
  br i1 %tobool447.not, label %if.end445.if.end455_crit_edge, label %if.then448

if.end445.if.end455_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end455

if.then448:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x1110e0450 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x1110e0450, i32 noundef 557056, i32 noundef 69632)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 8, i32 noundef 0)
  br label %if.end455

if.end455:                                        ; preds = %if.then448, %if.end445.if.end455_crit_edge
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002dc, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1002d4, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100210, i32 noundef -2147483648)
  %805 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %806, i32 noundef 2000) #8
  %807 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %arrayidx163, align 4
  %809 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %808, i32 %810)
  %cmp.not.i1180 = icmp eq i32 %808, %810
  br i1 %cmp.not.i1180, label %if.end455.ramfuc_rd32.exit1190_crit_edge, label %if.then.i1187

if.end455.ramfuc_rd32.exit1190_crit_edge:         ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1190

if.then.i1187:                                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #10
  %811 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %fb1.i, align 4
  %device1.i1182 = getelementptr inbounds %struct.nvkm_fb, ptr %812, i32 0, i32 1, i32 1
  %813 = ptrtoint ptr %device1.i1182 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %device1.i1182, align 4
  %pri.i1183 = getelementptr inbounds %struct.nvkm_device, ptr %814, i32 0, i32 11
  %815 = ptrtoint ptr %pri.i1183 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %pri.i1183, align 4
  %addr.i1184 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 2, i32 2
  %817 = ptrtoint ptr %addr.i1184 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %addr.i1184, align 4
  %add.ptr.i1185 = getelementptr i8, ptr %816, i32 %818
  %819 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1185) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %820 = ptrtoint ptr %data3.i1152 to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 %819, ptr %data3.i1152, align 4
  br label %ramfuc_rd32.exit1190

ramfuc_rd32.exit1190:                             ; preds = %if.then.i1187, %if.end455.ramfuc_rd32.exit1190_crit_edge
  %821 = ptrtoint ptr %data3.i1152 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %data3.i1152, align 4
  %823 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %arrayidx167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %822, i32 %824)
  %cmp472.not = icmp eq i32 %822, %824
  br i1 %cmp472.not, label %ramfuc_rd32.exit1190.for.inc_crit_edge, label %if.then474

ramfuc_rd32.exit1190.for.inc_crit_edge:           ; preds = %ramfuc_rd32.exit1190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then474:                                       ; preds = %ramfuc_rd32.exit1190
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx163, i32 noundef %824)
  %825 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %826, i32 noundef 1000) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then474, %ramfuc_rd32.exit1190.for.inc_crit_edge
  %827 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %arrayidx156, align 4
  %829 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %828, i32 %830)
  %cmp.not.i1180.1 = icmp eq i32 %828, %830
  br i1 %cmp.not.i1180.1, label %for.inc.ramfuc_rd32.exit1190.1_crit_edge, label %if.then.i1187.1

for.inc.ramfuc_rd32.exit1190.1_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1190.1

if.then.i1187.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %831 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %fb1.i, align 4
  %device1.i1182.1 = getelementptr inbounds %struct.nvkm_fb, ptr %832, i32 0, i32 1, i32 1
  %833 = ptrtoint ptr %device1.i1182.1 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %device1.i1182.1, align 4
  %pri.i1183.1 = getelementptr inbounds %struct.nvkm_device, ptr %834, i32 0, i32 11
  %835 = ptrtoint ptr %pri.i1183.1 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %pri.i1183.1, align 4
  %addr.i1184.1 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 1, i32 2
  %837 = ptrtoint ptr %addr.i1184.1 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %addr.i1184.1, align 4
  %add.ptr.i1185.1 = getelementptr i8, ptr %836, i32 %838
  %839 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1185.1) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %840 = ptrtoint ptr %data3.i1140 to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 %839, ptr %data3.i1140, align 4
  br label %ramfuc_rd32.exit1190.1

ramfuc_rd32.exit1190.1:                           ; preds = %if.then.i1187.1, %for.inc.ramfuc_rd32.exit1190.1_crit_edge
  %841 = ptrtoint ptr %data3.i1140 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %data3.i1140, align 4
  %843 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %842, i32 %844)
  %cmp472.not.1 = icmp eq i32 %842, %844
  br i1 %cmp472.not.1, label %ramfuc_rd32.exit1190.1.for.inc.1_crit_edge, label %if.then474.1

ramfuc_rd32.exit1190.1.for.inc.1_crit_edge:       ; preds = %ramfuc_rd32.exit1190.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then474.1:                                     ; preds = %ramfuc_rd32.exit1190.1
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx156, i32 noundef %844)
  %845 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %846, i32 noundef 1000) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then474.1, %ramfuc_rd32.exit1190.1.for.inc.1_crit_edge
  %847 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %r_mr, align 4
  %849 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %848, i32 %850)
  %cmp.not.i1180.2 = icmp eq i32 %848, %850
  br i1 %cmp.not.i1180.2, label %for.inc.1.ramfuc_rd32.exit1190.2_crit_edge, label %if.then.i1187.2

for.inc.1.ramfuc_rd32.exit1190.2_crit_edge:       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1190.2

if.then.i1187.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %851 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %fb1.i, align 4
  %device1.i1182.2 = getelementptr inbounds %struct.nvkm_fb, ptr %852, i32 0, i32 1, i32 1
  %853 = ptrtoint ptr %device1.i1182.2 to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %device1.i1182.2, align 4
  %pri.i1183.2 = getelementptr inbounds %struct.nvkm_device, ptr %854, i32 0, i32 11
  %855 = ptrtoint ptr %pri.i1183.2 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %pri.i1183.2, align 4
  %addr.i1184.2 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 36, i32 0, i32 2
  %857 = ptrtoint ptr %addr.i1184.2 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %addr.i1184.2, align 4
  %add.ptr.i1185.2 = getelementptr i8, ptr %856, i32 %858
  %859 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1185.2) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %860 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %860)
  store i32 %859, ptr %data3.i, align 4
  br label %ramfuc_rd32.exit1190.2

ramfuc_rd32.exit1190.2:                           ; preds = %if.then.i1187.2, %for.inc.1.ramfuc_rd32.exit1190.2_crit_edge
  %861 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %data3.i, align 4
  %863 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %mr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %862, i32 %864)
  %cmp472.not.2 = icmp eq i32 %862, %864
  br i1 %cmp472.not.2, label %ramfuc_rd32.exit1190.2.for.inc.2_crit_edge, label %if.then474.2

ramfuc_rd32.exit1190.2.for.inc.2_crit_edge:       ; preds = %ramfuc_rd32.exit1190.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then474.2:                                     ; preds = %ramfuc_rd32.exit1190.2
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_mr, i32 noundef %864)
  %865 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %866, i32 noundef 1000) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then474.2, %ramfuc_rd32.exit1190.2.for.inc.2_crit_edge
  %r_0x100220 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12
  %arrayidx484 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 3
  %arrayidx485 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 3
  %867 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %arrayidx485, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx484, i32 noundef %868)
  %arrayidx488 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 1
  %arrayidx489 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 1
  %869 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %arrayidx489, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx488, i32 noundef %870)
  %arrayidx492 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 6
  %arrayidx493 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 6
  %871 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load i32, ptr %arrayidx493, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx492, i32 noundef %872)
  %arrayidx496 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 7
  %arrayidx497 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 7
  %873 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %arrayidx497, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx496, i32 noundef %874)
  %arrayidx500 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 2
  %arrayidx501 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 2
  %875 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load i32, ptr %arrayidx501, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx500, i32 noundef %876)
  %arrayidx504 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 4
  %arrayidx505 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 4
  %877 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %arrayidx505, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx504, i32 noundef %878)
  %arrayidx508 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 5
  %arrayidx509 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 5
  %879 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %arrayidx509, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx508, i32 noundef %880)
  %881 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %timing, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100220, i32 noundef %882)
  %arrayidx516 = getelementptr %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 12, i32 8
  %arrayidx517 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 8
  %883 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load i32, ptr %arrayidx517, align 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %arrayidx516, i32 noundef %884)
  %885 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %885)
  %bf.load521 = load i32, ptr %721, align 4
  %886 = lshr i32 %bf.load521, 16
  %887 = and i32 %886, 4096
  %shl527 = xor i32 %887, 4096
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100200, i32 noundef 4096, i32 noundef %shl527)
  %r_0x100714 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 21
  %888 = ptrtoint ptr %r_0x100714 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load i32, ptr %r_0x100714, align 4
  %890 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %889, i32 %891)
  %cmp.not.i1192 = icmp eq i32 %889, %891
  br i1 %cmp.not.i1192, label %for.inc.2.ramfuc_rd32.exit1202_crit_edge, label %if.then.i1199

for.inc.2.ramfuc_rd32.exit1202_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1202

if.then.i1199:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %892 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %fb1.i, align 4
  %device1.i1194 = getelementptr inbounds %struct.nvkm_fb, ptr %893, i32 0, i32 1, i32 1
  %894 = ptrtoint ptr %device1.i1194 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %device1.i1194, align 4
  %pri.i1195 = getelementptr inbounds %struct.nvkm_device, ptr %895, i32 0, i32 11
  %896 = ptrtoint ptr %pri.i1195 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %pri.i1195, align 4
  %addr.i1196 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 21, i32 2
  %898 = ptrtoint ptr %addr.i1196 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load i32, ptr %addr.i1196, align 4
  %add.ptr.i1197 = getelementptr i8, ptr %897, i32 %899
  %900 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1197) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1198 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 21, i32 5
  %901 = ptrtoint ptr %data.i1198 to i32
  call void @__asan_store4_noabort(i32 %901)
  store i32 %900, ptr %data.i1198, align 4
  br label %ramfuc_rd32.exit1202

ramfuc_rd32.exit1202:                             ; preds = %if.then.i1199, %for.inc.2.ramfuc_rd32.exit1202_crit_edge
  %data3.i1200 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 21, i32 5
  %902 = ptrtoint ptr %data3.i1200 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %data3.i1200, align 4
  %and531 = and i32 %903, 268435151
  %r_0x100718 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 22
  %904 = ptrtoint ptr %r_0x100718 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %r_0x100718, align 4
  %906 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %905, i32 %907)
  %cmp.not.i1204 = icmp eq i32 %905, %907
  br i1 %cmp.not.i1204, label %ramfuc_rd32.exit1202.ramfuc_rd32.exit1214_crit_edge, label %if.then.i1211

ramfuc_rd32.exit1202.ramfuc_rd32.exit1214_crit_edge: ; preds = %ramfuc_rd32.exit1202
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1214

if.then.i1211:                                    ; preds = %ramfuc_rd32.exit1202
  call void @__sanitizer_cov_trace_pc() #10
  %908 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %fb1.i, align 4
  %device1.i1206 = getelementptr inbounds %struct.nvkm_fb, ptr %909, i32 0, i32 1, i32 1
  %910 = ptrtoint ptr %device1.i1206 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %device1.i1206, align 4
  %pri.i1207 = getelementptr inbounds %struct.nvkm_device, ptr %911, i32 0, i32 11
  %912 = ptrtoint ptr %pri.i1207 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %pri.i1207, align 4
  %addr.i1208 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 22, i32 2
  %914 = ptrtoint ptr %addr.i1208 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %addr.i1208, align 4
  %add.ptr.i1209 = getelementptr i8, ptr %913, i32 %915
  %916 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1209) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1210 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 22, i32 5
  %917 = ptrtoint ptr %data.i1210 to i32
  call void @__asan_store4_noabort(i32 %917)
  store i32 %916, ptr %data.i1210, align 4
  br label %ramfuc_rd32.exit1214

ramfuc_rd32.exit1214:                             ; preds = %if.then.i1211, %ramfuc_rd32.exit1202.ramfuc_rd32.exit1214_crit_edge
  %data3.i1212 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 22, i32 5
  %918 = ptrtoint ptr %data3.i1212 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %data3.i1212, align 4
  %and534 = and i32 %919, -257
  %r_0x10071c = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 23
  %920 = ptrtoint ptr %r_0x10071c to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %r_0x10071c, align 4
  %922 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %921, i32 %923)
  %cmp.not.i1216 = icmp eq i32 %921, %923
  br i1 %cmp.not.i1216, label %ramfuc_rd32.exit1214.ramfuc_rd32.exit1226_crit_edge, label %if.then.i1223

ramfuc_rd32.exit1214.ramfuc_rd32.exit1226_crit_edge: ; preds = %ramfuc_rd32.exit1214
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1226

if.then.i1223:                                    ; preds = %ramfuc_rd32.exit1214
  call void @__sanitizer_cov_trace_pc() #10
  %924 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %fb1.i, align 4
  %device1.i1218 = getelementptr inbounds %struct.nvkm_fb, ptr %925, i32 0, i32 1, i32 1
  %926 = ptrtoint ptr %device1.i1218 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %device1.i1218, align 4
  %pri.i1219 = getelementptr inbounds %struct.nvkm_device, ptr %927, i32 0, i32 11
  %928 = ptrtoint ptr %pri.i1219 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %pri.i1219, align 4
  %addr.i1220 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 23, i32 2
  %930 = ptrtoint ptr %addr.i1220 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load i32, ptr %addr.i1220, align 4
  %add.ptr.i1221 = getelementptr i8, ptr %929, i32 %931
  %932 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1221) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1222 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 23, i32 5
  %933 = ptrtoint ptr %data.i1222 to i32
  call void @__asan_store4_noabort(i32 %933)
  store i32 %932, ptr %data.i1222, align 4
  br label %ramfuc_rd32.exit1226

ramfuc_rd32.exit1226:                             ; preds = %if.then.i1223, %ramfuc_rd32.exit1214.ramfuc_rd32.exit1226_crit_edge
  %data3.i1224 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 23, i32 5
  %934 = ptrtoint ptr %data3.i1224 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %data3.i1224, align 4
  %and537 = and i32 %935, -257
  %r_0x111100539 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31
  %936 = ptrtoint ptr %r_0x111100539 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %r_0x111100539, align 4
  %938 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %937, i32 %939)
  %cmp.not.i1228 = icmp eq i32 %937, %939
  br i1 %cmp.not.i1228, label %ramfuc_rd32.exit1226.ramfuc_rd32.exit1238_crit_edge, label %if.then.i1235

ramfuc_rd32.exit1226.ramfuc_rd32.exit1238_crit_edge: ; preds = %ramfuc_rd32.exit1226
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit1238

if.then.i1235:                                    ; preds = %ramfuc_rd32.exit1226
  call void @__sanitizer_cov_trace_pc() #10
  %940 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %fb1.i, align 4
  %device1.i1230 = getelementptr inbounds %struct.nvkm_fb, ptr %941, i32 0, i32 1, i32 1
  %942 = ptrtoint ptr %device1.i1230 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %device1.i1230, align 4
  %pri.i1231 = getelementptr inbounds %struct.nvkm_device, ptr %943, i32 0, i32 11
  %944 = ptrtoint ptr %pri.i1231 to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %pri.i1231, align 4
  %addr.i1232 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31, i32 2
  %946 = ptrtoint ptr %addr.i1232 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %addr.i1232, align 4
  %add.ptr.i1233 = getelementptr i8, ptr %945, i32 %947
  %948 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1233) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i1234 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31, i32 5
  %949 = ptrtoint ptr %data.i1234 to i32
  call void @__asan_store4_noabort(i32 %949)
  store i32 %948, ptr %data.i1234, align 4
  br label %ramfuc_rd32.exit1238

ramfuc_rd32.exit1238:                             ; preds = %if.then.i1235, %ramfuc_rd32.exit1226.ramfuc_rd32.exit1238_crit_edge
  %data3.i1236 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 31, i32 5
  %950 = ptrtoint ptr %data3.i1236 to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %data3.i1236, align 4
  %and541 = and i32 %951, -981467137
  %952 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %953)
  %cmp543 = icmp eq i32 %953, 168
  br i1 %cmp543, label %if.then545, label %if.else555

if.then545:                                       ; preds = %ramfuc_rd32.exit1238
  call void @__sanitizer_cov_trace_pc() #10
  %or546 = or i32 %and541, 134217728
  %954 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %954)
  %bf.load548 = load i32, ptr %721, align 4
  %955 = lshr i32 %bf.load548, 25
  %956 = and i32 %955, 16
  %957 = or i32 %956, %and531
  %958 = xor i32 %957, 16
  br label %if.end599

if.else555:                                       ; preds = %ramfuc_rd32.exit1238
  %959 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %959)
  %bf.load557 = load i32, ptr %721, align 4
  %960 = and i32 %bf.load557, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %960)
  %tobool560.not = icmp eq i32 %960, 0
  %961 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %type, align 8
  br i1 %tobool560.not, label %if.else578, label %if.then561

if.then561:                                       ; preds = %if.else555
  %.off = add i32 %962, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb564, label %if.then561.if.end599_crit_edge

if.then561.if.end599_crit_edge:                   ; preds = %if.then561
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end599

sw.bb564:                                         ; preds = %if.then561
  %and565 = and i32 %951, -981467169
  %963 = and i32 %bf.load557, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %963)
  %tobool570.not = icmp eq i32 %963, 0
  br i1 %tobool570.not, label %if.else573, label %if.then571

if.then571:                                       ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #10
  %or572 = or i32 %and565, 134217732
  br label %if.end599

if.else573:                                       ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #10
  %or574 = or i32 %and565, 36
  br label %if.end599

if.else578:                                       ; preds = %if.else555
  %964 = zext i32 %962 to i64
  call void @__sanitizer_cov_trace_switch(i64 %964, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %962, label %if.else578.if.end599_crit_edge [
    i32 5, label %if.else578.sw.bb581_crit_edge
    i32 6, label %if.else578.sw.bb581_crit_edge1258
    i32 8, label %sw.bb593
  ]

if.else578.sw.bb581_crit_edge1258:                ; preds = %if.else578
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb581

if.else578.sw.bb581_crit_edge:                    ; preds = %if.else578
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb581

if.else578.if.end599_crit_edge:                   ; preds = %if.else578
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end599

sw.bb581:                                         ; preds = %if.else578.sw.bb581_crit_edge, %if.else578.sw.bb581_crit_edge1258
  %and582 = and i32 %951, -981467173
  %965 = and i32 %bf.load557, 134217728
  %966 = or i32 %and582, %965
  %spec.select1121 = or i32 %966, 310378496
  %or592 = or i32 %and531, 16
  br label %if.end599

sw.bb593:                                         ; preds = %if.else578
  call void @__sanitizer_cov_trace_pc() #10
  %or594 = or i32 %and541, 805306368
  %or595 = or i32 %and531, 32
  br label %if.end599

if.end599:                                        ; preds = %sw.bb593, %sw.bb581, %if.else578.if.end599_crit_edge, %if.else573, %if.then571, %if.then561.if.end599_crit_edge, %if.then545
  %r111100.1 = phi i32 [ %and541, %if.then561.if.end599_crit_edge ], [ %or572, %if.then571 ], [ %or574, %if.else573 ], [ %and541, %if.else578.if.end599_crit_edge ], [ %or594, %sw.bb593 ], [ %spec.select1121, %sw.bb581 ], [ %or546, %if.then545 ]
  %unk714.0 = phi i32 [ %and531, %if.then561.if.end599_crit_edge ], [ %and531, %if.then571 ], [ %and531, %if.else573 ], [ %and531, %if.else578.if.end599_crit_edge ], [ %or595, %sw.bb593 ], [ %or592, %sw.bb581 ], [ %958, %if.then545 ]
  %967 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %967)
  %bf.load601 = load i32, ptr %721, align 4
  %968 = lshr i32 %bf.load601, 13
  %shl604 = and i32 %968, 256
  %or605 = or i32 %shl604, %unk714.0
  %969 = and i32 %bf.load601, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %969)
  %tobool610.not = icmp eq i32 %969, 0
  %or612 = or i32 %or605, -268435456
  %spec.select1122 = select i1 %tobool610.not, i32 %or605, i32 %or612
  %970 = lshr i32 %bf.load601, 22
  %971 = and i32 %970, 256
  %unk718.0 = or i32 %971, %and534
  %972 = lshr i32 %bf.load601, 23
  %973 = and i32 %972, 256
  %unk71c.0 = or i32 %973, %and537
  %timing_10_24 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %974 = ptrtoint ptr %timing_10_24 to i32
  call void @__asan_loadN_noabort(i32 %974, i32 8)
  %bf.load630 = load i64, ptr %timing_10_24, align 4
  %975 = trunc i64 %bf.load630 to i32
  %976 = and i32 %975, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %976)
  %cmp634.not = icmp eq i32 %976, 16711680
  %and637 = and i32 %unk718.0, 268435455
  %977 = shl i32 %975, 12
  %shl644 = and i32 %977, -268435456
  %or645 = or i32 %and637, %shl644
  %unk718.1 = select i1 %cmp634.not, i32 %unk718.0, i32 %or645
  %978 = and i32 %bf.load601, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %978)
  %tobool651.not = icmp eq i32 %978, 0
  %and653 = and i32 %r111100.1, -67239937
  %r111100.2 = select i1 %tobool651.not, i32 %r111100.1, i32 %and653
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100714, i32 noundef -1, i32 noundef %spec.select1122)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10071c, i32 noundef -1, i32 noundef %unk71c.0)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100718, i32 noundef -1, i32 noundef %unk718.1)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111100539, i32 noundef -1, i32 noundef %r111100.2)
  %979 = ptrtoint ptr %747 to i32
  call void @__asan_loadN_noabort(i32 %979, i32 12)
  %bf.load668 = load i96, ptr %747, align 4
  %980 = and i96 %bf.load668, 224
  %tobool672.not = icmp eq i96 %980, 0
  br i1 %tobool672.not, label %if.then673, label %if.end599.if.end674_crit_edge

if.end599.if.end674_crit_edge:                    ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end674

if.then673:                                       ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @gt215_ram_gpio(ptr noundef %fuc1, i8 noundef zeroext 46, i32 noundef 0)
  br label %if.end674

if.end674:                                        ; preds = %if.then673, %if.end599.if.end674_crit_edge
  %981 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %982)
  %tobool677.not = icmp eq i32 %982, 0
  br i1 %tobool677.not, label %if.then678, label %if.end674.if.end679_crit_edge

if.end674.if.end679_crit_edge:                    ; preds = %if.end674
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end679

if.then678:                                       ; preds = %if.end674
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nvkm_sddr2_dll_reset(ptr noundef %fuc1)
  br label %if.end679

if.end679:                                        ; preds = %if.then678, %if.end674.if.end679_crit_edge
  %983 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %984)
  %cmp682 = icmp eq i32 %984, 8
  %985 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %fuc1, align 4
  %.1252 = select i1 %cmp682, i32 31000, i32 14000
  call void @nvkm_memx_nsec(ptr noundef %986, i32 noundef %.1252) #8
  %987 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %988)
  %cmp691 = icmp eq i32 %988, 6
  br i1 %cmp691, label %if.then693, label %if.end679.if.end696_crit_edge

if.end679.if.end696_crit_edge:                    ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end696

if.then693:                                       ; preds = %if.end679
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x100264 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100264, i32 noundef 1)
  %989 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %990, i32 noundef 2000) #8
  br label %if.end696

if.end696:                                        ; preds = %if.then693, %if.end679.if.end696_crit_edge
  %r_0x100700698 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 20
  %force.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 20, i32 1
  %991 = ptrtoint ptr %force.i to i32
  call void @__asan_store1_noabort(i32 %991)
  store i8 1, ptr %force.i, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100700698, i32 noundef 16777216, i32 noundef 16777216)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100700698, i32 noundef 16777216, i32 noundef 0)
  %992 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_unblock(ptr noundef %993) #8
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x611200, i32 noundef 13104)
  %994 = ptrtoint ptr %782 to i32
  call void @__asan_load1_noabort(i32 %994)
  %bf.load709 = load i8, ptr %782, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load709)
  %tobool712.not = icmp sgt i8 %bf.load709, -1
  br i1 %tobool712.not, label %if.end696.if.end717_crit_edge, label %if.then713

if.end696.if.end717_crit_edge:                    ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end717

if.then713:                                       ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x100200, i32 noundef 2048, i32 noundef 2048)
  br label %if.end717

if.end717:                                        ; preds = %if.then713, %if.end696.if.end717_crit_edge
  %995 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %995)
  %bf.load719 = load i32, ptr %721, align 4
  %996 = and i32 %bf.load719, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %996)
  %tobool722.not = icmp eq i32 %996, 0
  %r_0x111104732 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 32
  br i1 %tobool722.not, label %if.else730, label %if.then723

if.then723:                                       ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111104732, i32 noundef 384, i32 noundef 384)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111100539, i32 noundef 1073741824, i32 noundef 0)
  br label %if.end734

if.else730:                                       ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x111104732, i32 noundef 1536, i32 noundef 1536)
  br label %if.end734

if.end734:                                        ; preds = %if.else730, %if.then723
  %997 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %998)
  %tobool736.not = icmp eq i32 %998, 0
  br i1 %tobool736.not, label %if.else744, label %if.then737

if.then737:                                       ; preds = %if.end734
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x004168739 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 8
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004168739, i32 noundef 1, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004168739, i32 noundef 256, i32 noundef 0)
  br label %cleanup

if.else744:                                       ; preds = %if.end734
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004000, i32 noundef 1, i32 noundef 0)
  %r_0x004128749 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 7
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004128749, i32 noundef 1, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x004128749, i32 noundef 256, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else744, %if.then737, %sw.epilog.cleanup_crit_edge, %ramfuc_rd32.exit1154.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %do.end132, %do.body124.cleanup_crit_edge, %do.end110, %do.body102.cleanup_crit_edge, %do.end75, %do.body67.cleanup_crit_edge, %do.end45, %do.body37.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end45 ], [ -22, %do.body37.cleanup_crit_edge ], [ -22, %do.end75 ], [ -22, %do.body67.cleanup_crit_edge ], [ -22, %do.end110 ], [ -22, %do.body102.cleanup_crit_edge ], [ %call120, %do.end132 ], [ %call120, %do.body124.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else744 ], [ 0, %if.then737 ], [ %call.i1123, %if.end140.cleanup_crit_edge ], [ -38, %ramfuc_rd32.exit1154.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %timing) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mclk) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_ram_prog(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fuc1 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %5, ptr noundef nonnull @.str.17, i1 noundef zeroext true) #8
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 5428
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %or = or i32 %8, 2
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #8, !srcloc !64
  %fb.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.ramfuc_exec.exit_crit_edge, label %if.then.i

if.then.ramfuc_exec.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_exec.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @nvkm_memx_fini(ptr noundef %fuc1, i1 noundef zeroext true) #8
  %13 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fb.i, align 4
  br label %ramfuc_exec.exit

ramfuc_exec.exit:                                 ; preds = %if.then.i, %if.then.ramfuc_exec.exit_crit_edge
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 9476
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %and23 = and i32 %16, -2
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 9476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %and23) #8, !srcloc !64
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %20, i32 5428
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %and39 = and i32 %21, -3
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %23, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %and39) #8, !srcloc !64
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %25, i32 6382344
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %or56 = or i32 %26, 16
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %28, i32 6382344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %or56) #8, !srcloc !64
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %30, i32 6384392
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %or72 = or i32 %31, 16
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %33, i32 6384392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %or72) #8, !srcloc !64
  br label %if.end

if.else:                                          ; preds = %entry
  %fb.i100 = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %fb.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fb.i100, align 4
  %tobool.not.i101 = icmp eq ptr %35, null
  br i1 %tobool.not.i101, label %if.else.if.end_crit_edge, label %if.then.i103

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i103:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i102 = tail call i32 @nvkm_memx_fini(ptr noundef %fuc1, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %fb.i100 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fb.i100, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i103, %if.else.if.end_crit_edge, %ramfuc_exec.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt215_ram_tidy(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb.i = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ramfuc_exec.exit_crit_edge, label %if.then.i

entry.ramfuc_exec.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fuc = getelementptr inbounds %struct.gt215_ram, ptr %base, i32 0, i32 1
  %call.i = tail call i32 @nvkm_memx_fini(ptr noundef %fuc, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fb.i, align 4
  br label %ramfuc_exec.exit

ramfuc_exec.exit:                                 ; preds = %if.then.i, %entry.ramfuc_exec.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapSp(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gt215_ram_timing_calc(ptr nocapture noundef %ram, ptr nocapture noundef %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1049128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 1049132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 1049148
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 1049152
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %16 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 16, i32 1, i32 15
  %timing_10_CWL = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %17 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load = load i64, ptr %timing_10_CWL, align 4
  %18 = and i64 %bf.load, 280375465082880
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not = icmp eq i64 %18, 0
  %type = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 8
  %mul = select i1 %tobool.not, i32 %20, i32 0
  %21 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mul, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 12)
  %bf.load20 = load i96, ptr %16, align 4
  %bf.lshr21 = lshr i96 %bf.load20, 72
  %23 = trunc i96 %bf.lshr21 to i32
  %sub = add nuw nsw i32 %23, 255
  %24 = and i32 %sub, 255
  %bf.value = zext i32 %24 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 40
  %bf.clear26 = and i64 %bf.load, -280375465082881
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %6, 24
  %add = add nuw nsw i32 %shr, 1
  %25 = and i32 %add, 255
  %bf.value30 = zext i32 %25 to i64
  %bf.shl31 = shl nuw nsw i64 %bf.value30, 40
  %bf.clear32 = and i64 %bf.load, -280375465082881
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb27, %sw.bb
  %bf.shl31.sink = phi i64 [ %bf.shl31, %sw.bb27 ], [ %bf.clear26, %sw.bb ]
  %bf.clear32.sink = phi i64 [ %bf.clear32, %sw.bb27 ], [ %bf.shl, %sw.bb ]
  %bf.set33 = or i64 %bf.clear32.sink, %bf.shl31.sink
  %26 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %bf.set33, ptr %timing_10_CWL, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %and35 = and i32 %9, 255
  %add36.neg = xor i32 %and35, -1
  %and37 = lshr i32 %12, 16
  %shr38 = and i32 %and37, 255
  %sub39 = add nsw i32 %shr38, %add36.neg
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 12)
  %bf.load40 = load i96, ptr %16, align 4
  %sh.diff = lshr i96 %bf.load40, 16
  %tr.sh.diff = trunc i96 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, -16777216
  %sh.diff2 = lshr i96 %bf.load40, 32
  %tr.sh.diff3 = trunc i96 %sh.diff2 to i32
  %shl48 = and i32 %tr.sh.diff3, 16711680
  %or = or i32 %shl, %shl48
  %sh.diff4 = lshr i96 %bf.load40, 48
  %tr.sh.diff5 = trunc i96 %sh.diff4 to i32
  %shl53 = and i32 %tr.sh.diff5, 65280
  %or54 = or i32 %or, %shl53
  %bf.lshr56 = lshr i96 %bf.load40, 64
  %28 = trunc i96 %bf.lshr56 to i32
  %bf.cast58 = and i32 %28, 255
  %or59 = or i32 %or54, %bf.cast58
  %29 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or59, ptr %timing, align 4
  %bf.load60 = load i96, ptr %16, align 4
  %bf.lshr61 = lshr i96 %bf.load60, 88
  %bf.cast62 = trunc i96 %bf.lshr61 to i32
  %add63 = add nuw nsw i32 %bf.cast62, 1
  %30 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load65 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr66 = lshr i64 %bf.load65, 40
  %31 = trunc i64 %bf.lshr66 to i32
  %add69 = add nuw nsw i32 %add63, %31
  %shl70 = shl i32 %add69, 24
  %bf.lshr72 = lshr i64 %bf.load65, 48
  %32 = trunc i64 %bf.lshr72 to i32
  %conv76 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv76)
  %cmp = icmp ugt i32 %conv76, 1
  %phi.bo = shl nuw nsw i32 %conv76, 16
  %cond = select i1 %cmp, i32 %phi.bo, i32 65536
  %or82 = or i32 %cond, %shl70
  %bf.lshr84 = lshr i96 %bf.load60, 80
  %33 = trunc i96 %bf.lshr84 to i32
  %bf.cast86 = and i32 %33, 255
  %add87 = add nuw nsw i32 %bf.cast86, 1
  %bf.cast92 = and i32 %31, 255
  %add93 = add nuw nsw i32 %add87, %bf.cast92
  %shl94 = shl nuw nsw i32 %add93, 8
  %bf.lshr97 = lshr i96 %bf.load60, 72
  %34 = trunc i96 %bf.lshr97 to i32
  %bf.cast99 = and i32 %34, 255
  %add100 = add nuw nsw i32 %bf.cast99, 5
  %sub106 = sub nsw i32 %add100, %bf.cast92
  %or95 = or i32 %shl94, %sub106
  %or107 = or i32 %or95, %or82
  %arrayidx108 = getelementptr i32, ptr %timing, i32 1
  %35 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or107, ptr %arrayidx108, align 4
  %36 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load110 = load i64, ptr %timing_10_CWL, align 4
  %sh.diff6 = lshr i64 %bf.load110, 16
  %tr.sh.diff7 = trunc i64 %sh.diff6 to i32
  %37 = add i32 %tr.sh.diff7, -16777216
  %shl115 = and i32 %37, -16777216
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 12)
  %bf.load116 = load i96, ptr %16, align 4
  %39 = trunc i96 %bf.load116 to i32
  %bf.cast119 = and i32 %39, 16711680
  %or121 = or i32 %shl115, %bf.cast119
  %40 = lshr i32 %39, 16
  %shl126 = and i32 %40, 65280
  %or127 = or i32 %or121, %shl126
  %bf.lshr129 = lshr i96 %bf.load116, 32
  %41 = trunc i96 %bf.lshr129 to i32
  %bf.cast131 = and i32 %41, 255
  %or132 = or i32 %or127, %bf.cast131
  %arrayidx133 = getelementptr i32, ptr %timing, i32 2
  %42 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or132, ptr %arrayidx133, align 4
  %and134 = and i32 %9, 16711680
  %bf.load135 = load i96, ptr %16, align 4
  %bf.lshr136 = lshr i96 %bf.load135, 72
  %43 = trunc i96 %bf.lshr136 to i32
  %bf.cast138 = and i32 %43, 255
  %add139 = shl i32 %43, 24
  %shl140 = add i32 %add139, 805306368
  %or141 = or i32 %shl140, %and134
  %add146 = shl nuw nsw i32 %bf.cast138, 8
  %shl147 = add nuw nsw i32 %add146, 2816
  %sub153 = add nsw i32 %bf.cast138, -1
  %or148 = or i32 %shl147, %sub153
  %or154 = or i32 %or148, %or141
  %arrayidx155 = getelementptr i32, ptr %timing, i32 3
  %44 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or154, ptr %arrayidx155, align 4
  %bf.load156 = load i64, ptr %timing_10_CWL, align 4
  %sh.diff8 = lshr i64 %bf.load156, 8
  %tr.sh.diff9 = trunc i64 %sh.diff8 to i32
  %shl160 = and i32 %tr.sh.diff9, -16777216
  %45 = trunc i64 %bf.load156 to i32
  %46 = lshr i32 %45, 8
  %shl165 = and i32 %46, 16711680
  %or166 = or i32 %shl160, %shl165
  %bf.load167 = load i96, ptr %16, align 4
  %47 = trunc i96 %bf.load167 to i32
  %48 = lshr i32 %47, 8
  %bf.cast170 = and i32 %48, 255
  %shl171 = shl nuw nsw i32 %bf.cast170, 8
  %or172 = or i32 %shl171, %or166
  %or177 = or i32 %or172, %bf.cast170
  %arrayidx178 = getelementptr i32, ptr %timing, i32 4
  %49 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or177, ptr %arrayidx178, align 4
  %bf.load179 = load i96, ptr %16, align 4
  %sh.diff10 = lshr i96 %bf.load179, 32
  %tr.sh.diff11 = trunc i96 %sh.diff10 to i32
  %shl183 = and i32 %tr.sh.diff11, -16777216
  %50 = trunc i96 %bf.load179 to i32
  %51 = lshr i32 %50, 24
  %conv195 = and i32 %tr.sh.diff11, 255
  %52 = tail call i32 @llvm.umax.i32(i32 %conv195, i32 %51)
  %shl205 = shl nuw nsw i32 %52, 16
  %or206 = or i32 %shl205, %shl183
  %53 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %bf.load208 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr209 = lshr i64 %bf.load208, 40
  %54 = trunc i64 %bf.lshr209 to i32
  %add212 = add nuw nsw i32 %54, 6
  %bf.lshr215 = lshr i96 %bf.load179, 72
  %55 = trunc i96 %bf.lshr215 to i32
  %add218 = add nuw nsw i32 %55, 2
  %conv221 = and i32 %add212, 255
  %conv222 = and i32 %add218, 255
  %56 = tail call i32 @llvm.umax.i32(i32 %conv221, i32 %conv222)
  %shl231 = shl nuw nsw i32 %56, 8
  %or232 = or i32 %shl231, %or206
  %bf.lshr234 = lshr i96 %bf.load179, 40
  %57 = trunc i96 %bf.lshr234 to i32
  %bf.cast236 = and i32 %57, 255
  %or237 = or i32 %or232, %bf.cast236
  %arrayidx238 = getelementptr i32, ptr %timing, i32 5
  %58 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or237, ptr %arrayidx238, align 4
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 12)
  %bf.load239 = load i96, ptr %16, align 4
  %bf.lshr240 = lshr i96 %bf.load239, 72
  %60 = trunc i96 %bf.lshr240 to i32
  %bf.cast242 = shl i32 %60, 16
  %add243 = and i32 %bf.cast242, 16711680
  %shl244 = add nuw nsw i32 %add243, 5898240
  %sub249 = sub nsw i32 6, %60
  %61 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load251 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr252 = lshr i64 %bf.load251, 40
  %62 = trunc i64 %bf.lshr252 to i32
  %add255 = add nsw i32 %sub249, %62
  %conv259 = and i32 %add255, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv259)
  %cmp260 = icmp eq i32 %conv259, 0
  %phi.bo12 = shl nuw nsw i32 %conv259, 8
  %cond267 = select i1 %cmp260, i32 256, i32 %phi.bo12
  %or269 = or i32 %cond267, %shl244
  %bf.cast273 = and i32 %60, 255
  %add274 = add nuw nsw i32 %bf.cast273, 80
  %bf.cast279 = and i32 %62, 255
  %sub280 = sub nsw i32 %add274, %bf.cast279
  %or281 = or i32 %or269, %sub280
  %arrayidx282 = getelementptr i32, ptr %timing, i32 6
  %63 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or281, ptr %arrayidx282, align 4
  %and283 = and i32 %12, -16777216
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 12)
  %bf.load284 = load i96, ptr %16, align 4
  %bf.lshr285 = lshr i96 %bf.load284, 72
  %65 = trunc i96 %bf.lshr285 to i32
  %bf.cast287 = and i32 %65, 255
  %add288 = add nsw i32 %sub39, %bf.cast287
  %shl289 = shl nsw i32 %add288, 16
  %or290 = or i32 %and283, %shl289
  %or291 = or i32 %or290, 514
  %arrayidx292 = getelementptr i32, ptr %timing, i32 7
  %66 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or291, ptr %arrayidx292, align 4
  %and293 = and i32 %15, -256
  %arrayidx294 = getelementptr i32, ptr %timing, i32 8
  %67 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and293, ptr %arrayidx294, align 4
  %68 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %69, label %sw.epilog.do.body_crit_edge [
    i32 5, label %sw.epilog.sw.bb297_crit_edge
    i32 8, label %sw.epilog.sw.bb297_crit_edge16
  ]

sw.epilog.sw.bb297_crit_edge16:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

sw.epilog.sw.bb297_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb297:                                         ; preds = %sw.epilog.sw.bb297_crit_edge, %sw.epilog.sw.bb297_crit_edge16
  %and298 = and i32 %15, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %and298)
  %cmp300.not = icmp ult i32 %and35, %and298
  br i1 %cmp300.not, label %sw.bb297.do.body_crit_edge, label %if.then

sw.bb297.do.body_crit_edge:                       ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 12)
  %bf.load302 = load i96, ptr %16, align 4
  %bf.lshr303 = lshr i96 %bf.load302, 72
  %72 = trunc i96 %bf.lshr303 to i32
  %bf.cast305 = and i32 %72, 255
  %or307 = or i32 %bf.cast305, %and293
  %73 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or307, ptr %arrayidx294, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %sw.bb297.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %74 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp309 = icmp ugt i32 %75, 3
  br i1 %cmp309, label %if.end318, label %do.body.if.end355_crit_edge

do.body.if.end355_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end355

if.end318:                                        ; preds = %do.body
  %76 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %or59, i32 noundef %or107, i32 noundef %or132, i32 noundef %or154) #12
  %80 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp324 = icmp ugt i32 %.pr, 3
  br i1 %cmp324, label %if.end338, label %if.end318.if.end355_crit_edge

if.end318.if.end355_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end355

if.end338:                                        ; preds = %if.end318
  %81 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device3, align 4
  %dev331 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev331 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev331, align 8
  %85 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx178, align 4
  %87 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx238, align 4
  %89 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx282, align 4
  %91 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx292, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92) #12
  %93 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr14)
  %cmp344 = icmp ugt i32 %.pr14, 3
  br i1 %cmp344, label %do.end349, label %if.end338.if.end355_crit_edge

if.end338.if.end355_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end355

do.end349:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device3, align 4
  %dev351 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev351 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev351, align 8
  %98 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx294, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %99) #12
  br label %if.end355

if.end355:                                        ; preds = %do.end349, %if.end338.if.end355_crit_edge, %if.end318.if.end355_crit_edge, %do.body.if.end355_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sddr2_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramfuc_mask(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %sequence2.i = getelementptr inbounds %struct.ramfuc, ptr %ram, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %entry.ramfuc_rd32.exit_crit_edge, label %if.then.i

entry.ramfuc_rd32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i = getelementptr inbounds %struct.ramfuc, ptr %ram, i32 0, i32 1
  %4 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 2
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %entry.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 5
  %14 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i, align 4
  %neg = xor i32 %mask, -1
  %and = and i32 %15, %neg
  %or = or i32 %and, %data
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp.not = icmp eq i32 %15, %or
  br i1 %cmp.not, label %lor.lhs.false, label %ramfuc_rd32.exit.if.then_crit_edge

ramfuc_rd32.exit.if.then_crit_edge:               ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %ramfuc_rd32.exit
  %force = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 1
  %16 = ptrtoint ptr %force to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %ramfuc_rd32.exit.if.then_crit_edge
  %18 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence2.i, align 4
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reg, align 4
  %21 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %data3.i, align 4
  %mask3.i = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 4
  %22 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not16.i = icmp eq i32 %23, 0
  br i1 %cmp.not16.i, label %if.then.ramfuc_wr32.exit_crit_edge, label %for.body.lr.ph.i

if.then.ramfuc_wr32.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %addr.i1 = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 2
  %stride.i = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %23, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i2

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i2:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ram, align 4
  %26 = ptrtoint ptr %addr.i1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i1, align 4
  %add.i = add i32 %27, %off.018.i
  %28 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data3.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %25, i32 noundef %add.i, i32 noundef %29) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i2, %for.body.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %31, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i3 = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i3, label %if.end.i.ramfuc_wr32.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.ramfuc_wr32.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

ramfuc_wr32.exit:                                 ; preds = %if.end.i.ramfuc_wr32.exit_crit_edge, %if.then.ramfuc_wr32.exit_crit_edge
  %force4 = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 1
  %32 = ptrtoint ptr %force4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %force4, align 4
  br label %if.end

if.end:                                           ; preds = %ramfuc_wr32.exit, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gt215_ram_lock_pll(ptr noundef %fuc, ptr nocapture noundef readonly %mclk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %r_0x004004 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 5
  %pll = getelementptr inbounds %struct.gt215_clk_info, ptr %mclk, i32 0, i32 1
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll, align 4
  %sequence.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %2 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence.i, align 4
  %4 = ptrtoint ptr %r_0x004004 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %r_0x004004, align 4
  %data2.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %data2.i, align 4
  %mask3.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not16.i = icmp eq i32 %7, 0
  br i1 %cmp.not16.i, label %entry.ramfuc_wr32.exit_crit_edge, label %for.body.lr.ph.i

entry.ramfuc_wr32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %addr.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 5, i32 2
  %stride.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 5, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fuc, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %11, %off.018.i
  %12 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data2.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %9, i32 noundef %add.i, i32 noundef %13) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %15, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i, label %if.end.i.ramfuc_wr32.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.ramfuc_wr32.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

ramfuc_wr32.exit:                                 ; preds = %if.end.i.ramfuc_wr32.exit_crit_edge, %entry.ramfuc_wr32.exit_crit_edge
  %r_0x004000 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4
  %16 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_0x004000, align 4
  %18 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i.i = icmp eq i32 %17, %19
  br i1 %cmp.not.i.i, label %ramfuc_wr32.exit.ramfuc_rd32.exit.i_crit_edge, label %if.then.i.i

ramfuc_wr32.exit.ramfuc_rd32.exit.i_crit_edge:    ; preds = %ramfuc_wr32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i

if.then.i.i:                                      ; preds = %ramfuc_wr32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %20 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 5
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data.i.i, align 4
  br label %ramfuc_rd32.exit.i

ramfuc_rd32.exit.i:                               ; preds = %if.then.i.i, %ramfuc_wr32.exit.ramfuc_rd32.exit.i_crit_edge
  %data3.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data3.i.i, align 4
  %or.i = or i32 %31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %or.i)
  %cmp.not.i18 = icmp eq i32 %31, %or.i
  br i1 %cmp.not.i18, label %lor.lhs.false.i, label %ramfuc_rd32.exit.i.if.then.i20_crit_edge

ramfuc_rd32.exit.i.if.then.i20_crit_edge:         ; preds = %ramfuc_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

lor.lhs.false.i:                                  ; preds = %ramfuc_rd32.exit.i
  %force.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %force.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i19 = icmp eq i8 %33, 0
  br i1 %tobool.not.i19, label %lor.lhs.false.i.ramfuc_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i20_crit_edge

lor.lhs.false.i.if.then.i20_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

lor.lhs.false.i.ramfuc_mask.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit

if.then.i20:                                      ; preds = %lor.lhs.false.i.if.then.i20_crit_edge, %ramfuc_rd32.exit.i.if.then.i20_crit_edge
  %34 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sequence.i, align 4
  %36 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %r_0x004000, align 4
  %37 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i, ptr %data3.i.i, align 4
  %mask3.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not16.i.i = icmp eq i32 %39, 0
  br i1 %cmp.not16.i.i, label %if.then.i20.ramfuc_wr32.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i20.ramfuc_wr32.exit.i_crit_edge:         ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i20
  %addr.i1.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %stride.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %39, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fuc, align 4
  %42 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %43, %off.018.i.i
  %44 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %41, i32 noundef %add.i.i, i32 noundef %45) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %46 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %47, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.ramfuc_wr32.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

ramfuc_wr32.exit.i:                               ; preds = %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, %if.then.i20.ramfuc_wr32.exit.i_crit_edge
  %force4.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %force4.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %force4.i, align 4
  br label %ramfuc_mask.exit

ramfuc_mask.exit:                                 ; preds = %ramfuc_wr32.exit.i, %lor.lhs.false.i.ramfuc_mask.exit_crit_edge
  %49 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %r_0x004000, align 4
  %51 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.not.i.i23 = icmp eq i32 %50, %52
  br i1 %cmp.not.i.i23, label %ramfuc_mask.exit.ramfuc_rd32.exit.i34_crit_edge, label %if.then.i.i30

ramfuc_mask.exit.ramfuc_rd32.exit.i34_crit_edge:  ; preds = %ramfuc_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i34

if.then.i.i30:                                    ; preds = %ramfuc_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i24 = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %53 = ptrtoint ptr %fb.i.i24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb.i.i24, align 4
  %device1.i.i25 = getelementptr inbounds %struct.nvkm_fb, ptr %54, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %device1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device1.i.i25, align 4
  %pri.i.i26 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %pri.i.i26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i.i26, align 4
  %addr.i.i27 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %addr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %58, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %62 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %data3.i.i, align 4
  br label %ramfuc_rd32.exit.i34

ramfuc_rd32.exit.i34:                             ; preds = %if.then.i.i30, %ramfuc_mask.exit.ramfuc_rd32.exit.i34_crit_edge
  %63 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data3.i.i, align 4
  %and.i32 = and i32 %64, -17
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %and.i32)
  %cmp.not.i33 = icmp eq i32 %64, %and.i32
  br i1 %cmp.not.i33, label %lor.lhs.false.i37, label %ramfuc_rd32.exit.i34.if.then.i40_crit_edge

ramfuc_rd32.exit.i34.if.then.i40_crit_edge:       ; preds = %ramfuc_rd32.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i40

lor.lhs.false.i37:                                ; preds = %ramfuc_rd32.exit.i34
  %force.i35 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %force.i35 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %force.i35, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i36 = icmp eq i8 %66, 0
  br i1 %tobool.not.i36, label %lor.lhs.false.i37.ramfuc_mask.exit58_crit_edge, label %lor.lhs.false.i37.if.then.i40_crit_edge

lor.lhs.false.i37.if.then.i40_crit_edge:          ; preds = %lor.lhs.false.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i40

lor.lhs.false.i37.ramfuc_mask.exit58_crit_edge:   ; preds = %lor.lhs.false.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit58

if.then.i40:                                      ; preds = %lor.lhs.false.i37.if.then.i40_crit_edge, %ramfuc_rd32.exit.i34.if.then.i40_crit_edge
  %67 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sequence.i, align 4
  %69 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %r_0x004000, align 4
  %70 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.i32, ptr %data3.i.i, align 4
  %mask3.i.i38 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %mask3.i.i38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask3.i.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not16.i.i39 = icmp eq i32 %72, 0
  br i1 %cmp.not16.i.i39, label %if.then.i40.ramfuc_wr32.exit.i56_crit_edge, label %for.body.lr.ph.i.i43

if.then.i40.ramfuc_wr32.exit.i56_crit_edge:       ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i56

for.body.lr.ph.i.i43:                             ; preds = %if.then.i40
  %addr.i1.i41 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %stride.i.i42 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 3
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %if.end.i.i54.for.body.i.i48_crit_edge, %for.body.lr.ph.i.i43
  %off.018.i.i44 = phi i32 [ 0, %for.body.lr.ph.i.i43 ], [ %add5.i.i51, %if.end.i.i54.for.body.i.i48_crit_edge ]
  %mask.017.i.i45 = phi i32 [ %72, %for.body.lr.ph.i.i43 ], [ %shr.i.i52, %if.end.i.i54.for.body.i.i48_crit_edge ]
  %and.i.i46 = and i32 %mask.017.i.i45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %tobool.not.i.i47, label %for.body.i.i48.if.end.i.i54_crit_edge, label %if.then.i2.i50

for.body.i.i48.if.end.i.i54_crit_edge:            ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i54

if.then.i2.i50:                                   ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fuc, align 4
  %75 = ptrtoint ptr %addr.i1.i41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr.i1.i41, align 4
  %add.i.i49 = add i32 %76, %off.018.i.i44
  %77 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %74, i32 noundef %add.i.i49, i32 noundef %78) #8
  br label %if.end.i.i54

if.end.i.i54:                                     ; preds = %if.then.i2.i50, %for.body.i.i48.if.end.i.i54_crit_edge
  %79 = ptrtoint ptr %stride.i.i42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stride.i.i42, align 4
  %add5.i.i51 = add i32 %80, %off.018.i.i44
  %shr.i.i52 = lshr i32 %mask.017.i.i45, 1
  %cmp.not.i3.i53 = icmp ult i32 %mask.017.i.i45, 2
  br i1 %cmp.not.i3.i53, label %if.end.i.i54.ramfuc_wr32.exit.i56_crit_edge, label %if.end.i.i54.for.body.i.i48_crit_edge

if.end.i.i54.for.body.i.i48_crit_edge:            ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i48

if.end.i.i54.ramfuc_wr32.exit.i56_crit_edge:      ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i56

ramfuc_wr32.exit.i56:                             ; preds = %if.end.i.i54.ramfuc_wr32.exit.i56_crit_edge, %if.then.i40.ramfuc_wr32.exit.i56_crit_edge
  %force4.i55 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %force4.i55 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %force4.i55, align 4
  br label %ramfuc_mask.exit58

ramfuc_mask.exit58:                               ; preds = %ramfuc_wr32.exit.i56, %lor.lhs.false.i37.ramfuc_mask.exit58_crit_edge
  %82 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_wait(ptr noundef %83, i32 noundef 16384, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #8
  %84 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %r_0x004000, align 4
  %86 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp.not.i.i60 = icmp eq i32 %85, %87
  br i1 %cmp.not.i.i60, label %ramfuc_mask.exit58.ramfuc_rd32.exit.i72_crit_edge, label %if.then.i.i67

ramfuc_mask.exit58.ramfuc_rd32.exit.i72_crit_edge: ; preds = %ramfuc_mask.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i72

if.then.i.i67:                                    ; preds = %ramfuc_mask.exit58
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i61 = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %88 = ptrtoint ptr %fb.i.i61 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fb.i.i61, align 4
  %device1.i.i62 = getelementptr inbounds %struct.nvkm_fb, ptr %89, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %device1.i.i62 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device1.i.i62, align 4
  %pri.i.i63 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %pri.i.i63 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i.i63, align 4
  %addr.i.i64 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %94 = ptrtoint ptr %addr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i.i64, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %93, i32 %95
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %97 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %data3.i.i, align 4
  br label %ramfuc_rd32.exit.i72

ramfuc_rd32.exit.i72:                             ; preds = %if.then.i.i67, %ramfuc_mask.exit58.ramfuc_rd32.exit.i72_crit_edge
  %98 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data3.i.i, align 4
  %or.i70 = or i32 %99, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %or.i70)
  %cmp.not.i71 = icmp eq i32 %99, %or.i70
  br i1 %cmp.not.i71, label %lor.lhs.false.i75, label %ramfuc_rd32.exit.i72.if.then.i78_crit_edge

ramfuc_rd32.exit.i72.if.then.i78_crit_edge:       ; preds = %ramfuc_rd32.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

lor.lhs.false.i75:                                ; preds = %ramfuc_rd32.exit.i72
  %force.i73 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %force.i73 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %force.i73, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i74 = icmp eq i8 %101, 0
  br i1 %tobool.not.i74, label %lor.lhs.false.i75.ramfuc_mask.exit96_crit_edge, label %lor.lhs.false.i75.if.then.i78_crit_edge

lor.lhs.false.i75.if.then.i78_crit_edge:          ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

lor.lhs.false.i75.ramfuc_mask.exit96_crit_edge:   ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit96

if.then.i78:                                      ; preds = %lor.lhs.false.i75.if.then.i78_crit_edge, %ramfuc_rd32.exit.i72.if.then.i78_crit_edge
  %102 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sequence.i, align 4
  %104 = ptrtoint ptr %r_0x004000 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %r_0x004000, align 4
  %105 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or.i70, ptr %data3.i.i, align 4
  %mask3.i.i76 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 4
  %106 = ptrtoint ptr %mask3.i.i76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mask3.i.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.not16.i.i77 = icmp eq i32 %107, 0
  br i1 %cmp.not16.i.i77, label %if.then.i78.ramfuc_wr32.exit.i94_crit_edge, label %for.body.lr.ph.i.i81

if.then.i78.ramfuc_wr32.exit.i94_crit_edge:       ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i94

for.body.lr.ph.i.i81:                             ; preds = %if.then.i78
  %addr.i1.i79 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 2
  %stride.i.i80 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 3
  br label %for.body.i.i86

for.body.i.i86:                                   ; preds = %if.end.i.i92.for.body.i.i86_crit_edge, %for.body.lr.ph.i.i81
  %off.018.i.i82 = phi i32 [ 0, %for.body.lr.ph.i.i81 ], [ %add5.i.i89, %if.end.i.i92.for.body.i.i86_crit_edge ]
  %mask.017.i.i83 = phi i32 [ %107, %for.body.lr.ph.i.i81 ], [ %shr.i.i90, %if.end.i.i92.for.body.i.i86_crit_edge ]
  %and.i.i84 = and i32 %mask.017.i.i83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i85, label %for.body.i.i86.if.end.i.i92_crit_edge, label %if.then.i2.i88

for.body.i.i86.if.end.i.i92_crit_edge:            ; preds = %for.body.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i92

if.then.i2.i88:                                   ; preds = %for.body.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fuc, align 4
  %110 = ptrtoint ptr %addr.i1.i79 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i1.i79, align 4
  %add.i.i87 = add i32 %111, %off.018.i.i82
  %112 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %109, i32 noundef %add.i.i87, i32 noundef %113) #8
  br label %if.end.i.i92

if.end.i.i92:                                     ; preds = %if.then.i2.i88, %for.body.i.i86.if.end.i.i92_crit_edge
  %114 = ptrtoint ptr %stride.i.i80 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %stride.i.i80, align 4
  %add5.i.i89 = add i32 %115, %off.018.i.i82
  %shr.i.i90 = lshr i32 %mask.017.i.i83, 1
  %cmp.not.i3.i91 = icmp ult i32 %mask.017.i.i83, 2
  br i1 %cmp.not.i3.i91, label %if.end.i.i92.ramfuc_wr32.exit.i94_crit_edge, label %if.end.i.i92.for.body.i.i86_crit_edge

if.end.i.i92.for.body.i.i86_crit_edge:            ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i86

if.end.i.i92.ramfuc_wr32.exit.i94_crit_edge:      ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i94

ramfuc_wr32.exit.i94:                             ; preds = %if.end.i.i92.ramfuc_wr32.exit.i94_crit_edge, %if.then.i78.ramfuc_wr32.exit.i94_crit_edge
  %force4.i93 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %force4.i93 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %force4.i93, align 4
  br label %ramfuc_mask.exit96

ramfuc_mask.exit96:                               ; preds = %ramfuc_wr32.exit.i94, %lor.lhs.false.i75.ramfuc_mask.exit96_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramfuc_wr32(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sequence = getelementptr inbounds %struct.ramfuc, ptr %ram, i32 0, i32 2
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sequence, align 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %reg, align 4
  %data2 = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 5
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %data, ptr %data2, align 4
  %mask3 = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 4
  %4 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not16 = icmp eq i32 %5, 0
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 2
  %stride = getelementptr inbounds %struct.ramfuc_reg, ptr %reg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %off.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %if.end.for.body_crit_edge ]
  %mask.017 = phi i32 [ %5, %for.body.lr.ph ], [ %shr, %if.end.for.body_crit_edge ]
  %and = and i32 %mask.017, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ram, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %add = add i32 %9, %off.018
  %10 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data2, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %7, i32 noundef %add, i32 noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stride, align 4
  %add5 = add i32 %13, %off.018
  %shr = lshr i32 %mask.017, 1
  %cmp.not = icmp ult i32 %mask.017, 2
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr3_dll_disable(ptr nocapture noundef %fuc, ptr nocapture noundef readonly %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sequence2.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %entry.ramfuc_rd32.exit_crit_edge, label %if.then.i

entry.ramfuc_rd32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %4 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 2
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %entry.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 5
  %14 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %ramfuc_rd32.exit.if.end_crit_edge

ramfuc_rd32.exit.if.end_crit_edge:                ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ramfuc_rd32.exit
  %r_0x1002d4 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 15
  %16 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sequence2.i, align 4
  %18 = ptrtoint ptr %r_0x1002d4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %r_0x1002d4, align 4
  %data2.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 15, i32 5
  %19 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %data2.i, align 4
  %mask3.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 15, i32 4
  %20 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not16.i = icmp eq i32 %21, 0
  br i1 %cmp.not16.i, label %if.then.ramfuc_wr32.exit_crit_edge, label %for.body.lr.ph.i

if.then.ramfuc_wr32.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %addr.i13 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 15, i32 2
  %stride.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 15, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %21, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i14

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i14:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fuc, align 4
  %24 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i13, align 4
  %add.i = add i32 %25, %off.018.i
  %26 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data2.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %23, i32 noundef %add.i, i32 noundef %27) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i14, %for.body.i.if.end.i_crit_edge
  %28 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %29, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i15 = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i15, label %if.end.i.ramfuc_wr32.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.ramfuc_wr32.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

ramfuc_wr32.exit:                                 ; preds = %if.end.i.ramfuc_wr32.exit_crit_edge, %if.then.ramfuc_wr32.exit_crit_edge
  %arrayidx5 = getelementptr i32, ptr %mr, i32 1
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5, align 4
  %32 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sequence2.i, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %data3.i, align 4
  %mask3.i18 = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 4
  %36 = ptrtoint ptr %mask3.i18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask3.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not16.i19 = icmp eq i32 %37, 0
  br i1 %cmp.not16.i19, label %ramfuc_wr32.exit.ramfuc_wr32.exit34_crit_edge, label %for.body.lr.ph.i22

ramfuc_wr32.exit.ramfuc_wr32.exit34_crit_edge:    ; preds = %ramfuc_wr32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit34

for.body.lr.ph.i22:                               ; preds = %ramfuc_wr32.exit
  %addr.i20 = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 2
  %stride.i21 = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 3
  br label %for.body.i27

for.body.i27:                                     ; preds = %if.end.i33.for.body.i27_crit_edge, %for.body.lr.ph.i22
  %off.018.i23 = phi i32 [ 0, %for.body.lr.ph.i22 ], [ %add5.i30, %if.end.i33.for.body.i27_crit_edge ]
  %mask.017.i24 = phi i32 [ %37, %for.body.lr.ph.i22 ], [ %shr.i31, %if.end.i33.for.body.i27_crit_edge ]
  %and.i25 = and i32 %mask.017.i24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %for.body.i27.if.end.i33_crit_edge, label %if.then.i29

for.body.i27.if.end.i33_crit_edge:                ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i33

if.then.i29:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fuc, align 4
  %40 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i20, align 4
  %add.i28 = add i32 %41, %off.018.i23
  %42 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data3.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %39, i32 noundef %add.i28, i32 noundef %43) #8
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i29, %for.body.i27.if.end.i33_crit_edge
  %44 = ptrtoint ptr %stride.i21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stride.i21, align 4
  %add5.i30 = add i32 %45, %off.018.i23
  %shr.i31 = lshr i32 %mask.017.i24, 1
  %cmp.not.i32 = icmp ult i32 %mask.017.i24, 2
  br i1 %cmp.not.i32, label %if.end.i33.ramfuc_wr32.exit34_crit_edge, label %if.end.i33.for.body.i27_crit_edge

if.end.i33.for.body.i27_crit_edge:                ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i27

if.end.i33.ramfuc_wr32.exit34_crit_edge:          ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit34

ramfuc_wr32.exit34:                               ; preds = %if.end.i33.ramfuc_wr32.exit34_crit_edge, %ramfuc_wr32.exit.ramfuc_wr32.exit34_crit_edge
  %46 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %47, i32 noundef 1000) #8
  br label %if.end

if.end:                                           ; preds = %ramfuc_wr32.exit34, %ramfuc_rd32.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_gddr3_dll_disable(ptr nocapture noundef %fuc, ptr nocapture noundef readonly %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sequence2.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %entry.ramfuc_rd32.exit_crit_edge, label %if.then.i

entry.ramfuc_rd32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %4 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 2
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %entry.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 5
  %14 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i, align 4
  %and = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %ramfuc_rd32.exit.if.end_crit_edge

ramfuc_rd32.exit.if.end_crit_edge:                ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ramfuc_rd32.exit
  %arrayidx4 = getelementptr i32, ptr %mr, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %18 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence2.i, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %data3.i, align 4
  %mask3.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 4
  %22 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not16.i = icmp eq i32 %23, 0
  br i1 %cmp.not16.i, label %if.then.ramfuc_wr32.exit_crit_edge, label %for.body.lr.ph.i

if.then.ramfuc_wr32.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %addr.i10 = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 2
  %stride.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %23, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i11

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i11:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fuc, align 4
  %26 = ptrtoint ptr %addr.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i10, align 4
  %add.i = add i32 %27, %off.018.i
  %28 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data3.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %25, i32 noundef %add.i, i32 noundef %29) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i11, %for.body.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %31, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i12 = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i12, label %if.end.i.ramfuc_wr32.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.ramfuc_wr32.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

ramfuc_wr32.exit:                                 ; preds = %if.end.i.ramfuc_wr32.exit_crit_edge, %if.then.ramfuc_wr32.exit_crit_edge
  %32 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %33, i32 noundef 1000) #8
  br label %if.end

if.end:                                           ; preds = %ramfuc_wr32.exit, %ramfuc_rd32.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gt215_ram_gpio(ptr nocapture noundef %fuc, i8 noundef zeroext %tag, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %gpio1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio1, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #8
  %6 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 1
  %8 = call ptr @memset(ptr %func, i32 255, i32 5)
  %call = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %tag, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %val)
  %cmp.not = icmp eq i32 %call, %val
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = call i32 @nvkm_gpio_find(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %tag, i8 noundef zeroext -1, ptr noundef nonnull %func) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %conv = zext i8 %10 to i32
  %11 = lshr i32 %conv, 3
  %and = shl nuw nsw i32 %conv, 2
  %shl = and i32 %and, 28
  %arrayidx = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %sequence2.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %14 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %if.end.ramfuc_rd32.exit_crit_edge, label %if.then.i

if.end.ramfuc_rd32.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 5
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %if.end.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 5
  %26 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data3.i, align 4
  %shl8 = shl nuw i32 8, %shl
  %and9 = and i32 %27, %shl8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool12.not = icmp eq i32 %val, 0
  %lnot.ext = zext i1 %tobool12.not to i32
  %val.addr.0 = select i1 %tobool10.not, i32 %val, i32 %lnot.ext
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0)
  %tobool19.not = icmp eq i32 %val.addr.0, 0
  %lnot.ext21 = zext i1 %tobool19.not to i32
  %val.addr.1 = select i1 %tobool17.not, i32 %lnot.ext21, i32 %val.addr.0
  %shl26 = shl nuw nsw i32 3, %shl
  %or = or i32 %val.addr.1, 2
  %shl27 = shl i32 %or, %shl
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not.i.i = icmp eq i32 %32, %34
  br i1 %cmp.not.i.i, label %ramfuc_rd32.exit.ramfuc_rd32.exit.i_crit_edge, label %if.then.i.i

ramfuc_rd32.exit.ramfuc_rd32.exit.i_crit_edge:    ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i

if.then.i.i:                                      ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fb, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %36, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 2
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %42
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %44 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %data3.i, align 4
  br label %ramfuc_rd32.exit.i

ramfuc_rd32.exit.i:                               ; preds = %if.then.i.i, %ramfuc_rd32.exit.ramfuc_rd32.exit.i_crit_edge
  %45 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data3.i, align 4
  %neg.i = xor i32 %shl26, -1
  %and.i = and i32 %46, %neg.i
  %or.i = or i32 %and.i, %shl27
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %or.i)
  %cmp.not.i49 = icmp eq i32 %46, %or.i
  br i1 %cmp.not.i49, label %lor.lhs.false.i, label %ramfuc_rd32.exit.i.if.then.i50_crit_edge

ramfuc_rd32.exit.i.if.then.i50_crit_edge:         ; preds = %ramfuc_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i50

lor.lhs.false.i:                                  ; preds = %ramfuc_rd32.exit.i
  %force.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 1
  %47 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %force.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ramfuc_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i50_crit_edge

lor.lhs.false.i.if.then.i50_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i50

lor.lhs.false.i.ramfuc_mask.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit

if.then.i50:                                      ; preds = %lor.lhs.false.i.if.then.i50_crit_edge, %ramfuc_rd32.exit.i.if.then.i50_crit_edge
  %49 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sequence2.i, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i, ptr %data3.i, align 4
  %mask3.i.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 4
  %53 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not16.i.i = icmp eq i32 %54, 0
  br i1 %cmp.not16.i.i, label %if.then.i50.ramfuc_wr32.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i50.ramfuc_wr32.exit.i_crit_edge:         ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i50
  %addr.i1.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 2
  %stride.i.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %54, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fuc, align 4
  %57 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %58, %off.018.i.i
  %59 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data3.i, align 4
  call void @nvkm_memx_wr32(ptr noundef %56, i32 noundef %add.i.i, i32 noundef %60) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %61 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %62, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.ramfuc_wr32.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

ramfuc_wr32.exit.i:                               ; preds = %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, %if.then.i50.ramfuc_wr32.exit.i_crit_edge
  %force4.i = getelementptr %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 37, i32 %11, i32 1
  %63 = ptrtoint ptr %force4.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %force4.i, align 4
  br label %ramfuc_mask.exit

ramfuc_mask.exit:                                 ; preds = %ramfuc_wr32.exit.i, %lor.lhs.false.i.ramfuc_mask.exit_crit_edge
  %64 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fuc, align 4
  call void @nvkm_memx_nsec(ptr noundef %65, i32 noundef 20000) #8
  br label %cleanup

cleanup:                                          ; preds = %ramfuc_mask.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr2_dll_reset(ptr nocapture noundef %fuc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %r_mr = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36
  %0 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_mr, align 4
  %sequence2.i.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i.i, label %entry.ramfuc_rd32.exit.i_crit_edge, label %if.then.i.i

entry.ramfuc_rd32.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %4 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 2
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %data.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 5
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i.i, align 4
  br label %ramfuc_rd32.exit.i

ramfuc_rd32.exit.i:                               ; preds = %if.then.i.i, %entry.ramfuc_rd32.exit.i_crit_edge
  %data3.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 5
  %14 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i.i, align 4
  %or.i = or i32 %15, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or.i)
  %cmp.not.i = icmp eq i32 %15, %or.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %ramfuc_rd32.exit.i.if.then.i_crit_edge

ramfuc_rd32.exit.i.if.then.i_crit_edge:           ; preds = %ramfuc_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %ramfuc_rd32.exit.i
  %force.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 1
  %16 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ramfuc_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.ramfuc_mask.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %ramfuc_rd32.exit.i.if.then.i_crit_edge
  %18 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence2.i.i, align 4
  %20 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %r_mr, align 4
  %21 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %data3.i.i, align 4
  %mask3.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 4
  %22 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not16.i.i = icmp eq i32 %23, 0
  br i1 %cmp.not16.i.i, label %if.then.i.ramfuc_wr32.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.ramfuc_wr32.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %addr.i1.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 2
  %stride.i.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %23, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fuc, align 4
  %26 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %27, %off.018.i.i
  %28 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %25, i32 noundef %add.i.i, i32 noundef %29) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %31, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.ramfuc_wr32.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i

ramfuc_wr32.exit.i:                               ; preds = %if.end.i.i.ramfuc_wr32.exit.i_crit_edge, %if.then.i.ramfuc_wr32.exit.i_crit_edge
  %force4.i = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 1
  %32 = ptrtoint ptr %force4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %force4.i, align 4
  br label %ramfuc_mask.exit

ramfuc_mask.exit:                                 ; preds = %ramfuc_wr32.exit.i, %lor.lhs.false.i.ramfuc_mask.exit_crit_edge
  %33 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %34, i32 noundef 1000) #8
  %35 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %r_mr, align 4
  %37 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not.i.i13 = icmp eq i32 %36, %38
  br i1 %cmp.not.i.i13, label %ramfuc_mask.exit.ramfuc_rd32.exit.i24_crit_edge, label %if.then.i.i20

ramfuc_mask.exit.ramfuc_rd32.exit.i24_crit_edge:  ; preds = %ramfuc_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit.i24

if.then.i.i20:                                    ; preds = %ramfuc_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fb.i.i14 = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 1
  %39 = ptrtoint ptr %fb.i.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fb.i.i14, align 4
  %device1.i.i15 = getelementptr inbounds %struct.nvkm_fb, ptr %40, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %device1.i.i15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device1.i.i15, align 4
  %pri.i.i16 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %pri.i.i16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i.i16, align 4
  %addr.i.i17 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 2
  %45 = ptrtoint ptr %addr.i.i17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i17, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %44, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %48 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %data3.i.i, align 4
  br label %ramfuc_rd32.exit.i24

ramfuc_rd32.exit.i24:                             ; preds = %if.then.i.i20, %ramfuc_mask.exit.ramfuc_rd32.exit.i24_crit_edge
  %49 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data3.i.i, align 4
  %and.i22 = and i32 %50, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %and.i22)
  %cmp.not.i23 = icmp eq i32 %50, %and.i22
  br i1 %cmp.not.i23, label %lor.lhs.false.i27, label %ramfuc_rd32.exit.i24.if.then.i30_crit_edge

ramfuc_rd32.exit.i24.if.then.i30_crit_edge:       ; preds = %ramfuc_rd32.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i30

lor.lhs.false.i27:                                ; preds = %ramfuc_rd32.exit.i24
  %force.i25 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 1
  %51 = ptrtoint ptr %force.i25 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %force.i25, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i26 = icmp eq i8 %52, 0
  br i1 %tobool.not.i26, label %lor.lhs.false.i27.ramfuc_mask.exit47_crit_edge, label %lor.lhs.false.i27.if.then.i30_crit_edge

lor.lhs.false.i27.if.then.i30_crit_edge:          ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i30

lor.lhs.false.i27.ramfuc_mask.exit47_crit_edge:   ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_mask.exit47

if.then.i30:                                      ; preds = %lor.lhs.false.i27.if.then.i30_crit_edge, %ramfuc_rd32.exit.i24.if.then.i30_crit_edge
  %53 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sequence2.i.i, align 4
  %55 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %r_mr, align 4
  %56 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i22, ptr %data3.i.i, align 4
  %mask3.i.i28 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 4
  %57 = ptrtoint ptr %mask3.i.i28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask3.i.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not16.i.i29 = icmp eq i32 %58, 0
  br i1 %cmp.not16.i.i29, label %if.then.i30.ramfuc_wr32.exit.i46_crit_edge, label %for.body.lr.ph.i.i33

if.then.i30.ramfuc_wr32.exit.i46_crit_edge:       ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i46

for.body.lr.ph.i.i33:                             ; preds = %if.then.i30
  %addr.i1.i31 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 2
  %stride.i.i32 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 3
  br label %for.body.i.i38

for.body.i.i38:                                   ; preds = %if.end.i.i44.for.body.i.i38_crit_edge, %for.body.lr.ph.i.i33
  %off.018.i.i34 = phi i32 [ 0, %for.body.lr.ph.i.i33 ], [ %add5.i.i41, %if.end.i.i44.for.body.i.i38_crit_edge ]
  %mask.017.i.i35 = phi i32 [ %58, %for.body.lr.ph.i.i33 ], [ %shr.i.i42, %if.end.i.i44.for.body.i.i38_crit_edge ]
  %and.i.i36 = and i32 %mask.017.i.i35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %for.body.i.i38.if.end.i.i44_crit_edge, label %if.then.i2.i40

for.body.i.i38.if.end.i.i44_crit_edge:            ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i44

if.then.i2.i40:                                   ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fuc, align 4
  %61 = ptrtoint ptr %addr.i1.i31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i1.i31, align 4
  %add.i.i39 = add i32 %62, %off.018.i.i34
  %63 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %60, i32 noundef %add.i.i39, i32 noundef %64) #8
  br label %if.end.i.i44

if.end.i.i44:                                     ; preds = %if.then.i2.i40, %for.body.i.i38.if.end.i.i44_crit_edge
  %65 = ptrtoint ptr %stride.i.i32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stride.i.i32, align 4
  %add5.i.i41 = add i32 %66, %off.018.i.i34
  %shr.i.i42 = lshr i32 %mask.017.i.i35, 1
  %cmp.not.i3.i43 = icmp ult i32 %mask.017.i.i35, 2
  br i1 %cmp.not.i3.i43, label %if.end.i.i44.ramfuc_wr32.exit.i46_crit_edge, label %if.end.i.i44.for.body.i.i38_crit_edge

if.end.i.i44.for.body.i.i38_crit_edge:            ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i38

if.end.i.i44.ramfuc_wr32.exit.i46_crit_edge:      ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit.i46

ramfuc_wr32.exit.i46:                             ; preds = %if.end.i.i44.ramfuc_wr32.exit.i46_crit_edge, %if.then.i30.ramfuc_wr32.exit.i46_crit_edge
  %force4.i45 = getelementptr inbounds %struct.gt215_ramfuc, ptr %fuc, i32 0, i32 36, i32 0, i32 1
  %67 = ptrtoint ptr %force4.i45 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %force4.i45, align 4
  br label %ramfuc_mask.exit47

ramfuc_mask.exit47:                               ; preds = %ramfuc_wr32.exit.i46, %lor.lhs.false.i27.ramfuc_mask.exit47_crit_edge
  %68 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_nsec(ptr noundef %69, i32 noundef 1000) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0205Tp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_clk_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_clk_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_train_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_unblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @gt215_ram_func, !1, !"gt215_ram_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 931, i32 1}
!2 = !{ptr @gt215_link_train_init.pattern, !3, !"pattern", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 274, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 522, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gt215_ram_calc._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gt215_ram_calc._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 529, i32 3}
!14 = !{ptr @gt215_ram_calc._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gt215_ram_calc._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 536, i32 3}
!18 = !{ptr @gt215_ram_calc._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gt215_ram_calc._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 546, i32 4}
!22 = !{ptr @gt215_ram_calc._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gt215_ram_calc._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 553, i32 3}
!26 = !{ptr @gt215_ram_calc._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gt215_ram_calc._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 170, i32 35}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 248, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gt215_link_train._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @gt215_link_train._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 251, i32 2}
!38 = !{ptr @gt215_link_train._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gt215_link_train._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 414, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gt215_ram_timing_calc._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gt215_ram_timing_calc._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 416, i32 2}
!47 = !{ptr @gt215_ram_timing_calc._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gt215_ram_timing_calc._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgt215.c", i32 418, i32 2}
!51 = !{ptr @gt215_ram_timing_calc._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @gt215_ram_timing_calc._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 2156332690}
!64 = !{i64 5419512}
!65 = !{i64 2156333118}
!66 = !{i64 5419930}
!67 = !{i64 2156333959}
!68 = !{i64 2156334361}
!69 = !{i64 2156334810}
!70 = !{i64 2156335235}
!71 = !{i64 2156335657}
!72 = !{i64 2156336082}
!73 = !{i64 2156336537}
!74 = !{i64 2156336875}
!75 = !{i64 2156337310}
!76 = !{i64 2156337745}
!77 = !{i64 2156338148}
!78 = !{i64 2156338601}
!79 = !{i64 2156338986}
!80 = !{i64 2156339371}
!81 = !{i64 2156318957}
!82 = !{i64 2156319798}
!83 = !{i64 2156320200}
!84 = !{i64 2156321073}
!85 = !{i64 2156321475}
!86 = !{i64 2156322348}
!87 = !{i64 2156322750}
!88 = !{i64 2156323195}
!89 = !{i64 2156294026}
!90 = !{i8 0, i8 2}
!91 = !{i64 2156325837}
!92 = !{i64 2156326215}
!93 = !{i64 2156327064}
!94 = !{i64 2156327442}
!95 = !{i64 2156385959}
!96 = !{i64 2156386333}
!97 = !{i64 2156387216}
!98 = !{i64 2156387590}
!99 = !{i64 2156388435}
!100 = !{i64 2156388809}
!101 = !{i64 2156389656}
!102 = !{i64 2156390034}
!103 = !{i64 2156390883}
!104 = !{i64 2156391261}
!105 = !{i64 2156339756}
!106 = !{i64 2156340141}
!107 = !{i64 2156340526}
!108 = !{i64 2156340911}
