; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.gf100_fifo = type { %struct.nvkm_fifo, %struct.list_head, %struct.anon.140, i32, %struct.anon.141, %struct.anon.142 }
%struct.anon.140 = type { %struct.work_struct, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.141 = type { [2 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.142 = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, %struct.list_head, i8, [16 x %struct.gf100_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gf100_fifo_engn = type { ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c\00", [47 x i8] zeroinitializer }, align 32
@gf100_fifo_runlist_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: runlist update timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gf100_fifo_runlist_commit\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_fifo_runlist_commit._entry_ptr = internal global ptr @gf100_fifo_runlist_commit._entry, section ".printk_index", align 4
@gf100_fifo_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&fifo->recover.work)\00", [57 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_engine_unit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ENGINE %d %d %01x\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gf100_fifo_intr_engine_unit\00", [36 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_engine_unit._entry_ptr = internal global ptr @gf100_fifo_intr_engine_unit._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gf100_fifo_gpfifo_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@gf100_fifo = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr @gf100_fifo_dtor, ptr @gf100_fifo_oneinit, ptr null, ptr @gf100_fifo_init, ptr @gf100_fifo_fini, ptr @gf100_fifo_intr, ptr @gf100_fifo_fault, ptr @gf100_fifo_engine_id, ptr @gf100_fifo_id_engine, ptr null, ptr null, ptr @gf100_fifo_uevent_init, ptr @gf100_fifo_uevent_fini, ptr null, ptr null, ptr null, [2 x ptr] [ptr @gf100_fifo_gpfifo_oclass, ptr null] }, [56 x i8] zeroinitializer }, align 32
@gf100_fifo_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 585, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %d PBDMA(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_fifo_oneinit\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gf100_fifo_oneinit._entry_ptr = internal global ptr @gf100_fifo_oneinit._entry, section ".printk_index", align 4
@gf100_fifo_oneinit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fifo->runlist.wait\00", [44 x i8] zeroinitializer }, align 32
@gf100_fifo_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 509, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: INTR 00000001: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gf100_fifo_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gf100_fifo_intr._entry_ptr = internal global ptr @gf100_fifo_intr._entry, section ".printk_index", align 4
@gf100_fifo_intr._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str, i32 522, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: INTR 00010000: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@gf100_fifo_intr._entry_ptr.18 = internal global ptr @gf100_fifo_intr._entry.16, section ".printk_index", align 4
@gf100_fifo_intr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str, i32 529, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: INTR 01000000: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@gf100_fifo_intr._entry_ptr.21 = internal global ptr @gf100_fifo_intr._entry.19, section ".printk_index", align 4
@gf100_fifo_intr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: INTR %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gf100_fifo_intr._entry_ptr.24 = internal global ptr @gf100_fifo_intr._entry.22, section ".printk_index", align 4
@gf100_fifo_sched_reason = internal constant { [2 x %struct.nvkm_enum], [56 x i8] } { [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 10, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_sched._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 361, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: SCHED_ERROR %02x [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf100_fifo_intr_sched\00", [42 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_sched._entry_ptr = internal global ptr @gf100_fifo_intr_sched._entry, section ".printk_index", align 4
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CTXSW_TIMEOUT\00", [18 x i8] zeroinitializer }, align 32
@gf100_fifo_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: %s engine fault on channel %d, recovering...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_fifo_recover\00", [45 x i8] zeroinitializer }, align 32
@gf100_fifo_recover._entry_ptr = internal global ptr @gf100_fifo_recover._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gf100_fifo_pbdma_intr = internal constant { [3 x %struct.nvkm_bitfield], [40 x i8] } { [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2097152, ptr @.str.34 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.35 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_pbdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf100_fifo_intr_pbdma\00", [42 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_pbdma._entry_ptr = internal global ptr @gf100_fifo_intr_pbdma._entry, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EMPTY_SUBC\00", [21 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_runlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: RUNLIST %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gf100_fifo_intr_runlist\00", [40 x i8] zeroinitializer }, align 32
@gf100_fifo_intr_runlist._entry_ptr = internal global ptr @gf100_fifo_intr_runlist._entry, section ".printk_index", align 4
@gf100_fifo_fault_reason = internal constant { [10 x %struct.nvkm_enum], [56 x i8] } { [10 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.44, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gf100_fifo_fault_engine = internal constant { [13 x %struct.nvkm_enum], [92 x i8] } { [13 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.52, ptr null, i32 33, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.53, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.54, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.55, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.56, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.57, ptr null, i32 40, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.58, ptr null, i32 39, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.60, ptr null, i32 38, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.61, ptr null, i32 28, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.62, ptr null, i32 28, i32 1 }, %struct.nvkm_enum { i32 23, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [92 x i8] zeroinitializer }, align 32
@gf100_fifo_fault_hubclient = internal constant { [15 x %struct.nvkm_enum], [84 x i8] } { [15 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.64, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.65, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.66, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.68, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.69, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.70, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.71, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.72, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [84 x i8] zeroinitializer }, align 32
@gf100_fifo_fault_gpcclient = internal constant { [5 x %struct.nvkm_enum], [60 x i8] } { [5 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.73, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.74, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.75, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPC%d/\00", [25 x i8] zeroinitializer }, align 32
@gf100_fifo_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s: %s fault at %010llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gf100_fifo_fault\00", [47 x i8] zeroinitializer }, align 32
@gf100_fifo_fault._entry_ptr = internal global ptr @gf100_fifo_fault._entry, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PT_NOT_PRESENT\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PT_TOO_SHORT\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAGE_NOT_PRESENT\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VM_LIMIT_EXCEEDED\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NO_CHANNEL\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAGE_SYSTEM_ONLY\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PAGE_READ_ONLY\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"COMPRESSED_SYSRAM\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INVALID_STORAGE_TYPE\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PGRAPH\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PEEPHOLE\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR1\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR3\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PFIFO\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PMSVLD\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PMSPPP\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCOUNTER\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PMSPDEC\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCE0\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCE1\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCOPY0\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCOPY1\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISPATCH\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CTXCTL\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAR_READ\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BAR_WRITE\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PVP\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCACHE\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CCACHE_POST\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TEX\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ESETUP\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PROP\00", [27 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_recover_work = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 33, i32 38, i32 39, i32 40, i32 28, i32 28, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 48], [32 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_recover_work.76 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_id_engine = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 33, i32 38, i32 39, i32 40, i32 28, i32 28, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 48], [32 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_id_engine.77 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_intr = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 33, i32 38, i32 39, i32 40, i32 28, i32 28, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 48], [32 x i8] zeroinitializer }, align 32
@switch.table.gf100_fifo_intr.78 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 12, i64 16, i64 34]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 32, i64 28, i64 33, i64 38, i64 39, i64 40, i64 48]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 28, i64 33, i64 38, i64 39, i64 40, i64 48]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 77, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 88, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 695, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 479, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"gf100_fifo\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 669, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 585, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 598, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 509, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 522, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 529, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 567, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"gf100_fifo_sched_reason\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 311, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 361, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 312, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 183, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [22 x i8] c"gf100_fifo_pbdma_intr\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 397, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 430, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 399, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 400, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 456, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"gf100_fifo_fault_reason\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 215, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"gf100_fifo_fault_engine\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 198, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [27 x i8] c"gf100_fifo_fault_hubclient\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 229, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"gf100_fifo_fault_gpcclient\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 248, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 274, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 296, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 216, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 217, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 218, i32 10 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 219, i32 10 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 220, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 221, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 222, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 223, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 224, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 199, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 200, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 201, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 202, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 203, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 204, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 205, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 206, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 207, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 208, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 209, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 210, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 230, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 231, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 232, i32 10 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 233, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 235, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 236, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 237, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 242, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 243, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 249, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 250, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 252, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant [37 x i8] c"switch.table.gf100_fifo_recover_work\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [40 x i8] c"switch.table.gf100_fifo_recover_work.76\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [34 x i8] c"switch.table.gf100_fifo_id_engine\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [37 x i8] c"switch.table.gf100_fifo_id_engine.77\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [29 x i8] c"switch.table.gf100_fifo_intr\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [32 x i8] c"switch.table.gf100_fifo_intr.78\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @gf100_fifo_fault._entry, ptr @gf100_fifo_fault._entry_ptr, ptr @gf100_fifo_intr._entry, ptr @gf100_fifo_intr._entry.16, ptr @gf100_fifo_intr._entry.19, ptr @gf100_fifo_intr._entry.22, ptr @gf100_fifo_intr._entry_ptr, ptr @gf100_fifo_intr._entry_ptr.18, ptr @gf100_fifo_intr._entry_ptr.21, ptr @gf100_fifo_intr._entry_ptr.24, ptr @gf100_fifo_intr_engine_unit._entry, ptr @gf100_fifo_intr_engine_unit._entry_ptr, ptr @gf100_fifo_intr_pbdma._entry, ptr @gf100_fifo_intr_pbdma._entry_ptr, ptr @gf100_fifo_intr_runlist._entry, ptr @gf100_fifo_intr_runlist._entry_ptr, ptr @gf100_fifo_intr_sched._entry, ptr @gf100_fifo_intr_sched._entry_ptr, ptr @gf100_fifo_oneinit._entry, ptr @gf100_fifo_oneinit._entry_ptr, ptr @gf100_fifo_recover._entry, ptr @gf100_fifo_recover._entry_ptr, ptr @gf100_fifo_runlist_commit._entry, ptr @gf100_fifo_runlist_commit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gf100_fifo_new.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gf100_fifo, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @gf100_fifo_oneinit.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @gf100_fifo_sched_reason, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @gf100_fifo_pbdma_intr, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @gf100_fifo_fault_reason, ptr @gf100_fifo_fault_engine, ptr @gf100_fifo_fault_hubclient, ptr @gf100_fifo_fault_gpcclient, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.gf100_fifo_recover_work, ptr @switch.table.gf100_fifo_recover_work.76, ptr @switch.table.gf100_fifo_id_engine, ptr @switch.table.gf100_fifo_id_engine.77, ptr @switch.table.gf100_fifo_intr, ptr @switch.table.gf100_fifo_intr.78], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_runlist_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr_engine_unit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_oneinit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_sched_reason to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr_sched._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_pbdma_intr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr_pbdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_intr_runlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_fault_reason to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_fault_engine to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_fault_hubclient to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_fault_gpcclient to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_recover_work to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_recover_work.76 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_id_engine to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_id_engine.77 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_intr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_fifo_intr.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_commit(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %runlist = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 4
  %active = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  %arrayidx = getelementptr [2 x ptr], ptr %runlist, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %active, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %10(ptr noundef %5) #7
  %chan9 = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 1
  %11 = ptrtoint ptr %chan9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn206 = load ptr, ptr %chan9, align 4
  %cmp.not207 = icmp eq ptr %.pn206, %chan9
  br i1 %cmp.not207, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn209 = phi ptr [ %.pn206, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %nr.0208 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %mul = shl i32 %nr.0208, 3
  %conv = sext i32 %mul to i64
  %chid = getelementptr i8, ptr %.pn209, i32 -236
  %16 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %chid, align 8
  %conv14 = zext i16 %17 to i32
  tail call void %15(ptr noundef %5, i64 noundef %conv, i32 noundef %conv14) #7
  %18 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptrs, align 4
  %wr3216 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr3216 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr3216, align 4
  %add18 = or i32 %mul, 4
  %conv19 = sext i32 %add18 to i64
  tail call void %21(ptr noundef %5, i64 noundef %conv19, i32 noundef 4) #7
  %inc = add i32 %nr.0208, 1
  %22 = ptrtoint ptr %.pn209 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn209, align 4
  %cmp.not = icmp eq ptr %.pn, %chan9
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = or i32 %inc, 32505856
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %nr.0.lcssa = phi i32 [ 32505856, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release, align 4
  tail call void %26(ptr noundef %5) #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %target27 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %target27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %target27, align 4
  %call28 = tail call i32 %30(ptr noundef %5) #7
  %31 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %sw.default [
    i32 1, label %for.end.do.body51_crit_edge
    i32 3, label %sw.bb29
  ]

for.end.do.body51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

sw.bb29:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #7
  br label %cleanup150

do.body51:                                        ; preds = %sw.bb29, %for.end.do.body51_crit_edge
  %target.0 = phi i32 [ 805306368, %sw.bb29 ], [ 0, %for.end.do.body51_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr, align 4
  %call55 = tail call i64 %35(ptr noundef %5) #7
  %shr = lshr i64 %call55, 12
  %36 = trunc i64 %shr to i32
  %conv57 = or i32 %target.0, %36
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %38, i32 8816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %conv57) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %40, i32 8820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %nr.0.lcssa) #7, !srcloc !171
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 87) #7
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %42, i32 8828
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %and = and i32 %43, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %do.body51.if.end147_crit_edge, label %if.then91

do.body51.if.end147_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then91:                                        ; preds = %do.body51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %44 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 4, i32 2
  br label %for.cond94

for.cond94:                                       ; preds = %cleanup, %if.then91
  %__ret92.0 = phi i32 [ 200, %if.then91 ], [ %call126, %cleanup ]
  %call96 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr100 = getelementptr i8, ptr %46, i32 8828
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %and103 = and i32 %47, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret92.0)
  %tobool111.not = icmp eq i32 %__ret92.0, 0
  %48 = select i1 %tobool104.not, i1 %tobool111.not, i1 false
  %__ret92.1 = select i1 %48, i32 1, i32 %__ret92.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret92.1)
  %tobool118.not = icmp eq i32 %__ret92.1, 0
  %49 = select i1 %tobool104.not, i1 true, i1 %tobool118.not
  br i1 %49, label %if.end131, label %cleanup

cleanup:                                          ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 @schedule_timeout(i32 noundef %__ret92.1) #7
  br label %for.cond94

if.end131:                                        ; preds = %for.cond94
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %tobool118.not, label %do.body136, label %if.end131.if.end147_crit_edge

if.end131.if.end147_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

do.body136:                                       ; preds = %if.end131
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 5
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp137.not = icmp eq i32 %51, 0
  br i1 %cmp137.not, label %do.body136.if.end147_crit_edge, label %do.end142

do.body136.if.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

do.end142:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef %name) #10
  br label %if.end147

if.end147:                                        ; preds = %do.end142, %do.body136.if.end147_crit_edge, %if.end131.if.end147_crit_edge, %do.body51.if.end147_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup150

cleanup150:                                       ; preds = %if.end147, %sw.default
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_remove(ptr noundef %fifo, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %head, ptr %head, align 4
  %prev.i3.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_fifo_runlist_insert(ptr noundef %fifo, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2
  %chan1 = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %1, ptr noundef %chan1) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %prev.i, align 4
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chan1, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %head, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_fifo_intr_fault(ptr noundef %fifo, i32 noundef %unit) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.nvkm_fault_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %unit, 4
  %add = add i32 %mul, 10240
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add5 = add i32 %mul, 10244
  %add.ptr6 = getelementptr i8, ptr %6, i32 %add5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add12 = add i32 %mul, 10248
  %add.ptr13 = getelementptr i8, ptr %9, i32 %add12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add19 = add i32 %mul, 10252
  %add.ptr20 = getelementptr i8, ptr %12, i32 %add19
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #7
  %14 = getelementptr inbounds i8, ptr %info, i32 24
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %14, align 8
  %conv = zext i32 %4 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %inst23 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %inst23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl, ptr %inst23, align 8
  %conv24 = zext i32 %10 to i64
  %shl25 = shl nuw i64 %conv24, 32
  %conv26 = zext i32 %7 to i64
  %or = or i64 %shl25, %conv26
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or, ptr %info, align 8
  %time = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %time, align 8
  %conv27 = trunc i32 %unit to i8
  %engine28 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %engine28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv27, ptr %engine28, align 8
  %valid = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %valid, align 1
  %and = lshr i32 %13, 24
  %21 = trunc i32 %and to i8
  %conv29 = and i8 %21, 31
  %gpc = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 5
  %22 = ptrtoint ptr %gpc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv29, ptr %gpc, align 2
  %and30 = lshr i32 %13, 8
  %23 = trunc i32 %and30 to i8
  %conv32 = and i8 %23, 31
  %client = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %24 = ptrtoint ptr %client to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv32, ptr %client, align 1
  %25 = trunc i32 %13 to i8
  %26 = lshr i8 %25, 7
  %access = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 7
  %27 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %access, align 4
  %28 = lshr i8 %25, 6
  %conv38 = and i8 %28, 1
  %hub = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 6
  %29 = ptrtoint ptr %hub to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv38, ptr %hub, align 1
  %conv40 = and i8 %25, 15
  %reason = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 9
  %30 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv40, ptr %reason, align 2
  call void @nvkm_fifo_fault(ptr noundef %fifo, ptr noundef nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_fifo_intr_engine(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 9636
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not7 = icmp eq i32 %4, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %gf100_fifo_intr_engine_unit.exit.while.body_crit_edge, %while.body.lr.ph
  %mask.08 = phi i32 [ %4, %while.body.lr.ph ], [ %and, %gf100_fifo_intr_engine_unit.exit.while.body_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %mask.08, i1 true) #7, !range !181
  %6 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %mul.i = shl nuw nsw i32 %5, 2
  %add.i = add nuw nsw i32 %mul.i, 9640
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 9768
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %10) #7, !srcloc !171
  br label %for.body.i

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %while.body
  %unkn.061.i = phi i32 [ 0, %while.body ], [ %inc.i, %if.end40.i.for.body.i_crit_edge ]
  %mul12.i = shl nuw nsw i32 %unkn.061.i, 2
  %shr.i = lshr i32 %10, %mul12.i
  %and.i = and i32 %shr.i, %13
  %and13.i = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_fifo_uevent(ptr noundef %fifo) #7
  %and15.i = and i32 %and.i, -2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %ints.0.i = phi i32 [ %and15.i, %if.then.i ], [ %and.i, %for.body.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ints.0.i)
  %tobool16.not.i = icmp eq i32 %ints.0.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end40.i_crit_edge, label %do.body18.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

do.body18.i:                                      ; preds = %if.end.i
  %16 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 0
  br i1 %cmp19.not.i, label %do.body18.i.if.end25.i_crit_edge, label %do.end23.i

do.body18.i.if.end25.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

do.end23.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %5, i32 noundef %unkn.061.i, i32 noundef %ints.0.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end23.i, %do.body18.i.if.end25.i_crit_edge
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %23, i32 9768
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %neg.i = xor i32 %ints.0.i, -1
  %and36.i = and i32 %24, %neg.i
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %26, i32 9768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %and36.i) #7, !srcloc !171
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end25.i, %if.end.i.if.end40.i_crit_edge
  %inc.i = add nuw nsw i32 %unkn.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %gf100_fifo_intr_engine_unit.exit, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

gf100_fifo_intr_engine_unit.exit:                 ; preds = %if.end40.i
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %and = and i32 %mask.08, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gf100_fifo_intr_engine_unit.exit.while.end_crit_edge, label %gf100_fifo_intr_engine_unit.exit.while.body_crit_edge

gf100_fifo_intr_engine_unit.exit.while.body_crit_edge: ; preds = %gf100_fifo_intr_engine_unit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

gf100_fifo_intr_engine_unit.exit.while.end_crit_edge: ; preds = %gf100_fifo_intr_engine_unit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %gf100_fifo_intr_engine_unit.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1344) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chan = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chan, ptr %chan, align 8
  %prev.i = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chan, ptr %prev.i, align 4
  %recover = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %recover, i32 noundef 0) #7
  %3 = ptrtoint ptr %recover to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %recover, align 8
  %lockdep_map = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @gf100_fifo_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i19 = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry7, ptr %prev.i19, align 8
  %func = getelementptr inbounds %struct.gf100_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gf100_fifo_recover_work, ptr %func, align 4
  %7 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pfifo, align 4
  %call11 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gf100_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 128, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_recover_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr i8, ptr %w, i32 -1196
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %lock = getelementptr i8, ptr %w, i32 -480
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %mask = getelementptr inbounds %struct.anon.140, ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mask, align 8
  %conv9 = trunc i64 %3 to i32
  store i64 0, ptr %mask, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 9776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %or = or i32 %6, %conv9
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %8, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or) #7, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool.not108 = icmp eq i32 %conv9, 0
  br i1 %tobool.not108, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv9, i1 true) #7, !range !181
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %9, %for.body.lr.ph ], [ %19, %for.inc.for.body_crit_edge ]
  %todo.0109 = phi i32 [ %conv9, %for.body.lr.ph ], [ %conv60, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %switch.hole_check, label %for.body.for.inc.sink.split_crit_edge

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %10 to i16
  %switch.shifted = lshr i16 -32705, %switch.maskindex
  %12 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %switch.lobit.not = icmp eq i16 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.sink.split_crit_edge, label %switch.lookup

switch.hole_check.for.inc.sink.split_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_recover_work, i32 0, i32 %10
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep110 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_recover_work.76, i32 0, i32 %10
  %14 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load111 = load i32, ptr %switch.gep110, align 4
  %15 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device1, align 4
  %call.i = tail call ptr @nvkm_device_engine(ptr noundef %16, i32 noundef %switch.load, i32 noundef %switch.load111) #7
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %switch.lookup.for.inc_crit_edge, label %if.then

switch.lookup.for.inc_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %switch.lookup
  %subdev27 = getelementptr inbounds %struct.nvkm_engine, ptr %call.i, i32 0, i32 1
  %call28 = tail call i32 @nvkm_subdev_fini(ptr noundef %subdev27, i1 noundef zeroext false) #7
  %call30 = tail call i32 @nvkm_subdev_init(ptr noundef %subdev27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then.for.inc_crit_edge, label %if.then.for.inc.sink.split_crit_edge, !prof !189

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.then.for.inc.sink.split_crit_edge, %switch.hole_check.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 123, %for.body.for.inc.sink.split_crit_edge ], [ 165, %if.then.for.inc.sink.split_crit_edge ], [ 123, %switch.hole_check.for.inc.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge, %switch.lookup.for.inc_crit_edge
  %sh_prom = zext i32 %10 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %17 = trunc i64 %shl to i32
  %18 = xor i32 %17, -1
  %conv60 = and i32 %todo.0109, %18
  %19 = tail call i32 @llvm.cttz.i32(i32 %conv60, i1 false) #7, !range !181
  %tobool.not = icmp eq i32 %conv60, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %w, i32 -1208
  %neg = xor i32 %conv9, -1
  tail call void @gf100_fifo_runlist_commit(ptr noundef %add.ptr)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %21, i32 9772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %conv9) #7, !srcloc !171
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr71 = getelementptr i8, ptr %23, i32 9776
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %and78 = and i32 %24, %neg
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr81 = getelementptr i8, ptr %26, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %and78) #7, !srcloc !171
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gf100_fifo_id_engine(ptr nocapture noundef readonly %fifo, i32 noundef %engi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %engi)
  %0 = icmp ult i32 %engi, 16
  br i1 %0, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %engi to i16
  %switch.shifted = lshr i16 -32705, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_id_engine, i32 0, i32 %engi
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep23 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_id_engine.77, i32 0, i32 %engi
  %3 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  %device = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call = tail call ptr @nvkm_device_engine(ptr noundef %5, i32 noundef %switch.load, i32 noundef %switch.load24) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gf100_fifo_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %call = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %1) #7
  %user = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5
  %bar = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %call, ptr noundef %bar) #7
  tail call void @nvkm_memory_unref(ptr noundef %user) #7
  %runlist = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %runlist) #7
  %arrayidx7 = getelementptr %struct.gf100_fifo, ptr %base, i32 0, i32 4, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx7) #7
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %call = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #7, !srcloc !171
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 8708
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %6) #7
  %pbdma_nr = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 3
  %7 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %pbdma_nr, align 8
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %do.end13, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  %runlist = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 4
  %call18 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %runlist) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %arrayidx23 = getelementptr %struct.gf100_fifo, ptr %base, i32 0, i32 4, i32 0, i32 1
  %call24 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %arrayidx23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body28, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body28:                                        ; preds = %if.end20
  %wait = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @gf100_fifo_oneinit.__key) #7
  %user = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5
  %call33 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 524288, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %user) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %do.body28
  %14 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %size, align 4
  %call41 = tail call i64 %19(ptr noundef %15) #7
  %bar43 = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5, i32 1
  %call44 = tail call i32 @nvkm_vmm_get(ptr noundef %call, i8 noundef zeroext 12, i64 noundef %call41, ptr noundef %bar43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %26 = ptrtoint ptr %bar43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bar43, align 4
  %call55 = tail call i32 %25(ptr noundef %21, i64 noundef 0, ptr noundef %call, ptr noundef %27, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end36.cleanup_crit_edge, %do.body28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %if.end47 ], [ %call18, %if.end.cleanup_crit_edge ], [ %call24, %if.end20.cleanup_crit_edge ], [ %call33, %do.body28.cleanup_crit_edge ], [ %call44, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %pbdma_nr = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 3
  %2 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbdma_nr, align 8
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %sub) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pbdma_nr, align 8
  %notmask135 = shl nsw i32 -1, %7
  %sub9 = xor i32 %notmask135, -1
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %sub9) #7, !srcloc !171
  %10 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pbdma_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp sgt i32 %11, 2
  br i1 %cmp, label %do.body13, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 8712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -2) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 8716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -3) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %17, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -3) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -3) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %21, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 -5) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %23, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -3) #7, !srcloc !171
  %24 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %pbdma_nr, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry.if.end_crit_edge
  %25 = phi i32 [ %.pr, %do.body13 ], [ %11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp44136 = icmp sgt i32 %25, 0
  br i1 %cmp44136, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mul = shl i32 %i.0137, 13
  %add = add i32 %mul, 262460
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %27, i32 %add
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %and = and i32 %28, -268435713
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %and) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add59 = add i32 %mul, 262408
  %add.ptr60 = getelementptr i8, ptr %32, i32 %add59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -1) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add66 = add i32 %mul, 262412
  %add.ptr67 = getelementptr i8, ptr %34, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 -257) #7, !srcloc !171
  %inc = add nuw nsw i32 %i.0137, 1
  %35 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pbdma_nr, align 8
  %cmp44 = icmp slt i32 %inc, %36
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %38, i32 8704
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %or80 = or i32 %39, 1
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr82 = getelementptr i8, ptr %41, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %or80) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %bar = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bar, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr, align 8
  %shr = lshr i64 %45, 12
  %46 = trunc i64 %shr to i32
  %conv = or i32 %46, 268435456
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr89 = getelementptr i8, ptr %48, i32 8788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %conv) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr94 = getelementptr i8, ptr %50, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -1) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %52, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 2147483647) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr104 = getelementptr i8, ptr %54, i32 9768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 1) #7, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_fini(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recover = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 2
  %call = tail call zeroext i1 @flush_work(ptr noundef %recover) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_intr(ptr noundef %base) #0 align 64 {
entry:
  %chan.i = alloca ptr, align 4
  %flags.i = alloca i32, align 4
  %msg.i = alloca [128 x i8], align 1
  %info.i = alloca %struct.nvkm_fault_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 8448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %and = and i32 %7, %4
  %and11 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 9516
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %10) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 1) #7, !srcloc !171
  %and27 = and i32 %and, -2
  br label %if.end28

if.end28:                                         ; preds = %if.end, %entry.if.end28_crit_edge
  %stat.0 = phi i32 [ %and27, %if.end ], [ %and, %entry.if.end28_crit_edge ]
  %and29 = and i32 %stat.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end38_crit_edge, label %if.then31

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then31:                                        ; preds = %if.end28
  %19 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 9548
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %and.i = and i32 %23, 255
  %call3.i = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_sched_reason, i32 noundef %and.i) #7
  %debug.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %24 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 0
  br i1 %cmp.not.i, label %if.then31.if.end.i_crit_edge, label %do.end.i

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then31
  %26 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name6.i = getelementptr inbounds %struct.nvkm_enum, ptr %call3.i, i32 0, i32 1
  %30 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name6.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %31, %cond.true.i ], [ @.str.27, %do.end.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %and.i, ptr noundef %cond.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %if.then31.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i)
  %cond9.i = icmp eq i32 %and.i, 10
  br i1 %cond9.i, label %sw.bb.i, label %if.end.i.gf100_fifo_intr_sched.exit_crit_edge

if.end.i.gf100_fifo_intr_sched.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_intr_sched.exit

sw.bb.i:                                          ; preds = %if.end.i
  %32 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device3, align 4
  %lock.i.i = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %chan19.i.i = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end43.i.i.for.body.i.i_crit_edge, %sw.bb.i
  %engn.069.i.i = phi i32 [ 0, %sw.bb.i ], [ %inc.i.i, %if.end43.i.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %engn.069.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 9792
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %add.i.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %and15.i.i = and i32 %36, 127
  %37 = and i32 %36, -2147217408
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147217408, i32 %37)
  %.not.i.i = icmp eq i32 %37, -2147217408
  br i1 %.not.i.i, label %for.body.i.i.for.cond22.i.i_crit_edge, label %for.body.i.i.if.end43.i.i_crit_edge

for.body.i.i.if.end43.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

for.body.i.i.for.cond22.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.cond22.i.i

for.cond22.i.i:                                   ; preds = %for.body26.i.i.for.cond22.i.i_crit_edge, %for.body.i.i.for.cond22.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body26.i.i.for.cond22.i.i_crit_edge ], [ %chan19.i.i, %for.body.i.i.for.cond22.i.i_crit_edge ]
  %38 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp24.not.i.i = icmp eq ptr %.pn.i.i, %chan19.i.i
  br i1 %cmp24.not.i.i, label %for.cond22.i.i.if.end43.i.i_crit_edge, label %for.body26.i.i

for.cond22.i.i.if.end43.i.i_crit_edge:            ; preds = %for.cond22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

for.body26.i.i:                                   ; preds = %for.cond22.i.i
  %chid28.i.i = getelementptr i8, ptr %.pn.i.i, i32 -236
  %39 = ptrtoint ptr %chid28.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %chid28.i.i, align 8
  %conv29.i.i = zext i16 %40 to i32
  %cmp30.i.i = icmp eq i32 %and15.i.i, %conv29.i.i
  br i1 %cmp30.i.i, label %if.then32.i.i, label %for.body26.i.i.for.cond22.i.i_crit_edge

for.body26.i.i.for.cond22.i.i_crit_edge:          ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond22.i.i

if.then32.i.i:                                    ; preds = %for.body26.i.i
  %chan.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -332
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %engn.069.i.i)
  %41 = icmp ult i32 %engn.069.i.i, 16
  br i1 %41, label %switch.hole_check, label %if.then32.i.i.gf100_fifo_id_engine.exit.thread.i.i_crit_edge

if.then32.i.i.gf100_fifo_id_engine.exit.thread.i.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_id_engine.exit.thread.i.i

gf100_fifo_id_engine.exit.thread.i.i:             ; preds = %switch.hole_check.gf100_fifo_id_engine.exit.thread.i.i_crit_edge, %if.then32.i.i.gf100_fifo_id_engine.exit.thread.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #7
  br label %if.end43.i.i

switch.hole_check:                                ; preds = %if.then32.i.i
  %switch.maskindex = trunc i32 %engn.069.i.i to i16
  %switch.shifted = lshr i16 -32705, %switch.maskindex
  %42 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %switch.lobit.not = icmp eq i16 %42, 0
  br i1 %switch.lobit.not, label %switch.hole_check.gf100_fifo_id_engine.exit.thread.i.i_crit_edge, label %switch.lookup

switch.hole_check.gf100_fifo_id_engine.exit.thread.i.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_id_engine.exit.thread.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr, i32 0, i32 %engn.069.i.i
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep291 = getelementptr inbounds [16 x i32], ptr @switch.table.gf100_fifo_intr.78, i32 0, i32 %engn.069.i.i
  %44 = ptrtoint ptr %switch.gep291 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load292 = load i32, ptr %switch.gep291, align 4
  %45 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device3, align 4
  %call.i.i.i = tail call ptr @nvkm_device_engine(ptr noundef %46, i32 noundef %switch.load, i32 noundef %switch.load292) #7
  %tobool35.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool35.not.i.i, label %switch.lookup.if.end43.i.i_crit_edge, label %if.end.i.i

switch.lookup.if.end43.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.end.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_fifo_recover(ptr noundef %base, ptr noundef nonnull %call.i.i.i, ptr noundef %chan.0.le.i.i) #7
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end.i.i, %switch.lookup.if.end43.i.i_crit_edge, %gf100_fifo_id_engine.exit.thread.i.i, %for.cond22.i.i.if.end43.i.i_crit_edge, %for.body.i.i.if.end43.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %engn.069.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %gf100_fifo_intr_sched_ctxsw.exit.i, label %if.end43.i.i.for.body.i.i_crit_edge

if.end43.i.i.for.body.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

gf100_fifo_intr_sched_ctxsw.exit.i:               ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call5.i.i) #7
  br label %gf100_fifo_intr_sched.exit

gf100_fifo_intr_sched.exit:                       ; preds = %gf100_fifo_intr_sched_ctxsw.exit.i, %if.end.i.gf100_fifo_intr_sched.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %48, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 256) #7, !srcloc !171
  %and37 = and i32 %stat.0, -257
  br label %if.end38

if.end38:                                         ; preds = %gf100_fifo_intr_sched.exit, %if.end28.if.end38_crit_edge
  %stat.1 = phi i32 [ %and37, %gf100_fifo_intr_sched.exit ], [ %stat.0, %if.end28.if.end38_crit_edge ]
  %and39 = and i32 %stat.1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end69_crit_edge, label %if.then41

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then41:                                        ; preds = %if.end38
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %50, i32 9580
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %debug50 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %52 = ptrtoint ptr %debug50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp51 = icmp ugt i32 %53, 1
  br i1 %cmp51, label %do.end55, label %if.then41.if.end60_crit_edge

if.then41.if.end60_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end55:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device3, align 4
  %dev57 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev57, align 8
  %name58 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %57, ptr noundef nonnull @.str.17, ptr noundef %name58, i32 noundef %51) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end55, %if.then41.if.end60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %59, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 65536) #7, !srcloc !171
  %and68 = and i32 %stat.1, -65537
  br label %if.end69

if.end69:                                         ; preds = %if.end60, %if.end38.if.end69_crit_edge
  %stat.2 = phi i32 [ %and68, %if.end60 ], [ %stat.1, %if.end38.if.end69_crit_edge ]
  %and70 = and i32 %stat.2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end100_crit_edge, label %if.then72

if.end69.if.end100_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then72:                                        ; preds = %if.end69
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %61, i32 9612
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %debug81 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %63 = ptrtoint ptr %debug81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp82 = icmp ugt i32 %64, 1
  br i1 %cmp82, label %do.end86, label %if.then72.if.end91_crit_edge

if.then72.if.end91_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.end86:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device3, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev88, align 8
  %name89 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %68, ptr noundef nonnull @.str.20, ptr noundef %name89, i32 noundef %62) #10
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.then72.if.end91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add.ptr98 = getelementptr i8, ptr %70, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 16777216) #7, !srcloc !171
  %and99 = and i32 %stat.2, -16777217
  br label %if.end100

if.end100:                                        ; preds = %if.end91, %if.end69.if.end100_crit_edge
  %stat.3 = phi i32 [ %and99, %if.end91 ], [ %stat.2, %if.end69.if.end100_crit_edge ]
  %and101 = and i32 %stat.3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end121_crit_edge, label %if.then103

if.end100.if.end121_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then103:                                       ; preds = %if.end100
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %72, i32 9628
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool110.not284 = icmp eq i32 %73, 0
  br i1 %tobool110.not284, label %if.then103.while.end_crit_edge, label %while.body.lr.ph

if.then103.while.end_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then103
  %74 = getelementptr inbounds i8, ptr %info.i, i32 24
  %inst23.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 1
  %time.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 2
  %gpc.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 5
  %client.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 8
  %access.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 7
  %hub.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 6
  %reason.i = getelementptr inbounds %struct.nvkm_fault_data, ptr %info.i, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %mask104.0285 = phi i32 [ %73, %while.body.lr.ph ], [ %and119, %while.body.while.body_crit_edge ]
  %75 = call i32 @llvm.cttz.i32(i32 %mask104.0285, i1 true) #7, !range !181
  %76 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device3, align 4
  %pri.i255 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %pri.i255 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri.i255, align 4
  %mul.i = shl nuw nsw i32 %75, 4
  %add.i = or i32 %mul.i, 10240
  %add.ptr.i256 = getelementptr i8, ptr %79, i32 %add.i
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %81 = ptrtoint ptr %pri.i255 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri.i255, align 4
  %add5.i = or i32 %mul.i, 10244
  %add.ptr6.i = getelementptr i8, ptr %82, i32 %add5.i
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %84 = ptrtoint ptr %pri.i255 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri.i255, align 4
  %add12.i = or i32 %mul.i, 10248
  %add.ptr13.i = getelementptr i8, ptr %85, i32 %add12.i
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %87 = ptrtoint ptr %pri.i255 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i255, align 4
  %add19.i = or i32 %mul.i, 10252
  %add.ptr20.i = getelementptr i8, ptr %88, i32 %add19.i
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #7
  %90 = ptrtoint ptr %74 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 -71494644084506625, ptr %74, align 8
  %conv.i = zext i32 %80 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %91 = ptrtoint ptr %inst23.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %shl.i, ptr %inst23.i, align 8
  %conv24.i = zext i32 %86 to i64
  %shl25.i = shl nuw i64 %conv24.i, 32
  %conv26.i = zext i32 %83 to i64
  %or.i = or i64 %shl25.i, %conv26.i
  %92 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %or.i, ptr %info.i, align 8
  %93 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %time.i, align 8
  %conv27.i = trunc i32 %75 to i8
  store i8 %conv27.i, ptr %74, align 8
  %and.i257 = lshr i32 %89, 24
  %94 = trunc i32 %and.i257 to i8
  %conv29.i = and i8 %94, 31
  %95 = ptrtoint ptr %gpc.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv29.i, ptr %gpc.i, align 2
  %and30.i = lshr i32 %89, 8
  %96 = trunc i32 %and30.i to i8
  %conv32.i = and i8 %96, 31
  %97 = ptrtoint ptr %client.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv32.i, ptr %client.i, align 1
  %98 = trunc i32 %89 to i8
  %99 = lshr i8 %98, 7
  %100 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %access.i, align 4
  %101 = lshr i8 %98, 6
  %conv38.i = and i8 %101, 1
  %102 = ptrtoint ptr %hub.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv38.i, ptr %hub.i, align 1
  %conv40.i = and i8 %98, 15
  %103 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv40.i, ptr %reason.i, align 2
  call void @nvkm_fifo_fault(ptr noundef %base, ptr noundef nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %75
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  %add.ptr117 = getelementptr i8, ptr %105, i32 9628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %shl) #7, !srcloc !171
  %neg = xor i32 %shl, -1
  %and119 = and i32 %mask104.0285, %neg
  %tobool110.not = icmp eq i32 %and119, 0
  br i1 %tobool110.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then103.while.end_crit_edge
  %and120 = and i32 %stat.3, -268435457
  br label %if.end121

if.end121:                                        ; preds = %while.end, %if.end100.if.end121_crit_edge
  %stat.4 = phi i32 [ %and120, %while.end ], [ %stat.3, %if.end100.if.end121_crit_edge ]
  %and122 = and i32 %stat.4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end147_crit_edge, label %if.then124

if.end121.if.end147_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then124:                                       ; preds = %if.end121
  %106 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri, align 4
  %add.ptr128 = getelementptr i8, ptr %107, i32 9632
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool132.not286 = icmp eq i32 %108, 0
  br i1 %tobool132.not286, label %if.then124.while.end145_crit_edge, label %while.body133.lr.ph

if.then124.while.end145_crit_edge:                ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end145

while.body133.lr.ph:                              ; preds = %if.then124
  %debug.i265 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %name.i268 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  br label %while.body133

while.body133:                                    ; preds = %gf100_fifo_intr_pbdma.exit.while.body133_crit_edge, %while.body133.lr.ph
  %mask125.0287 = phi i32 [ %108, %while.body133.lr.ph ], [ %and144, %gf100_fifo_intr_pbdma.exit.while.body133_crit_edge ]
  %109 = call i32 @llvm.cttz.i32(i32 %mask125.0287, i1 true) #7, !range !181
  %110 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device3, align 4
  %pri.i259 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri.i259, align 4
  %mul.i260 = shl nuw nsw i32 %109, 13
  %add.i261 = or i32 %mul.i260, 262408
  %add.ptr.i262 = getelementptr i8, ptr %113, i32 %add.i261
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %115 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pri.i259, align 4
  %add6.i = or i32 %mul.i260, 262336
  %add.ptr7.i = getelementptr i8, ptr %116, i32 %add6.i
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  %118 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri.i259, align 4
  %add13.i = or i32 %mul.i260, 262340
  %add.ptr14.i = getelementptr i8, ptr %119, i32 %add13.i
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  %121 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri.i259, align 4
  %add20.i = or i32 %mul.i260, 262432
  %add.ptr21.i = getelementptr i8, ptr %122, i32 %add20.i
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %and.i263 = and i32 %123, 127
  %and24.i = lshr i32 %117, 16
  %shr.i = and i32 %and24.i, 7
  %and25.i = and i32 %117, 16380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i) #7
  %124 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan.i, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %flags.i, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #7
  %126 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  %and26.i = and i32 %114, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool.not.i264 = icmp eq i32 %and26.i, 0
  br i1 %tobool.not.i264, label %while.body133.if.end34.i_crit_edge, label %if.then.i

while.body133.if.end34.i_crit_edge:               ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then.i:                                        ; preds = %while.body133
  %sw.i = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 68
  %127 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sw.i, align 8
  %tobool27.not.i = icmp eq ptr %128, null
  br i1 %tobool27.not.i, label %if.then.i.if.then36.i_crit_edge, label %if.then28.i

if.then.i.if.then36.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

if.then28.i:                                      ; preds = %if.then.i
  %call30.i = call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %128, i32 noundef %and.i263, i32 noundef %shr.i, i32 noundef %and25.i, i32 noundef %120) #7
  %and32.i = and i32 %114, -8388609
  br i1 %call30.i, label %if.then28.i.if.end34.i_crit_edge, label %if.then28.i.if.then36.i_crit_edge

if.then28.i.if.then36.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

if.then28.i.if.end34.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i.if.end34.i_crit_edge, %while.body133.if.end34.i_crit_edge
  %show.0.i = phi i32 [ %114, %while.body133.if.end34.i_crit_edge ], [ %and32.i, %if.then28.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.0.i)
  %tobool35.not.i = icmp eq i32 %show.0.i, 0
  br i1 %tobool35.not.i, label %if.end34.i.gf100_fifo_intr_pbdma.exit_crit_edge, label %if.end34.i.if.then36.i_crit_edge

if.end34.i.if.then36.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

if.end34.i.gf100_fifo_intr_pbdma.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_intr_pbdma.exit

if.then36.i:                                      ; preds = %if.end34.i.if.then36.i_crit_edge, %if.then28.i.if.then36.i_crit_edge, %if.then.i.if.then36.i_crit_edge
  %show.0104.i = phi i32 [ %show.0.i, %if.end34.i.if.then36.i_crit_edge ], [ %114, %if.then.i.if.then36.i_crit_edge ], [ %114, %if.then28.i.if.then36.i_crit_edge ]
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @gf100_fifo_pbdma_intr, i32 noundef %show.0104.i) #7
  %call38.i = call ptr @nvkm_fifo_chan_chid(ptr noundef %base, i32 noundef %and.i263, ptr noundef nonnull %flags.i) #7
  %129 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call38.i, ptr %chan.i, align 4
  %130 = ptrtoint ptr %debug.i265 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %debug.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.not.i266 = icmp eq i32 %131, 0
  br i1 %cmp.not.i266, label %if.then36.i.if.end53.i_crit_edge, label %do.end.i269

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

do.end.i269:                                      ; preds = %if.then36.i
  %132 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device3, align 4
  %dev.i267 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %dev.i267 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i267, align 8
  %tobool44.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool44.not.i, label %do.end.i269.cond.end51.i_crit_edge, label %cond.true47.i

do.end.i269.cond.end51.i_crit_edge:               ; preds = %do.end.i269
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51.i

cond.true47.i:                                    ; preds = %do.end.i269
  call void @__sanitizer_cov_trace_pc() #9
  %inst.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call38.i, i32 0, i32 6
  %136 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %inst.i, align 4
  %addr45.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %addr45.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %addr45.i, align 8
  %client.i270 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call38.i, i32 0, i32 3, i32 1
  %140 = ptrtoint ptr %client.i270 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %client.i270, align 4
  %name48.i = getelementptr inbounds %struct.nvkm_client, ptr %141, i32 0, i32 1
  br label %cond.end51.i

cond.end51.i:                                     ; preds = %cond.true47.i, %do.end.i269.cond.end51.i_crit_edge
  %cond106.i = phi i64 [ %139, %cond.true47.i ], [ 0, %do.end.i269.cond.end51.i_crit_edge ]
  %cond52.i = phi ptr [ %name48.i, %cond.true47.i ], [ @.str.33, %do.end.i269.cond.end51.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.31, ptr noundef %name.i268, i32 noundef %109, i32 noundef %show.0104.i, ptr noundef nonnull %msg.i, i32 noundef %and.i263, i64 noundef %cond106.i, ptr noundef %cond52.i, i32 noundef %shr.i, i32 noundef %and25.i, i32 noundef %120) #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %cond.end51.i, %if.then36.i.if.end53.i_crit_edge
  %142 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %base, i32 noundef %143, ptr noundef nonnull %chan.i) #7
  br label %gf100_fifo_intr_pbdma.exit

gf100_fifo_intr_pbdma.exit:                       ; preds = %if.end53.i, %if.end34.i.gf100_fifo_intr_pbdma.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  call void @arm_heavy_mb() #7
  %144 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri.i259, align 4
  %add.ptr64.i = getelementptr i8, ptr %145, i32 %add6.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 -2141192184) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %pri.i259 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri.i259, align 4
  %add.ptr71.i = getelementptr i8, ptr %147, i32 %add.i261
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %114) #7, !srcloc !171
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  call void @arm_heavy_mb() #7
  %shl139 = shl nuw i32 1, %109
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %add.ptr141 = getelementptr i8, ptr %149, i32 9632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %shl139) #7, !srcloc !171
  %neg143 = xor i32 %shl139, -1
  %and144 = and i32 %mask125.0287, %neg143
  %tobool132.not = icmp eq i32 %and144, 0
  br i1 %tobool132.not, label %gf100_fifo_intr_pbdma.exit.while.end145_crit_edge, label %gf100_fifo_intr_pbdma.exit.while.body133_crit_edge

gf100_fifo_intr_pbdma.exit.while.body133_crit_edge: ; preds = %gf100_fifo_intr_pbdma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body133

gf100_fifo_intr_pbdma.exit.while.end145_crit_edge: ; preds = %gf100_fifo_intr_pbdma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end145

while.end145:                                     ; preds = %gf100_fifo_intr_pbdma.exit.while.end145_crit_edge, %if.then124.while.end145_crit_edge
  %and146 = and i32 %stat.4, -536870913
  br label %if.end147

if.end147:                                        ; preds = %while.end145, %if.end121.if.end147_crit_edge
  %stat.5 = phi i32 [ %and146, %while.end145 ], [ %stat.4, %if.end121.if.end147_crit_edge ]
  %and148 = and i32 %stat.5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end152_crit_edge, label %if.then150

if.end147.if.end152_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then150:                                       ; preds = %if.end147
  %150 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device3, align 4
  %pri.i272 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 11
  %152 = ptrtoint ptr %pri.i272 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri.i272, align 4
  %add.ptr.i273 = getelementptr i8, ptr %153, i32 10752
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %and.i274 = and i32 %154, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool.not.i275 = icmp eq i32 %and.i274, 0
  br i1 %tobool.not.i275, label %if.then150.if.end.i277_crit_edge, label %if.then.i276

if.then150.if.end.i277_crit_edge:                 ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i277

if.then.i276:                                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  %wait.i = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 4, i32 2
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  call void @arm_heavy_mb() #7
  %155 = ptrtoint ptr %pri.i272 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pri.i272, align 4
  %add.ptr4.i = getelementptr i8, ptr %156, i32 10752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #7, !srcloc !171
  %and5.i = and i32 %154, -268435457
  br label %if.end.i277

if.end.i277:                                      ; preds = %if.then.i276, %if.then150.if.end.i277_crit_edge
  %intr.0.i = phi i32 [ %and5.i, %if.then.i276 ], [ %154, %if.then150.if.end.i277_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.0.i)
  %tobool6.not.i = icmp eq i32 %intr.0.i, 0
  br i1 %tobool6.not.i, label %if.end.i277.gf100_fifo_intr_runlist.exit_crit_edge, label %do.body8.i

if.end.i277.gf100_fifo_intr_runlist.exit_crit_edge: ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_intr_runlist.exit

do.body8.i:                                       ; preds = %if.end.i277
  %debug.i278 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %157 = ptrtoint ptr %debug.i278 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %debug.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.not.i279 = icmp eq i32 %158, 0
  br i1 %cmp.not.i279, label %do.body8.i.if.end14.i_crit_edge, label %do.end12.i

do.body8.i.if.end14.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device3, align 4
  %dev.i280 = getelementptr inbounds %struct.nvkm_device, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %dev.i280 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i280, align 8
  %name.i281 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.36, ptr noundef %name.i281, i32 noundef %intr.0.i) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end12.i, %do.body8.i.if.end14.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  call void @arm_heavy_mb() #7
  %163 = ptrtoint ptr %pri.i272 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pri.i272, align 4
  %add.ptr21.i282 = getelementptr i8, ptr %164, i32 10752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i282, i32 %intr.0.i) #7, !srcloc !171
  br label %gf100_fifo_intr_runlist.exit

gf100_fifo_intr_runlist.exit:                     ; preds = %if.end14.i, %if.end.i277.gf100_fifo_intr_runlist.exit_crit_edge
  %and151 = and i32 %stat.5, -1073741825
  br label %if.end152

if.end152:                                        ; preds = %gf100_fifo_intr_runlist.exit, %if.end147.if.end152_crit_edge
  %stat.6 = phi i32 [ %and151, %gf100_fifo_intr_runlist.exit ], [ %stat.5, %if.end147.if.end152_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stat.6)
  %tobool154.not = icmp sgt i32 %stat.6, -1
  br i1 %tobool154.not, label %if.end152.if.end157_crit_edge, label %if.then155

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void @gf100_fifo_intr_engine(ptr noundef %base)
  %and156 = and i32 %stat.6, 2147483647
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end152.if.end157_crit_edge
  %stat.7 = phi i32 [ %and156, %if.then155 ], [ %stat.6, %if.end152.if.end157_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.7)
  %tobool158.not = icmp eq i32 %stat.7, 0
  br i1 %tobool158.not, label %if.end157.if.end193_crit_edge, label %do.body160

if.end157.if.end193_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

do.body160:                                       ; preds = %if.end157
  %debug162 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %165 = ptrtoint ptr %debug162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %debug162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp163.not = icmp eq i32 %166, 0
  br i1 %cmp163.not, label %do.body160.if.end172_crit_edge, label %do.end167

do.body160.if.end172_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

do.end167:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device3, align 4
  %dev169 = getelementptr inbounds %struct.nvkm_device, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev169, align 8
  %name170 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.23, ptr noundef %name170, i32 noundef %stat.7) #10
  br label %if.end172

if.end172:                                        ; preds = %do.end167, %do.body160.if.end172_crit_edge
  %171 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pri, align 4
  %add.ptr177 = getelementptr i8, ptr %172, i32 8512
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #7, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  call void @arm_heavy_mb() #7
  %neg183 = xor i32 %stat.7, -1
  %and184 = and i32 %173, %neg183
  %174 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pri, align 4
  %add.ptr186 = getelementptr i8, ptr %175, i32 8512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %and184) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  call void @arm_heavy_mb() #7
  %176 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pri, align 4
  %add.ptr192 = getelementptr i8, ptr %177, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %stat.7) #7, !srcloc !171
  br label %if.end193

if.end193:                                        ; preds = %if.end172, %if.end157.if.end193_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_fault(ptr noundef %base, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  %gpcid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flags, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gpcid) #7
  %4 = ptrtoint ptr %gpcid to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %gpcid, align 8
  %reason = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 9
  %5 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reason, align 2
  %conv = zext i8 %6 to i32
  %call = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_reason, i32 noundef %conv) #7
  %engine5 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %engine5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %engine5, align 8
  %conv6 = zext i8 %8 to i32
  %call7 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_engine, i32 noundef %conv6) #7
  %hub = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %hub to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hub, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %client10 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %client10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %client10, align 1
  %conv11 = zext i8 %12 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_hubclient, i32 noundef %conv11) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gf100_fifo_fault_gpcclient, i32 noundef %conv11) #7
  %gpc = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %gpc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gpc, align 2
  %conv13 = zext i8 %14 to i32
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %gpcid, i32 noundef 8, ptr noundef nonnull @.str.38, i32 noundef %conv13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ec.0 = phi ptr [ %call9, %if.then ], [ %call12, %if.else ]
  %tobool15.not = icmp eq ptr %call7, null
  br i1 %tobool15.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %data2 = getelementptr inbounds %struct.nvkm_enum, ptr %call7, i32 0, i32 3
  %15 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data2, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %16, label %sw.default [
    i32 0, label %land.lhs.true.if.end29_crit_edge
    i32 16, label %sw.bb
    i32 12, label %sw.bb19
    i32 34, label %sw.bb20
  ]

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

sw.bb:                                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_bar_bar1_reset(ptr noundef %1) #7
  br label %if.end29

sw.bb19:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_bar_bar2_reset(ptr noundef %1) #7
  br label %if.end29

sw.bb20:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 5912
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 5912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %20) #7, !srcloc !171
  br label %if.end29

sw.default:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %inst = getelementptr inbounds %struct.nvkm_enum, ptr %call7, i32 0, i32 4
  %23 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inst, align 4
  %call28 = tail call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef %16, i32 noundef %24) #7
  br label %if.end29

if.end29:                                         ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %engine4.0 = phi ptr [ %call28, %sw.default ], [ null, %sw.bb20 ], [ null, %sw.bb19 ], [ null, %sw.bb ], [ null, %land.lhs.true.if.end29_crit_edge ], [ null, %if.end.if.end29_crit_edge ]
  %inst31 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 1
  %25 = ptrtoint ptr %inst31 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %inst31, align 8
  %call32 = call ptr @nvkm_fifo_chan_inst(ptr noundef %base, i64 noundef %26, ptr noundef nonnull %flags) #7
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call32, ptr %chan, align 4
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not = icmp eq i32 %29, 0
  br i1 %cmp.not, label %if.end29.if.end80_crit_edge, label %do.end38

if.end29.if.end80_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end38:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %access = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 7
  %34 = ptrtoint ptr %access to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not = icmp eq i8 %35, 0
  %cond = select i1 %tobool42.not, ptr @.str.42, ptr @.str.41
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %info, align 8
  %38 = ptrtoint ptr %engine5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %engine5, align 8
  %conv44 = zext i8 %39 to i32
  br i1 %tobool15.not, label %do.end38.cond.end_crit_edge, label %cond.true

do.end38.cond.end_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %name46 = getelementptr inbounds %struct.nvkm_enum, ptr %call7, i32 0, i32 1
  %40 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name46, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end38.cond.end_crit_edge
  %cond47 = phi ptr [ %41, %cond.true ], [ @.str.27, %do.end38.cond.end_crit_edge ]
  %client48 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %42 = ptrtoint ptr %client48 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %client48, align 1
  %conv49 = zext i8 %43 to i32
  %tobool51.not = icmp eq ptr %ec.0, null
  br i1 %tobool51.not, label %cond.end.cond.end55_crit_edge, label %cond.true52

cond.end.cond.end55_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end55

cond.true52:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %name53 = getelementptr inbounds %struct.nvkm_enum, ptr %ec.0, i32 0, i32 1
  %44 = ptrtoint ptr %name53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name53, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true52, %cond.end.cond.end55_crit_edge
  %cond56 = phi ptr [ %45, %cond.true52 ], [ @.str.27, %cond.end.cond.end55_crit_edge ]
  %46 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reason, align 2
  %conv58 = zext i8 %47 to i32
  %tobool59.not = icmp eq ptr %call, null
  br i1 %tobool59.not, label %cond.end55.cond.end63_crit_edge, label %cond.true60

cond.end55.cond.end63_crit_edge:                  ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end63

cond.true60:                                      ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #9
  %name61 = getelementptr inbounds %struct.nvkm_enum, ptr %call, i32 0, i32 1
  %48 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name61, align 4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true60, %cond.end55.cond.end63_crit_edge
  %cond64 = phi ptr [ %49, %cond.true60 ], [ @.str.27, %cond.end55.cond.end63_crit_edge ]
  %tobool65.not = icmp eq ptr %call32, null
  br i1 %tobool65.not, label %cond.end63.cond.end78_crit_edge, label %cond.true73

cond.end63.cond.end78_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end78

cond.true73:                                      ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #9
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call32, i32 0, i32 5
  %50 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %chid, align 8
  %conv67 = zext i16 %51 to i32
  %client74 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call32, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %client74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client74, align 4
  %name75 = getelementptr inbounds %struct.nvkm_client, ptr %53, i32 0, i32 1
  br label %cond.end78

cond.end78:                                       ; preds = %cond.true73, %cond.end63.cond.end78_crit_edge
  %cond70126 = phi i32 [ %conv67, %cond.true73 ], [ -1, %cond.end63.cond.end78_crit_edge ]
  %cond79 = phi ptr [ %name75, %cond.true73 ], [ @.str.33, %cond.end63.cond.end78_crit_edge ]
  %54 = ptrtoint ptr %inst31 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %inst31, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull %cond, i64 noundef %37, i32 noundef %conv44, ptr noundef %cond47, i32 noundef %conv49, ptr noundef nonnull %gpcid, ptr noundef %cond56, i32 noundef %conv58, ptr noundef %cond64, i32 noundef %cond70126, i64 noundef %55, ptr noundef %cond79) #10
  br label %if.end80

if.end80:                                         ; preds = %cond.end78, %if.end29.if.end80_crit_edge
  %tobool83.not = icmp eq ptr %engine4.0, null
  br i1 %tobool83.not, label %if.end80.if.end87_crit_edge, label %land.lhs.true84

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

land.lhs.true84:                                  ; preds = %if.end80
  %56 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chan, align 4
  %tobool85.not = icmp eq ptr %57, null
  br i1 %tobool85.not, label %land.lhs.true84.if.end87_crit_edge, label %if.then86

land.lhs.true84.if.end87_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then86:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @gf100_fifo_recover(ptr noundef %base, ptr noundef nonnull %engine4.0, ptr noundef nonnull %57)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %land.lhs.true84.if.end87_crit_edge, %if.end80.if.end87_crit_edge
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %base, i32 noundef %59, ptr noundef nonnull %chan) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gpcid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_engine_id(ptr nocapture noundef readnone %base, ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %do.end [
    i32 33, label %entry.return_crit_edge
    i32 38, label %sw.bb1
    i32 39, label %sw.bb2
    i32 40, label %sw.bb3
    i32 28, label %sw.bb4
    i32 48, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inst = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst, align 4
  %add = add i32 %4, 4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 15, %sw.bb6 ], [ %add, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_uevent_init(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  tail call void @arm_heavy_mb() #7
  %or = or i32 %4, -2147483648
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #7, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_uevent_fini(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %and = and i32 %4, 2147483647
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #7, !srcloc !171
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_fifo_recover(ptr noundef %fifo, ptr noundef %engine, ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %chid5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %chid5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chid5, align 8
  %conv = zext i16 %3 to i32
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %5, label %do.end.i [
    i32 33, label %entry.gf100_fifo_engine_id.exit_crit_edge
    i32 38, label %sw.bb1.i
    i32 39, label %sw.bb2.i
    i32 40, label %sw.bb3.i
    i32 28, label %sw.bb4.i
    i32 48, label %sw.bb6.i
  ]

entry.gf100_fifo_engine_id.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_engine_id.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_engine_id.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_engine_id.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_engine_id.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst.i, align 4
  %add.i = add i32 %8, 4
  br label %gf100_fifo_engine_id.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf100_fifo_engine_id.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #7
  br label %gf100_fifo_engine_id.exit

gf100_fifo_engine_id.exit:                        ; preds = %do.end.i, %sw.bb6.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.gf100_fifo_engine_id.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ 15, %sw.bb6.i ], [ %add.i, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.gf100_fifo_engine_id.exit_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %gf100_fifo_engine_id.exit.if.end_crit_edge, label %do.end

gf100_fifo_engine_id.exit.if.end_crit_edge:       ; preds = %gf100_fifo_engine_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %gf100_fifo_engine_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 4
  %name11 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %name11, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %gf100_fifo_engine_id.exit.if.end_crit_edge
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body22, label %do.end30, !prof !247

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #7, !srcloc !248
  unreachable

do.end30:                                         ; preds = %if.end
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 12292
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %and = and i32 %19, -2
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %and) #7, !srcloc !171
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end30.list_del_init.exit_crit_edge

do.end30.list_del_init.exit_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end30.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %head, ptr %head, align 4
  %prev.i3.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head, ptr %prev.i3.i, align 4
  %killed = getelementptr inbounds %struct.gf100_fifo_chan, ptr %chan, i32 0, i32 3
  %30 = ptrtoint ptr %killed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %killed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp38 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %retval.0.i)
  %cmp40.not = icmp eq i32 %retval.0.i, 15
  %or.cond = or i1 %cmp38, %cmp40.not
  br i1 %or.cond, label %list_del_init.exit.if.end45_crit_edge, label %if.then42

list_del_init.exit.if.end45_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %retval.0.i
  %conv43 = zext i32 %shl to i64
  %mask = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mask, align 8
  %or44 = or i64 %32, %conv43
  store i64 %or44, ptr %mask, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %list_del_init.exit.if.end45_crit_edge
  %recover46 = getelementptr inbounds %struct.gf100_fifo, ptr %fifo, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i67 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %recover46) #7
  tail call void @nvkm_fifo_kevent(ptr noundef %fifo, i32 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 77, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 88, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gf100_fifo_runlist_commit._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @gf100_fifo_runlist_commit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @gf100_fifo_new.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 695, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 479, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gf100_fifo_intr_engine_unit._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gf100_fifo_intr_engine_unit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gf100_fifo, !18, !"gf100_fifo", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 669, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 585, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gf100_fifo_oneinit._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @gf100_fifo_oneinit._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @gf100_fifo_oneinit.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 598, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 509, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gf100_fifo_intr._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @gf100_fifo_intr._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 522, i32 3}
!36 = !{ptr @gf100_fifo_intr._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gf100_fifo_intr._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 529, i32 3}
!40 = !{ptr @gf100_fifo_intr._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gf100_fifo_intr._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 567, i32 3}
!44 = !{ptr @gf100_fifo_intr._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gf100_fifo_intr._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 361, i32 2}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gf100_fifo_intr_sched._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gf100_fifo_intr_sched._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 312, i32 10}
!54 = !{ptr @gf100_fifo_sched_reason, !55, !"gf100_fifo_sched_reason", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 311, i32 1}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 183, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gf100_fifo_recover._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @gf100_fifo_recover._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 430, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gf100_fifo_intr_pbdma._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gf100_fifo_intr_pbdma._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 399, i32 16}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 400, i32 16}
!71 = !{ptr @gf100_fifo_pbdma_intr, !72, !"gf100_fifo_pbdma_intr", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 397, i32 1}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 456, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @gf100_fifo_intr_runlist._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @gf100_fifo_intr_runlist._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 274, i32 34}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 296, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gf100_fifo_fault._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @gf100_fifo_fault._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 216, i32 10}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 217, i32 10}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 218, i32 10}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 219, i32 10}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 220, i32 10}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 221, i32 10}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 222, i32 10}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 223, i32 10}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 224, i32 10}
!105 = !{ptr @gf100_fifo_fault_reason, !106, !"gf100_fifo_fault_reason", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 215, i32 1}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 199, i32 10}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 200, i32 10}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 201, i32 10}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 202, i32 10}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 203, i32 10}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 204, i32 10}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 205, i32 10}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 206, i32 10}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 207, i32 10}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 208, i32 10}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 209, i32 10}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 210, i32 10}
!131 = !{ptr @gf100_fifo_fault_engine, !132, !"gf100_fifo_fault_engine", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 198, i32 1}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 230, i32 10}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 231, i32 10}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 232, i32 10}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 233, i32 10}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 235, i32 10}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 236, i32 10}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 237, i32 10}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 242, i32 10}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 243, i32 10}
!151 = !{ptr @gf100_fifo_fault_hubclient, !152, !"gf100_fifo_fault_hubclient", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 229, i32 1}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 249, i32 10}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 250, i32 10}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 252, i32 10}
!159 = !{ptr @gf100_fifo_fault_gpcclient, !160, !"gf100_fifo_fault_gpcclient", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gf100.c", i32 248, i32 1}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2156293118}
!171 = !{i64 5407152}
!172 = !{i64 2156293591}
!173 = !{i64 5407570}
!174 = !{i64 2156295233}
!175 = !{i64 2156296906}
!176 = !{i64 2156330004}
!177 = !{i64 2156330437}
!178 = !{i64 2156330870}
!179 = !{i64 2156331303}
!180 = !{i64 2156345996}
!181 = !{i32 0, i32 33}
!182 = !{i64 2156341344}
!183 = !{i64 2156341729}
!184 = !{i64 2156342091}
!185 = !{i64 2156345151}
!186 = !{i64 2156345523}
!187 = !{i64 2156302928}
!188 = !{i64 2156303306}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 2156304356}
!191 = !{i64 2156305185}
!192 = !{i64 2156305575}
!193 = !{i64 2156364493}
!194 = !{i64 2156365625}
!195 = !{i64 2156380393}
!196 = !{i64 2156380851}
!197 = !{i64 2156381277}
!198 = !{i64 2156381687}
!199 = !{i64 2156382097}
!200 = !{i64 2156382507}
!201 = !{i64 2156382917}
!202 = !{i64 2156383327}
!203 = !{i64 2156384182}
!204 = !{i64 2156384584}
!205 = !{i64 2156385059}
!206 = !{i64 2156385502}
!207 = !{i64 2156386343}
!208 = !{i64 2156386745}
!209 = !{i64 2156387248}
!210 = !{i64 2156387690}
!211 = !{i64 2156388103}
!212 = !{i64 2156388516}
!213 = !{i64 2156347626}
!214 = !{i64 2156348011}
!215 = !{i64 2156348396}
!216 = !{i64 2156350982}
!217 = !{i64 2156327219}
!218 = !{i64 2156319559}
!219 = !{i64 2156351395}
!220 = !{i64 2156351851}
!221 = !{i64 2156354437}
!222 = !{i64 2156354893}
!223 = !{i64 2156357479}
!224 = !{i64 2156357935}
!225 = !{i64 2156358279}
!226 = !{i64 2156358736}
!227 = !{i64 2156331742}
!228 = !{i64 2156332181}
!229 = !{i64 2156332620}
!230 = !{i64 2156333059}
!231 = !{!"auto-init"}
!232 = !{i64 2156336947}
!233 = !{i64 2156337384}
!234 = !{i64 2156359080}
!235 = !{i64 2156337834}
!236 = !{i64 2156338301}
!237 = !{i64 2156340846}
!238 = !{i64 2156362024}
!239 = !{i64 2156362414}
!240 = !{i64 2156362841}
!241 = !{i64 2156313783}
!242 = !{i64 2156314185}
!243 = !{i64 2156286878}
!244 = !{i64 2156287280}
!245 = !{i64 2156288153}
!246 = !{i64 2156288555}
!247 = !{!"branch_weights", i32 1, i32 2000}
!248 = !{i64 2156308991, i64 2156309504, i64 2156309028, i64 2156309084, i64 2156309118, i64 2156309142, i64 2156309183, i64 2156309204, i64 2156309232, i64 2156309266}
!249 = !{i64 2156311050}
!250 = !{i64 2156311452}
