; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bitfield = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_ltc_func = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.144, %struct.anon.145, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.145 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.133, i32, i32, i32, i32, i32, i32, %union.anon.137, i32, i32, [11 x i32], %union.anon.141 }>
%union.anon.133 = type { %struct.anon.136 }
%struct.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i8 }
%union.anon.141 = type <{ %struct.anon.143, [12 x i8] }>
%struct.anon.143 = type { i48 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IDLE_ERROR_IQ\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IDLE_ERROR_CBC\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IDLE_ERROR_TSTG\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IDLE_ERROR_DSTG\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EVICTED_CB\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ILLEGAL_COMPSTAT\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BLOCKLINEAR_CB\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECC_SEC_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECC_DED_ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATOMIC_TO_Z\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ILLEGAL_ATOMIC\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BLKACTIVITY_ERR\00", [16 x i8] zeroinitializer }, align 32
@gf100_ltc_lts_intr_name = dso_local constant { [14 x %struct.nvkm_bitfield], [48 x i8] } { [14 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.2 }, %struct.nvkm_bitfield { i32 2, ptr @.str.3 }, %struct.nvkm_bitfield { i32 4, ptr @.str.4 }, %struct.nvkm_bitfield { i32 8, ptr @.str.5 }, %struct.nvkm_bitfield { i32 16, ptr @.str.6 }, %struct.nvkm_bitfield { i32 32, ptr @.str.7 }, %struct.nvkm_bitfield { i32 64, ptr @.str.8 }, %struct.nvkm_bitfield { i32 256, ptr @.str.9 }, %struct.nvkm_bitfield { i32 512, ptr @.str.10 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.11 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.12 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.13 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.14 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_ltc_invalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 135, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: LTC invalidate took %lld ns\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gf100_ltc_invalidate\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_ltc_invalidate._entry_ptr = internal global ptr @gf100_ltc_invalidate._entry, section ".printk_index", align 4
@gf100_ltc_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 148, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: LTC flush took %lld ns\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gf100_ltc_flush\00", [16 x i8] zeroinitializer }, align 32
@gf100_ltc_flush._entry_ptr = internal global ptr @gf100_ltc_flush._entry, section ".printk_index", align 4
@gf100_ltc = internal constant { %struct.nvkm_ltc_func, [52 x i8] } { %struct.nvkm_ltc_func { ptr @gf100_ltc_oneinit, ptr @gf100_ltc_init, ptr @gf100_ltc_intr, ptr @gf100_ltc_cbc_clear, ptr @gf100_ltc_cbc_wait, i32 16, ptr @gf100_ltc_zbc_clear_color, ptr @gf100_ltc_zbc_clear_depth, ptr null, ptr @gf100_ltc_invalidate, ptr @gf100_ltc_flush }, [52 x i8] zeroinitializer }, align 32
@gf100_ltc_lts_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 104, ptr @.str.23, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: LTC%d_LTS%d: %08x [%s]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_ltc_lts_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gf100_ltc_lts_intr._entry_ptr = internal global ptr @gf100_ltc_lts_intr._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 47, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 76, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 77, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 78, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 79, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 80, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 81, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 82, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 83, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 84, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 85, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 86, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 88, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"gf100_ltc_lts_intr_name\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 75, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 135, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 148, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"gf100_ltc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 238, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 104, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @gf100_ltc_flush._entry, ptr @gf100_ltc_flush._entry_ptr, ptr @gf100_ltc_invalidate._entry, ptr @gf100_ltc_invalidate._entry_ptr, ptr @gf100_ltc_lts_intr._entry, ptr @gf100_ltc_lts_intr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gf100_ltc_lts_intr_name, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @gf100_ltc, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ltc_lts_intr_name to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ltc_invalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ltc_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ltc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_ltc_lts_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_cbc_clear(ptr nocapture noundef readonly %ltc, i32 noundef %start, i32 noundef %limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1566924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %start) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 1566928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %limit) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 1566920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 4) #5, !srcloc !61
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_cbc_wait(ptr nocapture noundef readonly %ltc) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %ltc_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 2
  %2 = ptrtoint ptr %ltc_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ltc_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp59.not = icmp eq i32 %3, 0
  br i1 %cmp59.not, label %entry.for.end45_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end45

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %lts_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc43.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %c.060 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc44, %for.inc43.for.cond2.preheader_crit_edge ]
  %4 = ptrtoint ptr %lts_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lts_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp357.not = icmp eq i32 %5, 0
  br i1 %cmp357.not, label %for.cond2.preheader.for.inc43_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.inc43_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc43

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %mul = shl i32 %c.060, 13
  %add = add i32 %mul, 1315016
  br label %for.body4

for.body4:                                        ; preds = %if.end41.for.body4_crit_edge, %for.body4.lr.ph
  %s.058 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %if.end41.for.body4_crit_edge ]
  %mul5 = shl i32 %s.058, 10
  %add6 = add i32 %add, %mul5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %6 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.body4
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add6
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.if.end41_crit_edge, label %do.cond

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.cond:                                          ; preds = %do.body
  %call7 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp8 = icmp sgt i64 %call7, -1
  br i1 %cmp8, label %do.cond.do.body_crit_edge, label %do.end19

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end19:                                         ; preds = %do.cond
  %10 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_wait, align 8
  %device21 = getelementptr inbounds %struct.nvkm_timer, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device21, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %call22 = call ptr @dev_driver_string(ptr noundef %15) #5
  %16 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_wait, align 8
  %device25 = getelementptr inbounds %struct.nvkm_timer, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device25, align 4
  %dev26 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev26, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end19.dev_name.exit_crit_edge

do.end19.dev_name.exit_crit_edge:                 ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.end19.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call22, ptr noundef %retval.0.i) #5
  br label %if.end41

if.end41:                                         ; preds = %dev_name.exit, %do.body.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  %inc = add nuw i32 %s.058, 1
  %26 = ptrtoint ptr %lts_nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lts_nr, align 4
  %cmp3 = icmp ult i32 %inc, %27
  br i1 %cmp3, label %if.end41.for.body4_crit_edge, label %if.end41.for.inc43_crit_edge

if.end41.for.inc43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc43

if.end41.for.body4_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.inc43:                                        ; preds = %if.end41.for.inc43_crit_edge, %for.cond2.preheader.for.inc43_crit_edge
  %inc44 = add nuw i32 %c.060, 1
  %28 = ptrtoint ptr %ltc_nr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ltc_nr, align 4
  %cmp = icmp ult i32 %inc44, %29
  br i1 %cmp, label %for.inc43.for.cond2.preheader_crit_edge, label %for.inc43.for.end45_crit_edge

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end45

for.inc43.for.cond2.preheader_crit_edge:          ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %entry.for.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_zbc_clear_color(ptr nocapture noundef readonly %ltc, i32 noundef %i, ptr nocapture noundef readonly %color) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1567300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %and = and i32 %4, -16
  %or = or i32 %and, %i
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1567300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %color, align 4
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 1567304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %arrayidx13 = getelementptr i32, ptr %color, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx13, align 4
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 1567308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %arrayidx19 = getelementptr i32, ptr %color, i32 2
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 1567312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %16) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %arrayidx25 = getelementptr i32, ptr %color, i32 3
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx25, align 4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %22, i32 1567316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %20) #5, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_zbc_clear_depth(ptr nocapture noundef readonly %ltc, i32 noundef %i, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1567300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and = and i32 %4, -16
  %or = or i32 %and, %i
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1567300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 1567320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %depth) #5, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_intr(ptr noundef %ltc) #0 align 64 {
entry:
  %msg.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not13 = icmp eq i32 %4, 0
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lts_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 3
  %debug.i = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %mask.014 = phi i32 [ %4, %while.body.lr.ph ], [ %and, %for.end.while.body_crit_edge ]
  %5 = call i32 @llvm.cttz.i32(i32 %mask.014, i1 true) #5, !range !76
  %6 = ptrtoint ptr %lts_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lts_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not = icmp eq i32 %7, 0
  br i1 %cmp10.not, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  %mul.i = shl nuw nsw i32 %5, 13
  %add4.i = or i32 %mul.i, 1314848
  br label %for.body

for.body:                                         ; preds = %gf100_ltc_lts_intr.exit.for.body_crit_edge, %for.body.lr.ph
  %s.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gf100_ltc_lts_intr.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1, align 4
  %mul3.i = shl i32 %s.011, 10
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add5.i = add i32 %add4.i, %mul3.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add5.i
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %and.i = and i32 %12, 65535
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #5
  %13 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.gf100_ltc_lts_intr.exit_crit_edge, label %if.then.i

for.body.gf100_ltc_lts_intr.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %gf100_ltc_lts_intr.exit

if.then.i:                                        ; preds = %for.body
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @gf100_ltc_lts_intr_name, i32 noundef %and.i) #5
  %14 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.then.i.gf100_ltc_lts_intr.exit_crit_edge, label %do.end.i

if.then.i.gf100_ltc_lts_intr.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gf100_ltc_lts_intr.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef %name.i, i32 noundef %5, i32 noundef %s.011, i32 noundef %and.i, ptr noundef nonnull %msg.i) #8
  br label %gf100_ltc_lts_intr.exit

gf100_ltc_lts_intr.exit:                          ; preds = %do.end.i, %if.then.i.gf100_ltc_lts_intr.exit_crit_edge, %for.body.gf100_ltc_lts_intr.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %21, i32 %add5.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %12) #5, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #5
  %inc = add nuw i32 %s.011, 1
  %22 = ptrtoint ptr %lts_nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lts_nr, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %gf100_ltc_lts_intr.exit.for.body_crit_edge, label %gf100_ltc_lts_intr.exit.for.end_crit_edge

gf100_ltc_lts_intr.exit.for.end_crit_edge:        ; preds = %gf100_ltc_lts_intr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

gf100_ltc_lts_intr.exit.for.body_crit_edge:       ; preds = %gf100_ltc_lts_intr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %gf100_ltc_lts_intr.exit.for.end_crit_edge, %while.body.for.end_crit_edge
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %and = and i32 %mask.014, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_invalidate(ptr noundef %ltc) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 458756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #5, !srcloc !61
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr472 = getelementptr i8, ptr %6, i32 458756
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr472) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %and73 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.end40.thread76, label %entry.do.cond5_crit_edge

entry.do.cond5_crit_edge:                         ; preds = %entry
  br label %do.cond5

if.end40.thread76:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end56

do.body2:                                         ; preds = %do.cond5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 458756
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %and = and i32 %10, 3
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end40, label %do.body2.do.cond5_crit_edge

do.body2.do.cond5_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond5

do.cond5:                                         ; preds = %do.body2.do.cond5_crit_edge, %entry.do.cond5_crit_edge
  %call6 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call6)
  %cmp7 = icmp sgt i64 %call6, -1
  br i1 %cmp7, label %do.body2, label %do.end18

do.end18:                                         ; preds = %do.cond5
  %11 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_wait, align 8
  %device20 = getelementptr inbounds %struct.nvkm_timer, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device20, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %16) #5
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device24 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device24, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev25, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.if.end40.thread_crit_edge

do.end18.if.end40.thread_crit_edge:               ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.thread

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end.i, %do.end18.if.end40.thread_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.end18.if.end40.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call21, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end56

if.end40:                                         ; preds = %do.body2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %cmp42.not = icmp eq i64 %call6, 0
  br i1 %cmp42.not, label %if.end40.if.end56_crit_edge, label %do.body44

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.body44:                                        ; preds = %if.end40
  %debug = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp46 = icmp ugt i32 %28, 3
  br i1 %cmp46, label %do.end50, label %do.body44.if.end56_crit_edge

do.body44.if.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device1, align 4
  %dev52 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev52, align 8
  %name = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef %name, i64 noundef %call6) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %do.body44.if.end56_crit_edge, %if.end40.if.end56_crit_edge, %if.end40.thread, %if.end40.thread76
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_ltc_flush(ptr noundef %ltc) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 458768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #5, !srcloc !61
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr472 = getelementptr i8, ptr %6, i32 458768
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr472) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and73 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.end40.thread76, label %entry.do.cond5_crit_edge

entry.do.cond5_crit_edge:                         ; preds = %entry
  br label %do.cond5

if.end40.thread76:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end56

do.body2:                                         ; preds = %do.cond5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 458768
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and = and i32 %10, 3
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end40, label %do.body2.do.cond5_crit_edge

do.body2.do.cond5_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond5

do.cond5:                                         ; preds = %do.body2.do.cond5_crit_edge, %entry.do.cond5_crit_edge
  %call6 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call6)
  %cmp7 = icmp sgt i64 %call6, -1
  br i1 %cmp7, label %do.body2, label %do.end18

do.end18:                                         ; preds = %do.cond5
  %11 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_wait, align 8
  %device20 = getelementptr inbounds %struct.nvkm_timer, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device20, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call21 = call ptr @dev_driver_string(ptr noundef %16) #5
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device24 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device24, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev25, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.if.end40.thread_crit_edge

do.end18.if.end40.thread_crit_edge:               ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.thread

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end.i, %do.end18.if.end40.thread_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.end18.if.end40.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call21, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end56

if.end40:                                         ; preds = %do.body2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %cmp42.not = icmp eq i64 %call6, 0
  br i1 %cmp42.not, label %if.end40.if.end56_crit_edge, label %do.body44

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.body44:                                        ; preds = %if.end40
  %debug = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp46 = icmp ugt i32 %28, 3
  br i1 %cmp46, label %do.end50, label %do.body44.if.end56_crit_edge

do.body44.if.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device1, align 4
  %dev52 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev52, align 8
  %name = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.19, ptr noundef %name, i64 noundef %call6) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %do.body44.if.end56_crit_edge, %if.end40.if.end56_crit_edge, %if.end40.thread, %if.end40.thread76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_oneinit_tag_ram(ptr noundef %ltc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fb2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 8
  %ram3 = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ram3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1051776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_tags = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 5
  %9 = ptrtoint ptr %num_tags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_tags, align 4
  br label %mm_init

if.end:                                           ; preds = %entry
  %and = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %size = getelementptr inbounds %struct.nvkm_ram, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size, align 8
  %div347 = lshr i64 %11, 19
  %conv = trunc i64 %div347 to i32
  %num_tags5 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 5
  %shl = select i1 %tobool.not, i32 131072, i32 65536
  %12 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %conv)
  %add = add nuw nsw i32 %12, 63
  %and13 = and i32 %add, 524224
  %13 = ptrtoint ptr %num_tags5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and13, ptr %num_tags5, align 4
  %ltc_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 2
  %14 = ptrtoint ptr %ltc_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ltc_nr, align 4
  %mul = shl i32 %15, 11
  %16 = tail call i32 @llvm.umax.i32(i32 %mul, i32 24576)
  %div19348 = lshr i32 %add, 6
  %mul20 = mul nuw nsw i32 %div19348, 24576
  %add21 = add i32 %16, %mul
  %add22 = add i32 %add21, %mul20
  %conv23 = zext i32 %add22 to i64
  %tag_ram = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 7
  %call24 = tail call i32 @nvkm_ram_get(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 12, i64 noundef %conv23, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %tag_ram) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %num_tags5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_tags5, align 4
  br label %mm_init

if.else:                                          ; preds = %if.end
  %18 = ptrtoint ptr %tag_ram to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tag_ram, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %call30 = tail call i64 %23(ptr noundef %19) #5
  %conv31 = zext i32 %16 to i64
  %sub = add i32 %mul, -1
  %conv33 = zext i32 %sub to i64
  %add32 = add nuw nsw i64 %conv33, %conv31
  %add34 = add i64 %add32, %call30
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add34)
  %cmp218 = icmp ult i64 %add34, 4294967296
  br i1 %cmp218, label %if.then222, label %if.else228, !prof !84

if.then222:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv223 = trunc i64 %add34 to i32
  %div226 = udiv i32 %conv223, %mul
  br label %if.end232

if.else228:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add34) #9, !srcloc !85
  %asmresult1.i = extractvalue { i64, i64 } %24, 1
  %extract.t374 = trunc i64 %asmresult1.i to i32
  br label %if.end232

if.end232:                                        ; preds = %if.else228, %if.then222
  %tag_base.0.off0 = phi i32 [ %div226, %if.then222 ], [ %extract.t374, %if.else228 ]
  %tag_base235 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 6
  %25 = ptrtoint ptr %tag_base235 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tag_base.0.off0, ptr %tag_base235, align 4
  br label %mm_init

mm_init:                                          ; preds = %if.end232, %if.then26, %if.then
  %mm = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 4, i32 1
  %call237 = tail call i32 @nvkm_mm_fini(ptr noundef %mm) #5
  %num_tags240 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 5
  %26 = ptrtoint ptr %num_tags240 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tags240, align 4
  %call241 = tail call i32 @nvkm_mm_init(ptr noundef %mm, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %27, i32 noundef 1) #5
  ret i32 %call241
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_oneinit(ptr noundef %ltc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 140344
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 140628
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 1566940
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp21.not = icmp eq i32 %4, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ltc_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.022
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ltc_nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ltc_nr, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %ltc_nr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc12 = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc12, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %shr = lshr i32 %10, 28
  %lts_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 3
  %13 = ptrtoint ptr %lts_nr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %lts_nr, align 4
  %call13 = tail call i32 @gf100_ltc_oneinit_tag_ram(ptr noundef %ltc)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pltc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_ltc_new_(ptr noundef nonnull @gf100_ltc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pltc) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_ltc_init(ptr nocapture noundef readonly %ltc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1566752
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %and7 = and i32 %7, -1048577
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 1566752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and7) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %ltc_nr = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 2
  %10 = ptrtoint ptr %ltc_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ltc_nr, align 4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 1566936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %11) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %tag_base = getelementptr inbounds %struct.nvkm_ltc, ptr %ltc, i32 0, i32 6
  %14 = ptrtoint ptr %tag_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag_base, align 4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 1566932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %15) #5, !srcloc !61
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 1566912
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %and32 = and i32 %20, -3
  %and = shl i32 %4, 1
  %21 = and i32 %and, 2
  %22 = or i32 %and32, %21
  %or34 = xor i32 %22, 2
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %24, i32 1566912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %or34) #5, !srcloc !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 47, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 76, i32 16}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 77, i32 16}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 78, i32 16}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 79, i32 16}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 80, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 81, i32 16}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 82, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 83, i32 16}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 84, i32 16}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 85, i32 16}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 86, i32 16}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 87, i32 16}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 88, i32 16}
!29 = !{ptr @gf100_ltc_lts_intr_name, !30, !"gf100_ltc_lts_intr_name", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 75, i32 1}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 135, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gf100_ltc_invalidate._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @gf100_ltc_invalidate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 148, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gf100_ltc_flush._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @gf100_ltc_flush._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 104, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gf100_ltc_lts_intr._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @gf100_ltc_lts_intr._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @gf100_ltc, !50, !"gf100_ltc", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c", i32 238, i32 1}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2156252972}
!61 = !{i64 5390238}
!62 = !{i64 2156253370}
!63 = !{i64 2156253778}
!64 = !{i64 5390656}
!65 = !{i64 2156255610}
!66 = !{i64 2156257252}
!67 = !{i64 2156257636}
!68 = !{i64 2156258068}
!69 = !{i64 2156258475}
!70 = !{i64 2156258882}
!71 = !{i64 2156259289}
!72 = !{i64 2156260119}
!73 = !{i64 2156260503}
!74 = !{i64 2156260929}
!75 = !{i64 2156264498}
!76 = !{i32 0, i32 33}
!77 = !{i64 2156261392}
!78 = !{i64 2156264048}
!79 = !{i64 2156264838}
!80 = !{i64 2156267092}
!81 = !{i64 2156270733}
!82 = !{i64 2156272987}
!83 = !{i64 2156276613}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148448488, i64 2148448768, i64 2148449102, i64 2148449436}
!86 = !{i64 2156282204}
!87 = !{i64 2156282589}
!88 = !{i64 2156282974}
!89 = !{i64 2156283359}
!90 = !{i64 2156284129}
!91 = !{i64 2156284531}
!92 = !{i64 2156284978}
!93 = !{i64 2156285398}
!94 = !{i64 2156286264}
!95 = !{i64 2156286710}
