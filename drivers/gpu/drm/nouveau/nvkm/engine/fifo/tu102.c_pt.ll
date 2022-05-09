; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_func = type { %struct.anon.146, ptr, %struct.anon.147, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.146 = type { ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.148, i32, [16 x %struct.anon.149], i32, [16 x %struct.anon.150], i32, %struct.anon.151 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.87 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.87 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.148 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.149 = type { ptr, i32, i32 }
%struct.anon.150 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.151 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.gk104_fifo_engine_status = type { i8, i8, i8, i8, i8, %struct.anon.152, %struct.anon.152, ptr }
%struct.anon.152 = type { i8, i32 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.gk104_fifo_engn = type { ptr, ptr }

@tu102_fifo = internal constant { %struct.gk104_fifo_func, [44 x i8] } { %struct.gk104_fifo_func { %struct.anon.146 zeroinitializer, ptr @tu102_fifo_pbdma, %struct.anon.147 { ptr @gv100_fifo_fault_access, ptr @tu102_fifo_fault_engine, ptr @gv100_fifo_fault_reason, ptr @gv100_fifo_fault_hubclient, ptr @gv100_fifo_fault_gpcclient }, ptr @tu102_fifo_runlist, %struct.gk104_fifo_user_user { %struct.nvkm_sclass { i32 -1, i32 -1, i32 50017, ptr null, ptr null }, ptr @tu102_fifo_user_new }, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 50287, ptr null, ptr null }, ptr @tu102_fifo_gpfifo_new }, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tu102_fifo_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&fifo->recover.work)\00", [57 x i8] zeroinitializer }, align 32
@tu102_fifo_ = internal constant { %struct.nvkm_fifo_func, [32 x i8] } { %struct.nvkm_fifo_func { ptr @gk104_fifo_dtor, ptr @gk104_fifo_oneinit, ptr @gk104_fifo_info, ptr @gk104_fifo_init, ptr @gk104_fifo_fini, ptr @tu102_fifo_intr, ptr @tu102_fifo_fault, ptr @gk104_fifo_engine_id, ptr @gk104_fifo_id_engine, ptr null, ptr null, ptr @gk104_fifo_uevent_init, ptr @gk104_fifo_uevent_fini, ptr @tu102_fifo_recover_chan, ptr @gk104_fifo_class_get, ptr @gk104_fifo_class_new, [0 x ptr] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tu102_fifo_pbdma = internal constant { %struct.gk104_fifo_pbdma_func, [20 x i8] } { %struct.gk104_fifo_pbdma_func { ptr @gm200_fifo_pbdma_nr, ptr @tu102_fifo_pbdma_init, ptr @gk208_fifo_pbdma_init_timeout }, [20 x i8] zeroinitializer }, align 32
@gv100_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@tu102_fifo_fault_engine = internal constant { [24 x %struct.nvkm_enum], [96 x i8] } { [24 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.2, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.4, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 37, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 38, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 128, ptr @.str.22, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 192, ptr @.str.23, ptr null, i32 12, i32 0 }, %struct.nvkm_enum zeroinitializer], [96 x i8] zeroinitializer }, align 32
@gv100_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gv100_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gv100_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@tu102_fifo_runlist = internal constant { %struct.gk104_fifo_runlist_func, [16 x i8] } { %struct.gk104_fifo_runlist_func { i8 16, ptr @gv100_fifo_runlist_cgrp, ptr @gv100_fifo_runlist_chan, ptr @tu102_fifo_runlist_commit }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISPLAY\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PWR_PMU\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IFB\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PERF\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PHYSICAL\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST0\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST3\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST4\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST5\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST6\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST7\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST8\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST9\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST10\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST11\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST12\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST13\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST14\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\00", [47 x i8] zeroinitializer }, align 32
@tu102_fifo_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.24, i32 440, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: INTR %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tu102_fifo_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tu102_fifo_intr._entry_ptr = internal global ptr @tu102_fifo_intr._entry, section ".printk_index", align 4
@tu102_fifo_recover_engn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.24, i32 267, ptr @.str.31, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: engine %d: scheduled for recovery\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tu102_fifo_recover_engn\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@tu102_fifo_recover_engn._entry_ptr = internal global ptr @tu102_fifo_recover_engn._entry, section ".printk_index", align 4
@tu102_fifo_recover_runl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.24, i32 168, ptr @.str.31, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: runlist %d: scheduled for recovery\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tu102_fifo_recover_runl\00", [40 x i8] zeroinitializer }, align 32
@tu102_fifo_recover_runl._entry_ptr = internal global ptr @tu102_fifo_recover_runl._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tu102_fifo_intr_sched._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.24, i32 379, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: SCHED_ERROR %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tu102_fifo_intr_sched\00", [42 x i8] zeroinitializer }, align 32
@tu102_fifo_intr_sched._entry_ptr = internal global ptr @tu102_fifo_intr_sched._entry, section ".printk_index", align 4
@.str.36 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPC%d/\00", [25 x i8] zeroinitializer }, align 32
@nvkm_engine = external dso_local constant %struct.nvkm_subdev_func, align 4
@tu102_fifo_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.24, i32 333, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%s: fault %02x [%s] at %016llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tu102_fifo_fault\00", [47 x i8] zeroinitializer }, align 32
@tu102_fifo_fault._entry_ptr = internal global ptr @tu102_fifo_fault._entry, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@tu102_fifo_recover_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.24, i32 223, ptr @.str.31, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: channel %d: killed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tu102_fifo_recover_chan\00", [40 x i8] zeroinitializer }, align 32
@tu102_fifo_recover_chan._entry_ptr = internal global ptr @tu102_fifo_recover_chan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 12, i64 16, i64 34]
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"tu102_fifo\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 105, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 473, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"tu102_fifo_\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 447, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"tu102_fifo_pbdma\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 98, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"tu102_fifo_fault_engine\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 61, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"tu102_fifo_runlist\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 53, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 62, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 63, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 64, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 65, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 66, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 67, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 68, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 69, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 70, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 71, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 72, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 73, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 74, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 75, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 76, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 77, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 78, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 79, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 80, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 81, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 82, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 83, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 84, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 140, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 440, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 267, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 168, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 379, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 281, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 291, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 326, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 223, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @tu102_fifo_fault._entry, ptr @tu102_fifo_fault._entry_ptr, ptr @tu102_fifo_intr._entry, ptr @tu102_fifo_intr._entry_ptr, ptr @tu102_fifo_intr_sched._entry, ptr @tu102_fifo_intr_sched._entry_ptr, ptr @tu102_fifo_recover_chan._entry, ptr @tu102_fifo_recover_chan._entry_ptr, ptr @tu102_fifo_recover_engn._entry, ptr @tu102_fifo_recover_engn._entry_ptr, ptr @tu102_fifo_recover_runl._entry, ptr @tu102_fifo_recover_runl._entry_ptr, ptr @tu102_fifo, ptr @tu102_fifo_new.__key, ptr @.str, ptr @tu102_fifo_, ptr @tu102_fifo_pbdma, ptr @tu102_fifo_fault_engine, ptr @tu102_fifo_runlist, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_pbdma to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_fault_engine to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_runlist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_recover_engn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_recover_runl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_intr_sched._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_fifo_recover_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2876) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tu102_fifo, ptr %call7.i.i, align 8
  %recover = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %recover, i32 noundef 0) #7
  %2 = ptrtoint ptr %recover to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %recover, align 4
  %lockdep_map = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @tu102_fifo_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry7, ptr %prev.i, align 4
  %func10 = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %func10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tu102_fifo_recover_work, ptr %func10, align 8
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base, ptr %pfifo, align 4
  %call12 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @tu102_fifo_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 4096, ptr noundef %base) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_recover_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -1204
  %device1 = getelementptr i8, ptr %w, i32 -1188
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %lock = getelementptr i8, ptr %w, i32 -472
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %runm9 = getelementptr inbounds %struct.anon.148, ptr %w, i32 0, i32 2
  %2 = ptrtoint ptr %runm9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runm9, align 4
  %engm11 = getelementptr inbounds %struct.anon.148, ptr %w, i32 0, i32 1
  %4 = ptrtoint ptr %engm11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %engm11, align 4
  store i32 0, ptr %engm11, align 4
  store i32 0, ptr %runm9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 9776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %or = or i32 %8, %3
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or) #7, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not116 = icmp eq i32 %5, 0
  br i1 %tobool.not116, label %entry.for.cond63.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond63.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond63.preheader

for.body.lr.ph:                                   ; preds = %entry
  %11 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #7, !range !112
  %engine28 = getelementptr i8, ptr %w, i32 56
  br label %for.body

for.cond63.preheader:                             ; preds = %for.inc.for.cond63.preheader_crit_edge, %entry.for.cond63.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool65.not118 = icmp eq i32 %3, 0
  br i1 %tobool65.not118, label %for.cond63.preheader.for.end71_crit_edge, label %for.cond63.preheader.for.body66_crit_edge

for.cond63.preheader.for.body66_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body66

for.cond63.preheader.for.end71_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %11, %for.body.lr.ph ], [ %15, %for.inc.for.body_crit_edge ]
  %todo.0117 = phi i32 [ %5, %for.body.lr.ph ], [ %and62, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.149], ptr %engine28, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %14, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %subdev31 = getelementptr inbounds %struct.nvkm_engine, ptr %14, i32 0, i32 1
  %call32 = tail call i32 @nvkm_subdev_fini(ptr noundef %subdev31, i1 noundef zeroext false) #7
  %call34 = tail call i32 @nvkm_subdev_init(ptr noundef %subdev31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then.for.inc_crit_edge, label %do.end47, !prof !113

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end47:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end47, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %shl = shl nuw i32 1, %12
  %neg61 = xor i32 %shl, -1
  %and62 = and i32 %todo.0117, %neg61
  %15 = tail call i32 @llvm.cttz.i32(i32 %and62, i1 false) #7, !range !112
  %tobool.not = icmp eq i32 %and62, 0
  br i1 %tobool.not, label %for.inc.for.cond63.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond63.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond63.preheader

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.cond63.preheader.for.body66_crit_edge
  %todo.1119 = phi i32 [ %and70, %for.body66.for.body66_crit_edge ], [ %3, %for.cond63.preheader.for.body66_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %todo.1119, i1 true) #7, !range !112
  tail call void @gk104_fifo_runlist_update(ptr noundef %add.ptr, i32 noundef %16) #7
  %shl68 = shl nuw i32 1, %16
  %neg69 = xor i32 %shl68, -1
  %and70 = and i32 %todo.1119, %neg69
  %tobool65.not = icmp eq i32 %and70, 0
  br i1 %tobool65.not, label %for.body66.for.end71_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body66

for.body66.for.end71_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.end71:                                        ; preds = %for.body66.for.end71_crit_edge, %for.cond63.preheader.for.end71_crit_edge
  %neg = xor i32 %3, -1
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr77 = getelementptr i8, ptr %18, i32 9776
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %and84 = and i32 %19, %neg
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %21, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %and84) #7, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_user_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_fifo_pbdma_nr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_pbdma_init(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pbdma_nr = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 3
  %2 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pbdma_nr, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 11948032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %and = and i32 %6, 2147479552
  %or = or i32 %and, %sub
  %or2 = or i32 %or, -2147483648
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 11948032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or2) #7, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk208_fifo_pbdma_init_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_fifo_runlist_cgrp(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_fifo_runlist_chan(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_runlist_commit(ptr nocapture noundef readonly %fifo, i32 noundef %runl, ptr noundef %mem, i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %addr2 = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr2, align 4
  %call = tail call i64 %5(ptr noundef %mem) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %conv = trunc i64 %call to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %mul = shl i32 %runl, 4
  %add = add i32 %mul, 11008
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %shr = lshr i64 %call, 32
  %conv7 = trunc i64 %shr to i32
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add10 = add i32 %mul, 11012
  %add.ptr11 = getelementptr i8, ptr %9, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %conv7) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add17 = add i32 %mul, 11016
  %add.ptr18 = getelementptr i8, ptr %11, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %nr) #7, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_oneinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_info(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_intr(ptr noundef %base) #0 align 64 {
entry:
  %engm.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 8448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %and = and i32 %7, %4
  %and11 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gk104_fifo_intr_bind(ptr noundef %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1) #7, !srcloc !111
  %and14 = and i32 %and, -2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and14, %if.then ], [ %and, %entry.if.end_crit_edge ]
  %and15 = and i32 %stat.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end
  %10 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %engm.i) #7
  %lock.i = getelementptr i8, ptr %base, i32 728
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 10800
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %15 = ptrtoint ptr %engm.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %engm.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %17, i32 10800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %14) #7, !srcloc !111
  %call14.i = call i32 @_find_next_bit_be(ptr noundef nonnull %engm.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call14.i)
  %cmp1526.i = icmp ult i32 %call14.i, 32
  br i1 %cmp1526.i, label %if.then17.for.body.i_crit_edge, label %if.then17.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge

if.then17.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu102_fifo_intr_ctxsw_timeout.exit

if.then17.for.body.i_crit_edge:                   ; preds = %if.then17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then17.for.body.i_crit_edge
  %engn.027.i = phi i32 [ %call17.i, %for.body.i.for.body.i_crit_edge ], [ %call14.i, %if.then17.for.body.i_crit_edge ]
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %engn.027.i) #7
  %add.i = add nuw nsw i32 %engn.027.i, 1
  %call17.i = call i32 @_find_next_bit_be(ptr noundef nonnull %engm.i, i32 noundef 32, i32 noundef %add.i) #7
  %cmp15.i = icmp ult i32 %call17.i, 32
  br i1 %cmp15.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge

for.body.i.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu102_fifo_intr_ctxsw_timeout.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tu102_fifo_intr_ctxsw_timeout.exit:               ; preds = %for.body.i.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge, %if.then17.tu102_fifo_intr_ctxsw_timeout.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %engm.i) #7
  %and18 = and i32 %stat.0, -3
  br label %if.end19

if.end19:                                         ; preds = %tu102_fifo_intr_ctxsw_timeout.exit, %if.end.if.end19_crit_edge
  %stat.1 = phi i32 [ %and18, %tu102_fifo_intr_ctxsw_timeout.exit ], [ %stat.0, %if.end.if.end19_crit_edge ]
  %and20 = and i32 %stat.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  %18 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device3, align 4
  %pri.i150 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i150 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i150, align 4
  %add.ptr.i151 = getelementptr i8, ptr %21, i32 9548
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #7, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %debug.i = getelementptr i8, ptr %base, i32 40
  %23 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %if.then22.tu102_fifo_intr_sched.exit_crit_edge, label %do.end.i

if.then22.tu102_fifo_intr_sched.exit_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu102_fifo_intr_sched.exit

do.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %22, 255
  %25 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34, ptr noundef %name.i, i32 noundef %and.i) #11
  br label %tu102_fifo_intr_sched.exit

tu102_fifo_intr_sched.exit:                       ; preds = %do.end.i, %if.then22.tu102_fifo_intr_sched.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %30, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 256) #7, !srcloc !111
  %and28 = and i32 %stat.1, -257
  br label %if.end29

if.end29:                                         ; preds = %tu102_fifo_intr_sched.exit, %if.end19.if.end29_crit_edge
  %stat.2 = phi i32 [ %and28, %tu102_fifo_intr_sched.exit ], [ %stat.1, %if.end19.if.end29_crit_edge ]
  %and30 = and i32 %stat.2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end39_crit_edge, label %if.then32

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @gk104_fifo_intr_chsw(ptr noundef %add.ptr) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %32, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 65536) #7, !srcloc !111
  %and38 = and i32 %stat.2, -65537
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end29.if.end39_crit_edge
  %stat.3 = phi i32 [ %and38, %if.then32 ], [ %stat.2, %if.end29.if.end39_crit_edge ]
  %and40 = and i32 %stat.3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end59_crit_edge, label %if.then42

if.end39.if.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then42:                                        ; preds = %if.end39
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %34, i32 9632
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool49.not152 = icmp eq i32 %35, 0
  br i1 %tobool49.not152, label %if.then42.while.end_crit_edge, label %if.then42.while.body_crit_edge

if.then42.while.body_crit_edge:                   ; preds = %if.then42
  br label %while.body

if.then42.while.end_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then42.while.body_crit_edge
  %mask43.0153 = phi i32 [ %and57, %while.body.while.body_crit_edge ], [ %35, %if.then42.while.body_crit_edge ]
  %36 = call i32 @llvm.cttz.i32(i32 %mask43.0153, i1 true) #7, !range !112
  call void @gk104_fifo_intr_pbdma_0(ptr noundef %add.ptr, i32 noundef %36) #7
  call void @gk104_fifo_intr_pbdma_1(ptr noundef %add.ptr, i32 noundef %36) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %36
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %38, i32 9632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %shl) #7, !srcloc !111
  %neg = xor i32 %shl, -1
  %and57 = and i32 %mask43.0153, %neg
  %tobool49.not = icmp eq i32 %and57, 0
  br i1 %tobool49.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then42.while.end_crit_edge
  %and58 = and i32 %stat.3, -536870913
  br label %if.end59

if.end59:                                         ; preds = %while.end, %if.end39.if.end59_crit_edge
  %stat.4 = phi i32 [ %and58, %while.end ], [ %stat.3, %if.end39.if.end59_crit_edge ]
  %and60 = and i32 %stat.4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end64_crit_edge, label %if.then62

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  call void @gk104_fifo_intr_runlist(ptr noundef %add.ptr) #7
  %and63 = and i32 %stat.4, -1073741825
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %stat.5 = phi i32 [ %and63, %if.then62 ], [ %stat.4, %if.end59.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stat.5)
  %tobool66.not = icmp sgt i32 %stat.5, -1
  br i1 %tobool66.not, label %if.end64.if.end74_crit_edge, label %do.body68

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.body68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %40, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 -2147483648) #7, !srcloc !111
  call void @gk104_fifo_intr_engine(ptr noundef %add.ptr) #7
  %and73 = and i32 %stat.5, 2147483647
  br label %if.end74

if.end74:                                         ; preds = %do.body68, %if.end64.if.end74_crit_edge
  %stat.6 = phi i32 [ %and73, %do.body68 ], [ %stat.5, %if.end64.if.end74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.6)
  %tobool75.not = icmp eq i32 %stat.6, 0
  br i1 %tobool75.not, label %if.end74.if.end104_crit_edge, label %do.body77

if.end74.if.end104_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.body77:                                        ; preds = %if.end74
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not = icmp eq i32 %42, 0
  br i1 %cmp.not, label %do.body77.if.end83_crit_edge, label %do.end81

do.body77.if.end83_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end81:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %stat.6) #11
  br label %if.end83

if.end83:                                         ; preds = %do.end81, %do.body77.if.end83_crit_edge
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr88 = getelementptr i8, ptr %48, i32 8512
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #7, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @arm_heavy_mb() #7
  %neg94 = xor i32 %stat.6, -1
  %and95 = and i32 %49, %neg94
  %50 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri, align 4
  %add.ptr97 = getelementptr i8, ptr %51, i32 8512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %and95) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %add.ptr103 = getelementptr i8, ptr %53, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %stat.6) #7, !srcloc !111
  br label %if.end104

if.end104:                                        ; preds = %if.end83, %if.end74.if.end104_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_fault(ptr noundef %base, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %ct = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ct) #7
  %2 = ptrtoint ptr %ct to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 5212144913382113280, ptr %ct, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %reason = getelementptr inbounds %struct.gk104_fifo_func, ptr %4, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reason, align 4
  %reason5 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 9
  %7 = ptrtoint ptr %reason5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reason5, align 2
  %conv = zext i8 %8 to i32
  %call = tail call ptr @nvkm_enum_find(ptr noundef %6, i32 noundef %conv) #7
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %engine8 = getelementptr inbounds %struct.gk104_fifo_func, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %engine8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %engine8, align 4
  %engine9 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %engine9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %engine9, align 8
  %conv10 = zext i8 %14 to i32
  %call11 = tail call ptr @nvkm_enum_find(ptr noundef %12, i32 noundef %conv10) #7
  %hub = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 6
  %15 = ptrtoint ptr %hub to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hub, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hubclient = getelementptr inbounds %struct.gk104_fifo_func, ptr %18, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %hubclient to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hubclient, align 4
  %client = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %client, align 1
  %conv14 = zext i8 %22 to i32
  %call15 = tail call ptr @nvkm_enum_find(ptr noundef %20, i32 noundef %conv14) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gpcclient = getelementptr inbounds %struct.gk104_fifo_func, ptr %18, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %gpcclient to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpcclient, align 4
  %client18 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %25 = ptrtoint ptr %client18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %client18, align 1
  %conv19 = zext i8 %26 to i32
  %call20 = tail call ptr @nvkm_enum_find(ptr noundef %24, i32 noundef %conv19) #7
  %gpc = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 5
  %27 = ptrtoint ptr %gpc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gpc, align 2
  %conv21 = zext i8 %28 to i32
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ct, i32 noundef 8, ptr noundef nonnull @.str.37, i32 noundef %conv21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ec.0 = phi ptr [ %call15, %if.then ], [ %call20, %if.else ]
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %fault24 = getelementptr inbounds %struct.gk104_fifo_func, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %fault24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fault24, align 4
  %access25 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 7
  %33 = ptrtoint ptr %access25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %access25, align 4
  %conv26 = zext i8 %34 to i32
  %call27 = tail call ptr @nvkm_enum_find(ptr noundef %32, i32 noundef %conv26) #7
  %tobool28.not = icmp eq ptr %call11, null
  br i1 %tobool28.not, label %if.then44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %data2 = getelementptr inbounds %struct.nvkm_enum, ptr %call11, i32 0, i32 3
  %35 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data2, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %sw.default [
    i32 0, label %land.lhs.true.if.else62_crit_edge
    i32 16, label %sw.bb
    i32 12, label %sw.bb32
    i32 34, label %sw.bb33
  ]

land.lhs.true.if.else62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else62

sw.bb:                                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_bar_bar1_reset(ptr noundef %1) #7
  br label %if.else62

sw.bb32:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_bar_bar2_reset(ptr noundef %1) #7
  br label %if.else62

sw.bb33:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %39, i32 5912
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %42, i32 5912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %40) #7, !srcloc !111
  br label %if.else62

sw.default:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef %36, i32 noundef 0) #7
  br label %if.else62

if.then44:                                        ; preds = %if.end
  %43 = ptrtoint ptr %engine9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %engine9, align 8
  %conv47 = zext i8 %44 to i32
  %call48 = tail call ptr @nvkm_top_fault(ptr noundef %1, i32 noundef %conv47) #7
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then44.do.body66_crit_edge, label %if.then50

if.then44.do.body66_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call48, align 4
  %cmp52 = icmp eq ptr %46, @nvkm_engine
  %add.ptr57 = getelementptr i8, ptr %call48, i32 -4
  %spec.select = select i1 %cmp52, ptr %add.ptr57, ptr null
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %spec.select, i32 0, i32 1, i32 4
  br label %do.body66

if.else62:                                        ; preds = %sw.default, %sw.bb33, %sw.bb32, %sw.bb, %land.lhs.true.if.else62_crit_edge
  %engine4.0.ph = phi ptr [ null, %land.lhs.true.if.else62_crit_edge ], [ null, %sw.bb ], [ null, %sw.bb32 ], [ null, %sw.bb33 ], [ %call41, %sw.default ]
  %name63 = getelementptr inbounds %struct.nvkm_enum, ptr %call11, i32 0, i32 1
  %47 = ptrtoint ptr %name63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name63, align 4
  br label %do.body66

do.body66:                                        ; preds = %if.else62, %if.then50, %if.then44.do.body66_crit_edge
  %en.1 = phi ptr [ %48, %if.else62 ], [ %name, %if.then50 ], [ @.str.36, %if.then44.do.body66_crit_edge ]
  %engine4.3 = phi ptr [ %engine4.0.ph, %if.else62 ], [ %spec.select, %if.then50 ], [ null, %if.then44.do.body66_crit_edge ]
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %inst = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %inst to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %inst, align 8
  %call78 = tail call ptr @nvkm_fifo_chan_inst_locked(ptr noundef %base, i64 noundef %50) #7
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp80.not = icmp eq i32 %52, 0
  br i1 %cmp80.not, label %do.body66.if.end133_crit_edge, label %do.end85

do.body66.if.end133_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

do.end85:                                         ; preds = %do.body66
  %53 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %name87 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %57 = ptrtoint ptr %access25 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %access25, align 4
  %conv90 = zext i8 %58 to i32
  %tobool91.not = icmp eq ptr %call27, null
  br i1 %tobool91.not, label %do.end85.cond.end_crit_edge, label %cond.true

do.end85.cond.end_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  %name92 = getelementptr inbounds %struct.nvkm_enum, ptr %call27, i32 0, i32 1
  %59 = ptrtoint ptr %name92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name92, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end85.cond.end_crit_edge
  %cond = phi ptr [ %60, %cond.true ], [ @.str.36, %do.end85.cond.end_crit_edge ]
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %info, align 8
  %63 = ptrtoint ptr %engine9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %engine9, align 8
  %conv94 = zext i8 %64 to i32
  br i1 %tobool28.not, label %cond.end.cond.end99_crit_edge, label %cond.true96

cond.end.cond.end99_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end99

cond.true96:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %name97 = getelementptr inbounds %struct.nvkm_enum, ptr %call11, i32 0, i32 1
  %65 = ptrtoint ptr %name97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name97, align 4
  br label %cond.end99

cond.end99:                                       ; preds = %cond.true96, %cond.end.cond.end99_crit_edge
  %cond100 = phi ptr [ %66, %cond.true96 ], [ %en.1, %cond.end.cond.end99_crit_edge ]
  %client101 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %67 = ptrtoint ptr %client101 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %client101, align 1
  %conv102 = zext i8 %68 to i32
  %tobool104.not = icmp eq ptr %ec.0, null
  br i1 %tobool104.not, label %cond.end99.cond.end108_crit_edge, label %cond.true105

cond.end99.cond.end108_crit_edge:                 ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end108

cond.true105:                                     ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #9
  %name106 = getelementptr inbounds %struct.nvkm_enum, ptr %ec.0, i32 0, i32 1
  %69 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name106, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.true105, %cond.end99.cond.end108_crit_edge
  %cond109 = phi ptr [ %70, %cond.true105 ], [ @.str.36, %cond.end99.cond.end108_crit_edge ]
  %71 = ptrtoint ptr %reason5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reason5, align 2
  %conv111 = zext i8 %72 to i32
  %tobool112.not = icmp eq ptr %call, null
  br i1 %tobool112.not, label %cond.end108.cond.end116_crit_edge, label %cond.true113

cond.end108.cond.end116_crit_edge:                ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end116

cond.true113:                                     ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #9
  %name114 = getelementptr inbounds %struct.nvkm_enum, ptr %call, i32 0, i32 1
  %73 = ptrtoint ptr %name114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name114, align 4
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true113, %cond.end108.cond.end116_crit_edge
  %cond117 = phi ptr [ %74, %cond.true113 ], [ @.str.36, %cond.end108.cond.end116_crit_edge ]
  %tobool118.not = icmp eq ptr %call78, null
  br i1 %tobool118.not, label %cond.end116.cond.end131_crit_edge, label %cond.true126

cond.end116.cond.end131_crit_edge:                ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end131

cond.true126:                                     ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #9
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call78, i32 0, i32 5
  %75 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %chid, align 8
  %conv120 = zext i16 %76 to i32
  %client127 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call78, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %client127 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client127, align 4
  %name128 = getelementptr inbounds %struct.nvkm_client, ptr %78, i32 0, i32 1
  br label %cond.end131

cond.end131:                                      ; preds = %cond.true126, %cond.end116.cond.end131_crit_edge
  %cond123214 = phi i32 [ %conv120, %cond.true126 ], [ -1, %cond.end116.cond.end131_crit_edge ]
  %cond132 = phi ptr [ %name128, %cond.true126 ], [ @.str.40, %cond.end116.cond.end131_crit_edge ]
  %79 = ptrtoint ptr %inst to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %inst, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.38, ptr noundef %name87, i32 noundef %conv90, ptr noundef %cond, i64 noundef %62, i32 noundef %conv94, ptr noundef %cond100, i32 noundef %conv102, ptr noundef nonnull %ct, ptr noundef %cond109, i32 noundef %conv111, ptr noundef %cond117, i32 noundef %cond123214, i64 noundef %80, ptr noundef %cond132) #11
  br label %if.end133

if.end133:                                        ; preds = %cond.end131, %do.body66.if.end133_crit_edge
  %tobool136.not = icmp eq ptr %call78, null
  br i1 %tobool136.not, label %if.end133.if.end141_crit_edge, label %if.then137

if.end133.if.end141_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %chid139 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call78, i32 0, i32 5
  %81 = ptrtoint ptr %chid139 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %chid139, align 8
  %conv140 = zext i16 %82 to i32
  call void @tu102_fifo_recover_chan(ptr noundef %base, i32 noundef %conv140)
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end133.if.end141_crit_edge
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %83 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %engine_nr, align 4
  %tobool144.not = icmp eq ptr %engine4.3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp142216 = icmp slt i32 %84, 1
  %or.cond217 = select i1 %cmp142216, i1 true, i1 %tobool144.not
  br i1 %or.cond217, label %if.end141.for.end_crit_edge, label %for.body.lr.ph

if.end141.for.end_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end141
  %engine145 = getelementptr i8, ptr %base, i32 1256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %engn.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.149], ptr %engine145, i32 0, i32 %engn.0218
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  %cmp147 = icmp eq ptr %86, %engine4.3
  br i1 %cmp147, label %if.then149, label %for.inc

if.then149:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %engn.0218)
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %engn.0218, 1
  %cmp142.not = icmp slt i32 %inc, %84
  br i1 %cmp142.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then149, %if.end141.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call72) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_engine_id(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_id_engine(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_uevent_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_uevent_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_fifo_recover_chan(ptr noundef %base, i32 noundef %chid) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %engm = alloca i32, align 4
  %status = alloca %struct.gk104_fifo_engine_status, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %chid, 3
  %add = add i32 %mul, 8388612
  %add.ptr4 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %and = lshr i32 %4, 16
  %shr = and i32 %and, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %engm) #7
  %runlist = getelementptr i8, ptr %base, i32 1452
  %arrayidx = getelementptr [16 x %struct.anon.150], ptr %runlist, i32 0, i32 %shr
  %engm7 = getelementptr inbounds %struct.anon.150, ptr %arrayidx, i32 0, i32 5
  %5 = ptrtoint ptr %engm7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %engm7, align 4
  %7 = ptrtoint ptr %engm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %engm, align 4
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %9 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body14, label %do.end19, !prof !138

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 210, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

do.end19:                                         ; preds = %entry
  %and6 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.end19.cleanup56_crit_edge, label %if.end22

do.end19.cleanup56_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.end22:                                         ; preds = %do.end19
  %chan1.i = getelementptr %struct.gk104_fifo, ptr %add.ptr, i32 0, i32 6, i32 %shr, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end22
  %.pn.in.i = phi ptr [ %chan1.i, %if.end22 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %chan1.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %chid5.i = getelementptr i8, ptr %.pn.i, i32 -244
  %11 = ptrtoint ptr %chid5.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %chid5.i, align 8
  %conv.i = zext i16 %12 to i32
  %cmp6.i = icmp eq i32 %conv.i, %chid
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %chan.0.le.i = getelementptr i8, ptr %.pn.i, i32 -340
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.i, ptr %.pn.i, align 4
  br label %cleanup.sink.split.i

for.end.i:                                        ; preds = %for.cond.i
  %cgrp17.i = getelementptr %struct.gk104_fifo, ptr %add.ptr, i32 0, i32 6, i32 %shr, i32 3
  br label %for.cond21.i

for.cond21.i:                                     ; preds = %for.body29.i.for.cond21.i_crit_edge, %for.end.i
  %.pn69.in.i = phi ptr [ %cgrp17.i, %for.end.i ], [ %.pn69.i, %for.body29.i.for.cond21.i_crit_edge ]
  %20 = ptrtoint ptr %.pn69.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn69.i = load ptr, ptr %.pn69.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn69.i, %cgrp17.i
  br i1 %cmp26.not.i, label %for.cond21.i.do.body28_crit_edge, label %for.body29.i

for.cond21.i.do.body28_crit_edge:                 ; preds = %for.cond21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

for.body29.i:                                     ; preds = %for.cond21.i
  %cgrp.0.i = getelementptr i8, ptr %.pn69.i, i32 -4
  %21 = ptrtoint ptr %cgrp.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cgrp.0.i, align 4
  %cmp30.i = icmp eq i32 %22, %chid
  br i1 %cmp30.i, label %if.then32.i, label %for.body29.i.for.cond21.i_crit_edge

for.body29.i.for.cond21.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.i

if.then32.i:                                      ; preds = %for.body29.i
  %chan34.i = getelementptr i8, ptr %.pn69.i, i32 8
  %23 = ptrtoint ptr %chan34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan34.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %24, i32 -340
  %call.i.i70.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #7
  br i1 %call.i.i70.i, label %if.end.i.i73.i, label %if.then32.i.list_del_init.exit75.i_crit_edge

if.then32.i.list_del_init.exit75.i_crit_edge:     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit75.i

if.end.i.i73.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i71.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i71.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i72.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i72.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit75.i

list_del_init.exit75.i:                           ; preds = %if.end.i.i73.i, %if.then32.i.list_del_init.exit75.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %24, ptr %24, align 4
  %prev.i3.i74.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i74.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %prev.i3.i74.i, align 4
  %chan_nr.i = getelementptr i8, ptr %.pn69.i, i32 16
  %33 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan_nr.i, align 4
  %dec.i = add i32 %34, -1
  store i32 %dec.i, ptr %chan_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then39.i, label %list_del_init.exit75.i.tu102_fifo_recover_chid.exit_crit_edge

list_del_init.exit75.i.tu102_fifo_recover_chid.exit_crit_edge: ; preds = %list_del_init.exit75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu102_fifo_recover_chid.exit

if.then39.i:                                      ; preds = %list_del_init.exit75.i
  %call.i.i76.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn69.i) #7
  br i1 %call.i.i76.i, label %if.end.i.i79.i, label %if.then39.i.list_del_init.exit81.i_crit_edge

if.then39.i.list_del_init.exit81.i_crit_edge:     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit81.i

if.end.i.i79.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i77.i = getelementptr inbounds %struct.list_head, ptr %.pn69.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i77.i, align 4
  %37 = ptrtoint ptr %.pn69.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn69.i, align 4
  %prev1.i.i.i78.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i78.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit81.i

list_del_init.exit81.i:                           ; preds = %if.end.i.i79.i, %if.then39.i.list_del_init.exit81.i_crit_edge
  %41 = ptrtoint ptr %.pn69.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %.pn69.i, ptr %.pn69.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %list_del_init.exit81.i, %list_del_init.exit.i
  %.pn69.lcssa90.sink92.i = phi ptr [ %.pn69.i, %list_del_init.exit81.i ], [ %.pn.i, %list_del_init.exit.i ]
  %retval.0.ph.i = phi ptr [ %add.ptr37.i, %list_del_init.exit81.i ], [ %chan.0.le.i, %list_del_init.exit.i ]
  %prev.i3.i80.i = getelementptr inbounds %struct.list_head, ptr %.pn69.lcssa90.sink92.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i80.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.pn69.lcssa90.sink92.i, ptr %prev.i3.i80.i, align 4
  br label %tu102_fifo_recover_chid.exit

tu102_fifo_recover_chid.exit:                     ; preds = %cleanup.sink.split.i, %list_del_init.exit75.i.tu102_fifo_recover_chid.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr37.i, %list_del_init.exit75.i.tu102_fifo_recover_chid.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool24.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool24.not, label %tu102_fifo_recover_chid.exit.do.body28_crit_edge, label %if.then25

tu102_fifo_recover_chid.exit.do.body28_crit_edge: ; preds = %tu102_fifo_recover_chid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then25:                                        ; preds = %tu102_fifo_recover_chid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %killed = getelementptr inbounds %struct.gk104_fifo_chan, ptr %retval.0.i, i32 0, i32 5
  %43 = ptrtoint ptr %killed to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %killed, align 4
  tail call void @nvkm_fifo_kevent(ptr noundef %base, i32 noundef %chid) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %tu102_fifo_recover_chid.exit.do.body28_crit_edge, %for.cond21.i.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %or = or i32 %4, 2048
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %45, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or) #7, !srcloc !111
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp = icmp ugt i32 %47, 1
  br i1 %cmp, label %do.end39, label %do.body28.if.end41_crit_edge

do.body28.if.end41_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end39:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %51, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %chid) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %do.body28.if.end41_crit_edge
  tail call fastcc void @tu102_fifo_recover_runl(ptr noundef %add.ptr, i32 noundef %shr)
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %52 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %engine_nr, align 4
  %call44 = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %53, i32 noundef 0) #7
  %54 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %engine_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call44, i32 %55)
  %cmp4698 = icmp ult i32 %call44, %55
  br i1 %cmp4698, label %for.body.lr.ph, label %if.end41.cleanup56_crit_edge

if.end41.cleanup56_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

for.body.lr.ph:                                   ; preds = %if.end41
  %chan47 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %engn.099 = phi i32 [ %call44, %for.body.lr.ph ], [ %call55, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status) #7
  %56 = call ptr @memset(ptr %status, i32 255, i32 28)
  call void @gk104_fifo_engine_status(ptr noundef %add.ptr, i32 noundef %engn.099, ptr noundef nonnull %status) #7
  %57 = ptrtoint ptr %chan47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan47, align 4
  %tobool48.not = icmp eq ptr %58, null
  br i1 %tobool48.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.anon.152, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %chid)
  %cmp50.not = icmp eq i32 %60, %chid
  br i1 %cmp50.not, label %if.end52, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tu102_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %engn.099)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status) #7
  %61 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %engine_nr, align 4
  %add54 = add nuw i32 %engn.099, 1
  %call55 = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %62, i32 noundef %add54) #7
  %63 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %engine_nr, align 4
  %cmp46 = icmp ult i32 %call55, %64
  br i1 %cmp46, label %cleanup.for.body_crit_edge, label %cleanup.cleanup56_crit_edge

cleanup.cleanup56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup56:                                        ; preds = %cleanup.cleanup56_crit_edge, %if.end41.cleanup56_crit_edge, %do.end19.cleanup56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %engm) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_class_get(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_class_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_chsw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_pbdma_0(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_pbdma_1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_runlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_intr_engine(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tu102_fifo_recover_engn(ptr noundef %fifo, i32 noundef %engn) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %status = alloca %struct.gk104_fifo_engine_status, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %runl4 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 4, i32 %engn, i32 1
  %2 = ptrtoint ptr %runl4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runl4, align 4
  %shl = shl nuw i32 1, %engn
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status) #7
  %4 = call ptr @memset(ptr %status, i32 255, i32 28)
  %lock = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body9, label %do.end14, !prof !138

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #7, !srcloc !141
  unreachable

do.end14:                                         ; preds = %entry
  %recover = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2
  %engm15 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %engm15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %engm15, align 4
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %or = or i32 %8, %shl
  %9 = ptrtoint ptr %engm15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %engm15, align 4
  tail call fastcc void @tu102_fifo_recover_runl(ptr noundef %fifo, i32 noundef %3)
  call void @gk104_fifo_engine_status(ptr noundef %fifo, i32 noundef %engn, ptr noundef nonnull %status) #7
  %chan = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 7
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %if.end18.do.body26_crit_edge, label %if.then22

if.end18.do.body26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.anon.152, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  call void @tu102_fifo_recover_chan(ptr noundef %base, i32 noundef %13)
  br label %do.body26

do.body26:                                        ; preds = %if.then22, %if.end18.do.body26_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @arm_heavy_mb() #7
  %shl29 = shl nuw i32 1, %3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 9784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %shl29) #7, !srcloc !111
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp ugt i32 %17, 1
  br i1 %cmp, label %do.end34, label %do.body26.if.end36_crit_edge

do.body26.if.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end34:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %engn) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %do.body26.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %recover) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tu102_fifo_recover_runl(ptr noundef %fifo, i32 noundef %runl) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %shl = shl nuw i32 1, %runl
  %lock = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body7, label %do.end12, !prof !138

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #7, !srcloc !143
  unreachable

do.end12:                                         ; preds = %entry
  %recover = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2
  %runm13 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %runm13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runm13, align 4
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %or = or i32 %5, %shl
  %6 = ptrtoint ptr %runm13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %runm13, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 9776
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %or24 = or i32 %9, %shl
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #7, !srcloc !111
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %do.end32, label %if.end16.if.end34_crit_edge

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %17, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %runl) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end16.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %recover) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_engine_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @tu102_fifo_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 473, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tu102_fifo, !4, !"tu102_fifo", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 105, i32 1}
!5 = !{ptr @tu102_fifo_pbdma, !6, !"tu102_fifo_pbdma", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 98, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 62, i32 10}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 63, i32 10}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 64, i32 10}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 65, i32 10}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 66, i32 10}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 67, i32 10}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 68, i32 10}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 69, i32 10}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 70, i32 10}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 71, i32 10}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 72, i32 10}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 73, i32 10}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 74, i32 10}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 75, i32 10}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 76, i32 10}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 77, i32 10}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 78, i32 10}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 79, i32 10}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 80, i32 10}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 81, i32 10}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 82, i32 10}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 83, i32 10}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 84, i32 10}
!53 = !{ptr @tu102_fifo_fault_engine, !54, !"tu102_fifo_fault_engine", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 61, i32 1}
!55 = !{ptr @tu102_fifo_runlist, !56, !"tu102_fifo_runlist", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 53, i32 1}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 140, i32 4}
!59 = !{ptr @tu102_fifo_, !60, !"tu102_fifo_", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 447, i32 1}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 440, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tu102_fifo_intr._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @tu102_fifo_intr._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 267, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tu102_fifo_recover_engn._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @tu102_fifo_recover_engn._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 168, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tu102_fifo_recover_runl._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tu102_fifo_recover_runl._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 379, i32 2}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tu102_fifo_intr_sched._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tu102_fifo_intr_sched._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 281, i32 19}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 291, i32 28}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 326, i32 2}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tu102_fifo_fault._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @tu102_fifo_fault._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/tu102.c", i32 223, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tu102_fifo_recover_chan._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tu102_fifo_recover_chan._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 5405892}
!109 = !{i64 2156295652}
!110 = !{i64 2156296030}
!111 = !{i64 5405474}
!112 = !{i32 0, i32 33}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2156297586}
!115 = !{i64 2156297976}
!116 = !{i64 2156292830}
!117 = !{i64 2156293246}
!118 = !{i64 2156290965}
!119 = !{i64 2156291504}
!120 = !{i64 2156291954}
!121 = !{i64 2156342086}
!122 = !{i64 2156342471}
!123 = !{i64 2156342813}
!124 = !{i64 2156337208}
!125 = !{i64 2156337534}
!126 = !{i64 2156338264}
!127 = !{i64 2156343226}
!128 = !{i64 2156343639}
!129 = !{i64 2156344095}
!130 = !{i64 2156344439}
!131 = !{i64 2156344853}
!132 = !{i64 2156347796}
!133 = !{i64 2156348186}
!134 = !{i64 2156348613}
!135 = !{i64 2156329859}
!136 = !{i64 2156330261}
!137 = !{i64 2156313773}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2156314459, i64 2156314972, i64 2156314496, i64 2156314552, i64 2156314586, i64 2156314610, i64 2156314651, i64 2156314672, i64 2156314700, i64 2156314734}
!140 = !{i64 2156320181}
!141 = !{i64 2156323600, i64 2156324113, i64 2156323637, i64 2156323693, i64 2156323727, i64 2156323751, i64 2156323792, i64 2156323813, i64 2156323841, i64 2156323875}
!142 = !{i64 2156325329}
!143 = !{i64 2156298837, i64 2156299350, i64 2156298874, i64 2156298930, i64 2156298964, i64 2156298988, i64 2156299029, i64 2156299050, i64 2156299078, i64 2156299112}
!144 = !{i64 2156300868}
!145 = !{i64 2156301246}
