; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.157, i32, i32, i32, i32, i32, i32, %union.anon.161, i32, i32, [11 x i32], %union.anon.165 }>
%union.anon.157 = type { %struct.anon.160 }
%struct.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i8 }
%union.anon.165 = type <{ %struct.anon.167, [12 x i8] }>
%struct.anon.167 = type { i48 }
%struct.anon.174 = type { i32, i8 }
%struct.gf100_ram = type { %struct.nvkm_ram, %struct.gf100_ramfuc, %struct.nvbios_pll, %struct.nvbios_pll }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.gf100_ramfuc = type { %struct.ramfuc, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg }
%struct.ramfuc = type { ptr, ptr, i32 }
%struct.ramfuc_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.125, %struct.anon.125 }
%struct.anon.125 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.101, %struct.anon.102, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.101 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.102 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.156, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.156 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gf100_ram_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing rammap entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gf100_ram_calc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr = internal global ptr @gf100_ram_calc._entry, section ".printk_index", align 4
@gf100_ram_calc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid ramcfg strap\0A\00", [38 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr.7 = internal global ptr @gf100_ram_calc._entry.5, section ".printk_index", align 4
@gf100_ram_calc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing ramcfg entry\0A\00", [62 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr.10 = internal global ptr @gf100_ram_calc._entry.8, section ".printk_index", align 4
@gf100_ram_calc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing timing entry\0A\00", [62 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr.13 = internal global ptr @gf100_ram_calc._entry.11, section ".printk_index", align 4
@gf100_ram_calc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unable to calc refpll\0A\00", [37 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr.16 = internal global ptr @gf100_ram_calc._entry.14, section ".printk_index", align 4
@gf100_ram_calc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gf100_ram_calc._entry_ptr.18 = internal global ptr @gf100_ram_calc._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NvMemExec\00", [22 x i8] zeroinitializer }, align 32
@gf100_ram_init.train0 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\FFU\AA3\CC\00\FF\FF\00\FF\00", [20 x i8] zeroinitializer }, align 32
@gf100_ram_init.train1 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 -1, i32 1431655765, i32 -1431655766, i32 858993459, i32 -858993460, i32 -252645136, i32 252645135, i32 16711935, i32 -16711936, i32 65535, i32 -65536], [48 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 504, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %d FBP(s)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gf100_ram_ctor\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr = internal global ptr @gf100_ram_ctor._entry, section ".printk_index", align 4
@gf100_ram_ctor._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 509, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FBP %d: %4d MiB, %d LTC(s)\0A\00", [32 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr.25 = internal global ptr @gf100_ram_ctor._entry.23, section ".printk_index", align 4
@gf100_ram_ctor._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.2, i32 514, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: FBP %d: disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr.28 = internal global ptr @gf100_ram_ctor._entry.26, section ".printk_index", align 4
@gf100_ram_ctor._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.2, i32 522, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Lower: %4lld MiB @ %010llx\0A\00", [32 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr.31 = internal global ptr @gf100_ram_ctor._entry.29, section ".printk_index", align 4
@gf100_ram_ctor._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.21, ptr @.str.2, i32 523, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Upper: %4lld MiB @ %010llx\0A\00", [32 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr.34 = internal global ptr @gf100_ram_ctor._entry.32, section ".printk_index", align 4
@gf100_ram_ctor._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.21, ptr @.str.2, i32 524, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Total: %4lld MiB\0A\00", [42 x i8] zeroinitializer }, align 32
@gf100_ram_ctor._entry_ptr.37 = internal global ptr @gf100_ram_ctor._entry.35, section ".printk_index", align 4
@gf100_ram_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: mclk refpll data not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gf100_ram_new_\00", [17 x i8] zeroinitializer }, align 32
@gf100_ram_new_._entry_ptr = internal global ptr @gf100_ram_new_._entry, section ".printk_index", align 4
@gf100_ram_new_._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 591, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: mclk pll data not found\0A\00", [35 x i8] zeroinitializer }, align 32
@gf100_ram_new_._entry_ptr.42 = internal global ptr @gf100_ram_new_._entry.40, section ".printk_index", align 4
@gf100_ram = internal constant { %struct.nvkm_ram_func, [56 x i8] } { %struct.nvkm_ram_func { i64 8589934592, ptr @gf100_ram_probe_fbp, ptr @gf100_ram_probe_fbp_amount, ptr @gf100_ram_probe_fbpa_amount, ptr null, ptr @gf100_ram_init, ptr @gf100_ram_calc, ptr @gf100_ram_prog, ptr @gf100_ram_tidy }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 150, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 157, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 163, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 173, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 218, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 233, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 411, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"train0\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 425, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"train1\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 429, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 504, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 508, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 514, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 522, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 523, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 524, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 585, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 591, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"gf100_ram\00", align 1
@___asan_gen_.155 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 657, i32 1 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @gf100_ram_calc._entry, ptr @gf100_ram_calc._entry.11, ptr @gf100_ram_calc._entry.14, ptr @gf100_ram_calc._entry.17, ptr @gf100_ram_calc._entry.5, ptr @gf100_ram_calc._entry.8, ptr @gf100_ram_calc._entry_ptr, ptr @gf100_ram_calc._entry_ptr.10, ptr @gf100_ram_calc._entry_ptr.13, ptr @gf100_ram_calc._entry_ptr.16, ptr @gf100_ram_calc._entry_ptr.18, ptr @gf100_ram_calc._entry_ptr.7, ptr @gf100_ram_ctor._entry, ptr @gf100_ram_ctor._entry.23, ptr @gf100_ram_ctor._entry.26, ptr @gf100_ram_ctor._entry.29, ptr @gf100_ram_ctor._entry.32, ptr @gf100_ram_ctor._entry.35, ptr @gf100_ram_ctor._entry_ptr, ptr @gf100_ram_ctor._entry_ptr.25, ptr @gf100_ram_ctor._entry_ptr.28, ptr @gf100_ram_ctor._entry_ptr.31, ptr @gf100_ram_ctor._entry_ptr.34, ptr @gf100_ram_ctor._entry_ptr.37, ptr @gf100_ram_new_._entry, ptr @gf100_ram_new_._entry.40, ptr @gf100_ram_new_._entry_ptr, ptr @gf100_ram_new_._entry_ptr.42, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.19, ptr @gf100_ram_init.train0, ptr @gf100_ram_init.train1, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @gf100_ram], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_calc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_init.train0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_init.train1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_ctor._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram_new_._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ram to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_calc(ptr noundef %base, i32 noundef %freq) #0 align 64 {
entry:
  %cfg = alloca %struct.nvbios_ramcfg, align 4
  %ver = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %rammap = alloca %struct.anon.174, align 8
  %ramcfg = alloca %struct.anon.174, align 8
  %timing = alloca %struct.anon.174, align 8
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fuc1 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %subdev3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %device4 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device4, align 4
  %clk5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk5, align 8
  %bios6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %bios6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios6, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %cfg) #8
  %8 = call ptr @memset(ptr %cfg, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #8
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ver, align 1, !annotation !79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #8
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %cnt, align 1, !annotation !79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #8
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %len, align 1, !annotation !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rammap) #8
  %12 = ptrtoint ptr %rammap to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %rammap, align 8, !annotation !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ramcfg) #8
  %13 = ptrtoint ptr %ramcfg to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %ramcfg, align 8, !annotation !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timing) #8
  %14 = ptrtoint ptr %timing to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %timing, align 8, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #8
  %15 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %N1, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #8
  %16 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %M1, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #8
  %17 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %P, align 4, !annotation !79
  %div7 = udiv i32 %freq, 1000
  %conv = trunc i32 %div7 to i16
  %size = getelementptr inbounds %struct.anon.174, ptr %rammap, i32 0, i32 1
  %size8 = getelementptr inbounds %struct.anon.174, ptr %ramcfg, i32 0, i32 1
  %call = call i32 @nvbios_rammapEm(ptr noundef %7, i16 noundef zeroext %conv, ptr noundef nonnull %ver, ptr noundef %size, ptr noundef nonnull %cnt, ptr noundef %size8, ptr noundef nonnull %cfg) #8
  %18 = ptrtoint ptr %rammap to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %rammap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %19 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %20)
  %cmp.not = icmp eq i8 %20, 16
  br i1 %cmp.not, label %lor.lhs.false12, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %22)
  %cmp15 = icmp ult i8 %22, 14
  br i1 %cmp15, label %lor.lhs.false12.do.body_crit_edge, label %if.end24

lor.lhs.false12.do.body_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false12.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17.not = icmp eq i32 %24, 0
  br i1 %cmp17.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device4, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false12
  %call25 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %subdev3) #8
  %29 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call25, i8 %30)
  %cmp28.not = icmp ult i8 %call25, %30
  br i1 %cmp28.not, label %if.end47, label %do.body31

do.body31:                                        ; preds = %if.end24
  %debug33 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %debug33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp34.not = icmp eq i32 %32, 0
  br i1 %cmp34.not, label %do.body31.cleanup_crit_edge, label %do.end39

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device4, align 4
  %dev41 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev41, align 8
  %name42 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef %name42) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end24
  %conv26 = zext i8 %call25 to i32
  %37 = ptrtoint ptr %rammap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rammap, align 8
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %size, align 4
  %conv50 = zext i8 %40 to i32
  %add = add i32 %38, %conv50
  %41 = ptrtoint ptr %size8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %size8, align 4
  %conv53 = zext i8 %42 to i32
  %mul = mul nuw nsw i32 %conv53, %conv26
  %add54 = add i32 %add, %mul
  %43 = ptrtoint ptr %ramcfg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add54, ptr %ramcfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add54)
  %tobool57.not = icmp eq i32 %add54, 0
  br i1 %tobool57.not, label %if.end47.do.body68_crit_edge, label %lor.lhs.false58

if.end47.do.body68_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

lor.lhs.false58:                                  ; preds = %if.end47
  %44 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %45)
  %cmp60.not = icmp ne i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %42)
  %cmp65 = icmp ult i8 %42, 14
  %or.cond863 = select i1 %cmp60.not, i1 true, i1 %cmp65
  br i1 %or.cond863, label %lor.lhs.false58.do.body68_crit_edge, label %if.end84

lor.lhs.false58.do.body68_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

do.body68:                                        ; preds = %lor.lhs.false58.do.body68_crit_edge, %if.end47.do.body68_crit_edge
  %debug70 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %debug70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp71.not = icmp eq i32 %47, 0
  br i1 %cmp71.not, label %do.body68.cleanup_crit_edge, label %do.end76

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end76:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device4, align 4
  %dev78 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev78, align 8
  %name79 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.9, ptr noundef %name79) #11
  br label %cleanup

if.end84:                                         ; preds = %lor.lhs.false58
  %add86 = add i32 %add54, 1
  %call87 = call zeroext i8 @nvbios_rd08(ptr noundef %7, i32 noundef %add86) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call87)
  %cmp89.not = icmp eq i8 %call87, -1
  br i1 %cmp89.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end84
  %conv88 = zext i8 %call87 to i32
  %size93 = getelementptr inbounds %struct.anon.174, ptr %timing, i32 0, i32 1
  %call94 = call i32 @nvbios_timingEe(ptr noundef %7, i32 noundef %conv88, ptr noundef nonnull %ver, ptr noundef %size93, ptr noundef nonnull %cnt, ptr noundef nonnull %len) #8
  %52 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call94, ptr %timing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool97.not = icmp eq i32 %call94, 0
  br i1 %tobool97.not, label %if.then91.do.body108_crit_edge, label %lor.lhs.false98

if.then91.do.body108_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

lor.lhs.false98:                                  ; preds = %if.then91
  %53 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %54)
  %cmp100.not = icmp eq i8 %54, 16
  br i1 %cmp100.not, label %lor.lhs.false102, label %lor.lhs.false98.do.body108_crit_edge

lor.lhs.false98.do.body108_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

lor.lhs.false102:                                 ; preds = %lor.lhs.false98
  %55 = ptrtoint ptr %size93 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %size93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %56)
  %cmp105 = icmp ult i8 %56, 25
  br i1 %cmp105, label %lor.lhs.false102.do.body108_crit_edge, label %lor.lhs.false102.if.end126_crit_edge

lor.lhs.false102.if.end126_crit_edge:             ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

lor.lhs.false102.do.body108_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

do.body108:                                       ; preds = %lor.lhs.false102.do.body108_crit_edge, %lor.lhs.false98.do.body108_crit_edge, %if.then91.do.body108_crit_edge
  %debug110 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %57 = ptrtoint ptr %debug110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp111.not = icmp eq i32 %58, 0
  br i1 %cmp111.not, label %do.body108.cleanup_crit_edge, label %do.end116

do.body108.cleanup_crit_edge:                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end116:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device4, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev118, align 8
  %name119 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.12, ptr noundef %name119) #11
  br label %cleanup

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %timing, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else, %lor.lhs.false102.if.end126_crit_edge
  %64 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fb, align 4
  %device.i = getelementptr inbounds %struct.nvkm_fb, ptr %65, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device.i, align 4
  %pmu.i = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 39
  %68 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pmu.i, align 8
  %call.i = call i32 @nvkm_memx_init(ptr noundef %69, ptr noundef %fuc1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end133, label %if.end126.cleanup_crit_edge

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %if.end126
  %sequence.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 0, i32 2
  %70 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %fb1.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %fb1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %65, ptr %fb1.i, align 4
  %r_0x1373f0 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 46
  %73 = ptrtoint ptr %r_0x1373f0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %r_0x1373f0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %inc.i)
  %cmp.not.i = icmp eq i32 %74, %inc.i
  br i1 %cmp.not.i, label %if.end133.ramfuc_rd32.exit_crit_edge, label %if.then.i

if.end133.ramfuc_rd32.exit_crit_edge:             ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit

if.then.i:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fb1.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %76, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 46, i32 2
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %80, i32 %82
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %data.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 46, i32 5
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %data.i, align 4
  br label %ramfuc_rd32.exit

ramfuc_rd32.exit:                                 ; preds = %if.then.i, %if.end133.ramfuc_rd32.exit_crit_edge
  %data3.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 46, i32 5
  %85 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data3.i, align 4
  %r_0x137300 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 42
  %87 = ptrtoint ptr %r_0x137300 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %r_0x137300, align 4
  %89 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.not.i837 = icmp eq i32 %88, %90
  br i1 %cmp.not.i837, label %ramfuc_rd32.exit.ramfuc_rd32.exit847_crit_edge, label %if.then.i844

ramfuc_rd32.exit.ramfuc_rd32.exit847_crit_edge:   ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit847

if.then.i844:                                     ; preds = %ramfuc_rd32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fb1.i, align 4
  %device1.i839 = getelementptr inbounds %struct.nvkm_fb, ptr %92, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %device1.i839 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device1.i839, align 4
  %pri.i840 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %pri.i840 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i840, align 4
  %addr.i841 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 42, i32 2
  %97 = ptrtoint ptr %addr.i841 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.i841, align 4
  %add.ptr.i842 = getelementptr i8, ptr %96, i32 %98
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i842) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %data.i843 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 42, i32 5
  %100 = ptrtoint ptr %data.i843 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %data.i843, align 4
  br label %ramfuc_rd32.exit847

ramfuc_rd32.exit847:                              ; preds = %if.then.i844, %ramfuc_rd32.exit.ramfuc_rd32.exit847_crit_edge
  %data3.i845 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 42, i32 5
  %101 = ptrtoint ptr %data3.i845 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data3.i845, align 4
  %and140 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  %. = select i1 %tobool141.not, i32 9, i32 10
  %call145 = call i32 @nvkm_clk_read(ptr noundef %5, i32 noundef %.) #8
  %mul147 = shl i32 %call145, 1
  %div148 = udiv i32 %mul147, %freq
  %103 = call i32 @llvm.umin.i32(i32 %div148, i32 65)
  %104 = call i32 @llvm.umax.i32(i32 %103, i32 2)
  %div161 = sdiv i32 %mul147, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %div161, i32 %freq)
  %cmp162.not = icmp eq i32 %div161, %freq
  %r_0x137360 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 44
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x137360, i32 noundef 2, i32 noundef 0)
  %r_0x132000 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 5
  %105 = ptrtoint ptr %r_0x132000 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %r_0x132000, align 4
  %107 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp.not.i849 = icmp eq i32 %106, %108
  br i1 %cmp.not.i849, label %ramfuc_rd32.exit847.ramfuc_rd32.exit859_crit_edge, label %if.then.i856

ramfuc_rd32.exit847.ramfuc_rd32.exit859_crit_edge: ; preds = %ramfuc_rd32.exit847
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_rd32.exit859

if.then.i856:                                     ; preds = %ramfuc_rd32.exit847
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fb1.i, align 4
  %device1.i851 = getelementptr inbounds %struct.nvkm_fb, ptr %110, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %device1.i851 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device1.i851, align 4
  %pri.i852 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %pri.i852 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri.i852, align 4
  %addr.i853 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 5, i32 2
  %115 = ptrtoint ptr %addr.i853 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %addr.i853, align 4
  %add.ptr.i854 = getelementptr i8, ptr %114, i32 %116
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i854) #8, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %data.i855 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 5, i32 5
  %118 = ptrtoint ptr %data.i855 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %data.i855, align 4
  br label %ramfuc_rd32.exit859

ramfuc_rd32.exit859:                              ; preds = %if.then.i856, %ramfuc_rd32.exit847.ramfuc_rd32.exit859_crit_edge
  %data3.i857 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 5, i32 5
  %119 = ptrtoint ptr %data3.i857 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data3.i857, align 4
  %and168 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %ramfuc_rd32.exit859.if.end179_crit_edge, label %if.then170

ramfuc_rd32.exit859.if.end179_crit_edge:          ; preds = %ramfuc_rd32.exit859
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then170:                                       ; preds = %ramfuc_rd32.exit859
  call void @__sanitizer_cov_trace_pc() #10
  %force.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 5, i32 1
  %121 = ptrtoint ptr %force.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %force.i, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x132000, i32 noundef 2, i32 noundef 2)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x132000, i32 noundef 2, i32 noundef 0)
  br label %if.end179

if.end179:                                        ; preds = %if.then170, %ramfuc_rd32.exit859.if.end179_crit_edge
  br i1 %cmp162.not, label %if.end179.if.end190_crit_edge, label %if.then182

if.end179.if.end190_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10fe20 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 1
  %force.i860 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 1, i32 1
  %122 = ptrtoint ptr %force.i860 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %force.i860, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10fe20, i32 noundef 2, i32 noundef 2)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10fe20, i32 noundef 2, i32 noundef 0)
  br label %if.end190

if.end190:                                        ; preds = %if.then182, %if.end179.if.end190_crit_edge
  %r_0x132100 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 7
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132100, i32 noundef 1)
  %cmp162.not.not = xor i1 %cmp162.not, true
  %123 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp194 = icmp eq i32 %123, 0
  %or.cond = select i1 %cmp162.not.not, i1 %cmp194, i1 false
  br i1 %or.cond, label %if.then196, label %if.else270

if.then196:                                       ; preds = %if.end190
  %refpll = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 2
  %refclk = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 3, i32 2
  %124 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %refclk, align 4
  %call197 = call i32 @gt215_pll_calc(ptr noundef %subdev3, ptr noundef %refpll, i32 noundef %125, ptr noundef nonnull %N1, ptr noundef null, ptr noundef nonnull %M1, ptr noundef nonnull %P) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 1
  br i1 %cmp198, label %do.body201, label %if.end222

do.body201:                                       ; preds = %if.then196
  %debug203 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %126 = ptrtoint ptr %debug203 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp204.not = icmp eq i32 %127, 0
  br i1 %cmp204.not, label %do.body201.if.end214_crit_edge, label %do.end209

do.body201.if.end214_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

do.end209:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device4, align 4
  %dev211 = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dev211 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev211, align 8
  %name212 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.15, ptr noundef %name212) #11
  br label %if.end214

if.end214:                                        ; preds = %do.end209, %do.body201.if.end214_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool217.not = icmp eq i32 %call197, 0
  %spec.select = select i1 %tobool217.not, i32 -34, i32 %call197
  br label %cleanup

if.end222:                                        ; preds = %if.then196
  %mempll = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 3
  %r_0x10fe20224 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 1
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10fe20224, i32 noundef 536936448)
  %r_0x137320 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 3
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x137320, i32 noundef 3)
  %r_0x137330 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 4
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x137330, i32 noundef -2128609274)
  %r_0x10fe24 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 2
  %132 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %P, align 4
  %shl = shl i32 %133, 16
  %134 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %N1, align 4
  %shl228 = shl i32 %135, 8
  %or = or i32 %shl228, %shl
  %136 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %M1, align 4
  %or229 = or i32 %or, %137
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10fe24, i32 noundef %or229)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10fe20224, i32 noundef 536936449)
  %138 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait(ptr noundef %139, i32 noundef 1274768, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #8
  %call234 = call i32 @gt215_pll_calc(ptr noundef %subdev3, ptr noundef %mempll, i32 noundef %freq, ptr noundef nonnull %N1, ptr noundef null, ptr noundef nonnull %M1, ptr noundef nonnull %P) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 1
  br i1 %cmp235, label %do.body238, label %if.end259

do.body238:                                       ; preds = %if.end222
  %debug240 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %140 = ptrtoint ptr %debug240 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %debug240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp241.not = icmp eq i32 %141, 0
  br i1 %cmp241.not, label %do.body238.if.end251_crit_edge, label %do.end246

do.body238.if.end251_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

do.end246:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device4, align 4
  %dev248 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %dev248 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev248, align 8
  %name249 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.15, ptr noundef %name249) #11
  br label %if.end251

if.end251:                                        ; preds = %do.end246, %do.body238.if.end251_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool254.not = icmp eq i32 %call234, 0
  %spec.select834 = select i1 %tobool254.not, i32 -34, i32 %call234
  br label %cleanup

if.end259:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10fe20224, i32 noundef 536936453)
  %r_0x132004 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 6
  %146 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %P, align 4
  %shl263 = shl i32 %147, 16
  %148 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %N1, align 4
  %shl264 = shl i32 %149, 8
  %or265 = or i32 %shl264, %shl263
  %150 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %M1, align 4
  %or266 = or i32 %or265, %151
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132004, i32 noundef %or266)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132000, i32 noundef 402718977)
  %152 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_wait(ptr noundef %153, i32 noundef 1274768, i32 noundef 2, i32 noundef 2, i32 noundef 64000) #8
  br label %if.end277

if.else270:                                       ; preds = %if.end190
  br i1 %cmp162.not, label %if.then273, label %if.else270.if.end277_crit_edge

if.else270.if.end277_crit_edge:                   ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.then273:                                       ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x137300, i32 noundef 3)
  br label %if.end277

if.end277:                                        ; preds = %if.then273, %if.else270.if.end277_crit_edge, %if.end259
  br i1 %cmp194, label %if.then280, label %if.else294

if.then280:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10fb04 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 40
  %force.i861 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 40, i32 1
  %154 = ptrtoint ptr %force.i861 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %force.i861, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10fb04, i32 noundef 65535, i32 noundef 0)
  %r_0x10fb08 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 41
  %force.i862 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 41, i32 1
  %155 = ptrtoint ptr %force.i862 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %force.i862, align 4
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10fb08, i32 noundef 65535, i32 noundef 0)
  %r_0x10f988 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 34
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f988, i32 noundef 537198336)
  %r_0x10f98c = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f98c, i32 noundef 4177984)
  %r_0x10f990 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 36
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f990, i32 noundef 536944641)
  %r_0x10f998 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 37
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f998, i32 noundef 72192)
  %r_0x13d8f4 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 50
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x13d8f4, i32 noundef 0)
  br label %if.end303

if.else294:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10f988296 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 34
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f988296, i32 noundef 536936448)
  %r_0x10f98c298 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f98c298, i32 noundef 0)
  %r_0x10f990300 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 36
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f990300, i32 noundef 536944641)
  %r_0x10f998302 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 37
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f998302, i32 noundef 68096)
  br label %if.end303

if.end303:                                        ; preds = %if.else294, %if.then280
  %r_0x100b0c = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 21
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100b0c, i32 noundef 524306)
  %r_0x611200 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 49
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x611200, i32 noundef 13056)
  %r_0x10f200 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 24
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 2048, i32 noundef 0)
  %r_0x10f210 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 25
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f210, i32 noundef 0)
  %156 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %157, i32 noundef 1000) #8
  br i1 %cmp162.not, label %if.then316, label %if.end303.if.end317_crit_edge

if.end303.if.end317_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end317

if.then316:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @gf100_ram_train(ptr noundef %fuc1, i32 noundef 790529)
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %if.end303.if.end317_crit_edge
  %r_0x10f310 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 26
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f310, i32 noundef 1)
  %158 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %159, i32 noundef 1000) #8
  %r_0x10f090 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 23
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f090, i32 noundef 97)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f090, i32 noundef -1073741697)
  %160 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %161, i32 noundef 1000) #8
  br i1 %cmp194, label %if.then326, label %if.else328

if.then326:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10f824 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f824, i32 noundef 32724)
  br label %if.end330

if.else328:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x1373ec = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373ec, i32 noundef 132100)
  br label %if.end330

if.end330:                                        ; preds = %if.else328, %if.then326
  br i1 %cmp162.not, label %if.then333, label %if.else394

if.then333:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10f808 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f808, i32 noundef 524288, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 32768, i32 noundef 32768)
  %r_0x10f830 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 33
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 1095761936)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 16777216, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x132100, i32 noundef 256, i32 noundef 256)
  %r_0x10f050 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 22
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f050, i32 noundef -16777072)
  %r_0x1373ec348 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373ec348, i32 noundef 134927)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f0, i32 noundef 3)
  %r_0x137310 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 43
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x137310, i32 noundef -2128603626)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132100, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 3145751)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f0, i32 noundef 1)
  %r_0x10f824359 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f824359, i32 noundef 32375)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132000, i32 noundef 402849793)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f090, i32 noundef 1073741950)
  %162 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %163, i32 noundef 2000) #8
  %r_0x10f314 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f314, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f210, i32 noundef -2147483648)
  %r_0x10f338 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f338, i32 noundef 3146272)
  %r_0x10f300 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f300, i32 noundef 285)
  %164 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %165, i32 noundef 1000) #8
  %r_0x10f290 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f290, i32 noundef 33948933)
  %r_0x10f294 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f294, i32 noundef 874545800)
  %r_0x10f298 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f298, i32 noundef 1141179409)
  %r_0x10f29c = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 12
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f29c, i32 noundef 4428)
  %r_0x10f2a0 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f2a0, i32 noundef 1122041961)
  %r_0x10f614 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f614, i32 noundef 1074024311)
  %r_0x10f610 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f610, i32 noundef 1074024311)
  %r_0x10f344 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f344, i32 noundef 6291465)
  %166 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %167, i32 noundef 1000) #8
  %r_0x10f348 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 18
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f348, i32 noundef 7340040)
  %r_0x61c140 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 48
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x61c140, i32 noundef 421789696)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 3145751)
  call fastcc void @gf100_ram_train(ptr noundef %fuc1, i32 noundef -2147348479)
  call fastcc void @gf100_ram_train(ptr noundef %fuc1, i32 noundef -2146955263)
  %r_0x10f340 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f340, i32 noundef 5242884)
  %168 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %169, i32 noundef 1000) #8
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 19922967)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830, i32 noundef 3145751)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100b0c, i32 noundef 524328)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x611200, i32 noundef 13104)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 2048, i32 noundef 2048)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x132000, i32 noundef 1, i32 noundef 0)
  br label %cleanup

if.else394:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10f800 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f800, i32 noundef 6144)
  %r_0x13d8f4397 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 50
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x13d8f4397, i32 noundef 0)
  %r_0x1373ec399 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373ec399, i32 noundef 132100)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f0, i32 noundef 3)
  %r_0x10f830403 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 33
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830403, i32 noundef 1081081872)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830403, i32 noundef 1078984720)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x13d8f4397, i32 noundef 0)
  %r_0x1373f8 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 47
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f8, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132100, i32 noundef 257)
  %r_0x137310412 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 43
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x137310412, i32 noundef -1994385898)
  %r_0x10f050414 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 22
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f050414, i32 noundef -16777072)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373ec399, i32 noundef 197636)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f0, i32 noundef 2)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x132100, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x1373f8, i32 noundef 8192)
  %170 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %171, i32 noundef 2000) #8
  %r_0x10f808425 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f808425, i32 noundef 2057961552)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f830403, i32 noundef 5242896)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 13504512)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f090, i32 noundef 1073741950)
  %172 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %173, i32 noundef 2000) #8
  %r_0x10f314434 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f314434, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f210, i32 noundef -2147483648)
  %r_0x10f338438 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f338438, i32 noundef 3146240)
  %r_0x10f300440 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f300440, i32 noundef 2125)
  %174 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %175, i32 noundef 1000) #8
  %r_0x10f290443 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f290443, i32 noundef 187971621)
  %r_0x10f294445 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f294445, i32 noundef 881001102)
  %r_0x10f298447 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f298447, i32 noundef 1141638656)
  %r_0x10f29c449 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 12
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f29c449, i32 noundef 8524)
  %r_0x10f2a0451 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f2a0451, i32 noundef 1122107497)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 13500416)
  %r_0x10f614455 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f614455, i32 noundef 1610894967)
  %r_0x10f610457 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f610457, i32 noundef 1610894967)
  %r_0x10f340459 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f340459, i32 noundef 5242880)
  %176 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %177, i32 noundef 1000) #8
  %r_0x10f344462 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f344462, i32 noundef 6292008)
  %178 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %179, i32 noundef 1000) #8
  %r_0x10f348465 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 18
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f348465, i32 noundef 7340032)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x13d8f4397, i32 noundef 0)
  %r_0x61c140469 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 48
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x61c140469, i32 noundef 161742848)
  call fastcc void @gf100_ram_train(ptr noundef %fuc1, i32 noundef -2146562040)
  %180 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %181, i32 noundef 1000) #8
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f800, i32 noundef 6148)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x13d8f4397, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x100b0c, i32 noundef 524328)
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x611200, i32 noundef 13104)
  %182 = ptrtoint ptr %fuc1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fuc1, align 4
  call void @nvkm_memx_nsec(ptr noundef %183, i32 noundef 100000) #8
  %r_0x10f9b0 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 38
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f9b0, i32 noundef 87113537)
  %r_0x10f9b4 = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 39
  call fastcc void @ramfuc_wr32(ptr noundef %fuc1, ptr noundef %r_0x10f9b4, i32 noundef 12112)
  call fastcc void @gf100_ram_train(ptr noundef %fuc1, i32 noundef 17567745)
  call fastcc void @ramfuc_mask(ptr noundef %fuc1, ptr noundef %r_0x10f200, i32 noundef 2048, i32 noundef 2048)
  br label %cleanup

cleanup:                                          ; preds = %if.else394, %if.then333, %if.end251, %if.end214, %if.end126.cleanup_crit_edge, %do.end116, %do.body108.cleanup_crit_edge, %do.end76, %do.body68.cleanup_crit_edge, %do.end39, %do.body31.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end214 ], [ %spec.select834, %if.end251 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end39 ], [ -22, %do.body31.cleanup_crit_edge ], [ -22, %do.end76 ], [ -22, %do.body68.cleanup_crit_edge ], [ -22, %do.end116 ], [ -22, %do.body108.cleanup_crit_edge ], [ 0, %if.else394 ], [ 0, %if.then333 ], [ %call.i, %if.end126.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timing) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ramcfg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rammap) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #8
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramfuc_mask(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #4 align 64 {
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
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
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
  %17 = load i8, ptr %force, align 4, !range !82
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ramfuc_wr32(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %data) unnamed_addr #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_ram_train(ptr nocapture noundef %fuc, i32 noundef %magic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr i8, ptr %fuc, i32 -668
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 140344
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 140628
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %r_0x10f910 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 19
  %sequence.i = getelementptr inbounds %struct.ramfuc, ptr %fuc, i32 0, i32 2
  %10 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence.i, align 4
  %12 = ptrtoint ptr %r_0x10f910 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %r_0x10f910, align 4
  %data2.i = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 19, i32 5
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %magic, ptr %data2.i, align 4
  %mask3.i = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 19, i32 4
  %14 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not16.i = icmp eq i32 %15, 0
  br i1 %cmp.not16.i, label %entry.ramfuc_wr32.exit_crit_edge, label %for.body.lr.ph.i

entry.ramfuc_wr32.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %addr.i = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 19, i32 2
  %stride.i = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 19, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %15, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fuc, align 4
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %19, %off.018.i
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data2.i, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %17, i32 noundef %add.i, i32 noundef %21) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %23, %off.018.i
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
  %r_0x10f914 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 20
  %24 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sequence.i, align 4
  %26 = ptrtoint ptr %r_0x10f914 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %r_0x10f914, align 4
  %data2.i27 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 20, i32 5
  %27 = ptrtoint ptr %data2.i27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %magic, ptr %data2.i27, align 4
  %mask3.i28 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 20, i32 4
  %28 = ptrtoint ptr %mask3.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask3.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not16.i29 = icmp eq i32 %29, 0
  br i1 %cmp.not16.i29, label %ramfuc_wr32.exit.ramfuc_wr32.exit44_crit_edge, label %for.body.lr.ph.i32

ramfuc_wr32.exit.ramfuc_wr32.exit44_crit_edge:    ; preds = %ramfuc_wr32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit44

for.body.lr.ph.i32:                               ; preds = %ramfuc_wr32.exit
  %addr.i30 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 20, i32 2
  %stride.i31 = getelementptr inbounds %struct.gf100_ramfuc, ptr %fuc, i32 0, i32 20, i32 3
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i43.for.body.i37_crit_edge, %for.body.lr.ph.i32
  %off.018.i33 = phi i32 [ 0, %for.body.lr.ph.i32 ], [ %add5.i40, %if.end.i43.for.body.i37_crit_edge ]
  %mask.017.i34 = phi i32 [ %29, %for.body.lr.ph.i32 ], [ %shr.i41, %if.end.i43.for.body.i37_crit_edge ]
  %and.i35 = and i32 %mask.017.i34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %for.body.i37.if.end.i43_crit_edge, label %if.then.i39

for.body.i37.if.end.i43_crit_edge:                ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i43

if.then.i39:                                      ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fuc, align 4
  %32 = ptrtoint ptr %addr.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i30, align 4
  %add.i38 = add i32 %33, %off.018.i33
  %34 = ptrtoint ptr %data2.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data2.i27, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %31, i32 noundef %add.i38, i32 noundef %35) #8
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i39, %for.body.i37.if.end.i43_crit_edge
  %36 = ptrtoint ptr %stride.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stride.i31, align 4
  %add5.i40 = add i32 %37, %off.018.i33
  %shr.i41 = lshr i32 %mask.017.i34, 1
  %cmp.not.i42 = icmp ult i32 %mask.017.i34, 2
  br i1 %cmp.not.i42, label %if.end.i43.ramfuc_wr32.exit44_crit_edge, label %if.end.i43.for.body.i37_crit_edge

if.end.i43.for.body.i37_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

if.end.i43.ramfuc_wr32.exit44_crit_edge:          ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_wr32.exit44

ramfuc_wr32.exit44:                               ; preds = %if.end.i43.ramfuc_wr32.exit44_crit_edge, %ramfuc_wr32.exit.ramfuc_wr32.exit44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %magic)
  %tobool.not = icmp slt i32 %magic, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp45 = icmp ne i32 %6, 0
  %or.cond46 = select i1 %tobool.not, i1 %cmp45, i1 false
  br i1 %or.cond46, label %ramfuc_wr32.exit44.for.body_crit_edge, label %ramfuc_wr32.exit44.for.end_crit_edge

ramfuc_wr32.exit44.for.end_crit_edge:             ; preds = %ramfuc_wr32.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ramfuc_wr32.exit44.for.body_crit_edge:            ; preds = %ramfuc_wr32.exit44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ramfuc_wr32.exit44.for.body_crit_edge
  %addr.048 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 1116532, %ramfuc_wr32.exit44.for.body_crit_edge ]
  %i.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %ramfuc_wr32.exit44.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.047
  %and12 = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %fuc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fuc, align 4
  tail call void @nvkm_memx_wait(ptr noundef %39, i32 noundef %addr.048, i32 noundef 15, i32 noundef 0, i32 noundef 500000) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %add = add i32 %addr.048, 4096
  %inc = add nuw i32 %i.047, 1
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ramfuc_wr32.exit44.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_prog(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %5, ptr noundef nonnull @.str.19, i1 noundef zeroext true) #8
  %fb.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ramfuc_exec.exit_crit_edge, label %if.then.i

entry.ramfuc_exec.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ramfuc_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fuc = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1
  %call.i = tail call i32 @nvkm_memx_fini(ptr noundef %fuc, i1 noundef zeroext %call) #8
  %8 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fb.i, align 4
  br label %ramfuc_exec.exit

ramfuc_exec.exit:                                 ; preds = %if.then.i, %entry.ramfuc_exec.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ram_tidy(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fb.i = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
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
  %fuc = getelementptr inbounds %struct.gf100_ram, ptr %base, i32 0, i32 1
  %call.i = tail call i32 @nvkm_memx_fini(ptr noundef %fuc, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fb.i, align 4
  br label %ramfuc_exec.exit

ramfuc_exec.exit:                                 ; preds = %if.then.i, %entry.ramfuc_exec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cond = icmp eq i32 %1, 10
  br i1 %cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader
  %i.096 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %shl = shl i32 %i.096, 8
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 1112424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %shl) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 1112428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %shl) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rem = urem i32 %i.096, 12
  %arrayidx = getelementptr [12 x i8], ptr @gf100_ram_init.train0, i32 0, i32 %rem
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %or15 = or i32 %conv, 256
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 1112352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %or15) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 1112356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or15) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %arrayidx31 = getelementptr [12 x i32], ptr @gf100_ram_init.train1, i32 0, i32 %rem
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx31, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 1112344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %17) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr40 = getelementptr i8, ptr %21, i32 1112348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %17) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %23, i32 1112352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %conv) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %25, i32 1112356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %conv) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %27, i32 1112344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %17) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %29, i32 1112348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %17) #8, !srcloc !86
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbpa_amount(ptr nocapture noundef readonly %device, i32 noundef %fbpa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %mul = shl i32 %fbpa, 12
  %add = add i32 %mul, 1114636
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbp_amount(ptr nocapture noundef readonly %func, i32 noundef %fbpao, ptr noundef %device, i32 noundef %fbp, ptr nocapture noundef writeonly %pltcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %fbp
  %and = and i32 %shl, %fbpao
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %pltcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %pltcs, align 4
  %probe_fbpa_amount = getelementptr inbounds %struct.nvkm_ram_func, ptr %func, i32 0, i32 3
  %1 = ptrtoint ptr %probe_fbpa_amount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %probe_fbpa_amount, align 8
  %call = tail call i32 %2(ptr noundef %device, i32 noundef %fbp) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbp(ptr noundef %func, ptr noundef %device, i32 noundef %fbp, ptr noundef %pltcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 140628
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %probe_fbp_amount = getelementptr inbounds %struct.nvkm_ram_func, ptr %func, i32 0, i32 2
  %3 = ptrtoint ptr %probe_fbp_amount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %probe_fbp_amount, align 4
  %call1 = tail call i32 %4(ptr noundef %func, i32 noundef %2, ptr noundef %device, i32 noundef %fbp, ptr noundef %pltcs) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_ctor(ptr noundef %func, ptr noundef %fb, ptr noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  %ltcs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios3, align 8
  %call = tail call i32 @nvkm_fb_bios_memtype(ptr noundef %3) #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 140344
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ltcs) #8
  %7 = ptrtoint ptr %ltcs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ltcs, align 4, !annotation !79
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9215.not = icmp eq i32 %6, 0
  br i1 %cmp9215.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %probe_fbp = getelementptr inbounds %struct.nvkm_ram_func, ptr %func, i32 0, i32 1
  %name22 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %for.body.lr.ph
  %ltcn.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %ltcn.1, %if.end49.for.body_crit_edge ]
  %fbp.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end49.for.body_crit_edge ]
  %lcomm.0217 = phi i64 [ -1, %for.body.lr.ph ], [ %lcomm.1, %if.end49.for.body_crit_edge ]
  %total.0216 = phi i64 [ 0, %for.body.lr.ph ], [ %total.1, %if.end49.for.body_crit_edge ]
  %14 = ptrtoint ptr %probe_fbp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %probe_fbp, align 8
  %call10 = call i32 %15(ptr noundef %func, ptr noundef %1, i32 noundef %fbp.0218, ptr noundef nonnull %ltcs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp36 = icmp ugt i32 %17, 3
  br i1 %tobool.not, label %do.body33, label %do.body12

do.body12:                                        ; preds = %for.body
  br i1 %cmp36, label %do.end19, label %do.body12.if.end24_crit_edge

do.body12.if.end24_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end19:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev21 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev21, align 8
  %22 = ptrtoint ptr %ltcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ltcs, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.24, ptr noundef %name22, i32 noundef %fbp.0218, i32 noundef %call10, i32 noundef %23) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %do.body12.if.end24_crit_edge
  %24 = ptrtoint ptr %ltcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ltcs, align 4
  %div = udiv i32 %call10, %25
  %conv = zext i32 %div to i64
  %shl = shl nuw nsw i64 %conv, 20
  %26 = call i64 @llvm.umin.i64(i64 %lcomm.0217, i64 %shl)
  %conv30 = zext i32 %call10 to i64
  %shl31 = shl nuw nsw i64 %conv30, 20
  %add = add i64 %shl31, %total.0216
  %add32 = add i32 %25, %ltcn.0221
  br label %if.end49

do.body33:                                        ; preds = %for.body
  br i1 %cmp36, label %do.end41, label %do.body33.if.end49_crit_edge

do.body33.if.end49_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end41:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev43, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef %name22, i32 noundef %fbp.0218) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end41, %do.body33.if.end49_crit_edge, %if.end24
  %total.1 = phi i64 [ %add, %if.end24 ], [ %total.0216, %do.end41 ], [ %total.0216, %do.body33.if.end49_crit_edge ]
  %lcomm.1 = phi i64 [ %26, %if.end24 ], [ %lcomm.0217, %do.end41 ], [ %lcomm.0217, %do.body33.if.end49_crit_edge ]
  %ltcn.1 = phi i32 [ %add32, %if.end24 ], [ %ltcn.0221, %do.end41 ], [ %ltcn.0221, %do.body33.if.end49_crit_edge ]
  %inc = add nuw i32 %fbp.0218, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %if.end.for.end_crit_edge
  %total.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %total.1, %if.end49.for.end_crit_edge ]
  %lcomm.0.lcssa = phi i64 [ -1, %if.end.for.end_crit_edge ], [ %lcomm.1, %if.end49.for.end_crit_edge ]
  %ltcn.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ltcn.1, %if.end49.for.end_crit_edge ]
  %conv50 = sext i32 %ltcn.0.lcssa to i64
  %mul = mul i64 %lcomm.0.lcssa, %conv50
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %func, align 8
  %add51 = add i64 %32, %lcomm.0.lcssa
  %sub = sub i64 %total.0.lcssa, %mul
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp55 = icmp ugt i32 %34, 3
  br i1 %cmp55, label %if.end65, label %for.end.if.end99_crit_edge

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end65:                                         ; preds = %for.end
  %35 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device2, align 4
  %dev62 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev62, align 8
  %name63 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  %shr = lshr i64 %mul, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.30, ptr noundef %name63, i64 noundef %shr, i64 noundef 0) #11
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp71 = icmp ugt i32 %.pr, 3
  br i1 %cmp71, label %if.end82, label %if.end65.if.end99_crit_edge

if.end65.if.end99_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end82:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device2, align 4
  %dev78 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev78, align 8
  %shr81 = lshr i64 %sub, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.33, ptr noundef %name63, i64 noundef %shr81, i64 noundef %add51) #11
  %44 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr213 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr213)
  %cmp88 = icmp ugt i32 %.pr213, 3
  br i1 %cmp88, label %do.end93, label %if.end82.if.end99_crit_edge

if.end82.if.end99_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

do.end93:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2, align 4
  %dev95 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev95, align 8
  %shr98 = lshr i64 %total.0.lcssa, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.36, ptr noundef %name63, i64 noundef %shr98) #11
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %if.end82.if.end99_crit_edge, %if.end65.if.end99_crit_edge, %for.end.if.end99_crit_edge
  %call102 = call i32 @nvkm_ram_ctor(ptr noundef %func, ptr noundef %fb, i32 noundef %call, i64 noundef %total.0.lcssa, ptr noundef %ram) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end105:                                        ; preds = %if.end99
  %vram = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 4
  %call106 = call i32 @nvkm_mm_fini(ptr noundef %vram) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %total.0.lcssa, i64 %mul)
  %cmp107.not = icmp eq i64 %total.0.lcssa, %mul
  br i1 %cmp107.not, label %if.else128, label %if.then109

if.then109:                                       ; preds = %if.end105
  %sub111 = add i64 %mul, 17592185782272
  %shr112 = lshr i64 %sub111, 12
  %conv113 = trunc i64 %shr112 to i32
  %call114 = call i32 @nvkm_mm_init(ptr noundef %vram, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %conv113, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then109.cleanup_crit_edge

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end117:                                        ; preds = %if.then109
  %shr119 = lshr i64 %add51, 12
  %conv120 = trunc i64 %shr119 to i32
  %sub121 = add i64 %sub, 17592184995840
  %shr122 = lshr i64 %sub121, 12
  %conv123 = trunc i64 %shr122 to i32
  %call124 = call i32 @nvkm_mm_init(ptr noundef %vram, i8 noundef zeroext 3, i32 noundef %conv120, i32 noundef %conv123, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end117.if.end138_crit_edge, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end117.if.end138_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.else128:                                       ; preds = %if.end105
  %sub131 = add i64 %total.0.lcssa, 17592184733696
  %shr132 = lshr i64 %sub131, 12
  %conv133 = trunc i64 %shr132 to i32
  %call134 = call i32 @nvkm_mm_init(ptr noundef %vram, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %conv133, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.else128.if.end138_crit_edge, label %if.else128.cleanup_crit_edge

if.else128.cleanup_crit_edge:                     ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else128.if.end138_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.end138:                                        ; preds = %if.else128.if.end138_crit_edge, %if.end117.if.end138_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.else128.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %if.end99.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end138 ], [ %call102, %if.end99.cleanup_crit_edge ], [ %call114, %if.then109.cleanup_crit_edge ], [ %call124, %if.end117.cleanup_crit_edge ], [ %call134, %if.else128.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ltcs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_bios_memtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_new_(ptr noundef %func, ptr noundef %fb, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.ramfuc_reg, align 4
  %tmp38 = alloca %struct.ramfuc_reg, align 4
  %tmp40 = alloca %struct.ramfuc_reg, align 4
  %tmp42 = alloca %struct.ramfuc_reg, align 4
  %tmp44 = alloca %struct.ramfuc_reg, align 4
  %tmp46 = alloca %struct.ramfuc_reg, align 4
  %tmp48 = alloca %struct.ramfuc_reg, align 4
  %tmp50 = alloca %struct.ramfuc_reg, align 4
  %tmp52 = alloca %struct.ramfuc_reg, align 4
  %tmp54 = alloca %struct.ramfuc_reg, align 4
  %tmp56 = alloca %struct.ramfuc_reg, align 4
  %tmp58 = alloca %struct.ramfuc_reg, align 4
  %tmp60 = alloca %struct.ramfuc_reg, align 4
  %tmp62 = alloca %struct.ramfuc_reg, align 4
  %tmp64 = alloca %struct.ramfuc_reg, align 4
  %tmp66 = alloca %struct.ramfuc_reg, align 4
  %tmp68 = alloca %struct.ramfuc_reg, align 4
  %tmp70 = alloca %struct.ramfuc_reg, align 4
  %tmp72 = alloca %struct.ramfuc_reg, align 4
  %tmp74 = alloca %struct.ramfuc_reg, align 4
  %tmp76 = alloca %struct.ramfuc_reg, align 4
  %tmp78 = alloca %struct.ramfuc_reg, align 4
  %tmp80 = alloca %struct.ramfuc_reg, align 4
  %tmp82 = alloca %struct.ramfuc_reg, align 4
  %tmp84 = alloca %struct.ramfuc_reg, align 4
  %tmp86 = alloca %struct.ramfuc_reg, align 4
  %tmp88 = alloca %struct.ramfuc_reg, align 4
  %tmp90 = alloca %struct.ramfuc_reg, align 4
  %tmp92 = alloca %struct.ramfuc_reg, align 4
  %tmp94 = alloca %struct.ramfuc_reg, align 4
  %tmp96 = alloca %struct.ramfuc_reg, align 4
  %tmp98 = alloca %struct.ramfuc_reg, align 4
  %tmp100 = alloca %struct.ramfuc_reg, align 4
  %tmp102 = alloca %struct.ramfuc_reg, align 4
  %tmp104 = alloca %struct.ramfuc_reg, align 4
  %tmp106 = alloca %struct.ramfuc_reg, align 4
  %tmp108 = alloca %struct.ramfuc_reg, align 4
  %tmp110 = alloca %struct.ramfuc_reg, align 4
  %tmp112 = alloca %struct.ramfuc_reg, align 4
  %tmp114 = alloca %struct.ramfuc_reg, align 4
  %tmp116 = alloca %struct.ramfuc_reg, align 4
  %tmp121 = alloca %struct.ramfuc_reg, align 4
  %tmp123 = alloca %struct.ramfuc_reg, align 4
  %tmp125 = alloca %struct.ramfuc_reg, align 4
  %tmp127 = alloca %struct.ramfuc_reg, align 4
  %tmp129 = alloca %struct.ramfuc_reg, align 4
  %tmp131 = alloca %struct.ramfuc_reg, align 4
  %tmp133 = alloca %struct.ramfuc_reg, align 4
  %tmp135 = alloca %struct.ramfuc_reg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2000) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pram, align 4
  %call4 = tail call i32 @gf100_ram_ctor(ptr noundef %func, ptr noundef %fb, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %refpll = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 2
  %call8 = tail call i32 @nvbios_pll_parse(ptr noundef %3, i32 noundef 12, ptr noundef %refpll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end7
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef %name) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %mempll = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 3
  %call18 = tail call i32 @nvbios_pll_parse(ptr noundef %3, i32 noundef 4, ptr noundef %mempll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end36, label %do.body21

do.body21:                                        ; preds = %if.end17
  %debug23 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %do.body21.cleanup_crit_edge, label %do.end28

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev30 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev30, align 8
  %name31 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.41, ptr noundef %name31) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %r_0x10fe20 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp, i32 noundef 1113632)
  %18 = call ptr @memcpy(ptr %r_0x10fe20, ptr %tmp, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #8
  %r_0x10fe24 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp38) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp38, i32 noundef 1113636)
  %19 = call ptr @memcpy(ptr %r_0x10fe24, ptr %tmp38, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp38) #8
  %r_0x137320 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp40) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp40, i32 noundef 1274656)
  %20 = call ptr @memcpy(ptr %r_0x137320, ptr %tmp40, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp40) #8
  %r_0x137330 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp42) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp42, i32 noundef 1274672)
  %21 = call ptr @memcpy(ptr %r_0x137330, ptr %tmp42, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp42) #8
  %r_0x132000 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp44) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp44, i32 noundef 1253376)
  %22 = call ptr @memcpy(ptr %r_0x132000, ptr %tmp44, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp44) #8
  %r_0x132004 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp46) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp46, i32 noundef 1253380)
  %23 = call ptr @memcpy(ptr %r_0x132004, ptr %tmp46, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp46) #8
  %r_0x132100 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp48) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp48, i32 noundef 1253632)
  %24 = call ptr @memcpy(ptr %r_0x132100, ptr %tmp48, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp48) #8
  %r_0x137390 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp50) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp50, i32 noundef 1274768)
  %25 = call ptr @memcpy(ptr %r_0x137390, ptr %tmp50, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp50) #8
  %r_0x10f290 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp52) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp52, i32 noundef 1110672)
  %26 = call ptr @memcpy(ptr %r_0x10f290, ptr %tmp52, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp52) #8
  %r_0x10f294 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp54) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp54, i32 noundef 1110676)
  %27 = call ptr @memcpy(ptr %r_0x10f294, ptr %tmp54, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp54) #8
  %r_0x10f298 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp56) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp56, i32 noundef 1110680)
  %28 = call ptr @memcpy(ptr %r_0x10f298, ptr %tmp56, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp56) #8
  %r_0x10f29c = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp58) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp58, i32 noundef 1110684)
  %29 = call ptr @memcpy(ptr %r_0x10f29c, ptr %tmp58, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp58) #8
  %r_0x10f2a0 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp60) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp60, i32 noundef 1110688)
  %30 = call ptr @memcpy(ptr %r_0x10f2a0, ptr %tmp60, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp60) #8
  %r_0x10f300 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp62) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp62, i32 noundef 1110784)
  %31 = call ptr @memcpy(ptr %r_0x10f300, ptr %tmp62, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp62) #8
  %r_0x10f338 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp64) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp64, i32 noundef 1110840)
  %32 = call ptr @memcpy(ptr %r_0x10f338, ptr %tmp64, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp64) #8
  %r_0x10f340 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp66) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp66, i32 noundef 1110848)
  %33 = call ptr @memcpy(ptr %r_0x10f340, ptr %tmp66, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp66) #8
  %r_0x10f344 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp68) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp68, i32 noundef 1110852)
  %34 = call ptr @memcpy(ptr %r_0x10f344, ptr %tmp68, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp68) #8
  %r_0x10f348 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp70) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp70, i32 noundef 1110856)
  %35 = call ptr @memcpy(ptr %r_0x10f348, ptr %tmp70, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp70) #8
  %r_0x10f910 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp72) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp72, i32 noundef 1112336)
  %36 = call ptr @memcpy(ptr %r_0x10f910, ptr %tmp72, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp72) #8
  %r_0x10f914 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp74) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp74, i32 noundef 1112340)
  %37 = call ptr @memcpy(ptr %r_0x10f914, ptr %tmp74, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp74) #8
  %r_0x100b0c = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp76) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp76, i32 noundef 1051404)
  %38 = call ptr @memcpy(ptr %r_0x100b0c, ptr %tmp76, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp76) #8
  %r_0x10f050 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp78) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp78, i32 noundef 1110096)
  %39 = call ptr @memcpy(ptr %r_0x10f050, ptr %tmp78, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp78) #8
  %r_0x10f090 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp80) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp80, i32 noundef 1110160)
  %40 = call ptr @memcpy(ptr %r_0x10f090, ptr %tmp80, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp80) #8
  %r_0x10f200 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp82) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp82, i32 noundef 1110528)
  %41 = call ptr @memcpy(ptr %r_0x10f200, ptr %tmp82, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp82) #8
  %r_0x10f210 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp84) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp84, i32 noundef 1110544)
  %42 = call ptr @memcpy(ptr %r_0x10f210, ptr %tmp84, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp84) #8
  %r_0x10f310 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp86) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp86, i32 noundef 1110800)
  %43 = call ptr @memcpy(ptr %r_0x10f310, ptr %tmp86, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp86) #8
  %r_0x10f314 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp88) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp88, i32 noundef 1110804)
  %44 = call ptr @memcpy(ptr %r_0x10f314, ptr %tmp88, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp88) #8
  %r_0x10f610 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp90) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp90, i32 noundef 1111568)
  %45 = call ptr @memcpy(ptr %r_0x10f610, ptr %tmp90, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp90) #8
  %r_0x10f614 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp92) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp92, i32 noundef 1111572)
  %46 = call ptr @memcpy(ptr %r_0x10f614, ptr %tmp92, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp92) #8
  %r_0x10f800 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp94) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp94, i32 noundef 1112064)
  %47 = call ptr @memcpy(ptr %r_0x10f800, ptr %tmp94, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp94) #8
  %r_0x10f808 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp96) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp96, i32 noundef 1112072)
  %48 = call ptr @memcpy(ptr %r_0x10f808, ptr %tmp96, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp96) #8
  %r_0x10f824 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp98) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp98, i32 noundef 1112100)
  %49 = call ptr @memcpy(ptr %r_0x10f824, ptr %tmp98, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp98) #8
  %r_0x10f830 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp100) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp100, i32 noundef 1112112)
  %50 = call ptr @memcpy(ptr %r_0x10f830, ptr %tmp100, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp100) #8
  %r_0x10f988 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp102) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp102, i32 noundef 1112456)
  %51 = call ptr @memcpy(ptr %r_0x10f988, ptr %tmp102, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp102) #8
  %r_0x10f98c = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp104) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp104, i32 noundef 1112460)
  %52 = call ptr @memcpy(ptr %r_0x10f98c, ptr %tmp104, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp104) #8
  %r_0x10f990 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp106) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp106, i32 noundef 1112464)
  %53 = call ptr @memcpy(ptr %r_0x10f990, ptr %tmp106, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp106) #8
  %r_0x10f998 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp108) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp108, i32 noundef 1112472)
  %54 = call ptr @memcpy(ptr %r_0x10f998, ptr %tmp108, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp108) #8
  %r_0x10f9b0 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp110) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp110, i32 noundef 1112496)
  %55 = call ptr @memcpy(ptr %r_0x10f9b0, ptr %tmp110, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp110) #8
  %r_0x10f9b4 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp112) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp112, i32 noundef 1112500)
  %56 = call ptr @memcpy(ptr %r_0x10f9b4, ptr %tmp112, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp112) #8
  %r_0x10fb04 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp114) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp114, i32 noundef 1112836)
  %57 = call ptr @memcpy(ptr %r_0x10fb04, ptr %tmp114, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp114) #8
  %r_0x10fb08 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp116) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp116, i32 noundef 1112840)
  %58 = call ptr @memcpy(ptr %r_0x10fb08, ptr %tmp116, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp116) #8
  %r_0x137310 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp121) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp121, i32 noundef 1274640)
  %59 = call ptr @memcpy(ptr %r_0x137310, ptr %tmp121, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp121) #8
  %r_0x137360 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp123) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp123, i32 noundef 1274720)
  %60 = call ptr @memcpy(ptr %r_0x137360, ptr %tmp123, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp123) #8
  %r_0x1373ec = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp125) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp125, i32 noundef 1274860)
  %61 = call ptr @memcpy(ptr %r_0x1373ec, ptr %tmp125, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp125) #8
  %r_0x1373f0 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp127) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp127, i32 noundef 1274864)
  %62 = call ptr @memcpy(ptr %r_0x1373f0, ptr %tmp127, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp127) #8
  %r_0x1373f8 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp129) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp129, i32 noundef 1274872)
  %63 = call ptr @memcpy(ptr %r_0x1373f8, ptr %tmp129, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp129) #8
  %r_0x61c140 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp131) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp131, i32 noundef 6406464)
  %64 = call ptr @memcpy(ptr %r_0x61c140, ptr %tmp131, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp131) #8
  %r_0x611200 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp133) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp133, i32 noundef 6361600)
  %65 = call ptr @memcpy(ptr %r_0x611200, ptr %tmp133, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp133) #8
  %r_0x13d8f4 = getelementptr inbounds %struct.gf100_ram, ptr %call7.i.i, i32 0, i32 1, i32 50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp135) #8
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %tmp135, i32 noundef 1300724)
  %66 = call ptr @memcpy(ptr %r_0x13d8f4, ptr %tmp135, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp135) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end28, %do.body21.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %do.end ], [ %call8, %do.body.cleanup_crit_edge ], [ %call18, %do.end28 ], [ %call18, %do.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ramfuc_reg(ptr noalias nocapture writeonly sret(%struct.ramfuc_reg) align 4 %agg.result, i32 noundef %addr) unnamed_addr #5 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_new(ptr noundef %fb, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_ram_new_(ptr noundef nonnull @gf100_ram, ptr noundef %fb, ptr noundef %pram)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 150, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gf100_ram_calc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gf100_ram_calc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 157, i32 3}
!10 = !{ptr @gf100_ram_calc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gf100_ram_calc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 163, i32 3}
!14 = !{ptr @gf100_ram_calc._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gf100_ram_calc._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 173, i32 4}
!18 = !{ptr @gf100_ram_calc._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gf100_ram_calc._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 218, i32 4}
!22 = !{ptr @gf100_ram_calc._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gf100_ram_calc._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gf100_ram_calc._entry.17, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 233, i32 4}
!26 = !{ptr @gf100_ram_calc._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 411, i32 2}
!29 = !{ptr @gf100_ram_init.train0, !30, !"train0", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 425, i32 19}
!31 = !{ptr @gf100_ram_init.train1, !32, !"train1", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 429, i32 19}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 504, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gf100_ram_ctor._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @gf100_ram_ctor._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 508, i32 4}
!41 = !{ptr @gf100_ram_ctor._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gf100_ram_ctor._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 514, i32 4}
!45 = !{ptr @gf100_ram_ctor._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gf100_ram_ctor._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 522, i32 2}
!49 = !{ptr @gf100_ram_ctor._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @gf100_ram_ctor._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 523, i32 2}
!53 = !{ptr @gf100_ram_ctor._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gf100_ram_ctor._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 524, i32 2}
!57 = !{ptr @gf100_ram_ctor._entry.35, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @gf100_ram_ctor._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 585, i32 3}
!61 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gf100_ram_new_._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @gf100_ram_new_._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 591, i32 3}
!66 = !{ptr @gf100_ram_new_._entry.40, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @gf100_ram_new_._entry_ptr.42, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @gf100_ram, !69, !"gf100_ram", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c", i32 657, i32 1}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 5412583}
!81 = !{i64 2156286679}
!82 = !{i8 0, i8 2}
!83 = !{i64 2156300871}
!84 = !{i64 2156301256}
!85 = !{i64 2156345745}
!86 = !{i64 5412165}
!87 = !{i64 2156346191}
!88 = !{i64 2156346649}
!89 = !{i64 2156347113}
!90 = !{i64 2156347551}
!91 = !{i64 2156347976}
!92 = !{i64 2156348427}
!93 = !{i64 2156348891}
!94 = !{i64 2156349329}
!95 = !{i64 2156349754}
!96 = !{i64 2156350268}
!97 = !{i64 2156350730}
!98 = !{i64 2156351115}
