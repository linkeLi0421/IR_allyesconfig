; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.rb_root = type { ptr }

@nvkm_acr_hsf_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: executing %s binary\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_acr_hsf_boot\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_acr_hsf_boot._entry_ptr = internal global ptr @nvkm_acr_hsf_boot._entry, section ".printk_index", align 4
@nvkm_acr_hsf_boot._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s binary failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_acr_hsf_boot._entry_ptr.8 = internal global ptr @nvkm_acr_hsf_boot._entry.5, section ".printk_index", align 4
@nvkm_acr_hsf_boot._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s binary completed successfully\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_acr_hsf_boot._entry_ptr.11 = internal global ptr @nvkm_acr_hsf_boot._entry.9, section ".printk_index", align 4
@nvkm_acr = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_acr_dtor, ptr null, ptr @nvkm_acr_oneinit, ptr null, ptr @nvkm_acr_init, ptr @nvkm_acr_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Acr\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NvAcrWpr\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unload\00", [25 x i8] zeroinitializer }, align 32
@nvkm_acr_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: No LSF(s) present.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_acr_load\00", [18 x i8] zeroinitializer }, align 32
@nvkm_acr_load._entry_ptr = internal global ptr @nvkm_acr_load._entry, section ".printk_index", align 4
@nvkm_acr_load._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: WPR not configured as expected: %016llx-%016llx vs %016llx-%016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_acr_load._entry_ptr.21 = internal global ptr @nvkm_acr_load._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_acr_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: No HSFW(s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_acr_oneinit\00", [47 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry_ptr = internal global ptr @nvkm_acr_oneinit._entry, section ".printk_index", align 4
@nvkm_acr_oneinit._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 277, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s falcon cannot be bootstrapped\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry_ptr.27 = internal global ptr @nvkm_acr_oneinit._entry.24, section ".printk_index", align 4
@nvkm_acr_oneinit._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: WPR region is from 0x%llx-0x%llx (shadow 0x%llx)\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry_ptr.30 = internal global ptr @nvkm_acr_oneinit._entry.28, section ".printk_index", align 4
@nvkm_acr_oneinit._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.2, i32 314, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %08x: %08x %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry_ptr.33 = internal global ptr @nvkm_acr_oneinit._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acr\00", [28 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.2, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: loading %s fw\0A\00", [45 x i8] zeroinitializer }, align 32
@nvkm_acr_oneinit._entry_ptr.37 = internal global ptr @nvkm_acr_oneinit._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gsplite\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fecs\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpccs\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvdec\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sec2\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"minion\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acr/wpr\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NvAcrWprCompare\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NvAcrWprPrevAddr\00", [47 x i8] zeroinitializer }, align 32
@switch.table.nvkm_acr_oneinit = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.45, ptr @.str.43, ptr @.str.45, ptr @.str.45, ptr @.str.44], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 50, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 58, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 62, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"nvkm_acr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 381, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 426, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 432, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 70, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 84, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 95, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 227, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 276, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 295, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 313, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 327, i32 50 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 339, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 23, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 24, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 25, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 26, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 27, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 28, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 29, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 31, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 395, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 406, i32 47 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 407, i32 47 }
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"switch.table.nvkm_acr_oneinit\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @nvkm_acr_hsf_boot._entry, ptr @nvkm_acr_hsf_boot._entry.5, ptr @nvkm_acr_hsf_boot._entry.9, ptr @nvkm_acr_hsf_boot._entry_ptr, ptr @nvkm_acr_hsf_boot._entry_ptr.11, ptr @nvkm_acr_hsf_boot._entry_ptr.8, ptr @nvkm_acr_load._entry, ptr @nvkm_acr_load._entry.19, ptr @nvkm_acr_load._entry_ptr, ptr @nvkm_acr_load._entry_ptr.21, ptr @nvkm_acr_oneinit._entry, ptr @nvkm_acr_oneinit._entry.24, ptr @nvkm_acr_oneinit._entry.28, ptr @nvkm_acr_oneinit._entry.31, ptr @nvkm_acr_oneinit._entry.35, ptr @nvkm_acr_oneinit._entry_ptr, ptr @nvkm_acr_oneinit._entry_ptr.27, ptr @nvkm_acr_oneinit._entry_ptr.30, ptr @nvkm_acr_oneinit._entry_ptr.33, ptr @nvkm_acr_oneinit._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @nvkm_acr, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.nvkm_acr_oneinit], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_hsf_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_hsf_boot._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_hsf_boot._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_load._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_oneinit._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_oneinit._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_oneinit._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_oneinit._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_acr_oneinit to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_hsf_boot(ptr noundef %acr, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  %hsf1.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %hsf1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %hsf1.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr i8, ptr %.pn.i, i32 -4
  %1 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %nvkm_acr_hsf_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

nvkm_acr_hsf_find.exit:                           ; preds = %for.body.i
  %name3.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %hsf.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %hsf.0.le.i, null
  br i1 %tobool.not, label %nvkm_acr_hsf_find.exit.cleanup_crit_edge, label %do.body

nvkm_acr_hsf_find.exit.cleanup_crit_edge:         ; preds = %nvkm_acr_hsf_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %nvkm_acr_hsf_find.exit
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %do.end, label %do.body.if.end6_crit_edge

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %name4 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %name3.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name3.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %name4, ptr noundef %10) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge
  %falcon = getelementptr i8, ptr %.pn.i, i32 52
  %11 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %falcon, align 4
  %call9 = tail call i32 @nvkm_falcon_get(ptr noundef %12, ptr noundef %subdev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %hsf.0.le.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsf.0.le.i, align 4
  %boot = getelementptr inbounds %struct.nvkm_acr_hsf_func, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %boot, align 4
  %call13 = tail call i32 %16(ptr noundef %acr, ptr noundef nonnull %hsf.0.le.i) #8
  %17 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %falcon, align 4
  tail call void @nvkm_falcon_put(ptr noundef %18, ptr noundef %subdev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  br i1 %tobool15.not, label %do.body34, label %do.body17

do.body17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20.not = icmp eq i32 %20, 0
  br i1 %cmp20.not, label %do.body17.cleanup_crit_edge, label %do.end24

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %device25 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device25, align 4
  %dev26 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev26, align 8
  %name27 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %name3.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name3.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6, ptr noundef %name27, ptr noundef %26) #12
  br label %cleanup

do.body34:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp37 = icmp ugt i32 %20, 3
  br i1 %cmp37, label %do.end41, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end41:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %device42 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device42, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev43, align 8
  %name44 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %name3.i.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name3.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.10, ptr noundef %name44, ptr noundef %32) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.body34.cleanup_crit_edge, %do.end24, %do.body17.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %nvkm_acr_hsf_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %nvkm_acr_hsf_find.exit.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call13, %do.end24 ], [ %call13, %do.body17.cleanup_crit_edge ], [ 0, %do.end41 ], [ 0, %do.body34.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_bootstrap_falcons(ptr nocapture noundef readonly %device, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %mask.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mask, ptr %mask.addr, align 4
  %acr1.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 38
  %1 = ptrtoint ptr %acr1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %acr1.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.i:                                        ; preds = %entry
  %lsf2.i = getelementptr inbounds %struct.nvkm_acr, ptr %2, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i
  %.pn.in.i = phi ptr [ %lsf2.i, %if.then.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lsf2.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %lsf.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %4 = ptrtoint ptr %lsf.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lsf.0.i, align 4
  %bootstrap_falcon.i = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %bootstrap_falcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bootstrap_falcon.i, align 8
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i_crit_edge, label %nvkm_acr_falcon.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

nvkm_acr_falcon.exit:                             ; preds = %for.body.i
  %lsf.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %lsf.0.i.le, null
  br i1 %tobool.not, label %nvkm_acr_falcon.exit.if.then_crit_edge, label %if.end11

nvkm_acr_falcon.exit.if.then_crit_edge:           ; preds = %nvkm_acr_falcon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %nvkm_acr_falcon.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %conv = zext i32 %mask to i64
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %bootstrap_falcons = getelementptr inbounds %struct.nvkm_acr_func, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bootstrap_falcons to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bootstrap_falcons, align 8
  %and = and i64 %11, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %cmp = icmp eq i64 %and, %conv
  br i1 %cmp, label %if.then4, label %if.then.cleanup40_crit_edge

if.then.cleanup40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.then4:                                         ; preds = %if.then
  %done.i.i = getelementptr inbounds %struct.nvkm_acr, ptr %2, i32 0, i32 13
  %12 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %done.i.i, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then4.nvkm_acr_reload.exit_crit_edge, label %if.then.i.i

if.then4.nvkm_acr_reload.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_acr_reload.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %2, ptr noundef nonnull @.str.16) #8
  %14 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %done.i.i, align 8
  br label %nvkm_acr_reload.exit

nvkm_acr_reload.exit:                             ; preds = %if.then.i.i, %if.then4.nvkm_acr_reload.exit_crit_edge
  %call.i = tail call fastcc i32 @nvkm_acr_load(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end, label %nvkm_acr_reload.exit.cleanup40_crit_edge

nvkm_acr_reload.exit.cleanup40_crit_edge:         ; preds = %nvkm_acr_reload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end:                                           ; preds = %nvkm_acr_reload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %done.i.i, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool8.not, i32 -22, i32 0
  br label %cleanup40

if.end11:                                         ; preds = %nvkm_acr_falcon.exit
  %conv12 = zext i32 %mask to i64
  %17 = ptrtoint ptr %lsf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lsf.0.i.le, align 4
  %bootstrap_falcons14 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %bootstrap_falcons14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bootstrap_falcons14, align 8
  %and15 = and i64 %20, %conv12
  call void @__sanitizer_cov_trace_cmp8(i64 %and15, i64 %conv12)
  %cmp17.not = icmp eq i64 %and15, %conv12
  br i1 %cmp17.not, label %if.end20, label %if.end11.cleanup40_crit_edge

if.end11.cleanup40_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end20:                                         ; preds = %if.end11
  %bootstrap_multiple_falcons = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %bootstrap_multiple_falcons to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bootstrap_multiple_falcons, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %falcon = getelementptr i8, ptr %.pn.i, i32 -8
  %23 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %falcon, align 4
  %call26 = tail call i32 %22(ptr noundef %24, i32 noundef %mask) #8
  br label %cleanup40

if.end27:                                         ; preds = %if.end20
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.addr, i32 noundef 11, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call28)
  %cmp2960 = icmp ult i32 %call28, 11
  br i1 %cmp2960, label %for.body.lr.ph, label %if.end27.cleanup40_crit_edge

if.end27.cleanup40_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %if.end27
  %falcon33 = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.061 = phi i32 [ %call28, %for.body.lr.ph ], [ %call39, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %lsf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lsf.0.i.le, align 4
  %bootstrap_falcon = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %bootstrap_falcon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bootstrap_falcon, align 8
  %29 = ptrtoint ptr %falcon33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %falcon33, align 4
  %call34 = call i32 %28(ptr noundef %30, i32 noundef %id.061) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc, label %for.body.cleanup40_crit_edge

for.body.cleanup40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

for.inc:                                          ; preds = %for.body
  %add = add nuw nsw i32 %id.061, 1
  %call39 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.addr, i32 noundef 11, i32 noundef %add) #8
  %cmp29 = icmp ult i32 %call39, 11
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.cleanup40_crit_edge

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %for.body.cleanup40_crit_edge, %if.end27.cleanup40_crit_edge, %if.then23, %if.end11.cleanup40_crit_edge, %if.end, %nvkm_acr_reload.exit.cleanup40_crit_edge, %if.then.cleanup40_crit_edge
  %retval.3 = phi i32 [ %call26, %if.then23 ], [ %cond, %if.end ], [ %call.i, %nvkm_acr_reload.exit.cleanup40_crit_edge ], [ -38, %if.then.cleanup40_crit_edge ], [ -38, %if.end11.cleanup40_crit_edge ], [ 0, %if.end27.cleanup40_crit_edge ], [ %call34, %for.body.cleanup40_crit_edge ], [ 0, %for.inc.cleanup40_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvkm_acr_managed_falcon(ptr nocapture noundef readonly %device, i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acr1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 38
  %0 = ptrtoint ptr %acr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %managed_falcons = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %managed_falcons to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %managed_falcons, align 8
  %sh_prom = zext i32 %id to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end4 ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pacr) local_unnamed_addr #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #13
  %1 = ptrtoint ptr %pacr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pacr, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end:                                           ; preds = %entry
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_acr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #8
  %hsfw = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %hsfw to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %hsfw, ptr %hsfw, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hsfw, ptr %prev.i, align 4
  %lsfw = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %lsfw to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %lsfw, ptr %lsfw, align 8
  %prev.i111 = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lsfw, ptr %prev.i111, align 4
  %hsf = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %hsf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %hsf, ptr %hsf, align 8
  %prev.i112 = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hsf, ptr %prev.i112, align 4
  %lsf = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %lsf to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lsf, ptr %lsf, align 8
  %prev.i113 = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lsf, ptr %prev.i113, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #8
  %10 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12)
  %device3 = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device3, align 8
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfgopt, align 4
  %call5 = call i32 @nvkm_longopt(ptr noundef %14, ptr noundef nonnull %_option, i32 noundef -2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp = icmp sgt i32 %call5, -2
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %21

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %_next.0146 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %if.end.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %_next.0146, i32 0, i32 1
  %15 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %load, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.rhs.if.then51_crit_edge, label %for.body

land.rhs.if.then51_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

for.body:                                         ; preds = %land.rhs
  %17 = ptrtoint ptr %_next.0146 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_next.0146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call5)
  %cmp9 = icmp ne i32 %18, %call5
  %incdec.ptr = getelementptr %struct.nvkm_acr_fwif, ptr %_next.0146, i32 1
  %tobool7.not153 = icmp eq ptr %_next.0146, null
  %tobool7.not = select i1 %cmp9, i1 true, i1 %tobool7.not153
  br i1 %tobool7.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12)
  %19 = ptrtoint ptr %_next.0146 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_next.0146, align 4
  br label %22

21:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12)
  br label %22

22:                                               ; preds = %21, %cond.end
  %.sink169 = phi i32 [ %20, %cond.end ], [ -1, %21 ]
  %_fwif.2119129 = phi ptr [ %_next.0146, %cond.end ], [ null, %21 ]
  %23 = phi ptr [ %_next.0146, %cond.end ], [ %fwif, %21 ]
  %24 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device3, align 8
  %cfgopt22 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %cfgopt22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfgopt22, align 4
  %call24 = call i32 @nvkm_longopt(ptr noundef %27, ptr noundef nonnull %_option, i32 noundef %.sink169) #8
  %load31147 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %load31147 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %load31147, align 4
  %tobool32.not148 = icmp eq ptr %29, null
  br i1 %tobool32.not148, label %.if.end53_crit_edge, label %for.body33.lr.ph

.if.end53_crit_edge:                              ; preds = %22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.body33.lr.ph:                                 ; preds = %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp34 = icmp sgt i32 %call24, -1
  br label %for.body33

for.body33:                                       ; preds = %for.inc46.for.body33_crit_edge, %for.body33.lr.ph
  %30 = phi ptr [ %29, %for.body33.lr.ph ], [ %34, %for.inc46.for.body33_crit_edge ]
  %_next.1149 = phi ptr [ %23, %for.body33.lr.ph ], [ %incdec.ptr47, %for.inc46.for.body33_crit_edge ]
  br i1 %cmp34, label %if.end49, label %cond.end38

cond.end38:                                       ; preds = %for.body33
  %31 = ptrtoint ptr %_next.1149 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_next.1149, align 4
  %call41 = call i32 %30(ptr noundef nonnull %call7.i.i, i32 noundef %32, ptr noundef %_next.1149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %cond.end38.if.end53_crit_edge, label %for.inc46

cond.end38.if.end53_crit_edge:                    ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.inc46:                                        ; preds = %cond.end38
  %incdec.ptr47 = getelementptr %struct.nvkm_acr_fwif, ptr %_next.1149, i32 1
  %load31 = getelementptr %struct.nvkm_acr_fwif, ptr %_next.1149, i32 1, i32 1
  %33 = ptrtoint ptr %load31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %load31, align 4
  %tobool32.not = icmp eq ptr %34, null
  br i1 %tobool32.not, label %for.inc46.if.then51_crit_edge, label %for.inc46.for.body33_crit_edge

for.inc46.for.body33_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.inc46.if.then51_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end49:                                         ; preds = %for.body33
  %call41134 = call i32 %29(ptr noundef nonnull %call7.i.i, i32 noundef %call24, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41134)
  %tobool50.not = icmp eq i32 %call41134, 0
  br i1 %tobool50.not, label %if.end49.if.end53_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %for.inc46.if.then51_crit_edge, %land.rhs.if.then51_crit_edge
  %_ret.2140 = phi i32 [ %call41134, %if.end49.if.then51_crit_edge ], [ %call41, %for.inc46.if.then51_crit_edge ], [ -22, %land.rhs.if.then51_crit_edge ]
  %35 = inttoptr i32 %_ret.2140 to ptr
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge, %cond.end38.if.end53_crit_edge, %.if.end53_crit_edge
  %_fwif.4 = phi ptr [ %35, %if.then51 ], [ %23, %if.end49.if.end53_crit_edge ], [ %_fwif.2119129, %.if.end53_crit_edge ], [ %_next.1149, %cond.end38.if.end53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #8
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup68

if.end57:                                         ; preds = %if.end53
  %func = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %_fwif.4, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %func, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %call7.i.i, align 8
  %cfgopt59 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %40 = ptrtoint ptr %cfgopt59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfgopt59, align 4
  %call60 = call i32 @nvkm_longopt(ptr noundef %41, ptr noundef nonnull @.str.15, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60)
  %cmp61 = icmp sgt i32 %call60, -1
  br i1 %cmp61, label %if.then62, label %if.end57.cleanup68_crit_edge

if.end57.cleanup68_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.then62:                                        ; preds = %if.end57
  %42 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device3, align 8
  %wpr_fw.i = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 14
  %call.i = call i32 @nvkm_firmware_get(ptr noundef %subdev, ptr noundef nonnull @.str.46, i32 noundef %call60, ptr noundef %wpr_fw.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i114 = icmp slt i32 %call.i, 0
  br i1 %cmp.i114, label %if.then62.cleanup68_crit_edge, label %if.end.i

if.then62.cleanup68_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end.i:                                         ; preds = %if.then62
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %wpr_parse.i = getelementptr inbounds %struct.nvkm_acr_func, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %wpr_parse.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wpr_parse.i, align 8
  %call3.i = call i32 %47(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %nvkm_acr_ctor_wpr.exit, label %if.end.i.cleanup68_crit_edge

if.end.i.cleanup68_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

nvkm_acr_ctor_wpr.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 6
  %48 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfgopt.i, align 4
  %call6.i = call zeroext i1 @nvkm_boolopt(ptr noundef %49, ptr noundef nonnull @.str.47, i1 noundef zeroext false) #8
  %wpr_comp.i = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 15
  %frombool.i = zext i1 %call6.i to i8
  %50 = ptrtoint ptr %wpr_comp.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool.i, ptr %wpr_comp.i, align 8
  %51 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfgopt.i, align 4
  %call8.i = call i32 @nvkm_longopt(ptr noundef %52, ptr noundef nonnull @.str.48, i32 noundef 0) #8
  %conv.i = sext i32 %call8.i to i64
  %wpr_prev.i = getelementptr inbounds %struct.nvkm_acr, ptr %call7.i.i, i32 0, i32 16
  %53 = ptrtoint ptr %wpr_prev.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv.i, ptr %wpr_prev.i, align 8
  br label %cleanup68

cleanup68:                                        ; preds = %nvkm_acr_ctor_wpr.exit, %if.end.i.cleanup68_crit_edge, %if.then62.cleanup68_crit_edge, %if.end57.cleanup68_crit_edge, %if.then55, %entry.cleanup68_crit_edge
  %retval.1 = phi i32 [ %36, %if.then55 ], [ -12, %entry.cleanup68_crit_edge ], [ 0, %nvkm_acr_ctor_wpr.exit ], [ 0, %if.end57.cleanup68_crit_edge ], [ %call3.i, %if.end.i.cleanup68_crit_edge ], [ %call.i, %if.then62.cleanup68_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_acr_load(ptr noundef %acr) unnamed_addr #0 align 64 {
entry:
  %start = alloca i64, align 8
  %limit = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #8
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %limit) #8
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %limit, align 8, !annotation !92
  %lsf2 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 5
  %2 = ptrtoint ptr %lsf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lsf2, align 4
  %cmp.i.not = icmp eq ptr %3, %lsf2
  br i1 %cmp.i.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef %name) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %10 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acr, align 8
  %init = getelementptr inbounds %struct.nvkm_acr_func, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 8
  %call8 = tail call i32 %13(ptr noundef %acr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acr, align 8
  %wpr_check = getelementptr inbounds %struct.nvkm_acr_func, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %wpr_check to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wpr_check, align 4
  call void %17(ptr noundef %acr, ptr noundef nonnull %start, ptr noundef nonnull %limit) #8
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %wpr_start = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 8
  %20 = ptrtoint ptr %wpr_start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wpr_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp13.not = icmp eq i64 %19, %21
  br i1 %cmp13.not, label %lor.lhs.false, label %if.end11.do.body16_crit_edge

if.end11.do.body16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

lor.lhs.false:                                    ; preds = %if.end11
  %22 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %limit, align 8
  %wpr_end = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %24 = ptrtoint ptr %wpr_end to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wpr_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp14.not = icmp eq i64 %23, %25
  br i1 %cmp14.not, label %if.end33, label %lor.lhs.false.do.body16_crit_edge

lor.lhs.false.do.body16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body16:                                        ; preds = %lor.lhs.false.do.body16_crit_edge, %if.end11.do.body16_crit_edge
  %debug18 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %debug18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp19.not = icmp eq i32 %27, 0
  br i1 %cmp19.not, label %do.body16.cleanup_crit_edge, label %do.end23

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end23:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %device24 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device24, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25, align 8
  %name26 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  %wpr_end29 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 9
  %32 = ptrtoint ptr %wpr_end29 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wpr_end29, align 8
  %34 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %limit, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20, ptr noundef %name26, i64 noundef %21, i64 noundef %33, i64 noundef %19, i64 noundef %35) #12
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false
  %done = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 13
  %36 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %done, align 8
  %37 = ptrtoint ptr %lsf2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn80 = load ptr, ptr %lsf2, align 4
  %cmp36.not81 = icmp eq ptr %.pn80, %lsf2
  br i1 %cmp36.not81, label %if.end33.cleanup_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %.pn82 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %if.end33.for.body_crit_edge ]
  %lsf.0 = getelementptr i8, ptr %.pn82, i32 -12
  %38 = ptrtoint ptr %lsf.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lsf.0, align 4
  %boot = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %boot, align 8
  %tobool38.not = icmp eq ptr %41, null
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.then39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %falcon = getelementptr i8, ptr %.pn82, i32 -8
  %42 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %falcon, align 4
  %call42 = call i32 %41(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then39.for.inc_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39.for.inc_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %44 = ptrtoint ptr %.pn82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn82, align 4
  %cmp36.not = icmp eq ptr %.pn, %lsf2
  br i1 %cmp36.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end23, %do.body16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -5, %do.end23 ], [ -5, %do.body16.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %call42, %if.then39.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %limit) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_acr_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hsf2 = getelementptr i8, ptr %subdev, i32 60
  %0 = ptrtoint ptr %hsf2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsf2, align 8
  %cmp.not75 = icmp eq ptr %1, %hsf2
  br i1 %cmp.not75, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vmm = getelementptr i8, ptr %subdev, i32 128
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in76 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %hsf.0 = getelementptr i8, ptr %.pn.in76, i32 -8
  %2 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in76, align 4
  %3 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vmm, align 4
  %vma = getelementptr i8, ptr %.pn.in76, i32 48
  tail call void @nvkm_vmm_put(ptr noundef %4, ptr noundef %vma) #8
  %ucode = getelementptr i8, ptr %.pn.in76, i32 44
  tail call void @nvkm_memory_unref(ptr noundef %ucode) #8
  %imem = getelementptr i8, ptr %.pn.in76, i32 16
  %5 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %imem, align 4
  tail call void @kfree(ptr noundef %6) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in76) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in76, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in76, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in76, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in76, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %hsf.0) #8
  %cmp.not = icmp eq ptr %.pn, %hsf2
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %vmm17 = getelementptr i8, ptr %subdev, i32 128
  %15 = ptrtoint ptr %vmm17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vmm17, align 4
  %inst = getelementptr i8, ptr %subdev, i32 124
  %17 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inst, align 8
  tail call void @nvkm_vmm_part(ptr noundef %16, ptr noundef %18) #8
  tail call void @nvkm_vmm_unref(ptr noundef %vmm17) #8
  tail call void @nvkm_memory_unref(ptr noundef %inst) #8
  %wpr = getelementptr i8, ptr %subdev, i32 92
  tail call void @nvkm_memory_unref(ptr noundef %wpr) #8
  %lsf21 = getelementptr i8, ptr %subdev, i32 76
  %19 = ptrtoint ptr %lsf21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lsf21, align 8
  %cmp33.not78 = icmp eq ptr %20, %lsf21
  br i1 %cmp33.not78, label %for.end.for.end43_crit_edge, label %for.end.for.body35_crit_edge

for.end.for.body35_crit_edge:                     ; preds = %for.end
  br label %for.body35

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.body35:                                       ; preds = %list_del.exit74.for.body35_crit_edge, %for.end.for.body35_crit_edge
  %.pn66.in79 = phi ptr [ %.pn66, %list_del.exit74.for.body35_crit_edge ], [ %20, %for.end.for.body35_crit_edge ]
  %lsf.0 = getelementptr i8, ptr %.pn66.in79, i32 -12
  %21 = ptrtoint ptr %.pn66.in79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn66 = load ptr, ptr %.pn66.in79, align 4
  %call.i.i69 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn66.in79) #8
  br i1 %call.i.i69, label %if.end.i.i72, label %for.body35.list_del.exit74_crit_edge

for.body35.list_del.exit74_crit_edge:             ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit74

if.end.i.i72:                                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i70 = getelementptr inbounds %struct.list_head, ptr %.pn66.in79, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i70, align 4
  %24 = ptrtoint ptr %.pn66.in79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn66.in79, align 4
  %prev1.i.i.i71 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i71, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit74

list_del.exit74:                                  ; preds = %if.end.i.i72, %for.body35.list_del.exit74_crit_edge
  %28 = ptrtoint ptr %.pn66.in79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn66.in79, align 4
  %prev.i73 = getelementptr inbounds %struct.list_head, ptr %.pn66.in79, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i73, align 4
  tail call void @kfree(ptr noundef %lsf.0) #8
  %cmp33.not = icmp eq ptr %.pn66, %lsf21
  br i1 %cmp33.not, label %list_del.exit74.for.end43_crit_edge, label %list_del.exit74.for.body35_crit_edge

list_del.exit74.for.body35_crit_edge:             ; preds = %list_del.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

list_del.exit74.for.end43_crit_edge:              ; preds = %list_del.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.end43:                                        ; preds = %list_del.exit74.for.end43_crit_edge, %for.end.for.end43_crit_edge
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %add.ptr) #8
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %add.ptr) #8
  %wpr_fw.i = getelementptr i8, ptr %subdev, i32 136
  %30 = ptrtoint ptr %wpr_fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wpr_fw.i, align 4
  tail call void @nvkm_firmware_put(ptr noundef %31) #8
  %32 = ptrtoint ptr %wpr_fw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %wpr_fw.i, align 4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_acr_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %hsfw2 = getelementptr i8, ptr %subdev, i32 52
  %2 = ptrtoint ptr %hsfw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hsfw2, align 4
  %cmp.i.not = icmp eq ptr %3, %hsfw2
  br i1 %cmp.i.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef %name) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %add.ptr) #8
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %add.ptr) #8
  %wpr_fw.i = getelementptr i8, ptr %subdev, i32 136
  %8 = ptrtoint ptr %wpr_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wpr_fw.i, align 4
  tail call void @nvkm_firmware_put(ptr noundef %9) #8
  %10 = ptrtoint ptr %wpr_fw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wpr_fw.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %lsfw10 = getelementptr i8, ptr %subdev, i32 68
  %11 = ptrtoint ptr %lsfw10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lsfw10, align 8
  %cmp19.not439 = icmp eq ptr %12, %lsfw10
  br i1 %cmp19.not439, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %wpr_fw = getelementptr i8, ptr %subdev, i32 136
  %lsf42 = getelementptr i8, ptr %subdev, i32 76
  %prev.i = getelementptr i8, ptr %subdev, i32 80
  %managed_falcons = getelementptr i8, ptr %subdev, i32 84
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in441 = phi ptr [ %12, %for.body.lr.ph ], [ %.pn444, %for.inc.for.body_crit_edge ]
  %wpr_size.0440 = phi i32 [ 0, %for.body.lr.ph ], [ %wpr_size.2, %for.inc.for.body_crit_edge ]
  %lsfw.0442 = getelementptr i8, ptr %.pn.in441, i32 -12
  %13 = ptrtoint ptr %.pn.in441 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn444 = load ptr, ptr %.pn.in441, align 4
  %14 = ptrtoint ptr %wpr_fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wpr_fw, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %for.body.if.end26_crit_edge, label %if.then21

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %for.body
  %16 = ptrtoint ptr %lsfw.0442 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsfw.0442, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvkm_acr_lsfw_del(ptr noundef %lsfw.0442) #8
  br label %for.inc

if.end24:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %for.body.if.end26_crit_edge
  %wpr_size.1 = phi i32 [ %19, %if.end24 ], [ %wpr_size.0440, %for.body.if.end26_crit_edge ]
  %falcon = getelementptr i8, ptr %.pn.in441, i32 -8
  %20 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %falcon, align 4
  %call27 = tail call i32 @nvkm_falcon_get(ptr noundef %21, ptr noundef %subdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %falcon, align 4
  tail call void @nvkm_falcon_put(ptr noundef %23, ptr noundef %subdev) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 20) #13
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %25 = ptrtoint ptr %lsfw.0442 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lsfw.0442, align 4
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %call7.i, align 8
  %28 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %falcon, align 4
  %falcon39 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %call7.i, i32 0, i32 1
  %30 = ptrtoint ptr %falcon39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %falcon39, align 4
  %id = getelementptr i8, ptr %.pn.in441, i32 -4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %id40 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %call7.i, i32 0, i32 2
  %33 = ptrtoint ptr %id40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %id40, align 8
  %head41 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %call7.i, i32 0, i32 3
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head41, ptr noundef %35, ptr noundef %lsf42) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.list_add_tail.exit_crit_edge

if.end35.list_add_tail.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head41, ptr %prev.i, align 4
  %37 = ptrtoint ptr %head41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lsf42, ptr %head41, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %call7.i, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 8
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %head41, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end35.list_add_tail.exit_crit_edge
  %40 = ptrtoint ptr %id40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id40, align 8
  %sh_prom = zext i32 %41 to i64
  %shl = shl nuw i64 1, %sh_prom
  %42 = ptrtoint ptr %managed_falcons to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %managed_falcons, align 8
  %or = or i64 %shl, %43
  store i64 %or, ptr %managed_falcons, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %if.then23
  %wpr_size.2 = phi i32 [ %wpr_size.1, %list_add_tail.exit ], [ %wpr_size.0440, %if.then23 ]
  %cmp19.not = icmp eq ptr %.pn444, %lsfw10
  br i1 %cmp19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %wpr_size.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %wpr_size.2, %for.inc.for.end_crit_edge ]
  %acr1.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 38
  %44 = ptrtoint ptr %acr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %acr1.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %for.end.if.else_crit_edge, label %if.then.i

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then.i:                                        ; preds = %for.end
  %lsf2.i = getelementptr inbounds %struct.nvkm_acr, ptr %45, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i
  %.pn.in.i = phi ptr [ %lsf2.i, %if.then.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %46 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lsf2.i
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %lsf.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %47 = ptrtoint ptr %lsf.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lsf.0.i, align 4
  %bootstrap_falcon.i = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %bootstrap_falcon.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bootstrap_falcon.i, align 8
  %tobool4.not.i = icmp eq ptr %50, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i_crit_edge, label %nvkm_acr_falcon.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

nvkm_acr_falcon.exit:                             ; preds = %for.body.i
  %lsf.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool50.not = icmp eq ptr %lsf.0.i.le, null
  br i1 %tobool50.not, label %nvkm_acr_falcon.exit.if.else_crit_edge, label %if.then51

nvkm_acr_falcon.exit.if.else_crit_edge:           ; preds = %nvkm_acr_falcon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then51:                                        ; preds = %nvkm_acr_falcon.exit
  %51 = ptrtoint ptr %lsf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lsf.0.i.le, align 4
  %bootstrap_falcons = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %bootstrap_falcons to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bootstrap_falcons, align 8
  %lsf54 = getelementptr i8, ptr %subdev, i32 76
  %call.i.i410 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #8
  br i1 %call.i.i410, label %if.end.i.i411, label %if.then51.__list_del_entry.exit.i_crit_edge

if.then51.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i411:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i411, %if.then51.__list_del_entry.exit.i_crit_edge
  %61 = ptrtoint ptr %lsf54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lsf54, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.i, ptr noundef %lsf54, ptr noundef %62) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end57_crit_edge

__list_del_entry.exit.i.if.end57_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %.pn.i, ptr %prev1.i.i2.i, align 4
  %64 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %.pn.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %lsf54, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %lsf54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %.pn.i, ptr %lsf54, align 4
  br label %if.end57

if.else:                                          ; preds = %nvkm_acr_falcon.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge, %for.end.if.else_crit_edge
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %bootstrap_falcons56 = getelementptr inbounds %struct.nvkm_acr_func, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %bootstrap_falcons56 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bootstrap_falcons56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.end.i.i.i, %__list_del_entry.exit.i.if.end57_crit_edge
  %falcons.0 = phi i64 [ %70, %if.else ], [ %54, %__list_del_entry.exit.i.if.end57_crit_edge ], [ %54, %if.end.i.i.i ]
  %71 = ptrtoint ptr %lsfw10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lsfw10, align 8
  %cmp71.not447 = icmp eq ptr %72, %lsfw10
  br i1 %cmp71.not447, label %if.end57.for.end103_crit_edge, label %for.body73.lr.ph

if.end57.for.end103_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103

for.body73.lr.ph:                                 ; preds = %if.end57
  %debug81 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %name89 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %for.body73

for.body73:                                       ; preds = %for.inc97.for.body73_crit_edge, %for.body73.lr.ph
  %.pn406.in448 = phi ptr [ %72, %for.body73.lr.ph ], [ %.pn406450, %for.inc97.for.body73_crit_edge ]
  %lsfw.1449 = getelementptr i8, ptr %.pn406.in448, i32 -12
  %73 = ptrtoint ptr %.pn406.in448 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn406450 = load ptr, ptr %.pn406.in448, align 4
  %id74 = getelementptr i8, ptr %.pn406.in448, i32 -4
  %74 = ptrtoint ptr %id74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id74, align 4
  %sh_prom75 = zext i32 %75 to i64
  %shl76 = shl nuw i64 1, %sh_prom75
  %and = and i64 %shl76, %falcons.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool77.not = icmp eq i64 %and, 0
  br i1 %tobool77.not, label %do.body79, label %for.body73.for.inc97_crit_edge

for.body73.for.inc97_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc97

do.body79:                                        ; preds = %for.body73
  %76 = ptrtoint ptr %debug81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp82 = icmp ugt i32 %77, 1
  br i1 %cmp82, label %do.end86, label %do.body79.if.end93_crit_edge

do.body79.if.end93_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.end86:                                         ; preds = %do.body79
  %78 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device1, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %75)
  %82 = icmp ult i32 %75, 11
  br i1 %82, label %switch.lookup, label %do.end86.nvkm_acr_lsf_id.exit_crit_edge

do.end86.nvkm_acr_lsf_id.exit_crit_edge:          ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_acr_lsf_id.exit

switch.lookup:                                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.nvkm_acr_oneinit, i32 0, i32 %75
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvkm_acr_lsf_id.exit

nvkm_acr_lsf_id.exit:                             ; preds = %switch.lookup, %do.end86.nvkm_acr_lsf_id.exit_crit_edge
  %retval.0.i412 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.45, %do.end86.nvkm_acr_lsf_id.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %81, ptr noundef nonnull @.str.25, ptr noundef %name89, ptr noundef nonnull %retval.0.i412) #12
  br label %if.end93

if.end93:                                         ; preds = %nvkm_acr_lsf_id.exit, %do.body79.if.end93_crit_edge
  tail call void @nvkm_acr_lsfw_del(ptr noundef %lsfw.1449) #8
  br label %for.inc97

for.inc97:                                        ; preds = %if.end93, %for.body73.for.inc97_crit_edge
  %cmp71.not = icmp eq ptr %.pn406450, %lsfw10
  br i1 %cmp71.not, label %for.inc97.for.end103_crit_edge, label %for.inc97.for.body73_crit_edge

for.inc97.for.body73_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

for.inc97.for.end103_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103

for.end103:                                       ; preds = %for.inc97.for.end103_crit_edge, %if.end57.for.end103_crit_edge
  %wpr_fw104 = getelementptr i8, ptr %subdev, i32 136
  %84 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wpr_fw104, align 4
  %tobool105.not = icmp eq ptr %85, null
  br i1 %tobool105.not, label %for.end103.if.then107_crit_edge, label %lor.lhs.false

for.end103.if.then107_crit_edge:                  ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

lor.lhs.false:                                    ; preds = %for.end103
  %wpr_comp = getelementptr i8, ptr %subdev, i32 140
  %86 = ptrtoint ptr %wpr_comp to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %wpr_comp, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool106.not = icmp eq i8 %87, 0
  br i1 %tobool106.not, label %lor.lhs.false.if.end110_crit_edge, label %lor.lhs.false.if.then107_crit_edge

lor.lhs.false.if.then107_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then107:                                       ; preds = %lor.lhs.false.if.then107_crit_edge, %for.end103.if.then107_crit_edge
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 8
  %wpr_layout = getelementptr inbounds %struct.nvkm_acr_func, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %wpr_layout to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wpr_layout, align 4
  %call109 = tail call i32 %91(ptr noundef %add.ptr) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %lor.lhs.false.if.end110_crit_edge
  %wpr_size.3 = phi i32 [ %call109, %if.then107 ], [ %wpr_size.0.lcssa, %lor.lhs.false.if.end110_crit_edge ]
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr, align 8
  %wpr_alloc = getelementptr inbounds %struct.nvkm_acr_func, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %wpr_alloc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wpr_alloc, align 8
  %call112 = tail call i32 %95(ptr noundef %add.ptr, i32 noundef %wpr_size.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %do.body116, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body116:                                       ; preds = %if.end110
  %debug118 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %96 = ptrtoint ptr %debug118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp119 = icmp ugt i32 %97, 3
  br i1 %cmp119, label %do.end123, label %do.body116.if.end128_crit_edge

do.body116.if.end128_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.end123:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device1, align 4
  %dev125 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev125, align 8
  %name126 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %wpr_start = getelementptr i8, ptr %subdev, i32 100
  %102 = ptrtoint ptr %wpr_start to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %wpr_start, align 8
  %wpr_end = getelementptr i8, ptr %subdev, i32 108
  %104 = ptrtoint ptr %wpr_end to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %wpr_end, align 8
  %shadow_start = getelementptr i8, ptr %subdev, i32 116
  %106 = ptrtoint ptr %shadow_start to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %shadow_start, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.29, ptr noundef %name126, i64 noundef %103, i64 noundef %105, i64 noundef %107) #12
  br label %if.end128

if.end128:                                        ; preds = %do.end123, %do.body116.if.end128_crit_edge
  %wpr = getelementptr i8, ptr %subdev, i32 92
  %108 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wpr, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %acquire, align 4
  %call133 = tail call ptr %113(ptr noundef %109) #8
  %114 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wpr_fw104, align 4
  %tobool135.not = icmp eq ptr %115, null
  br i1 %tobool135.not, label %if.end128.if.then155_crit_edge, label %land.lhs.true

if.end128.if.then155_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then155

land.lhs.true:                                    ; preds = %if.end128
  %wpr_comp136 = getelementptr i8, ptr %subdev, i32 140
  %116 = ptrtoint ptr %wpr_comp136 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %wpr_comp136, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool137.not = icmp eq i8 %117, 0
  br i1 %tobool137.not, label %do.body139, label %land.lhs.true.if.end148_crit_edge

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

do.body139:                                       ; preds = %land.lhs.true
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %tobool143.not451 = icmp ult i32 %119, 4
  br i1 %tobool143.not451, label %do.body139.if.end148_crit_edge, label %while.body.preheader

do.body139.if.end148_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

while.body.preheader:                             ; preds = %do.body139
  %data = getelementptr inbounds %struct.firmware, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data, align 4
  %shr = lshr i32 %119, 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %_data.0454 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %121, %while.body.preheader ]
  %_size.0453 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %_addr.0452 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dec = add nsw i32 %_size.0453, -1
  %122 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %_addr.0452 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.0454, i32 1
  %128 = ptrtoint ptr %_data.0454 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %_data.0454, align 4
  tail call void %127(ptr noundef %123, i64 noundef %conv, i32 noundef %129) #8
  %add = add nuw i32 %_addr.0452, 4
  %tobool143.not = icmp eq i32 %dec, 0
  br i1 %tobool143.not, label %while.body.if.end148_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end148_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.end148:                                        ; preds = %while.body.if.end148_crit_edge, %do.body139.if.end148_crit_edge, %land.lhs.true.if.end148_crit_edge
  %130 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr = load ptr, ptr %wpr_fw104, align 4
  %tobool150.not = icmp eq ptr %.pr, null
  br i1 %tobool150.not, label %if.end148.if.then155_crit_edge, label %lor.lhs.false151

if.end148.if.then155_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then155

lor.lhs.false151:                                 ; preds = %if.end148
  %131 = ptrtoint ptr %wpr_comp136 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %wpr_comp136, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool153.not = icmp eq i8 %132, 0
  br i1 %tobool153.not, label %lor.lhs.false151.if.end159_crit_edge, label %lor.lhs.false151.if.then155_crit_edge

lor.lhs.false151.if.then155_crit_edge:            ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then155

lor.lhs.false151.if.end159_crit_edge:             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then155:                                       ; preds = %lor.lhs.false151.if.then155_crit_edge, %if.end148.if.then155_crit_edge, %if.end128.if.then155_crit_edge
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr, align 8
  %wpr_build = getelementptr inbounds %struct.nvkm_acr_func, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %wpr_build to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %wpr_build, align 4
  %137 = ptrtoint ptr %acr1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %acr1.i, align 4
  %tobool.not.i414 = icmp eq ptr %138, null
  br i1 %tobool.not.i414, label %if.then155.nvkm_acr_falcon.exit428_crit_edge, label %if.then.i416

if.then155.nvkm_acr_falcon.exit428_crit_edge:     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_acr_falcon.exit428

if.then.i416:                                     ; preds = %if.then155
  %lsf2.i415 = getelementptr inbounds %struct.nvkm_acr, ptr %138, i32 0, i32 5
  br label %for.cond.i420

for.cond.i420:                                    ; preds = %for.body.i424.for.cond.i420_crit_edge, %if.then.i416
  %.pn.in.i417 = phi ptr [ %lsf2.i415, %if.then.i416 ], [ %.pn.i418, %for.body.i424.for.cond.i420_crit_edge ]
  %139 = ptrtoint ptr %.pn.in.i417 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pn.i418 = load ptr, ptr %.pn.in.i417, align 4
  %cmp.not.i419 = icmp eq ptr %.pn.i418, %lsf2.i415
  br i1 %cmp.not.i419, label %for.cond.i420.nvkm_acr_falcon.exit428_crit_edge, label %for.body.i424

for.cond.i420.nvkm_acr_falcon.exit428_crit_edge:  ; preds = %for.cond.i420
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_acr_falcon.exit428

for.body.i424:                                    ; preds = %for.cond.i420
  %lsf.0.i421 = getelementptr i8, ptr %.pn.i418, i32 -12
  %140 = ptrtoint ptr %lsf.0.i421 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lsf.0.i421, align 4
  %bootstrap_falcon.i422 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %bootstrap_falcon.i422 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bootstrap_falcon.i422, align 8
  %tobool4.not.i423 = icmp eq ptr %143, null
  br i1 %tobool4.not.i423, label %for.body.i424.for.cond.i420_crit_edge, label %nvkm_acr_falcon.exit428.loopexit.split.loop.exit

for.body.i424.for.cond.i420_crit_edge:            ; preds = %for.body.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i420

nvkm_acr_falcon.exit428.loopexit.split.loop.exit: ; preds = %for.body.i424
  call void @__sanitizer_cov_trace_pc() #10
  %lsf.0.i421.le = getelementptr i8, ptr %.pn.i418, i32 -12
  br label %nvkm_acr_falcon.exit428

nvkm_acr_falcon.exit428:                          ; preds = %nvkm_acr_falcon.exit428.loopexit.split.loop.exit, %for.cond.i420.nvkm_acr_falcon.exit428_crit_edge, %if.then155.nvkm_acr_falcon.exit428_crit_edge
  %retval.0.i427 = phi ptr [ null, %if.then155.nvkm_acr_falcon.exit428_crit_edge ], [ %lsf.0.i421.le, %nvkm_acr_falcon.exit428.loopexit.split.loop.exit ], [ null, %for.cond.i420.nvkm_acr_falcon.exit428_crit_edge ]
  %call158 = tail call i32 %136(ptr noundef %add.ptr, ptr noundef %retval.0.i427) #8
  br label %if.end159

if.end159:                                        ; preds = %nvkm_acr_falcon.exit428, %lor.lhs.false151.if.end159_crit_edge
  %144 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr, align 8
  %wpr_patch = getelementptr inbounds %struct.nvkm_acr_func, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %wpr_patch to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wpr_patch, align 8
  %wpr_start161 = getelementptr i8, ptr %subdev, i32 100
  %148 = ptrtoint ptr %wpr_start161 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %wpr_start161, align 8
  %wpr_prev = getelementptr i8, ptr %subdev, i32 148
  %150 = ptrtoint ptr %wpr_prev to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %wpr_prev, align 8
  %sub = sub i64 %149, %151
  tail call void %147(ptr noundef %add.ptr, i64 noundef %sub) #8
  %152 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wpr_fw104, align 4
  %tobool163.not = icmp eq ptr %153, null
  br i1 %tobool163.not, label %if.end159.if.end210_crit_edge, label %land.lhs.true164

if.end159.if.end210_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

land.lhs.true164:                                 ; preds = %if.end159
  %wpr_comp165 = getelementptr i8, ptr %subdev, i32 140
  %154 = ptrtoint ptr %wpr_comp165 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %wpr_comp165, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool166.not = icmp eq i8 %155, 0
  br i1 %tobool166.not, label %land.lhs.true164.if.end210_crit_edge, label %if.then168

land.lhs.true164.if.end210_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then168:                                       ; preds = %land.lhs.true164
  %156 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wpr, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %acquire171 = getelementptr inbounds %struct.nvkm_memory_func, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %acquire171 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %acquire171, align 4
  %call173 = tail call ptr %161(ptr noundef %157) #8
  %162 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wpr_fw104, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp177457.not = icmp eq i32 %165, 0
  br i1 %cmp177457.not, label %if.then168.cleanup_crit_edge, label %for.body179.lr.ph

if.then168.cleanup_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body179.lr.ph:                                ; preds = %if.then168
  %name201 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %for.body179

for.body179:                                      ; preds = %if.end206.for.body179_crit_edge, %for.body179.lr.ph
  %i.0458 = phi i32 [ 0, %for.body179.lr.ph ], [ %add208, %if.end206.for.body179_crit_edge ]
  %166 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wpr, align 8
  %ptrs181 = getelementptr inbounds %struct.nvkm_memory, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %ptrs181 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ptrs181, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %conv183 = sext i32 %i.0458 to i64
  %call184 = tail call i32 %171(ptr noundef %167, i64 noundef %conv183) #8
  %172 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wpr_fw104, align 4
  %data186 = getelementptr inbounds %struct.firmware, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %data186 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data186, align 4
  %div = sdiv i32 %i.0458, 4
  %arrayidx = getelementptr i32, ptr %175, i32 %div
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %call184)
  %cmp187.not = icmp eq i32 %177, %call184
  br i1 %cmp187.not, label %for.body179.if.end206_crit_edge, label %do.body190

for.body179.if.end206_crit_edge:                  ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

do.body190:                                       ; preds = %for.body179
  %178 = ptrtoint ptr %debug118 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %debug118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp193 = icmp ugt i32 %179, 1
  br i1 %cmp193, label %do.end198, label %do.body190.if.end206_crit_edge

do.body190.if.end206_crit_edge:                   ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

do.end198:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %device1, align 4
  %dev200 = getelementptr inbounds %struct.nvkm_device, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev200, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %183, ptr noundef nonnull @.str.32, ptr noundef %name201, i32 noundef %i.0458, i32 noundef %call184, i32 noundef %177) #12
  br label %if.end206

if.end206:                                        ; preds = %do.end198, %do.body190.if.end206_crit_edge, %for.body179.if.end206_crit_edge
  %add208 = add i32 %i.0458, 4
  %184 = ptrtoint ptr %wpr_fw104 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wpr_fw104, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %cmp177 = icmp ult i32 %add208, %187
  br i1 %cmp177, label %if.end206.for.body179_crit_edge, label %if.end206.cleanup_crit_edge

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end206.for.body179_crit_edge:                  ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body179

if.end210:                                        ; preds = %land.lhs.true164.if.end210_crit_edge, %if.end159.if.end210_crit_edge
  %188 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wpr, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %release, align 4
  tail call void %193(ptr noundef %189) #8
  %inst = getelementptr i8, ptr %subdev, i32 124
  %call214 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 4096, i32 noundef 0, i1 noundef zeroext true, ptr noundef %inst) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end217:                                        ; preds = %if.end210
  %vmm = getelementptr i8, ptr %subdev, i32 128
  %call218 = tail call i32 @nvkm_vmm_new(ptr noundef %1, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef %vmm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %if.end217.cleanup_crit_edge

if.end217.cleanup_crit_edge:                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end221:                                        ; preds = %if.end217
  %194 = ptrtoint ptr %debug118 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %debug118, align 4
  %196 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %vmm, align 4
  %debug225 = getelementptr inbounds %struct.nvkm_vmm, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %debug225 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %195, ptr %debug225, align 4
  %199 = load ptr, ptr %vmm, align 4
  %200 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %inst, align 8
  %call228 = tail call i32 @nvkm_vmm_join(ptr noundef %199, ptr noundef %201) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %for.cond237.preheader, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond237.preheader:                            ; preds = %if.end221
  %name255 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %for.cond237

for.cond237:                                      ; preds = %if.end258.for.cond237_crit_edge, %for.cond237.preheader
  %.pn407.in = phi ptr [ %.pn407, %if.end258.for.cond237_crit_edge ], [ %hsfw2, %for.cond237.preheader ]
  %202 = ptrtoint ptr %.pn407.in to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pn407 = load ptr, ptr %.pn407.in, align 4
  %hsfw.0 = getelementptr i8, ptr %.pn407, i32 -8
  %cmp240.not = icmp eq ptr %.pn407, %hsfw2
  br i1 %cmp240.not, label %for.end272, label %do.body244

do.body244:                                       ; preds = %for.cond237
  %203 = ptrtoint ptr %debug118 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %debug118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %204)
  %cmp247 = icmp ugt i32 %204, 3
  br i1 %cmp247, label %do.end252, label %do.body244.if.end258_crit_edge

do.body244.if.end258_crit_edge:                   ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258

do.end252:                                        ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %device1, align 4
  %dev254 = getelementptr inbounds %struct.nvkm_device, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %dev254 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev254, align 8
  %name257 = getelementptr i8, ptr %.pn407, i32 -4
  %209 = ptrtoint ptr %name257 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name257, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %208, ptr noundef nonnull @.str.36, ptr noundef %name255, ptr noundef %210) #12
  br label %if.end258

if.end258:                                        ; preds = %do.end252, %do.body244.if.end258_crit_edge
  %211 = ptrtoint ptr %hsfw.0 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hsfw.0, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %call262 = tail call i32 %214(ptr noundef %add.ptr, ptr noundef %hsfw.0) #8
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end258.for.cond237_crit_edge, label %if.end258.cleanup_crit_edge

if.end258.cleanup_crit_edge:                      ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end258.for.cond237_crit_edge:                  ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond237

for.end272:                                       ; preds = %for.cond237
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nvkm_acr_cleanup(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %for.end272, %if.end258.cleanup_crit_edge, %if.end221.cleanup_crit_edge, %if.end217.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %if.then168.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %for.end272 ], [ %call112, %if.end110.cleanup_crit_edge ], [ %call214, %if.end210.cleanup_crit_edge ], [ %call218, %if.end217.cleanup_crit_edge ], [ %call228, %if.end221.cleanup_crit_edge ], [ -22, %if.then168.cleanup_crit_edge ], [ %call262, %if.end258.cleanup_crit_edge ], [ -22, %if.end206.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_acr_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %acr1.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %acr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acr1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.then.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %entry
  %lsf2.i = getelementptr inbounds %struct.nvkm_acr, ptr %3, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i
  %.pn.in.i = phi ptr [ %lsf2.i, %if.then.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lsf2.i
  br i1 %cmp.not.i, label %for.cond.i.return_crit_edge, label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.i:                                       ; preds = %for.cond.i
  %lsf.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %5 = ptrtoint ptr %lsf.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lsf.0.i, align 4
  %bootstrap_falcon.i = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %bootstrap_falcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bootstrap_falcon.i, align 8
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %for.body.i.for.cond.i_crit_edge, label %nvkm_acr_falcon.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

nvkm_acr_falcon.exit:                             ; preds = %for.body.i
  %lsf.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %lsf.0.i.le, null
  br i1 %tobool.not, label %nvkm_acr_falcon.exit.return_crit_edge, label %if.end

nvkm_acr_falcon.exit.return_crit_edge:            ; preds = %nvkm_acr_falcon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %nvkm_acr_falcon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %call1 = tail call fastcc i32 @nvkm_acr_load(ptr noundef %add.ptr)
  br label %return

return:                                           ; preds = %if.end, %nvkm_acr_falcon.exit.return_crit_edge, %for.cond.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %nvkm_acr_falcon.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_acr_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %done.i = getelementptr i8, ptr %subdev, i32 132
  %0 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done.i, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.nvkm_acr_unload.exit_crit_edge, label %if.then.i

entry.nvkm_acr_unload.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvkm_acr_unload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %call.i = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %add.ptr, ptr noundef nonnull @.str.16) #8
  %2 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %done.i, align 8
  br label %nvkm_acr_unload.exit

nvkm_acr_unload.exit:                             ; preds = %if.then.i, %entry.nvkm_acr_unload.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_acr_cleanup(ptr noundef %acr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %acr) #8
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %acr) #8
  %wpr_fw = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 14
  %0 = ptrtoint ptr %wpr_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpr_fw, align 4
  tail call void @nvkm_firmware_put(ptr noundef %1) #8
  %2 = ptrtoint ptr %wpr_fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %wpr_fw, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_lsfw_del_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_hsfw_del_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_lsfw_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 50, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_acr_hsf_boot._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_acr_hsf_boot._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 58, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_acr_hsf_boot._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_acr_hsf_boot._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 62, i32 2}
!15 = !{ptr @nvkm_acr_hsf_boot._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvkm_acr_hsf_boot._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 426, i32 9}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 432, i32 39}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 70, i32 26}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 84, i32 3}
!27 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvkm_acr_load._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_acr_load._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 95, i32 3}
!32 = !{ptr @nvkm_acr_load._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_acr_load._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @nvkm_acr, !35, !"nvkm_acr", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 381, i32 1}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 227, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nvkm_acr_oneinit._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvkm_acr_oneinit._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 276, i32 4}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nvkm_acr_oneinit._entry.24, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvkm_acr_oneinit._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 295, i32 2}
!48 = !{ptr @nvkm_acr_oneinit._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvkm_acr_oneinit._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 313, i32 5}
!52 = !{ptr @nvkm_acr_oneinit._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvkm_acr_oneinit._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 327, i32 50}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 339, i32 3}
!58 = !{ptr @nvkm_acr_oneinit._entry.35, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nvkm_acr_oneinit._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 23, i32 36}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 24, i32 36}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 25, i32 36}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 26, i32 36}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 27, i32 36}
!70 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 28, i32 36}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 29, i32 36}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/acr.h", i32 31, i32 10}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 395, i32 34}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 406, i32 47}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c", i32 407, i32 47}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{!"auto-init"}
