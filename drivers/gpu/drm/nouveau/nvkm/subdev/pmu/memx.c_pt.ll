; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.143, %struct.anon.144 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.135, %struct.anon.136, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.143 = type { %struct.mutex, i32, i32 }
%struct.anon.144 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_memx = type { ptr, i32, i32, %struct.anon.151 }
%struct.anon.151 = type { i32, i32, [64 x i32] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nvkm_memx_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Exec took %uns, PMU_IN %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_memx_fini\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_memx_fini._entry_ptr = internal global ptr @nvkm_memx_fini._entry, section ".printk_index", align 4
@nvkm_memx_wr32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: R[%06x] = %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_memx_wr32\00", [17 x i8] zeroinitializer }, align 32
@nvkm_memx_wr32._entry_ptr = internal global ptr @nvkm_memx_wr32._entry, section ".printk_index", align 4
@nvkm_memx_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: R[%06x] & %08x == %08x, %d us\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_memx_wait\00", [17 x i8] zeroinitializer }, align 32
@nvkm_memx_wait._entry_ptr = internal global ptr @nvkm_memx_wait._entry, section ".printk_index", align 4
@nvkm_memx_nsec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:     DELAY = %d ns\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_memx_nsec\00", [17 x i8] zeroinitializer }, align 32
@nvkm_memx_nsec._entry_ptr = internal global ptr @nvkm_memx_nsec._entry, section ".printk_index", align 4
@nvkm_memx_wait_vblank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: WAIT VBLANK !NO ACTIVE HEAD\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_memx_wait_vblank\00", [42 x i8] zeroinitializer }, align 32
@nvkm_memx_wait_vblank._entry_ptr = internal global ptr @nvkm_memx_wait_vblank._entry, section ".printk_index", align 4
@nvkm_memx_wait_vblank._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: WAIT VBLANK HEAD%d\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_memx_wait_vblank._entry_ptr.15 = internal global ptr @nvkm_memx_wait_vblank._entry.13, section ".printk_index", align 4
@nvkm_memx_train._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:    MEM TRAIN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_memx_train\00", [16 x i8] zeroinitializer }, align 32
@nvkm_memx_train._entry_ptr = internal global ptr @nvkm_memx_train._entry, section ".printk_index", align 4
@nvkm_memx_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:    HOST BLOCKED\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_memx_block\00", [16 x i8] zeroinitializer }, align 32
@nvkm_memx_block._entry_ptr = internal global ptr @nvkm_memx_block._entry, section ".printk_index", align 4
@nvkm_memx_unblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:    HOST UNBLOCKED\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_memx_unblock\00", [46 x i8] zeroinitializer }, align 32
@nvkm_memx_unblock._entry_ptr = internal global ptr @nvkm_memx_unblock._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 91, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 102, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 110, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 119, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 149, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 153, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 161, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 194, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 201, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @nvkm_memx_block._entry, ptr @nvkm_memx_block._entry_ptr, ptr @nvkm_memx_fini._entry, ptr @nvkm_memx_fini._entry_ptr, ptr @nvkm_memx_nsec._entry, ptr @nvkm_memx_nsec._entry_ptr, ptr @nvkm_memx_train._entry, ptr @nvkm_memx_train._entry_ptr, ptr @nvkm_memx_unblock._entry, ptr @nvkm_memx_unblock._entry_ptr, ptr @nvkm_memx_wait._entry, ptr @nvkm_memx_wait._entry_ptr, ptr @nvkm_memx_wait_vblank._entry, ptr @nvkm_memx_wait_vblank._entry.13, ptr @nvkm_memx_wait_vblank._entry_ptr, ptr @nvkm_memx_wait_vblank._entry_ptr.15, ptr @nvkm_memx_wr32._entry, ptr @nvkm_memx_wr32._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_wr32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_nsec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_wait_vblank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_wait_vblank._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_train._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_memx_unblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_init(ptr noundef %pmu, ptr nocapture noundef writeonly %pmemx) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #6
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reply, align 4, !annotation !56
  %3 = getelementptr inbounds [2 x i32], ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !56
  %call = call i32 @nvkm_pmu_send(ptr noundef %pmu, ptr noundef nonnull %reply, i32 noundef 1481459021, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 276) #9
  %6 = ptrtoint ptr %pmemx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %pmemx, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pmu, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reply, align 4
  %base = getelementptr inbounds %struct.nvkm_memx, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %size = getelementptr inbounds %struct.nvkm_memx, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1090944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3) #6, !srcloc !58
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 1090944
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %cmp.not = icmp eq i32 %18, 3
  br i1 %cmp.not, label %do.body14, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 4
  %or = or i32 %20, 16777216
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 1089984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or) #6, !srcloc !58
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body14 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_fini(ptr nocapture noundef readonly %pmemx, i1 noundef zeroext %exec) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pmemx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmemx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device3 = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #6
  %6 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reply, align 4, !annotation !56
  %7 = getelementptr inbounds [2 x i32], ptr %reply, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !56
  %c.i = getelementptr inbounds %struct.nvkm_memx, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %entry.memx_out.exit_crit_edge, label %do.body.i

entry.memx_out.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %memx_out.exit

do.body.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %size.i = getelementptr inbounds %struct.nvkm_memx, ptr %1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %16, 16
  %17 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c.i, align 4
  %or.i = or i32 %shl.i, %18
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !58
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27.not.i = icmp eq i32 %22, 0
  br i1 %cmp27.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  br label %do.body7.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %do.body.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.nvkm_memx, ptr %1, i32 0, i32 3, i32 2, i32 %i.028.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %24) #6, !srcloc !58
  %inc.i = add nuw i32 %i.028.i, 1
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %do.body7.i.do.body7.i_crit_edge, label %do.body7.i.for.end.i_crit_edge

do.body7.i.for.end.i_crit_edge:                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %c.i, align 4
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %size.i, align 4
  br label %memx_out.exit

memx_out.exit:                                    ; preds = %for.end.i, %entry.memx_out.exit_crit_edge
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 1089984
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %35, i32 1090944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !58
  br i1 %exec, label %if.then, label %memx_out.exit.if.end17_crit_edge

memx_out.exit.if.end17_crit_edge:                 ; preds = %memx_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %memx_out.exit
  %and = and i32 %33, 16777215
  %base = getelementptr inbounds %struct.nvkm_memx, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %call6 = call i32 @nvkm_pmu_send(ptr noundef %3, ptr noundef nonnull %reply, i32 noundef 1481459021, i32 noundef 1, i32 noundef %37, i32 noundef %and) #6
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp = icmp ugt i32 %39, 3
  br i1 %cmp, label %do.end11, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %3, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reply, align 4
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %45, i32 noundef %47) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end11, %if.then.if.end17_crit_edge, %memx_out.exit.if.end17_crit_edge
  call void @kfree(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wr32(ptr nocapture noundef %memx, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %addr, i32 noundef %data) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %data, ptr %arrayinit.element, align 4
  call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %.compoundliteral)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memx_cmd(ptr nocapture noundef %memx, i32 noundef %mthd, i32 noundef %size, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3
  %size1 = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %add = add i32 %1, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp = icmp ugt i32 %add, 63
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %mthd)
  %cmp6.not = icmp eq i32 %.pr, %mthd
  %or.cond = or i1 %tobool.not.i, %cmp6.not
  br i1 %or.cond, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.body.i_crit_edge

lor.lhs.false.do.body.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.do.body.i_crit_edge

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i:                                        ; preds = %if.then.do.body.i_crit_edge, %lor.lhs.false.do.body.i_crit_edge
  %3 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memx, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size1, align 4
  %shl.i = shl i32 %8, 16
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c, align 4
  %or.i = or i32 %shl.i, %10
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !58
  %13 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp27.not.i = icmp eq i32 %14, 0
  br i1 %cmp27.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  br label %do.body7.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %do.body.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 2, i32 %i.028.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %18, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %16) #6, !srcloc !58
  %inc.i = add nuw i32 %i.028.i, 1
  %19 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size1, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %do.body7.i.do.body7.i_crit_edge, label %do.body7.i.for.end.i_crit_edge

do.body7.i.for.end.i_crit_edge:                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %21 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %c, align 4
  %22 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %size1, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %23 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size1, align 4
  %arrayidx = getelementptr %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 2, i32 %24
  %mul = shl i32 %size, 2
  %25 = call ptr @memcpy(ptr %arrayidx, ptr %data, i32 %mul)
  %26 = load i32, ptr %size1, align 4
  %add13 = add i32 %26, %size
  store i32 %add13, ptr %size1, align 4
  %27 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mthd, ptr %c, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wait(ptr nocapture noundef %memx, i32 noundef %addr, i32 noundef %mask, i32 noundef %data, i32 noundef %nsec) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %addr, i32 noundef %mask, i32 noundef %data, i32 noundef %nsec) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mask, ptr %arrayinit.element, align 4
  %arrayinit.element4 = getelementptr inbounds i32, ptr %.compoundliteral, i32 2
  %10 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data, ptr %arrayinit.element4, align 4
  %arrayinit.element5 = getelementptr inbounds i32, ptr %.compoundliteral, i32 3
  %11 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nsec, ptr %arrayinit.element5, align 4
  call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %.compoundliteral)
  %c.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3
  %12 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.memx_out.exit_crit_edge, label %do.body.i

if.end.memx_out.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %memx_out.exit

do.body.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memx, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %size.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %19, 16
  %20 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c.i, align 4
  %or.i = or i32 %shl.i, %21
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !58
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp27.not.i = icmp eq i32 %25, 0
  br i1 %cmp27.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  br label %do.body7.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %do.body.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 2, i32 %i.028.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %29, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %27) #6, !srcloc !58
  %inc.i = add nuw i32 %i.028.i, 1
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %do.body7.i.do.body7.i_crit_edge, label %do.body7.i.for.end.i_crit_edge

do.body7.i.for.end.i_crit_edge:                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %c.i, align 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %size.i, align 4
  br label %memx_out.exit

memx_out.exit:                                    ; preds = %for.end.i, %if.end.memx_out.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_nsec(ptr nocapture noundef %memx, i32 noundef %nsec) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %nsec) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nsec, ptr %.compoundliteral, align 4
  call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %.compoundliteral)
  %c.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3
  %9 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.memx_out.exit_crit_edge, label %do.body.i

if.end.memx_out.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %memx_out.exit

do.body.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memx, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %size.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %16, 16
  %17 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c.i, align 4
  %or.i = or i32 %shl.i, %18
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !58
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27.not.i = icmp eq i32 %22, 0
  br i1 %cmp27.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  br label %do.body7.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %do.body.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 2, i32 %i.028.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %24) #6, !srcloc !58
  %inc.i = add nuw i32 %i.028.i, 1
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %do.body7.i.do.body7.i_crit_edge, label %do.body7.i.for.end.i_crit_edge

do.body7.i.for.end.i_crit_edge:                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %c.i, align 4
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %size.i, align 4
  br label %memx_out.exit

memx_out.exit:                                    ; preds = %for.end.i, %if.end.memx_out.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_wait_vblank(ptr nocapture noundef %memx) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %device2 = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %5)
  %cmp = icmp ult i32 %5, 208
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6357072
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 6359872
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %shr = lshr i32 %11, 16
  %and12 = and i32 %11, 65535
  %mul13 = mul nuw i32 %and12, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul13)
  %cmp14.not = icmp eq i32 %mul13, 0
  %spec.select72 = sext i1 %cmp14.not to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge
  %px.1 = phi i32 [ 0, %if.then.for.inc_crit_edge ], [ %mul13, %if.then5 ]
  %head_sync.1 = phi i32 [ -1, %if.then.for.inc_crit_edge ], [ %spec.select72, %if.then5 ]
  %and.1 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr8.1 = getelementptr i8, ptr %13, i32 6361216
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %shr.1 = lshr i32 %14, 16
  %and12.1 = and i32 %14, 65535
  %mul13.1 = mul nuw i32 %and12.1, %shr.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.1, i32 %px.1)
  %cmp14.1 = icmp ugt i32 %mul13.1, %px.1
  %15 = tail call i32 @llvm.umax.i32(i32 %mul13.1, i32 %px.1)
  %spec.select72.1 = select i1 %cmp14.1, i32 1, i32 %head_sync.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %px.1.1 = phi i32 [ %px.1, %for.inc.for.inc.1_crit_edge ], [ %15, %if.then5.1 ]
  %head_sync.1.1 = phi i32 [ %head_sync.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select72.1, %if.then5.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %px.1.1)
  %cmp19 = icmp eq i32 %px.1.1, 0
  br i1 %cmp19, label %for.inc.1.do.body_crit_edge, label %do.body29

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.inc.1.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp21 = icmp ugt i32 %17, 3
  br i1 %cmp21, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef %name) #10
  br label %cleanup

do.body29:                                        ; preds = %for.inc.1
  %debug31 = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %debug31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp32 = icmp ugt i32 %23, 3
  br i1 %cmp32, label %do.end36, label %do.body29.if.end41_crit_edge

do.body29.if.end41_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end36:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38, align 8
  %name39 = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.14, ptr noundef %name39, i32 noundef %head_sync.1.1) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %do.body29.if.end41_crit_edge
  %28 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %head_sync.1.1, ptr %.compoundliteral, align 4
  call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %.compoundliteral)
  %c.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3
  %29 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end41.cleanup_crit_edge, label %do.body.i

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end41
  %31 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memx, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %size.i = getelementptr inbounds %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %36, 16
  %37 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c.i, align 4
  %or.i = or i32 %shl.i, %38
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %39 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !58
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp27.not.i = icmp eq i32 %42, 0
  br i1 %cmp27.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  br label %do.body7.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %do.body.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.nvkm_memx, ptr %memx, i32 0, i32 3, i32 2, i32 %i.028.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %46, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %44) #6, !srcloc !58
  %inc.i = add nuw i32 %i.028.i, 1
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %48
  br i1 %cmp.i, label %do.body7.i.do.body7.i_crit_edge, label %do.body7.i.for.end.i_crit_edge

do.body7.i.for.end.i_crit_edge:                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %49 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %c.i, align 4
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %size.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end41.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_train(ptr nocapture noundef %memx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 7, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_memx_train_result(ptr noundef %pmu, ptr nocapture noundef writeonly %res, i32 noundef %rsize) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #6
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reply, align 4, !annotation !56
  %3 = getelementptr inbounds [2 x i32], ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !56
  %call = call i32 @nvkm_pmu_send(ptr noundef %pmu, ptr noundef nonnull %reply, i32 noundef 1481459021, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %shr = lshr i32 %6, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %rsize)
  %cmp = icmp ugt i32 %shr, %rsize
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %7 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reply, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  call void @arm_heavy_mb() #6
  %or = or i32 %8, 33554432
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1089984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp521.not = icmp ult i32 %6, 4
  br i1 %cmp521.not, label %do.body.cleanup_crit_edge, label %for.body.preheader

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %do.body
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 1089988
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %arrayidx9 = getelementptr i32, ptr %res, i32 %i.022
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_block(ptr nocapture noundef %memx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 1, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_memx_unblock(ptr nocapture noundef %memx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memx, align 4
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @memx_cmd(ptr noundef %memx, i32 noundef 2, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 91, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_memx_fini._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_memx_fini._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 102, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_memx_wr32._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_memx_wr32._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 110, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_memx_wait._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_memx_wait._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 119, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nvkm_memx_nsec._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_memx_nsec._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 149, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nvkm_memx_wait_vblank._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvkm_memx_wait_vblank._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 153, i32 2}
!30 = !{ptr @nvkm_memx_wait_vblank._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_memx_wait_vblank._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 161, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvkm_memx_train._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvkm_memx_train._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 194, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nvkm_memx_block._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvkm_memx_block._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/memx.c", i32 201, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nvkm_memx_unblock._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nvkm_memx_unblock._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2156239143}
!58 = !{i64 5389073}
!59 = !{i64 5389491}
!60 = !{i64 2156239599}
!61 = !{i64 2156239967}
!62 = !{i64 2156237692}
!63 = !{i64 2156238140}
!64 = !{i64 2156240436}
!65 = !{i64 2156240778}
!66 = !{i64 2156250610}
!67 = !{i64 2156251037}
!68 = !{i64 2156258130}
!69 = !{i64 2156258593}
