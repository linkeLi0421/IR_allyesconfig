; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_fifo = type { %struct.nvkm_fifo, ptr }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv04_fifo_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv04_fifo_intr\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_fifo_intr._entry_ptr = internal global ptr @nv04_fifo_intr._entry, section ".printk_index", align 4
@nv04_fifo_cache_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 200, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: CACHE_ERROR - ch %d [%s] subc %d mthd %04x data %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nv04_fifo_cache_error\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv04_fifo_cache_error._entry_ptr = internal global ptr @nv04_fifo_cache_error._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv04_fifo_dma_pusher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 245, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"%s: DMA_PUSHER - ch %d [%s] get %02x%08x put %02x%08x ib_get %08x ib_put %08x state %08x (err: %s) push %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv04_fifo_dma_pusher\00", [43 x i8] zeroinitializer }, align 32
@nv04_fifo_dma_pusher._entry_ptr = internal global ptr @nv04_fifo_dma_pusher._entry, section ".printk_index", align 4
@nv04_fifo_dma_pusher._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 259, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: DMA_PUSHER - ch %d [%s] get %08x put %08x state %08x (err: %s) push %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@nv04_fifo_dma_pusher._entry_ptr.14 = internal global ptr @nv04_fifo_dma_pusher._entry.12, section ".printk_index", align 4
@nv_dma_state_err.desc = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CALL_SUBR_ACTIVE\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INVALID_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RET_SUBR_INACTIVE\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INVALID_CMD\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IB_EMPTY\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MEM_FAULT\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UNK\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_fifo_dma_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv04_fifo = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr null, ptr null, ptr null, ptr @nv04_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv04_fifo_dma_oclass, ptr null] }, [56 x i8] zeroinitializer }, align 32
@nv04_fifo_ramfc = internal constant { [9 x { i8, i8, i8, i32 }], [56 x i8] } { [9 x { i8, i8, i8, i32 }] [{ i8, i8, i8, i32 } { i8 -128, i8 0, i8 0, i32 12864 }, { i8, i8, i8, i32 } { i8 -128, i8 0, i8 -128, i32 12868 }, { i8, i8, i8, i32 } { i8 64, i8 1, i8 0, i32 12844 }, { i8, i8, i8, i32 } { i8 66, i8 1, i8 0, i32 12960 }, { i8, i8, i8, i32 } { i8 -128, i8 1, i8 -128, i32 12840 }, { i8, i8, i8, i32 } { i8 -128, i8 2, i8 0, i32 12836 }, { i8, i8, i8, i32 } { i8 -128, i8 2, i8 -128, i32 12928 }, { i8, i8, i8, i32 } { i8 -128, i8 3, i8 0, i32 12884 }, { i8, i8, i8, i32 } zeroinitializer], [56 x i8] zeroinitializer }, align 32
@switch.table.nv04_fifo_id_engine = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 48, i32 33, i32 36, i32 31], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 70, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 322, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 197, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 240, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 256, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 132, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 133, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 133, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 133, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 133, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 134, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 134, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 134, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 134, i32 54 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"nv04_fifo\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 381, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"nv04_fifo_ramfc\00", align 1
@___asan_gen_.107 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 35, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [33 x i8] c"switch.table.nv04_fifo_id_engine\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @nv04_fifo_cache_error._entry, ptr @nv04_fifo_cache_error._entry_ptr, ptr @nv04_fifo_dma_pusher._entry, ptr @nv04_fifo_dma_pusher._entry.12, ptr @nv04_fifo_dma_pusher._entry_ptr, ptr @nv04_fifo_dma_pusher._entry_ptr.14, ptr @nv04_fifo_intr._entry, ptr @nv04_fifo_intr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @nv_dma_state_err.desc, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @nv04_fifo, ptr @nv04_fifo_ramfc, ptr @switch.table.nv04_fifo_id_engine], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo_cache_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo_dma_pusher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo_dma_pusher._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_dma_state_err.desc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_fifo_ramfc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv04_fifo_id_engine to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_fifo_pause(ptr noundef %base, ptr nocapture noundef writeonly %pflags) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call6, ptr %pflags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #5, !srcloc !58
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 12880
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %and = and i32 %7, -2
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 12880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and) #5, !srcloc !58
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body23

do.body23:                                        ; preds = %do.cond31.do.body23_crit_edge, %entry
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %12, i32 12880
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %and30 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not = icmp eq i32 %and30, 0
  br i1 %tobool.not, label %do.body23.if.end70_crit_edge, label %do.cond31

do.body23.if.end70_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.cond31:                                        ; preds = %do.body23
  %call32 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp33 = icmp sgt i64 %call32, -1
  br i1 %cmp33, label %do.cond31.do.body23_crit_edge, label %do.end48

do.cond31.do.body23_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

do.end48:                                         ; preds = %do.cond31
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device50 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device50, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call51 = call ptr @dev_driver_string(ptr noundef %19) #5
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device54 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device54, align 4
  %dev55 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev55, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end48.dev_name.exit_crit_edge

do.end48.dev_name.exit_crit_edge:                 ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end48.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end48.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call51, ptr noundef %retval.0.i) #5
  br label %if.end70

if.end70:                                         ; preds = %dev_name.exit, %do.body23.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %31, i32 12880
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %and77 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end70.do.body86_crit_edge, label %do.body80

if.end70.do.body86_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

do.body80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr84 = getelementptr i8, ptr %34, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 1) #5, !srcloc !58
  br label %do.body86

do.body86:                                        ; preds = %do.body80, %if.end70.do.body86_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr90 = getelementptr i8, ptr %36, i32 12888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #5, !srcloc !58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_fifo_start(ptr noundef %base, ptr nocapture noundef readonly %pflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %2 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pflags, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 12880
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %or = or i32 %6, 1
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 12880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %or) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1) #5, !srcloc !58
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv04_fifo_id_engine(ptr nocapture noundef readonly %fifo, i32 noundef %engi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %engi)
  %0 = icmp ult i32 %engi, 4
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nv04_fifo_id_engine, i32 0, i32 %engi
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %device = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call ptr @nvkm_device_engine(ptr noundef %3, i32 noundef %switch.load, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_engine_id(ptr nocapture readnone %base, ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 48, label %entry.return_crit_edge
    i32 33, label %sw.bb1
    i32 36, label %sw.bb2
    i32 31, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_fifo_intr(ptr noundef %base) #0 align 64 {
entry:
  %chan.i168 = alloca ptr, align 4
  %flags.i169 = alloca i32, align 4
  %chan.i = alloca ptr, align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 8448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %and = and i32 %7, %4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 9472
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !58
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 12804
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 3
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %sub = add i32 %17, -1
  %and25 = and i32 %sub, %15
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 12912
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %and31 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool.not = icmp eq i32 %and31, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %21 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i) #5
  %23 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #5
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %flags.i, align 4, !annotation !75
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 12880
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 15
  %28 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %29)
  %cmp.i = icmp ult i32 %29, 64
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %32 = shl i32 %20, 1
  %mul.i = and i32 %32, 4088
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw nsw i32 %mul.i, 14336
  %add.ptr5.i = getelementptr i8, ptr %31, i32 %add.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %34 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i, align 4
  %add11.i = add nuw nsw i32 %mul.i, 14340
  %add.ptr12.i = getelementptr i8, ptr %35, i32 %add11.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add18.i = or i32 %mul.i, 589824
  %add.ptr19.i = getelementptr i8, ptr %31, i32 %add18.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add25.i = or i32 %mul.i, 589828
  %add.ptr26.i = getelementptr i8, ptr %39, i32 %add25.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %36, %if.then.i ], [ %40, %if.else.i ]
  %mthd.0.i = phi i32 [ %33, %if.then.i ], [ %37, %if.else.i ]
  %and29.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then31.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then31.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sw1.i.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 68
  %41 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sw1.i.i, align 8
  %and.i.i = lshr i32 %mthd.0.i, 13
  %shr.i.i = and i32 %and.i.i, 7
  %and2.i.i = and i32 %mthd.0.i, 8188
  %mul.i.i = shl nuw nsw i32 %shr.i.i, 2
  %shl.i.i = shl nuw i32 15, %mul.i.i
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 12928
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cond.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cond.i.i, label %do.body.i.i, label %sw.caserange20.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %neg.i.i = xor i32 %shl.i.i, -1
  %and3.i.i = and i32 %45, %neg.i.i
  %46 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %47, i32 12928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %and3.i.i) #5, !srcloc !58
  br label %sw.bb6.i.i

sw.bb6.i.i:                                       ; preds = %sw.caserange.i.i.sw.bb6.i.i_crit_edge, %do.body.i.i
  %engine.0.i.i = phi i32 [ %and3.i.i, %do.body.i.i ], [ %45, %sw.caserange.i.i.sw.bb6.i.i_crit_edge ]
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %49, i32 12888
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %and12.i.i = and i32 %50, 65535
  br label %sw.bb14.i.i

sw.bb14.i.i:                                      ; preds = %sw.caserange20.i.i.sw.bb14.i.i_crit_edge, %sw.bb6.i.i
  %engine.1.i.i = phi i32 [ %engine.0.i.i, %sw.bb6.i.i ], [ %45, %sw.caserange20.i.i.sw.bb14.i.i_crit_edge ]
  %data.addr.0.i.i = phi i32 [ %and12.i.i, %sw.bb6.i.i ], [ %data.0.i, %sw.caserange20.i.i.sw.bb14.i.i_crit_edge ]
  %and15.i.i = and i32 %engine.1.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool.not.i.i = icmp ne i32 %and15.i.i, 0
  %tobool16.not.i.i = icmp eq ptr %42, null
  %or.cond32.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool16.not.i.i
  br i1 %or.cond32.i.i, label %sw.bb14.i.i.if.then31.i_crit_edge, label %nv04_fifo_swmthd.exit.i

sw.bb14.i.i.if.then31.i_crit_edge:                ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i

sw.caserange.i.i:                                 ; preds = %sw.caserange20.i.i
  %51 = add nsw i32 %and2.i.i, -384
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %51)
  %inbounds.i.i = icmp ult i32 %51, 125
  br i1 %inbounds.i.i, label %sw.caserange.i.i.sw.bb6.i.i_crit_edge, label %sw.caserange.i.i.if.then31.i_crit_edge

sw.caserange.i.i.if.then31.i_crit_edge:           ; preds = %sw.caserange.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i

sw.caserange.i.i.sw.bb6.i.i_crit_edge:            ; preds = %sw.caserange.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

sw.caserange20.i.i:                               ; preds = %lor.lhs.false.i
  %52 = add nsw i32 %and2.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %52)
  %inbounds21.i.i = icmp ult i32 %52, 125
  %53 = add nsw i32 %and2.i.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 7677, i32 %53)
  %inbounds19.i.i = icmp ult i32 %53, 7677
  %or.cond.i.i = or i1 %inbounds21.i.i, %inbounds19.i.i
  br i1 %or.cond.i.i, label %sw.caserange20.i.i.sw.bb14.i.i_crit_edge, label %sw.caserange.i.i

sw.caserange20.i.i.sw.bb14.i.i_crit_edge:         ; preds = %sw.caserange20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14.i.i

nv04_fifo_swmthd.exit.i:                          ; preds = %sw.bb14.i.i
  %call17.i.i = tail call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %42, i32 noundef %and25, i32 noundef %shr.i.i, i32 noundef %and2.i.i, i32 noundef %data.addr.0.i.i) #5
  br i1 %call17.i.i, label %nv04_fifo_swmthd.exit.i.nv04_fifo_cache_error.exit_crit_edge, label %nv04_fifo_swmthd.exit.i.if.then31.i_crit_edge

nv04_fifo_swmthd.exit.i.if.then31.i_crit_edge:    ; preds = %nv04_fifo_swmthd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31.i

nv04_fifo_swmthd.exit.i.nv04_fifo_cache_error.exit_crit_edge: ; preds = %nv04_fifo_swmthd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_fifo_cache_error.exit

if.then31.i:                                      ; preds = %nv04_fifo_swmthd.exit.i.if.then31.i_crit_edge, %sw.caserange.i.i.if.then31.i_crit_edge, %sw.bb14.i.i.if.then31.i_crit_edge, %if.end.i.if.then31.i_crit_edge
  %call33.i = call ptr @nvkm_fifo_chan_chid(ptr noundef %base, i32 noundef %and25, ptr noundef nonnull %flags.i) #5
  %54 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call33.i, ptr %chan.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %55 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp34.not.i = icmp eq i32 %56, 0
  br i1 %cmp34.not.i, label %if.then31.i.if.end44.i_crit_edge, label %do.end.i

if.then31.i.if.end44.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

do.end.i:                                         ; preds = %if.then31.i
  %57 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %tobool38.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool38.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %client.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call33.i, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client.i, align 4
  %name39.i = getelementptr inbounds %struct.nvkm_client, ptr %62, i32 0, i32 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %name39.i, %cond.true.i ], [ @.str.9, %do.end.i.cond.end.i_crit_edge ]
  %shr41.i = lshr i32 %mthd.0.i, 13
  %and42.i = and i32 %shr41.i, 7
  %and43.i = and i32 %mthd.0.i, 8188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %and25, ptr noundef %cond.i, i32 noundef %and42.i, i32 noundef %and43.i, i32 noundef %data.0.i) #8
  br label %if.end44.i

if.end44.i:                                       ; preds = %cond.end.i, %if.then31.i.if.end44.i_crit_edge
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %base, i32 noundef %64, ptr noundef nonnull %chan.i) #5
  br label %nv04_fifo_cache_error.exit

nv04_fifo_cache_error.exit:                       ; preds = %if.end44.i, %nv04_fifo_swmthd.exit.i.nv04_fifo_cache_error.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %66, i32 12832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 0) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %68, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 1) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %70, i32 12800
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and67.i = and i32 %71, -2
  %72 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %73, i32 12800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %and67.i) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %add73.i = add i32 %20, 4
  %74 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %75, i32 12912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %add73.i) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %77, i32 12800
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %or.i = or i32 %78, 1
  %79 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %80, i32 12800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %or.i) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri.i, align 4
  %add.ptr90.i = getelementptr i8, ptr %82, i32 12888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 0) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %84, i32 12832
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %or99.i = or i32 %85, 1
  %86 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %87, i32 12832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %or99.i) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %89, i32 12880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 1) #5, !srcloc !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i) #5
  %and32 = and i32 %and, -2
  br label %if.end

if.end:                                           ; preds = %nv04_fifo_cache_error.exit, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and32, %nv04_fifo_cache_error.exit ], [ %and, %entry.if.end_crit_edge ]
  %and33 = and i32 %stat.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end.if.end37_crit_edge, label %if.then35

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end
  %90 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device3, align 4
  %pri.i171 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %93, i32 12868
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %95 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i171, align 4
  %add.ptr5.i173 = getelementptr i8, ptr %96, i32 12864
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i173) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %98 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i171, align 4
  %add.ptr10.i = getelementptr i8, ptr %99, i32 12832
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %101 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i171, align 4
  %add.ptr15.i = getelementptr i8, ptr %102, i32 12840
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i168) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i169) #5
  %104 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %flags.i169, align 4, !annotation !75
  %call19.i = call ptr @nvkm_fifo_chan_chid(ptr noundef %base, i32 noundef %and25, ptr noundef nonnull %flags.i169) #5
  %105 = ptrtoint ptr %chan.i168 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call19.i, ptr %chan.i168, align 4
  %tobool.not.i174 = icmp eq ptr %call19.i, null
  br i1 %tobool.not.i174, label %if.then35.cond.end.i180_crit_edge, label %cond.true.i176

if.then35.cond.end.i180_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i180

cond.true.i176:                                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %client.i175 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call19.i, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %client.i175 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %client.i175, align 4
  %name20.i = getelementptr inbounds %struct.nvkm_client, ptr %107, i32 0, i32 1
  br label %cond.end.i180

cond.end.i180:                                    ; preds = %cond.true.i176, %if.then35.cond.end.i180_crit_edge
  %cond.i177 = phi ptr [ %name20.i, %cond.true.i176 ], [ @.str.9, %if.then35.cond.end.i180_crit_edge ]
  %card_type.i178 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 15
  %108 = ptrtoint ptr %card_type.i178 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %card_type.i178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %109)
  %cmp.i179 = icmp eq i32 %109, 80
  br i1 %cmp.i179, label %if.then.i182, label %do.body78.i

if.then.i182:                                     ; preds = %cond.end.i180
  %110 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri.i171, align 4
  %add.ptr23.i = getelementptr i8, ptr %111, i32 13096
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %113 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri.i171, align 4
  %add.ptr28.i = getelementptr i8, ptr %114, i32 13088
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  %116 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri.i171, align 4
  %add.ptr33.i = getelementptr i8, ptr %117, i32 13108
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %119 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri.i171, align 4
  %add.ptr38.i = getelementptr i8, ptr %120, i32 13104
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  %debug.i181 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %122 = ptrtoint ptr %debug.i181 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %debug.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp41.not.i = icmp eq i32 %123, 0
  br i1 %cmp41.not.i, label %if.then.i182.if.end.i186_crit_edge, label %do.end.i185

if.then.i182.if.end.i186_crit_edge:               ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i186

do.end.i185:                                      ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device3, align 4
  %dev.i183 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %dev.i183 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i183, align 8
  %name45.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %shr.i.i184 = lshr i32 %103, 29
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @nv_dma_state_err.desc, i32 0, i32 %shr.i.i184
  %128 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.10, ptr noundef %name45.i, i32 noundef %and25, ptr noundef %cond.i177, i32 noundef %112, i32 noundef %94, i32 noundef %115, i32 noundef %97, i32 noundef %118, i32 noundef %121, i32 noundef %103, ptr noundef %129, i32 noundef %100) #8
  br label %if.end.i186

if.end.i186:                                      ; preds = %do.end.i185, %if.then.i182.if.end.i186_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri.i171, align 4
  %add.ptr54.i = getelementptr i8, ptr %131, i32 13156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 0) #5, !srcloc !58
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %97)
  %cmp55.not.i = icmp eq i32 %94, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %115)
  %cmp56.not.i = icmp eq i32 %112, %115
  %or.cond.i = select i1 %cmp55.not.i, i1 %cmp56.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i187, label %do.body58.i

do.body58.i:                                      ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri.i171, align 4
  %add.ptr62.i = getelementptr i8, ptr %133, i32 12868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %97) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri.i171, align 4
  %add.ptr67.i = getelementptr i8, ptr %135, i32 13096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %115) #5, !srcloc !58
  br label %nv04_fifo_dma_pusher.exit

if.else.i187:                                     ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %121)
  %cmp68.not.i = icmp eq i32 %118, %121
  br i1 %cmp68.not.i, label %if.else.i187.nv04_fifo_dma_pusher.exit_crit_edge, label %do.body70.i

if.else.i187.nv04_fifo_dma_pusher.exit_crit_edge: ; preds = %if.else.i187
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_fifo_dma_pusher.exit

do.body70.i:                                      ; preds = %if.else.i187
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i171, align 4
  %add.ptr74.i = getelementptr i8, ptr %137, i32 13108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %121) #5, !srcloc !58
  br label %nv04_fifo_dma_pusher.exit

do.body78.i:                                      ; preds = %cond.end.i180
  %debug80.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %138 = ptrtoint ptr %debug80.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %debug80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp81.not.i = icmp eq i32 %139, 0
  br i1 %cmp81.not.i, label %do.body78.i.if.end91.i_crit_edge, label %do.end85.i

do.body78.i.if.end91.i_crit_edge:                 ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.i

do.end85.i:                                       ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #7
  %140 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device3, align 4
  %dev87.i = getelementptr inbounds %struct.nvkm_device, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev87.i, align 8
  %name88.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %shr.i164.i = lshr i32 %103, 29
  %arrayidx.i165.i = getelementptr [8 x ptr], ptr @nv_dma_state_err.desc, i32 0, i32 %shr.i164.i
  %144 = ptrtoint ptr %arrayidx.i165.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i165.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.13, ptr noundef %name88.i, i32 noundef %and25, ptr noundef %cond.i177, i32 noundef %94, i32 noundef %97, i32 noundef %103, ptr noundef %145, i32 noundef %100) #8
  br label %if.end91.i

if.end91.i:                                       ; preds = %do.end85.i, %do.body78.i.if.end91.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %97)
  %cmp94.not.i = icmp eq i32 %94, %97
  br i1 %cmp94.not.i, label %if.end91.i.nv04_fifo_dma_pusher.exit_crit_edge, label %do.body96.i

if.end91.i.nv04_fifo_dma_pusher.exit_crit_edge:   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_fifo_dma_pusher.exit

do.body96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri.i171, align 4
  %add.ptr100.i = getelementptr i8, ptr %147, i32 12868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 %97) #5, !srcloc !58
  br label %nv04_fifo_dma_pusher.exit

nv04_fifo_dma_pusher.exit:                        ; preds = %do.body96.i, %if.end91.i.nv04_fifo_dma_pusher.exit_crit_edge, %do.body70.i, %if.else.i187.nv04_fifo_dma_pusher.exit_crit_edge, %do.body58.i
  %148 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i169, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %base, i32 noundef %149, ptr noundef nonnull %chan.i168) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  call void @arm_heavy_mb() #5
  %150 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pri.i171, align 4
  %add.ptr108.i = getelementptr i8, ptr %151, i32 12840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i, i32 0) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri.i171, align 4
  %add.ptr113.i = getelementptr i8, ptr %153, i32 12832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 1) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %pri.i171 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri.i171, align 4
  %add.ptr118.i = getelementptr i8, ptr %155, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i, i32 4096) #5, !srcloc !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i169) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i168) #5
  %and36 = and i32 %stat.0, -4097
  br label %if.end37

if.end37:                                         ; preds = %nv04_fifo_dma_pusher.exit, %if.end.if.end37_crit_edge
  %stat.1 = phi i32 [ %and36, %nv04_fifo_dma_pusher.exit ], [ %stat.0, %if.end.if.end37_crit_edge ]
  %and38 = and i32 %stat.1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end67_crit_edge, label %if.then40

if.end37.if.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %and41 = and i32 %stat.1, -1048577
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %157, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 1048576) #5, !srcloc !58
  %158 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %159, i32 12908
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  call void @arm_heavy_mb() #5
  %or = or i32 %160, 1
  %161 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %162, i32 12908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  call void @arm_heavy_mb() #5
  %add = add i32 %20, 4
  %163 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pri, align 4
  %add.ptr61 = getelementptr i8, ptr %164, i32 12912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %add) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %166, i32 12880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 1) #5, !srcloc !58
  br label %if.end67

if.end67:                                         ; preds = %if.then40, %if.end37.if.end67_crit_edge
  %stat.2 = phi i32 [ %and41, %if.then40 ], [ %stat.1, %if.end37.if.end67_crit_edge ]
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %167 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %168)
  %cmp = icmp eq i32 %168, 80
  br i1 %cmp, label %if.then68, label %if.end67.if.end90_crit_edge

if.end67.if.end90_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then68:                                        ; preds = %if.end67
  %and69 = and i32 %stat.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then68.if.end78_crit_edge, label %if.then71

if.then68.if.end78_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %and72 = and i32 %stat.2, -17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pri, align 4
  %add.ptr77 = getelementptr i8, ptr %170, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 16) #5, !srcloc !58
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.then68.if.end78_crit_edge
  %stat.3 = phi i32 [ %and72, %if.then71 ], [ %stat.2, %if.then68.if.end78_crit_edge ]
  %and79 = and i32 %stat.3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end90_crit_edge, label %do.body82

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pri, align 4
  %add.ptr86 = getelementptr i8, ptr %172, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 1073741824) #5, !srcloc !58
  call void @nvkm_fifo_uevent(ptr noundef %base) #5
  %and88 = and i32 %stat.3, -1073741825
  br label %if.end90

if.end90:                                         ; preds = %do.body82, %if.end78.if.end90_crit_edge, %if.end67.if.end90_crit_edge
  %stat.4 = phi i32 [ %and88, %do.body82 ], [ %stat.3, %if.end78.if.end90_crit_edge ], [ %stat.2, %if.end67.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.4)
  %tobool91.not = icmp eq i32 %stat.4, 0
  br i1 %tobool91.not, label %if.end90.do.body122_crit_edge, label %do.body93

if.end90.do.body122_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body122

do.body93:                                        ; preds = %if.end90
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %173 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp94 = icmp ugt i32 %174, 1
  br i1 %cmp94, label %do.end98, label %do.body93.if.end100_crit_edge

do.body93.if.end100_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

do.end98:                                         ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  %175 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %178, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %stat.4) #8
  br label %if.end100

if.end100:                                        ; preds = %do.end98, %do.body93.if.end100_crit_edge
  %179 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pri, align 4
  %add.ptr105 = getelementptr i8, ptr %180, i32 8512
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  call void @arm_heavy_mb() #5
  %neg = xor i32 %stat.4, -1
  %and111 = and i32 %181, %neg
  %182 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pri, align 4
  %add.ptr114 = getelementptr i8, ptr %183, i32 8512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %and111) #5, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %185, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %stat.4) #5, !srcloc !58
  br label %do.body122

do.body122:                                       ; preds = %if.end100, %if.end90.do.body122_crit_edge
  %and16 = and i32 %10, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pri, align 4
  %add.ptr126 = getelementptr i8, ptr %187, i32 9472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %and16) #5, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_fifo_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %imem3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %imem3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imem3, align 4
  %ramht4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ramht4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ramht4, align 4
  %ramro5 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %ramro5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ramro5, align 4
  %ramfc6 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %ramfc6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ramfc6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 255) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16908287) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %bits = getelementptr inbounds %struct.nvkm_ramht, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits, align 4
  %sub = shl i32 %15, 16
  %shl = add i32 %sub, -589824
  %gpuobj = getelementptr inbounds %struct.nvkm_ramht, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %gpuobj to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpuobj, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr, align 8
  %shr = lshr i64 %19, 8
  %20 = trunc i64 %shr to i32
  %or = or i32 %shl, %20
  %conv17 = or i32 %or, 50331648
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %conv17) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %addr23 = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %addr23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr23, align 4
  %call = tail call i64 %26(ptr noundef %7) #5
  %shr24 = lshr i64 %call, 8
  %conv25 = trunc i64 %shr24 to i32
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %28, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %conv25) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 4
  %addr32 = getelementptr inbounds %struct.nvkm_memory_func, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %addr32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr32, align 4
  %call33 = tail call i64 %32(ptr noundef %9) #5
  %shr34 = lshr i64 %call33, 8
  %conv35 = trunc i64 %shr34 to i32
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %34, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %conv35) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 3
  %35 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr, align 4
  %sub42 = add i32 %36, -1
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr44 = getelementptr i8, ptr %38, i32 12804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %sub42) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %40, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %42, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 -1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr59 = getelementptr i8, ptr %44, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %46, i32 12880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr69 = getelementptr i8, ptr %48, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 1) #5, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %nr, ptr noundef %ramfc, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1204) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ramfc1 = getelementptr inbounds %struct.nv04_fifo, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ramfc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ramfc, ptr %ramfc1, align 8
  %2 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %pfifo, align 4
  %call3 = tail call i32 @nvkm_fifo_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %nr, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %nr, -1
  %mask = getelementptr inbounds %struct.nvkm_fifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %sub, ptr noundef %mask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1204) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv04_fifo_new_.exit_crit_edge, label %if.end.i

entry.nv04_fifo_new_.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_fifo_new_.exit

if.end.i:                                         ; preds = %entry
  %ramfc1.i = getelementptr inbounds %struct.nv04_fifo, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ramfc1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nv04_fifo_ramfc, ptr %ramfc1.i, align 8
  %2 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %pfifo, align 4
  %call3.i = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @nv04_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 16, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.nv04_fifo_new_.exit_crit_edge

if.end.i.nv04_fifo_new_.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv04_fifo_new_.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mask.i = getelementptr inbounds %struct.nvkm_fifo, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 15, ptr noundef %mask.i) #5
  br label %nv04_fifo_new_.exit

nv04_fifo_new_.exit:                              ; preds = %if.end6.i, %if.end.i.nv04_fifo_new_.exit_crit_edge, %entry.nv04_fifo_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ -12, %entry.nv04_fifo_new_.exit_crit_edge ], [ %call3.i, %if.end.i.nv04_fifo_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 70, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 322, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv04_fifo_intr._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv04_fifo_intr._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 197, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nv04_fifo_cache_error._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @nv04_fifo_cache_error._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 240, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nv04_fifo_dma_pusher._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv04_fifo_dma_pusher._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 256, i32 3}
!24 = !{ptr @nv04_fifo_dma_pusher._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nv04_fifo_dma_pusher._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 133, i32 3}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 133, i32 11}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 133, i32 31}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 133, i32 47}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 134, i32 3}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 134, i32 18}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 134, i32 41}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 134, i32 54}
!42 = !{ptr @nv_dma_state_err.desc, !43, !"desc", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 132, i32 28}
!44 = !{ptr @nv04_fifo, !45, !"nv04_fifo", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 381, i32 1}
!46 = !{ptr @nv04_fifo_ramfc, !47, !"nv04_fifo_ramfc", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv04.c", i32 35, i32 1}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2156272953}
!58 = !{i64 5399752}
!59 = !{i64 5400170}
!60 = !{i64 2156273807}
!61 = !{i64 2156274209}
!62 = !{i64 2156276267}
!63 = !{i64 2156277576}
!64 = !{i64 2156277943}
!65 = !{i64 2156278367}
!66 = !{i64 2156280456}
!67 = !{i64 2156280858}
!68 = !{i64 2156281318}
!69 = !{i64 2156310558}
!70 = !{i64 2156310960}
!71 = !{i64 2156311362}
!72 = !{i64 2156311701}
!73 = !{i64 2156312165}
!74 = !{i64 2156312567}
!75 = !{!"auto-init"}
!76 = !{i64 2156284096}
!77 = !{i64 2156284546}
!78 = !{i64 2156284996}
!79 = !{i64 2156285446}
!80 = !{i64 2156285896}
!81 = !{i64 2156282826}
!82 = !{i64 2156283182}
!83 = !{i64 2156283678}
!84 = !{i64 2156289421}
!85 = !{i64 2156289839}
!86 = !{i64 2156291067}
!87 = !{i64 2156291322}
!88 = !{i64 2156291690}
!89 = !{i64 2156292917}
!90 = !{i64 2156293172}
!91 = !{i64 2156293527}
!92 = !{i64 2156294748}
!93 = !{i64 2156295003}
!94 = !{i64 2156295358}
!95 = !{i64 2156295805}
!96 = !{i64 2156296190}
!97 = !{i64 2156296575}
!98 = !{i64 2156296960}
!99 = !{i64 2156297345}
!100 = !{i64 2156297730}
!101 = !{i64 2156298115}
!102 = !{i64 2156298500}
!103 = !{i64 2156302763}
!104 = !{i64 2156303170}
!105 = !{i64 2156303572}
!106 = !{i64 2156303973}
!107 = !{i64 2156307615}
!108 = !{i64 2156308025}
!109 = !{i64 2156308438}
!110 = !{i64 2156308853}
!111 = !{i64 2156312972}
!112 = !{i64 2156313442}
!113 = !{i64 2156313797}
!114 = !{i64 2156314218}
!115 = !{i64 2156314625}
!116 = !{i64 2156315029}
!117 = !{i64 2156315442}
!118 = !{i64 2156318413}
!119 = !{i64 2156318803}
!120 = !{i64 2156319245}
!121 = !{i64 2156319663}
!122 = !{i64 2156321324}
!123 = !{i64 2156321752}
!124 = !{i64 2156322368}
!125 = !{i64 2156322971}
!126 = !{i64 2156323505}
!127 = !{i64 2156323972}
!128 = !{i64 2156324407}
!129 = !{i64 2156324835}
!130 = !{i64 2156325245}
!131 = !{i64 2156325646}
!132 = !{i64 2156326047}
