; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_hwsq = type { ptr, i32, i32, %struct.anon.139 }
%struct.anon.139 = type { [512 x i8], i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bus_func = type { ptr, ptr, ptr, i32 }

@nvkm_hwsq_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: hwsq exec failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_hwsq_fini\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_hwsq_fini._entry_ptr = internal global ptr @nvkm_hwsq_fini._entry, section ".printk_index", align 4
@nvkm_hwsq_fini._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: hwsq ucode too large\0A\00", [38 x i8] zeroinitializer }, align 32
@nvkm_hwsq_fini._entry_ptr.7 = internal global ptr @nvkm_hwsq_fini._entry.5, section ".printk_index", align 4
@nvkm_hwsq_fini._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: \09%08x\0A\00", [21 x i8] zeroinitializer }, align 32
@nvkm_hwsq_fini._entry_ptr.10 = internal global ptr @nvkm_hwsq_fini._entry.8, section ".printk_index", align 4
@nvkm_hwsq_wr32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 93, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: R[%06x] = %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_hwsq_wr32\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_hwsq_wr32._entry_ptr = internal global ptr @nvkm_hwsq_wr32._entry, section ".printk_index", align 4
@nvkm_hwsq_setf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 118, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:  FLAG[%02x] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_hwsq_setf\00", [17 x i8] zeroinitializer }, align 32
@nvkm_hwsq_setf._entry_ptr = internal global ptr @nvkm_hwsq_setf._entry, section ".printk_index", align 4
@nvkm_hwsq_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 130, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:  WAIT[%02x] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_hwsq_wait\00", [17 x i8] zeroinitializer }, align 32
@nvkm_hwsq_wait._entry_ptr = internal global ptr @nvkm_hwsq_wait._entry, section ".printk_index", align 4
@nvkm_hwsq_wait_vblank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 157, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: WAIT VBLANK !NO ACTIVE HEAD\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_hwsq_wait_vblank\00", [42 x i8] zeroinitializer }, align 32
@nvkm_hwsq_wait_vblank._entry_ptr = internal global ptr @nvkm_hwsq_wait_vblank._entry, section ".printk_index", align 4
@nvkm_hwsq_wait_vblank._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 161, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: WAIT VBLANK HEAD%d\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_hwsq_wait_vblank._entry_ptr.22 = internal global ptr @nvkm_hwsq_wait_vblank._entry.20, section ".printk_index", align 4
@nvkm_hwsq_nsec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 175, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:     DELAY = %d ns\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_hwsq_nsec\00", [17 x i8] zeroinitializer }, align 32
@nvkm_hwsq_nsec._entry_ptr = internal global ptr @nvkm_hwsq_nsec._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 75, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 77, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 82, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 93, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 118, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 130, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 157, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 161, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 175, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @nvkm_hwsq_fini._entry, ptr @nvkm_hwsq_fini._entry.5, ptr @nvkm_hwsq_fini._entry.8, ptr @nvkm_hwsq_fini._entry_ptr, ptr @nvkm_hwsq_fini._entry_ptr.10, ptr @nvkm_hwsq_fini._entry_ptr.7, ptr @nvkm_hwsq_nsec._entry, ptr @nvkm_hwsq_nsec._entry_ptr, ptr @nvkm_hwsq_setf._entry, ptr @nvkm_hwsq_setf._entry_ptr, ptr @nvkm_hwsq_wait._entry, ptr @nvkm_hwsq_wait._entry_ptr, ptr @nvkm_hwsq_wait_vblank._entry, ptr @nvkm_hwsq_wait_vblank._entry.20, ptr @nvkm_hwsq_wait_vblank._entry_ptr, ptr @nvkm_hwsq_wait_vblank._entry_ptr.22, ptr @nvkm_hwsq_wr32._entry, ptr @nvkm_hwsq_wr32._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_fini._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_fini._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_wr32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_setf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_wait_vblank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_wait_vblank._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_hwsq_nsec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_hwsq_init(ptr noundef %subdev, ptr nocapture noundef writeonly %phwsq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 528) #8
  %1 = ptrtoint ptr %phwsq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %phwsq, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %subdev, ptr %call7.i, align 8
  %addr = getelementptr inbounds %struct.nvkm_hwsq, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addr, align 4
  %data = getelementptr inbounds %struct.nvkm_hwsq, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data, align 8
  %c = getelementptr inbounds %struct.nvkm_hwsq, ptr %call7.i, i32 0, i32 3
  %5 = call ptr @memset(ptr %c, i32 127, i32 512)
  %size = getelementptr inbounds %struct.nvkm_hwsq, ptr %call7.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i32 [ 0, %if.then ], [ -12, %entry.if.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_hwsq_fini(ptr nocapture noundef %phwsq, i1 noundef zeroext %exec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phwsq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end72_crit_edge, label %if.then

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %bus2 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus2, align 4
  %c = getelementptr inbounds %struct.nvkm_hwsq, ptr %1, i32 0, i32 3
  %size = getelementptr inbounds %struct.nvkm_hwsq, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 4
  %conv = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv, 4
  %div99 = lshr i32 %add, 2
  %conv3 = trunc i32 %div99 to i16
  store i16 %conv3, ptr %size, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %hwsq_size = getelementptr inbounds %struct.nvkm_bus_func, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hwsq_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwsq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div99, i32 %13)
  %cmp.not = icmp ugt i32 %div99, %13
  br i1 %cmp.not, label %do.body30, label %if.then10

if.then10:                                        ; preds = %if.then
  br i1 %exec, label %if.end, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %if.then10
  %hwsq_exec = getelementptr inbounds %struct.nvkm_bus_func, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %hwsq_exec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwsq_exec, align 4
  %call = tail call i32 %15(ptr noundef %7, ptr noundef %c, i32 noundef %div99) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end.for.end_crit_edge, label %do.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.not = icmp eq i32 %17, 0
  br i1 %cmp20.not, label %do.body.land.rhs.lr.ph_crit_edge, label %do.end

do.body.land.rhs.lr.ph_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.lr.ph

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #9
  br label %land.rhs.lr.ph

do.body30:                                        ; preds = %if.then
  %debug32 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.not = icmp eq i32 %23, 0
  br i1 %cmp33.not, label %do.body30.land.rhs.lr.ph_crit_edge, label %do.end38

do.body30.land.rhs.lr.ph_crit_edge:               ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.lr.ph

do.end38:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %dev40 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev40, align 8
  %name41 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef %name41) #9
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %do.end38, %do.body30.land.rhs.lr.ph_crit_edge, %do.end, %do.body.land.rhs.lr.ph_crit_edge
  %ret.1.ph = phi i32 [ -28, %do.body30.land.rhs.lr.ph_crit_edge ], [ -28, %do.end38 ], [ %call, %do.body.land.rhs.lr.ph_crit_edge ], [ %call, %do.end ]
  %debug55 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %name64 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp51109.not = icmp eq i16 %29, 0
  br i1 %cmp51109.not, label %land.rhs.lr.ph.for.end_crit_edge, label %land.rhs.lr.ph.do.body53_crit_edge

land.rhs.lr.ph.do.body53_crit_edge:               ; preds = %land.rhs.lr.ph
  br label %do.body53

land.rhs.lr.ph.for.end_crit_edge:                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body53:                                        ; preds = %if.end69.do.body53_crit_edge, %land.rhs.lr.ph.do.body53_crit_edge
  %i.0102110 = phi i32 [ %inc, %if.end69.do.body53_crit_edge ], [ 0, %land.rhs.lr.ph.do.body53_crit_edge ]
  %30 = ptrtoint ptr %debug55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp56.not = icmp eq i32 %31, 0
  br i1 %cmp56.not, label %do.body53.if.end69_crit_edge, label %do.end61

do.body53.if.end69_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end61:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %dev63 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev63, align 8
  %arrayidx = getelementptr i32, ptr %c, i32 %i.0102110
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef %name64, i32 noundef %37) #9
  br label %if.end69

if.end69:                                         ; preds = %do.end61, %do.body53.if.end69_crit_edge
  %inc = add nuw nsw i32 %i.0102110, 1
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size, align 4
  %conv50 = zext i16 %39 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %if.end69.do.body53_crit_edge, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end69.do.body53_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

for.end:                                          ; preds = %if.end69.for.end_crit_edge, %land.rhs.lr.ph.for.end_crit_edge, %if.end.for.end_crit_edge, %if.then10.for.end_crit_edge
  %ret.1107 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.then10.for.end_crit_edge ], [ %ret.1.ph, %land.rhs.lr.ph.for.end_crit_edge ], [ %ret.1.ph, %if.end69.for.end_crit_edge ]
  %40 = ptrtoint ptr %phwsq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %phwsq, align 4
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end72

if.end72:                                         ; preds = %for.end, %entry.if.end72_crit_edge
  %ret.2 = phi i32 [ %ret.1107, %for.end ], [ 0, %entry.if.end72_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wr32(ptr nocapture noundef %hwsq, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %addr, i32 noundef %data) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data4 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 2
  %8 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %data)
  %cmp5.not = icmp eq i32 %9, %data
  br i1 %cmp5.not, label %if.end.if.end29_crit_edge, label %if.then6

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then6:                                         ; preds = %if.end
  %10 = xor i32 %9, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp9.not = icmp ult i32 %10, 65536
  %conv23 = trunc i32 %data to i8
  %shr25 = lshr i32 %data, 8
  %conv26 = trunc i32 %shr25 to i8
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %shr14 = lshr i32 %data, 16
  %conv15 = trunc i32 %shr14 to i8
  %shr17 = lshr i32 %data, 24
  %conv18 = trunc i32 %shr17 to i8
  %c.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %size3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size3.i, align 4
  %idxprom.i = zext i16 %12 to i32
  %arrayidx.i = getelementptr [512 x i8], ptr %c.i, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -30, ptr %arrayidx.i, align 1
  %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23, ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26, ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx, align 1
  %.compoundliteral.sroa.4.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 3
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %.compoundliteral.sroa.4.0.arrayidx.i.sroa_idx, align 1
  %.compoundliteral.sroa.5.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %17 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv18, ptr %.compoundliteral.sroa.5.0.arrayidx.i.sroa_idx, align 1
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %c.i90 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i91 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %size3.i91 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size3.i91, align 4
  %idxprom.i92 = zext i16 %19 to i32
  %arrayidx.i93 = getelementptr [512 x i8], ptr %c.i90, i32 0, i32 %idxprom.i92
  %20 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 66, ptr %arrayidx.i93, align 1
  %.compoundliteral20.sroa.2.0.arrayidx.i93.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i93, i32 1
  %21 = ptrtoint ptr %.compoundliteral20.sroa.2.0.arrayidx.i93.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv23, ptr %.compoundliteral20.sroa.2.0.arrayidx.i93.sroa_idx, align 1
  %.compoundliteral20.sroa.3.0.arrayidx.i93.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i93, i32 2
  %22 = ptrtoint ptr %.compoundliteral20.sroa.3.0.arrayidx.i93.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv26, ptr %.compoundliteral20.sroa.3.0.arrayidx.i93.sroa_idx, align 1
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else, %if.then10
  %size3.i.sink106 = phi ptr [ %size3.i, %if.then10 ], [ %size3.i91, %if.else ]
  %.sink105 = phi i16 [ 5, %if.then10 ], [ 3, %if.else ]
  %23 = ptrtoint ptr %size3.i.sink106 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size3.i.sink106, align 4
  %conv6.i = add i16 %24, %.sink105
  store i16 %conv6.i, ptr %size3.i.sink106, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end.if.end29_crit_edge
  %addr31 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 1
  %25 = ptrtoint ptr %addr31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr31, align 4
  %27 = xor i32 %26, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %cmp33.not = icmp ult i32 %27, 65536
  %conv54 = trunc i32 %addr to i8
  %shr56 = lshr i32 %addr, 8
  %conv57 = trunc i32 %shr56 to i8
  br i1 %cmp33.not, label %if.else50, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %shr44 = lshr i32 %addr, 16
  %conv45 = trunc i32 %shr44 to i8
  %shr47 = lshr i32 %addr, 24
  %conv48 = trunc i32 %shr47 to i8
  %c.i95 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i96 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %size3.i96 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size3.i96, align 4
  %idxprom.i97 = zext i16 %29 to i32
  %arrayidx.i98 = getelementptr [512 x i8], ptr %c.i95, i32 0, i32 %idxprom.i97
  %30 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -32, ptr %arrayidx.i98, align 1
  %.compoundliteral36.sroa.2.0.arrayidx.i98.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i98, i32 1
  %31 = ptrtoint ptr %.compoundliteral36.sroa.2.0.arrayidx.i98.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv54, ptr %.compoundliteral36.sroa.2.0.arrayidx.i98.sroa_idx, align 1
  %.compoundliteral36.sroa.3.0.arrayidx.i98.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i98, i32 2
  %32 = ptrtoint ptr %.compoundliteral36.sroa.3.0.arrayidx.i98.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv57, ptr %.compoundliteral36.sroa.3.0.arrayidx.i98.sroa_idx, align 1
  %.compoundliteral36.sroa.4.0.arrayidx.i98.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i98, i32 3
  %33 = ptrtoint ptr %.compoundliteral36.sroa.4.0.arrayidx.i98.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv45, ptr %.compoundliteral36.sroa.4.0.arrayidx.i98.sroa_idx, align 1
  %.compoundliteral36.sroa.5.0.arrayidx.i98.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i98, i32 4
  %34 = ptrtoint ptr %.compoundliteral36.sroa.5.0.arrayidx.i98.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv48, ptr %.compoundliteral36.sroa.5.0.arrayidx.i98.sroa_idx, align 1
  br label %if.end59

if.else50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %c.i100 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i101 = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %size3.i101 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size3.i101, align 4
  %idxprom.i102 = zext i16 %36 to i32
  %arrayidx.i103 = getelementptr [512 x i8], ptr %c.i100, i32 0, i32 %idxprom.i102
  %37 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 64, ptr %arrayidx.i103, align 1
  %.compoundliteral51.sroa.2.0.arrayidx.i103.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i103, i32 1
  %38 = ptrtoint ptr %.compoundliteral51.sroa.2.0.arrayidx.i103.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv54, ptr %.compoundliteral51.sroa.2.0.arrayidx.i103.sroa_idx, align 1
  %.compoundliteral51.sroa.3.0.arrayidx.i103.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i103, i32 2
  %39 = ptrtoint ptr %.compoundliteral51.sroa.3.0.arrayidx.i103.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv57, ptr %.compoundliteral51.sroa.3.0.arrayidx.i103.sroa_idx, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else50, %if.then35
  %size3.i101.sink108 = phi ptr [ %size3.i101, %if.else50 ], [ %size3.i96, %if.then35 ]
  %.sink107 = phi i16 [ 3, %if.else50 ], [ 5, %if.then35 ]
  %40 = ptrtoint ptr %size3.i101.sink108 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size3.i101.sink108, align 4
  %conv6.i104 = add i16 %41, %.sink107
  store i16 %conv6.i104, ptr %size3.i101.sink108, align 4
  %42 = ptrtoint ptr %addr31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %addr, ptr %addr31, align 4
  %43 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %data, ptr %data4, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_setf(ptr nocapture noundef %hwsq, i8 noundef zeroext %flag, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %conv = zext i8 %flag to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %conv, i32 noundef %data) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = xor i8 %flag, -128
  %add10 = add i8 %flag, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %cmp630 = icmp slt i32 %data, 0
  %spec.select = select i1 %cmp630, i8 %add, i8 %add10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %cmp13 = icmp sgt i32 %data, 0
  %add17 = add i8 %spec.select, 32
  %flag.addr.1 = select i1 %cmp13, i8 %add17, i8 %spec.select
  %c.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size3.i, align 4
  %idxprom.i = zext i16 %9 to i32
  %arrayidx.i = getelementptr [512 x i8], ptr %c.i, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %flag.addr.1, ptr %arrayidx.i, align 1
  %11 = load i16, ptr %size3.i, align 4
  %conv6.i = add i16 %11, 1
  store i16 %conv6.i, ptr %size3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wait(ptr nocapture noundef %hwsq, i8 noundef zeroext %flag, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %conv = zext i8 %flag to i32
  %conv2 = zext i8 %data to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %c.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size3.i, align 4
  %idxprom.i = zext i16 %9 to i32
  %arrayidx.i = getelementptr [512 x i8], ptr %c.i, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 95, ptr %arrayidx.i, align 1
  %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %flag, ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %12 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %data, ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx, align 1
  %13 = load i16, ptr %size3.i, align 4
  %conv6.i = add i16 %13, 3
  store i16 %conv6.i, ptr %size3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wait_vblank(ptr nocapture noundef %hwsq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 6357072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 6359872
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %shr = lshr i32 %9, 16
  %and10 = and i32 %9, 65535
  %mul11 = mul nuw i32 %and10, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul11)
  %cmp12.not = icmp eq i32 %mul11, 0
  %spec.select72 = sext i1 %cmp12.not to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %px.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ %mul11, %if.then ]
  %head_sync.1 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ %spec.select72, %if.then ]
  %and.1 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr6.1 = getelementptr i8, ptr %11, i32 6361216
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.1) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %shr.1 = lshr i32 %12, 16
  %and10.1 = and i32 %12, 65535
  %mul11.1 = mul nuw i32 %and10.1, %shr.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.1, i32 %px.1)
  %cmp12.1 = icmp ugt i32 %mul11.1, %px.1
  %13 = tail call i32 @llvm.umax.i32(i32 %mul11.1, i32 %px.1)
  %spec.select72.1 = select i1 %cmp12.1, i32 1, i32 %head_sync.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %px.1.1 = phi i32 [ %px.1, %for.inc.for.inc.1_crit_edge ], [ %13, %if.then.1 ]
  %head_sync.1.1 = phi i32 [ %head_sync.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select72.1, %if.then.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %px.1.1)
  %cmp16 = icmp eq i32 %px.1.1, 0
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp18 = icmp ugt i32 %15, 3
  br i1 %cmp16, label %do.body, label %do.body26

do.body:                                          ; preds = %for.inc.1
  br i1 %cmp18, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %cleanup

do.body26:                                        ; preds = %for.inc.1
  br i1 %cmp18, label %do.end33, label %do.body26.if.end38_crit_edge

do.body26.if.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device2, align 4
  %dev35 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev35, align 8
  %name36 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef %name36, i32 noundef %head_sync.1.1) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end33, %do.body26.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head_sync.1.1)
  %tobool41.not = icmp eq i32 %head_sync.1.1, 0
  %conv = select i1 %tobool41.not, i8 1, i8 3
  %24 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwsq, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i = icmp ugt i32 %27, 3
  br i1 %cmp.i, label %do.end.i, label %if.end38.nvkm_hwsq_wait.exit_crit_edge

if.end38.nvkm_hwsq_wait.exit_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_hwsq_wait.exit

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %25, i32 0, i32 4
  %conv.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef 0) #9
  br label %nvkm_hwsq_wait.exit

nvkm_hwsq_wait.exit:                              ; preds = %do.end.i, %if.end38.nvkm_hwsq_wait.exit_crit_edge
  %c.i.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size3.i.i, align 4
  %idxprom.i.i = zext i16 %33 to i32
  %arrayidx.i.i = getelementptr [512 x i8], ptr %c.i.i, i32 0, i32 %idxprom.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 95, ptr %arrayidx.i.i, align 1
  %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 1
  %35 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i, align 1
  %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 2
  %36 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i, align 1
  %37 = load i16, ptr %size3.i.i, align 4
  %conv6.i.i = add i16 %37, 3
  store i16 %conv6.i.i, ptr %size3.i.i, align 4
  %38 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwsq, align 4
  %debug.i73 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %debug.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i74 = icmp ugt i32 %41, 3
  br i1 %cmp.i74, label %do.end.i79, label %nvkm_hwsq_wait.exit.nvkm_hwsq_wait.exit87_crit_edge

nvkm_hwsq_wait.exit.nvkm_hwsq_wait.exit87_crit_edge: ; preds = %nvkm_hwsq_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_hwsq_wait.exit87

do.end.i79:                                       ; preds = %nvkm_hwsq_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  %device.i75 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %device.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i75, align 4
  %dev.i76 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i76, align 8
  %name.i77 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 4
  %conv.i78 = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.16, ptr noundef %name.i77, i32 noundef %conv.i78, i32 noundef 1) #9
  br label %nvkm_hwsq_wait.exit87

nvkm_hwsq_wait.exit87:                            ; preds = %do.end.i79, %nvkm_hwsq_wait.exit.nvkm_hwsq_wait.exit87_crit_edge
  %46 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size3.i.i, align 4
  %idxprom.i.i82 = zext i16 %47 to i32
  %arrayidx.i.i83 = getelementptr [512 x i8], ptr %c.i.i, i32 0, i32 %idxprom.i.i82
  %48 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 95, ptr %arrayidx.i.i83, align 1
  %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i84 = getelementptr inbounds i8, ptr %arrayidx.i.i83, i32 1
  %49 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i84 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %.compoundliteral.sroa.2.0.arrayidx.i.sroa_idx.i84, align 1
  %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i85 = getelementptr inbounds i8, ptr %arrayidx.i.i83, i32 2
  %50 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i85 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %.compoundliteral.sroa.3.0.arrayidx.i.sroa_idx.i85, align 1
  %51 = load i16, ptr %size3.i.i, align 4
  %conv6.i.i86 = add i16 %51, 3
  store i16 %conv6.i.i86, ptr %size3.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %nvkm_hwsq_wait.exit87, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_nsec(ptr nocapture noundef %hwsq, i32 noundef %nsec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %nsec, 1000
  %and20 = and i32 %div, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not21 = icmp eq i32 %and20, 0
  br i1 %tobool.not21, label %entry.do.body_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %usec.0.in23 = phi i32 [ %0, %while.body.while.body_crit_edge ], [ %div, %entry.while.body_crit_edge ]
  %shift.022 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %conv1 = lshr i32 %usec.0.in23, 2
  %0 = and i32 %conv1, 63
  %inc = add i8 %shift.022, 1
  %1 = and i32 %usec.0.in23, 240
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body.loopexit:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = zext i8 %inc to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 2
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %entry.do.body_crit_edge
  %shift.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %phi.bo, %do.body.loopexit ]
  %usec.0.in.lcssa = phi i32 [ %div, %entry.do.body_crit_edge ], [ %0, %do.body.loopexit ]
  %2 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwsq, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %nsec) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %or10 = or i32 %shift.0.lcssa, %usec.0.in.lcssa
  %conv11 = trunc i32 %or10 to i8
  %c.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3
  %size3.i = getelementptr inbounds %struct.nvkm_hwsq, ptr %hwsq, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %size3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size3.i, align 4
  %idxprom.i = zext i16 %11 to i32
  %arrayidx.i = getelementptr [512 x i8], ptr %c.i, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %arrayidx.i, align 1
  %13 = load i16, ptr %size3.i, align 4
  %conv6.i = add i16 %13, 1
  store i16 %conv6.i, ptr %size3.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 75, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_hwsq_fini._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_hwsq_fini._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 77, i32 4}
!10 = !{ptr @nvkm_hwsq_fini._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_hwsq_fini._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 82, i32 4}
!14 = !{ptr @nvkm_hwsq_fini._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvkm_hwsq_fini._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 93, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nvkm_hwsq_wr32._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_hwsq_wr32._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 118, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nvkm_hwsq_setf._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_hwsq_setf._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 130, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nvkm_hwsq_wait._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_hwsq_wait._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 157, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvkm_hwsq_wait_vblank._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvkm_hwsq_wait_vblank._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 161, i32 2}
!39 = !{ptr @nvkm_hwsq_wait_vblank._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvkm_hwsq_wait_vblank._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c", i32 175, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nvkm_hwsq_nsec._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvkm_hwsq_nsec._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 5386184}
!56 = !{i64 2156235254}
!57 = !{i64 2156235681}
