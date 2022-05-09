; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.gk104_fifo_func = type { %struct.anon, ptr, %struct.anon.141, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon = type { ptr }
%struct.anon.141 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.142, i32, [16 x %struct.anon.143], i32, [16 x %struct.anon.144], i32, %struct.anon.145 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.142 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32, i32 }
%struct.anon.144 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.145 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gk104_fifo_engine_status = type { i8, i8, i8, i8, i8, %struct.anon.152, %struct.anon.152, ptr }
%struct.anon.152 = type { i8, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.4, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.4 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }

@gk104_fifo_engine_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s: engine %02d: busy %d faulted %d chsw %d save %d load %d %sid %d%s-> %sid %d%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gk104_fifo_engine_status\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_fifo_engine_status._entry_ptr = internal global ptr @gk104_fifo_engine_status._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsg\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ch\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gk104_fifo_runlist_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 163, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: runlist %d update timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gk104_fifo_runlist_commit\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gk104_fifo_runlist_commit._entry_ptr = internal global ptr @gk104_fifo_runlist_commit._entry, section ".printk_index", align 4
@gk104_fifo_runlist = dso_local constant { %struct.gk104_fifo_runlist_func, [16 x i8] } { %struct.gk104_fifo_runlist_func { i8 8, ptr null, ptr @gk104_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, [16 x i8] zeroinitializer }, align 32
@gk104_fifo_pbdma = dso_local constant { %struct.gk104_fifo_pbdma_func, [20 x i8] } { %struct.gk104_fifo_pbdma_func { ptr @gk104_fifo_pbdma_nr, ptr @gk104_fifo_pbdma_init, ptr null }, [20 x i8] zeroinitializer }, align 32
@gk104_fifo_bind_reason = internal constant { [7 x %struct.nvkm_enum], [52 x i8] } { [7 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.137, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.138, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.139, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.140, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.141, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.142, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [52 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 580, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: BIND_ERROR %02x [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gk104_fifo_intr_bind\00", [43 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_bind._entry_ptr = internal global ptr @gk104_fifo_intr_bind._entry, section ".printk_index", align 4
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gk104_fifo_intr_chsw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 647, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: CHSW_ERROR %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gk104_fifo_intr_chsw\00", [43 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_chsw._entry_ptr = internal global ptr @gk104_fifo_intr_chsw._entry, section ".printk_index", align 4
@gk104_fifo_intr_dropped_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 657, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: DROPPED_MMU_FAULT %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gk104_fifo_intr_dropped_fault\00", [34 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_dropped_fault._entry_ptr = internal global ptr @gk104_fifo_intr_dropped_fault._entry, section ".printk_index", align 4
@gk104_fifo_pbdma_intr_0 = internal constant { [31 x %struct.nvkm_bitfield], [40 x i8] } { [31 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.143 }, %struct.nvkm_bitfield { i32 2, ptr @.str.144 }, %struct.nvkm_bitfield { i32 4, ptr @.str.145 }, %struct.nvkm_bitfield { i32 8, ptr @.str.146 }, %struct.nvkm_bitfield { i32 16, ptr @.str.147 }, %struct.nvkm_bitfield { i32 32, ptr @.str.148 }, %struct.nvkm_bitfield { i32 64, ptr @.str.149 }, %struct.nvkm_bitfield { i32 128, ptr @.str.150 }, %struct.nvkm_bitfield { i32 256, ptr @.str.151 }, %struct.nvkm_bitfield { i32 512, ptr @.str.152 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.153 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.154 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.155 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.156 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.157 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.158 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.159 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.160 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.161 }, %struct.nvkm_bitfield { i32 524288, ptr @.str.162 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.163 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.164 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.165 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.166 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.167 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.168 }, %struct.nvkm_bitfield { i32 134217728, ptr @.str.169 }, %struct.nvkm_bitfield { i32 536870912, ptr @.str.170 }, %struct.nvkm_bitfield { i32 1073741824, ptr @.str.171 }, %struct.nvkm_bitfield { i32 -2147483648, ptr @.str.172 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_pbdma_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 727, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gk104_fifo_intr_pbdma_0\00", [40 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_pbdma_0._entry_ptr = internal global ptr @gk104_fifo_intr_pbdma_0._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gk104_fifo_pbdma_intr_1 = internal constant { [6 x %struct.nvkm_bitfield], [48 x i8] } { [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.173 }, %struct.nvkm_bitfield { i32 2, ptr @.str.174 }, %struct.nvkm_bitfield { i32 4, ptr @.str.175 }, %struct.nvkm_bitfield { i32 8, ptr @.str.176 }, %struct.nvkm_bitfield { i32 16, ptr @.str.177 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_pbdma_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 758, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: PBDMA%d: %08x [%s] ch %d %08x %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gk104_fifo_intr_pbdma_1\00", [40 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_pbdma_1._entry_ptr = internal global ptr @gk104_fifo_intr_pbdma_1._entry, section ".printk_index", align 4
@gk104_fifo_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 947, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %d PBDMA(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gk104_fifo_oneinit\00", [45 x i8] zeroinitializer }, align 32
@gk104_fifo_oneinit._entry_ptr = internal global ptr @gk104_fifo_oneinit._entry, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s, %d\00", [25 x i8] zeroinitializer }, align 32
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@gk104_fifo_oneinit._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.2, i32 982, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: engine %2d: runlist %2d pbdma %2d (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@gk104_fifo_oneinit._entry_ptr.30 = internal global ptr @gk104_fifo_oneinit._entry.28, section ".printk_index", align 4
@gk104_fifo_oneinit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&fifo->runlist[i].wait\00", [41 x i8] zeroinitializer }, align 32
@gk104_fifo_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&fifo->recover.work)\00", [57 x i8] zeroinitializer }, align 32
@gk104_fifo_ = internal constant { %struct.nvkm_fifo_func, [32 x i8] } { %struct.nvkm_fifo_func { ptr @gk104_fifo_dtor, ptr @gk104_fifo_oneinit, ptr @gk104_fifo_info, ptr @gk104_fifo_init, ptr @gk104_fifo_fini, ptr @gk104_fifo_intr, ptr @gk104_fifo_fault, ptr @gk104_fifo_engine_id, ptr @gk104_fifo_id_engine, ptr null, ptr null, ptr @gk104_fifo_uevent_init, ptr @gk104_fifo_uevent_fini, ptr @gk104_fifo_recover_chan, ptr @gk104_fifo_class_get, ptr @gk104_fifo_class_new, [0 x ptr] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@gk104_fifo_fault_access = dso_local constant { [3 x %struct.nvkm_enum], [36 x i8] } { [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.34, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GR\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISPLAY\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IFB\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR1\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR2\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SCHED\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST0\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST1\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST2\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST3\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST4\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST5\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST6\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST7\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOSTSR\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSVLD\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSPPP\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PERF\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MSPDEC\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE0\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE1\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSENC\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE2\00", [28 x i8] zeroinitializer }, align 32
@gk104_fifo_fault_engine = dso_local constant { [27 x %struct.nvkm_enum], [132 x i8] } { [27 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.35, ptr null, i32 33, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.38, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.39, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.40, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.42, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.43, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.44, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.45, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.46, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.47, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.48, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.49, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.51, ptr null, i32 40, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.52, ptr null, i32 39, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.54, ptr null, i32 38, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.55, ptr null, i32 28, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.56, ptr null, i32 28, i32 1 }, %struct.nvkm_enum { i32 23, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.59, ptr null, i32 37, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.60, ptr null, i32 28, i32 2 }, %struct.nvkm_enum zeroinitializer], [132 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PDE\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PDE_SIZE\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTE\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VA_LIMIT_VIOLATION\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UNBOUND_INST_BLOCK\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PRIV_VIOLATION\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RO_VIOLATION\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WO_VIOLATION\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PITCH_MASK_VIOLATION\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WORK_CREATION\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNSUPPORTED_APERTURE\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"COMPRESSION_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNSUPPORTED_KIND\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REGION_VIOLATION\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BOTH_PTES_VALID\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INFO_TYPE_POISONED\00", [45 x i8] zeroinitializer }, align 32
@gk104_fifo_fault_reason = dso_local constant { [17 x %struct.nvkm_enum], [76 x i8] } { [17 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.61, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.62, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.64, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.65, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.66, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.68, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.69, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.70, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.71, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.72, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.73, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.74, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.75, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.76, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [76 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIP\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DNISO\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FE\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FECS\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HOST\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HOST_CPU\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HOST_CPU_NB\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISO\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MMU\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NISO\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"P2P\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PD\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RASTERTWOD\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCC\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SCC_NB\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SEC\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SSYNC\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GR_CE\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"XV\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMU_NB\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DFALCON\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SKED\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFALCON\00", [24 x i8] zeroinitializer }, align 32
@gk104_fifo_fault_hubclient = dso_local constant { [33 x %struct.nvkm_enum], [172 x i8] } { [33 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.77, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.78, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.79, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.80, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.81, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.82, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.83, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.84, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.85, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.86, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.87, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.88, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.89, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.90, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.91, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.92, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.93, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.94, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.60, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.95, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.96, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.97, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.98, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.99, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [172 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_0\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_0\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_0\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_1\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_1\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_1\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_2\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_2\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_2\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_3\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_3\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_3\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAST\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GCC\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPCCS\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PROP_0\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PROP_1\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PROP_2\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PROP_3\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_4\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_4\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_4\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_5\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_5\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_5\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_6\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_6\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_6\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L1_7\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T1_7\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PE_7\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPM\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTP_UTLB_0\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTP_UTLB_1\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTP_UTLB_2\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTP_UTLB_3\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPC_RGG_UTLB\00", [19 x i8] zeroinitializer }, align 32
@gk104_fifo_fault_gpcclient = dso_local constant { [38 x %struct.nvkm_enum], [168 x i8] } { [38 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.100, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.101, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.102, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.103, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.104, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.105, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.106, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.107, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.108, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.109, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.110, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.111, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.112, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.113, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.114, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.115, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.116, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.117, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.118, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.119, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.120, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.121, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.122, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.123, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.124, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.125, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.126, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.127, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.128, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.129, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.130, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.131, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.132, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.133, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.134, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.135, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.136, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [168 x i8] zeroinitializer }, align 32
@gk104_fifo = internal constant { %struct.gk104_fifo_func, [44 x i8] } { %struct.gk104_fifo_func { %struct.anon { ptr @gf100_fifo_intr_fault }, ptr @gk104_fifo_pbdma, %struct.anon.141 { ptr @gk104_fifo_fault_access, ptr @gk104_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gk104_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41071, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BIND_NOT_UNBOUND\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SNOOP_WITHOUT_BAR1\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNBIND_WHILE_RUNNING\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INVALID_RUNLIST\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INVALID_CTX_TGT\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UNBIND_WHILE_PARKED\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MEMREQ\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEMACK_TIMEOUT\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MEMACK_EXTRA\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEMDAT_TIMEOUT\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MEMDAT_EXTRA\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MEMFLUSH\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MEMOP\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LBCONNECT\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LBREQ\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LBACK_TIMEOUT\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LBACK_EXTRA\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LBDAT_TIMEOUT\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LBDAT_EXTRA\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPFIFO\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPPTR\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPENTRY\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPCRC\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PBPTR\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PBENTRY\00", [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PBCRC\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XBARCONNECT\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"METHOD\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"METHODCRC\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEVICE\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SEMAPHORE\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACQUIRE\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PRI\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NO_CTXSW_SEG\00", [19 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PBSEG\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SIGNATURE\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HCE_RE_ILLEGAL_OP\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HCE_RE_ALIGNB\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HCE_PRIV\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HCE_ILLEGAL_MTHD\00", [47 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HCE_ILLEGAL_CLASS\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gk104_fifo_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 799, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: PIO_ERROR\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gk104_fifo_intr\00", [16 x i8] zeroinitializer }, align 32
@gk104_fifo_intr._entry_ptr = internal global ptr @gk104_fifo_intr._entry, section ".printk_index", align 4
@gk104_fifo_intr._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.2, i32 817, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: FB_FLUSH_TIMEOUT\0A\00", [42 x i8] zeroinitializer }, align 32
@gk104_fifo_intr._entry_ptr.182 = internal global ptr @gk104_fifo_intr._entry.180, section ".printk_index", align 4
@gk104_fifo_intr._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.179, ptr @.str.2, i32 823, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: LB_ERROR\0A\00", [18 x i8] zeroinitializer }, align 32
@gk104_fifo_intr._entry_ptr.185 = internal global ptr @gk104_fifo_intr._entry.183, section ".printk_index", align 4
@gk104_fifo_intr._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.179, ptr @.str.2, i32 869, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: INTR %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gk104_fifo_intr._entry_ptr.188 = internal global ptr @gk104_fifo_intr._entry.186, section ".printk_index", align 4
@gk104_fifo_sched_reason = internal constant { [2 x %struct.nvkm_enum], [56 x i8] } { [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 10, ptr @.str.191, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_sched._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 630, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: SCHED_ERROR %02x [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gk104_fifo_intr_sched\00", [42 x i8] zeroinitializer }, align 32
@gk104_fifo_intr_sched._entry_ptr = internal global ptr @gk104_fifo_intr_sched._entry, section ".printk_index", align 4
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CTXSW_TIMEOUT\00", [18 x i8] zeroinitializer }, align 32
@gk104_fifo_recover_engn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 475, ptr @.str.194, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: engine %d: scheduled for recovery\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gk104_fifo_recover_engn\00", [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gk104_fifo_recover_engn._entry_ptr = internal global ptr @gk104_fifo_recover_engn._entry, section ".printk_index", align 4
@gk104_fifo_recover_runl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 339, ptr @.str.194, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: runlist %d: scheduled for recovery\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gk104_fifo_recover_runl\00", [40 x i8] zeroinitializer }, align 32
@gk104_fifo_recover_runl._entry_ptr = internal global ptr @gk104_fifo_recover_runl._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPC%d/\00", [25 x i8] zeroinitializer }, align 32
@nvkm_engine = external dso_local constant %struct.nvkm_subdev_func, align 4
@gk104_fifo_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 540, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%s: fault %02x [%s] at %016llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gk104_fifo_fault\00", [47 x i8] zeroinitializer }, align 32
@gk104_fifo_fault._entry_ptr = internal global ptr @gk104_fifo_fault._entry, section ".printk_index", align 4
@gk104_fifo_recover_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 394, ptr @.str.194, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: channel %d: killed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gk104_fifo_recover_chan\00", [40 x i8] zeroinitializer }, align 32
@gk104_fifo_recover_chan._entry_ptr = internal global ptr @gk104_fifo_recover_chan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 64, i64 4294967296, i64 4294967552]
@__sancov_gen_cov_switch_values.203 = internal global [19 x i64] [i64 17, i64 32, i64 27, i64 28, i64 29, i64 33, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 46, i64 47, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.204 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 12, i64 16, i64 34]
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 76, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 159, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 163, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"gk104_fifo_runlist\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 233, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"gk104_fifo_pbdma\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 256, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"gk104_fifo_bind_reason\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 560, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 580, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 647, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 657, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [24 x i8] c"gk104_fifo_pbdma_intr_0\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 660, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 723, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [24 x i8] c"gk104_fifo_pbdma_intr_1\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 734, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 755, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 947, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 974, i32 31 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 981, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1007, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1103, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [12 x i8] c"gk104_fifo_\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1077, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1111, i32 9 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1112, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant [24 x i8] c"gk104_fifo_fault_access\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1110, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1118, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1119, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1120, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1121, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1122, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1123, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1124, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1125, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1126, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1127, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1128, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1129, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1130, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1131, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1132, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1133, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1134, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1135, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1136, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1137, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1138, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1139, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1140, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1141, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1142, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1143, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant [24 x i8] c"gk104_fifo_fault_engine\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1117, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1149, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1150, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1151, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1152, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1153, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1154, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1155, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1156, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1157, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1158, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1159, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1160, i32 10 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1161, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1162, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1163, i32 10 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1164, i32 10 }
@___asan_gen_.487 = private unnamed_addr constant [24 x i8] c"gk104_fifo_fault_reason\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1148, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1170, i32 10 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1173, i32 10 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1174, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1175, i32 10 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1176, i32 10 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1177, i32 10 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1178, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1179, i32 10 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1180, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1184, i32 10 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1185, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1186, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1189, i32 10 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1190, i32 10 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1191, i32 10 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1192, i32 10 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1193, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1194, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1196, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1197, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1199, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1200, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1201, i32 10 }
@___asan_gen_.559 = private unnamed_addr constant [27 x i8] c"gk104_fifo_fault_hubclient\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1169, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1207, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1207, i32 28 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1207, i32 46 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1208, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1208, i32 28 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1208, i32 46 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1209, i32 10 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1209, i32 28 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1209, i32 46 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1210, i32 10 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1210, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1210, i32 46 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1211, i32 10 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1212, i32 10 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1213, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1214, i32 10 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1215, i32 10 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1216, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1217, i32 10 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1218, i32 10 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1218, i32 28 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1218, i32 46 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1219, i32 10 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1219, i32 28 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1219, i32 46 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1220, i32 10 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1220, i32 28 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1220, i32 46 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1221, i32 10 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1221, i32 28 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1221, i32 46 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1222, i32 10 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1223, i32 10 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1224, i32 10 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1225, i32 10 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1226, i32 10 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1227, i32 10 }
@___asan_gen_.673 = private unnamed_addr constant [27 x i8] c"gk104_fifo_fault_gpcclient\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1206, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [11 x i8] c"gk104_fifo\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1232, i32 1 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 561, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 562, i32 10 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 563, i32 10 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 564, i32 10 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 565, i32 10 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 566, i32 10 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 661, i32 16 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 662, i32 16 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 663, i32 16 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 664, i32 16 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 665, i32 16 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 666, i32 16 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 667, i32 16 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 668, i32 16 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 669, i32 16 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 670, i32 16 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 671, i32 16 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 672, i32 16 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 673, i32 16 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 674, i32 16 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 675, i32 16 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 676, i32 16 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 677, i32 16 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 678, i32 16 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 679, i32 16 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 680, i32 16 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 681, i32 16 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 682, i32 16 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 683, i32 16 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 684, i32 16 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 685, i32 16 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 686, i32 16 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 687, i32 16 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 688, i32 16 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 689, i32 16 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 690, i32 16 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 735, i32 16 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 736, i32 16 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 737, i32 16 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 738, i32 16 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 739, i32 16 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 799, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 817, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 823, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 869, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant [24 x i8] c"gk104_fifo_sched_reason\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 584, i32 1 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 630, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 585, i32 10 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 475, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 339, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 498, i32 28 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 533, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.883 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.884 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 394, i32 2 }
@llvm.compiler.used = appending global [245 x ptr] [ptr @gk104_fifo_engine_status._entry, ptr @gk104_fifo_engine_status._entry_ptr, ptr @gk104_fifo_fault._entry, ptr @gk104_fifo_fault._entry_ptr, ptr @gk104_fifo_intr._entry, ptr @gk104_fifo_intr._entry.180, ptr @gk104_fifo_intr._entry.183, ptr @gk104_fifo_intr._entry.186, ptr @gk104_fifo_intr._entry_ptr, ptr @gk104_fifo_intr._entry_ptr.182, ptr @gk104_fifo_intr._entry_ptr.185, ptr @gk104_fifo_intr._entry_ptr.188, ptr @gk104_fifo_intr_bind._entry, ptr @gk104_fifo_intr_bind._entry_ptr, ptr @gk104_fifo_intr_chsw._entry, ptr @gk104_fifo_intr_chsw._entry_ptr, ptr @gk104_fifo_intr_dropped_fault._entry, ptr @gk104_fifo_intr_dropped_fault._entry_ptr, ptr @gk104_fifo_intr_pbdma_0._entry, ptr @gk104_fifo_intr_pbdma_0._entry_ptr, ptr @gk104_fifo_intr_pbdma_1._entry, ptr @gk104_fifo_intr_pbdma_1._entry_ptr, ptr @gk104_fifo_intr_sched._entry, ptr @gk104_fifo_intr_sched._entry_ptr, ptr @gk104_fifo_oneinit._entry, ptr @gk104_fifo_oneinit._entry.28, ptr @gk104_fifo_oneinit._entry_ptr, ptr @gk104_fifo_oneinit._entry_ptr.30, ptr @gk104_fifo_recover_chan._entry, ptr @gk104_fifo_recover_chan._entry_ptr, ptr @gk104_fifo_recover_engn._entry, ptr @gk104_fifo_recover_engn._entry_ptr, ptr @gk104_fifo_recover_runl._entry, ptr @gk104_fifo_recover_runl._entry_ptr, ptr @gk104_fifo_runlist_commit._entry, ptr @gk104_fifo_runlist_commit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @gk104_fifo_runlist, ptr @gk104_fifo_pbdma, ptr @gk104_fifo_bind_reason, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @gk104_fifo_pbdma_intr_0, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gk104_fifo_pbdma_intr_1, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @gk104_fifo_oneinit.__key, ptr @.str.31, ptr @gk104_fifo_new_.__key, ptr @.str.32, ptr @gk104_fifo_, ptr @.str.33, ptr @.str.34, ptr @gk104_fifo_fault_access, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @gk104_fifo_fault_engine, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @gk104_fifo_fault_reason, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @gk104_fifo_fault_hubclient, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @gk104_fifo_fault_gpcclient, ptr @gk104_fifo, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @gk104_fifo_sched_reason, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_engine_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_runlist_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_runlist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_pbdma to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_bind_reason to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_chsw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_dropped_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_pbdma_intr_0 to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_pbdma_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_pbdma_intr_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_pbdma_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_oneinit._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_oneinit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault_access to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault_engine to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault_reason to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault_hubclient to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault_gpcclient to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_sched_reason to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_intr_sched._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_recover_engn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_recover_runl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_recover_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_engine_status(ptr noundef %fifo, i32 noundef %engn, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 4, i32 %engn
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %device5 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device5, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul = shl i32 %engn, 3
  %add = add i32 %mul, 9792
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  %call.lobit = lshr i32 %6, 31
  %7 = trunc i32 %call.lobit to i8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %status, align 4
  %faulted = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 1
  %and7 = lshr i32 %6, 30
  %9 = trunc i32 %and7 to i8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %faulted to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %faulted, align 1
  %next = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 6
  %and12 = lshr i32 %6, 28
  %12 = trunc i32 %and12 to i8
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %next, align 4
  %and17 = lshr i32 %6, 16
  %shr = and i32 %and17, 4095
  %id = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %id, align 4
  %chsw = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 2
  %and19 = lshr i32 %6, 15
  %16 = trunc i32 %and19 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %chsw to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %chsw, align 2
  %save = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 3
  %and24 = lshr i32 %6, 14
  %19 = trunc i32 %and24 to i8
  %20 = and i8 %19, 1
  %21 = ptrtoint ptr %save to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %save, align 1
  %load = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 4
  %and29 = lshr i32 %6, 13
  %22 = trunc i32 %and29 to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %load to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %load, align 4
  %prev = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 5
  %and34 = lshr i32 %6, 12
  %25 = trunc i32 %and34 to i8
  %26 = and i8 %25, 1
  %27 = ptrtoint ptr %prev to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %prev, align 4
  %and40 = and i32 %6, 4095
  %id42 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %id42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and40, ptr %id42, align 4
  %chan = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 7
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool44.not = icmp sgt i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool46.not = icmp eq i8 %17, 0
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool46.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool74.not = icmp eq i8 %23, 0
  br i1 %or.cond, label %if.else72, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool74.not, label %if.then.do.body.sink.split_crit_edge, label %land.lhs.true49

if.then.do.body.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

land.lhs.true49:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool51.not = icmp eq i8 %20, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.body.sink.split_crit_edge, label %if.then52

land.lhs.true49.do.body.sink.split_crit_edge:     ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.then52:                                        ; preds = %land.lhs.true49
  %tobool53.not = icmp eq ptr %1, null
  br i1 %tobool53.not, label %if.then52.if.else_crit_edge, label %land.lhs.true54

if.then52.if.else_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true54:                                  ; preds = %if.then52
  %call55 = tail call zeroext i1 @nvkm_engine_chsw_load(ptr noundef nonnull %1) #9
  br i1 %call55, label %land.lhs.true54.do.body.sink.split_crit_edge, label %land.lhs.true54.if.else_crit_edge

land.lhs.true54.if.else_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true54.do.body.sink.split_crit_edge:     ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.else:                                          ; preds = %land.lhs.true54.if.else_crit_edge, %if.then52.if.else_crit_edge
  br label %do.body.sink.split

if.else72:                                        ; preds = %entry
  br i1 %tobool74.not, label %if.else72.do.body_crit_edge, label %if.else72.do.body.sink.split_crit_edge

if.else72.do.body.sink.split_crit_edge:           ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.else72.do.body_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.sink.split:                               ; preds = %if.else72.do.body.sink.split_crit_edge, %if.else, %land.lhs.true54.do.body.sink.split_crit_edge, %land.lhs.true49.do.body.sink.split_crit_edge, %if.then.do.body.sink.split_crit_edge
  %next.sink = phi ptr [ %prev, %if.else ], [ %next, %land.lhs.true54.do.body.sink.split_crit_edge ], [ %next, %land.lhs.true49.do.body.sink.split_crit_edge ], [ %prev, %if.then.do.body.sink.split_crit_edge ], [ %prev, %if.else72.do.body.sink.split_crit_edge ]
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %next.sink, ptr %chan, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.else72.do.body_crit_edge
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp = icmp ugt i32 %32, 3
  br i1 %cmp, label %do.end, label %do.body.if.end120_crit_edge

do.body.if.end120_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device5, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status, align 4, !range !438
  %39 = zext i8 %38 to i32
  %40 = ptrtoint ptr %faulted to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %faulted, align 1, !range !438
  %42 = zext i8 %41 to i32
  %43 = ptrtoint ptr %chsw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chsw, align 2, !range !438
  %45 = zext i8 %44 to i32
  %46 = ptrtoint ptr %save to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %save, align 1, !range !438
  %48 = zext i8 %47 to i32
  %49 = ptrtoint ptr %load to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %load, align 4, !range !438
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %prev to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %prev, align 4, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool99.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool99.not, ptr @.str.6, ptr @.str.5
  %54 = ptrtoint ptr %id42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id42, align 4
  %56 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chan, align 4
  %cmp105 = icmp eq ptr %57, %prev
  %cond107 = select i1 %cmp105, ptr @.str.7, ptr @.str.8
  %58 = ptrtoint ptr %next to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %next, align 4, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool110.not = icmp eq i8 %59, 0
  %cond112 = select i1 %tobool110.not, ptr @.str.6, ptr @.str.5
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id, align 4
  %cmp117 = icmp eq ptr %57, %next
  %cond119 = select i1 %cmp117, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %engn, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, ptr noundef nonnull %cond, i32 noundef %55, ptr noundef nonnull %cond107, ptr noundef nonnull %cond112, i32 noundef %61, ptr noundef nonnull %cond119) #12
  br label %if.end120

if.end120:                                        ; preds = %do.end, %do.body.if.end120_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_engine_chsw_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_class_new(ptr noundef %base, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %0 = ptrtoint ptr %engn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engn, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %chan = getelementptr inbounds %struct.gk104_fifo_func, ptr %3, i32 0, i32 5
  %cmp = icmp eq ptr %1, %chan
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctor = getelementptr inbounds %struct.gk104_fifo_chan_user, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctor, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %user4 = getelementptr inbounds %struct.gk104_fifo_func, ptr %3, i32 0, i32 4
  %cmp5 = icmp eq ptr %1, %user4
  br i1 %cmp5, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ctor9 = getelementptr inbounds %struct.gk104_fifo_user_user, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ctor9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctor9, align 4
  %call10 = tail call i32 %7(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #9
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call10, %if.then6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gk104_fifo_class_get(ptr nocapture noundef readonly %base, i32 noundef %index, ptr nocapture noundef writeonly %oclass) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %user = getelementptr inbounds %struct.gk104_fifo_func, ptr %1, i32 0, i32 4
  %ctor = getelementptr inbounds %struct.gk104_fifo_func, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctor, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %base1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %base1, ptr %user, i32 20)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %user6 = getelementptr inbounds %struct.gk104_fifo_func, ptr %6, i32 0, i32 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %c.0 = phi i32 [ 1, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %chan = getelementptr inbounds %struct.gk104_fifo_func, ptr %1, i32 0, i32 5
  %ctor8 = getelementptr inbounds %struct.gk104_fifo_func, ptr %1, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %ctor8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctor8, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %land.lhs.true10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.end
  %inc11 = add nuw nsw i32 %c.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %index)
  %cmp12 = icmp eq i32 %c.0, %index
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  %base14 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %base14, ptr %chan, i32 20)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %chan19 = getelementptr inbounds %struct.gk104_fifo_func, ptr %11, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %if.then
  %chan19.sink = phi ptr [ %chan19, %if.then13 ], [ %user6, %if.then ]
  %engn20 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %12 = ptrtoint ptr %engn20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chan19.sink, ptr %engn20, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc11, %land.lhs.true10.cleanup_crit_edge ], [ %c.0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_uevent_fini(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %and = and i32 %4, 2147483647
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #9, !srcloc !441
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_uevent_init(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %or = or i32 %4, -2147483648
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #9, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_commit(ptr noundef %fifo, i32 noundef %runl, ptr noundef %mem, i32 noundef %nr) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %target3 = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %target3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target3, align 4
  %call = tail call i32 %5(ptr noundef %mem) #9
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 1, label %entry.do.body19_crit_edge
    i32 3, label %sw.bb4
  ]

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body19:                                        ; preds = %sw.bb4, %entry.do.body19_crit_edge
  %target.0 = phi i32 [ 805306368, %sw.bb4 ], [ 0, %entry.do.body19_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %call23 = tail call i64 %10(ptr noundef %mem) #9
  %shr = lshr i64 %call23, 12
  %11 = trunc i64 %shr to i32
  %conv24 = or i32 %target.0, %11
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv24) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  tail call void @arm_heavy_mb() #9
  %shl28 = shl i32 %runl, 20
  %or29 = or i32 %shl28, %nr
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 8820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %or29) #9, !srcloc !441
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #9
  %16 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #9
  %mul = shl i32 %runl, 3
  %add = add i32 %mul, 8836
  br label %do.body32

do.body32:                                        ; preds = %do.cond40.do.body32_crit_edge, %do.body19
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %18, i32 %add
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  %and = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end83.thread, label %do.cond40

if.end83.thread:                                  ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #9
  br label %cleanup

do.cond40:                                        ; preds = %do.body32
  %call41 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #9
  %cmp = icmp sgt i64 %call41, -1
  br i1 %cmp, label %do.cond40.do.body32_crit_edge, label %do.end61

do.cond40.do.body32_crit_edge:                    ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

do.end61:                                         ; preds = %do.cond40
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device63 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device63, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %call64 = call ptr @dev_driver_string(ptr noundef %25) #9
  %26 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_wait, align 8
  %device67 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device67, align 4
  %dev68 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev68, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end61.do.body88_crit_edge

do.end61.do.body88_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body88

if.end.i:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  br label %do.body88

do.body88:                                        ; preds = %if.end.i, %do.end61.do.body88_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %do.end61.do.body88_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call64, ptr noundef %retval.0.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #9
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %36 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp89.not = icmp eq i32 %37, 0
  br i1 %cmp89.not, label %do.body88.cleanup_crit_edge, label %do.end94

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device2, align 4
  %dev96 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev96, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %runl) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %do.body88.cleanup_crit_edge, %if.end83.thread, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_update(ptr noundef %fifo, i32 noundef %runl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %runlist = getelementptr inbounds %struct.gk104_fifo_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runlist, align 4
  %mutex = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %runl
  %next = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %runl, i32 1
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next, align 4
  %arrayidx6 = getelementptr [2 x ptr], ptr %arrayidx, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %8 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %next, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %12(ptr noundef %7) #9
  %chan16 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %runl, i32 4
  %13 = ptrtoint ptr %chan16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn132 = load ptr, ptr %chan16, align 4
  %cmp.not133 = icmp eq ptr %.pn132, %chan16
  br i1 %cmp.not133, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chan23 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn135 = phi ptr [ %.pn132, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %nr.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %chan.0 = getelementptr i8, ptr %.pn135, i32 -340
  %14 = ptrtoint ptr %chan23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan23, align 4
  %inc = add i32 %nr.0134, 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 4
  %conv = zext i8 %17 to i32
  %mul = mul i32 %nr.0134, %conv
  tail call void %15(ptr noundef %chan.0, ptr noundef %7, i32 noundef %mul) #9
  %18 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn135, align 4
  %cmp.not = icmp eq ptr %.pn, %chan16
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %cgrp32 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %runl, i32 3
  %19 = ptrtoint ptr %cgrp32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn130142 = load ptr, ptr %cgrp32, align 4
  %cmp41.not143 = icmp eq ptr %.pn130142, %cgrp32
  br i1 %cmp41.not143, label %for.end.for.end82_crit_edge, label %for.body45.lr.ph

for.end.for.end82_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

for.body45.lr.ph:                                 ; preds = %for.end
  %cgrp46 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %3, i32 0, i32 1
  %chan64 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %3, i32 0, i32 2
  br label %for.body45

for.cond36.loopexit:                              ; preds = %for.body63.for.cond36.loopexit_crit_edge, %for.body45.for.cond36.loopexit_crit_edge
  %nr.2.lcssa = phi i32 [ %nr.2137, %for.body45.for.cond36.loopexit_crit_edge ], [ %nr.2, %for.body63.for.cond36.loopexit_crit_edge ]
  %20 = ptrtoint ptr %.pn130145 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn130 = load ptr, ptr %.pn130145, align 4
  %cmp41.not = icmp eq ptr %.pn130, %cgrp32
  br i1 %cmp41.not, label %for.cond36.loopexit.for.end82_crit_edge, label %for.cond36.loopexit.for.body45_crit_edge

for.cond36.loopexit.for.body45_crit_edge:         ; preds = %for.cond36.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

for.cond36.loopexit.for.end82_crit_edge:          ; preds = %for.cond36.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

for.body45:                                       ; preds = %for.cond36.loopexit.for.body45_crit_edge, %for.body45.lr.ph
  %.pn130145 = phi ptr [ %.pn130142, %for.body45.lr.ph ], [ %.pn130, %for.cond36.loopexit.for.body45_crit_edge ]
  %nr.1144 = phi i32 [ %nr.0.lcssa, %for.body45.lr.ph ], [ %nr.2.lcssa, %for.cond36.loopexit.for.body45_crit_edge ]
  %cgrp.0 = getelementptr i8, ptr %.pn130145, i32 -4
  %21 = ptrtoint ptr %cgrp46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cgrp46, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 4
  %conv49 = zext i8 %24 to i32
  %mul50 = mul i32 %nr.1144, %conv49
  tail call void %22(ptr noundef %cgrp.0, ptr noundef %7, i32 noundef %mul50) #9
  %chan52 = getelementptr i8, ptr %.pn130145, i32 8
  %25 = ptrtoint ptr %chan52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn131136 = load ptr, ptr %chan52, align 4
  %nr.2137 = add i32 %nr.1144, 1
  %cmp59.not138 = icmp eq ptr %.pn131136, %chan52
  br i1 %cmp59.not138, label %for.body45.for.cond36.loopexit_crit_edge, label %for.body45.for.body63_crit_edge

for.body45.for.body63_crit_edge:                  ; preds = %for.body45
  br label %for.body63

for.body45.for.cond36.loopexit_crit_edge:         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond36.loopexit

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body45.for.body63_crit_edge
  %nr.2140 = phi i32 [ %nr.2, %for.body63.for.body63_crit_edge ], [ %nr.2137, %for.body45.for.body63_crit_edge ]
  %.pn131139 = phi ptr [ %.pn131, %for.body63.for.body63_crit_edge ], [ %.pn131136, %for.body45.for.body63_crit_edge ]
  %chan.1 = getelementptr i8, ptr %.pn131139, i32 -340
  %26 = ptrtoint ptr %chan64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan64, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 4
  %conv67 = zext i8 %29 to i32
  %mul68 = mul i32 %nr.2140, %conv67
  tail call void %27(ptr noundef %chan.1, ptr noundef %7, i32 noundef %mul68) #9
  %30 = ptrtoint ptr %.pn131139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn131 = load ptr, ptr %.pn131139, align 4
  %nr.2 = add i32 %nr.2140, 1
  %cmp59.not = icmp eq ptr %.pn131, %chan52
  br i1 %cmp59.not, label %for.body63.for.cond36.loopexit_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63

for.body63.for.cond36.loopexit_crit_edge:         ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond36.loopexit

for.end82:                                        ; preds = %for.cond36.loopexit.for.end82_crit_edge, %for.end.for.end82_crit_edge
  %nr.1.lcssa = phi i32 [ %nr.0.lcssa, %for.end.for.end82_crit_edge ], [ %nr.2.lcssa, %for.cond36.loopexit.for.end82_crit_edge ]
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %release, align 4
  tail call void %34(ptr noundef %7) #9
  %commit = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %commit, align 4
  tail call void %36(ptr noundef %fifo, i32 noundef %runl, ptr noundef %7, i32 noundef %nr.1.lcssa) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_remove(ptr noundef %fifo, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cgrp1 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %cgrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgrp1, align 8
  %mutex = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %head = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %3, %head
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %head, ptr %head, align 4
  %prev.i3.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev.i3.i, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %list_del_init.exit.if.end7_crit_edge, label %land.lhs.true

list_del_init.exit.if.end7_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %list_del_init.exit
  %chan_nr = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_nr, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %chan_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %head6 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 1
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head6) #9
  br i1 %call.i.i15, label %if.end.i.i18, label %if.then5.list_del_init.exit20_crit_edge

if.then5.list_del_init.exit20_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit20

if.end.i.i18:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i16 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i16, align 4
  %16 = ptrtoint ptr %head6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head6, align 4
  %prev1.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i17, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit20

list_del_init.exit20:                             ; preds = %if.end.i.i18, %if.then5.list_del_init.exit20_crit_edge
  %20 = ptrtoint ptr %head6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %head6, ptr %head6, align 4
  %prev.i3.i19 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i3.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head6, ptr %prev.i3.i19, align 4
  br label %if.end7

if.end7:                                          ; preds = %list_del_init.exit20, %land.lhs.true.if.end7_crit_edge, %list_del_init.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_insert(ptr noundef %fifo, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cgrp1 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %cgrp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgrp1, align 8
  %mutex = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %chan_nr = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_nr, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %chan_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  %head = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 1
  %runl = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runl, align 4
  %cgrp4 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %5, i32 3
  %prev.i = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %5, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %7, ptr noundef %cgrp4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head, ptr %prev.i, align 4
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cgrp4, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %head, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then3.if.end_crit_edge, %if.then.if.end_crit_edge
  %head5 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4
  %chan6 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 2
  %prev.i25 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i25, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %head5, ptr noundef %13, ptr noundef %chan6) #9
  br i1 %call.i.i26, label %if.end.i.i28, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i.i28:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head5, ptr %prev.i25, align 4
  %15 = ptrtoint ptr %head5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chan6, ptr %head5, align 4
  %prev3.i.i27 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i27, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %head5, ptr %13, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %head7 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4
  %runl9 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 2
  %18 = ptrtoint ptr %runl9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %runl9, align 4
  %chan11 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %19, i32 4
  %prev.i30 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %19, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i30, align 4
  %call.i.i31 = tail call zeroext i1 @__list_add_valid(ptr noundef %head7, ptr noundef %21, ptr noundef %chan11) #9
  br i1 %call.i.i31, label %if.end.i.i33, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i.i33:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head7, ptr %prev.i30, align 4
  %23 = ptrtoint ptr %head7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %chan11, ptr %head7, align 4
  %prev3.i.i32 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev3.i.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i32, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %head7, ptr %21, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i33, %if.else.if.end12_crit_edge, %if.end.i.i28, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_chan(ptr nocapture noundef readonly %chan, ptr noundef %memory, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset to i64
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid, align 8
  %conv1 = zext i16 %5 to i32
  tail call void %3(ptr noundef %memory, i64 noundef %conv, i32 noundef %conv1) #9
  %6 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptrs, align 4
  %wr323 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr323 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr323, align 4
  %add4 = add i32 %offset, 4
  %conv5 = zext i32 %add4 to i64
  tail call void %9(ptr noundef %memory, i64 noundef %conv5, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_pbdma_init(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  tail call void @arm_heavy_mb() #9
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
  %add.ptr = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sub) #9, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_pbdma_nr(ptr nocapture noundef readonly %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  tail call void @arm_heavy_mb() #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #9, !srcloc !441
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 516
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %6) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_id_engine(ptr nocapture noundef readonly %base, i32 noundef %engi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %engi)
  %cmp = icmp eq i32 %engi, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %call = tail call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef 48, i32 noundef 0) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %engine1 = getelementptr i8, ptr %base, i32 1256
  %arrayidx = getelementptr [16 x %struct.anon.143], ptr %engine1, i32 0, i32 %engi
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %3, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_engine_id(ptr nocapture noundef readonly %base, ptr noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %1)
  %cmp = icmp eq i32 %1, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %2 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engine_nr, align 4
  %tobool.not = icmp eq ptr %engine, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp134 = icmp slt i32 %3, 1
  %or.cond35 = or i1 %tobool.not, %cmp134
  br i1 %or.cond35, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %engine2 = getelementptr i8, ptr %base, i32 1256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %engn.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.143], ptr %engine2, i32 0, i32 %engn.036
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %5, %engine
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %engn.036, 1
  %cmp1.not = icmp slt i32 %inc, %3
  br i1 %cmp1.not, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 15, %entry.cleanup_crit_edge ], [ %engn.036, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_bind(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 9516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %and = and i32 %4, 255
  %call3 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_bind_reason, i32 noundef %and) #9
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name6 = getelementptr inbounds %struct.nvkm_enum, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ @.str.15, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %and, ptr noundef %cond) #12
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_chsw(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 9580
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 9580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #9, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_dropped_fault(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 9628
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_pbdma_0(ptr noundef %fifo, i32 noundef %unit) local_unnamed_addr #0 align 64 {
entry:
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  %msg = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %unit, 13
  %add = add i32 %mul, 262412
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add6 = add i32 %mul, 262408
  %add.ptr7 = getelementptr i8, ptr %6, i32 %add6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  %and = and i32 %7, %4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add13 = add i32 %mul, 262336
  %add.ptr14 = getelementptr i8, ptr %9, i32 %add13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add20 = add i32 %mul, 262340
  %add.ptr21 = getelementptr i8, ptr %12, i32 %add20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add27 = add i32 %mul, 262432
  %add.ptr28 = getelementptr i8, ptr %15, i32 %add27
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !458
  %and31 = and i32 %16, 4095
  %and32 = lshr i32 %10, 16
  %shr = and i32 %and32, 7
  %and33 = and i32 %10, 16380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #9
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan, align 4, !annotation !459
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %flags, align 4, !annotation !459
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #9
  %19 = call ptr @memset(ptr %msg, i32 255, i32 128)
  %and34 = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not = icmp eq i32 %and34, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %sw = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 68
  %20 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw, align 8
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.then.do.body_crit_edge, label %if.then36

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then36:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %21, i32 noundef %and31, i32 noundef %shr, i32 noundef %and33, i32 noundef %13) #9
  %and40 = and i32 %and, -8388609
  %spec.select = select i1 %call38, i32 %and40, i32 %and
  br label %do.body

do.body:                                          ; preds = %if.then36, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %show.0 = phi i32 [ %and, %if.then.do.body_crit_edge ], [ %and, %entry.do.body_crit_edge ], [ %spec.select, %if.then36 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %23, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 -2141192184) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.0)
  %tobool47.not = icmp eq i32 %show.0, 0
  br i1 %tobool47.not, label %do.body.do.body73_crit_edge, label %if.then48

do.body.do.body73_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

if.then48:                                        ; preds = %do.body
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @gk104_fifo_pbdma_intr_0, i32 noundef %show.0) #9
  %call50 = call ptr @nvkm_fifo_chan_chid(ptr noundef %base, i32 noundef %and31, ptr noundef nonnull %flags) #9
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50, ptr %chan, align 4
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %if.then48.if.end68_crit_edge, label %do.end55

if.then48.if.end68_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end55:                                         ; preds = %if.then48
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool59.not = icmp eq ptr %call50, null
  br i1 %tobool59.not, label %do.end55.cond.end66_crit_edge, label %cond.true62

do.end55.cond.end66_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end66

cond.true62:                                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call50, i32 0, i32 6
  %31 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inst, align 4
  %addr60 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %addr60 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %addr60, align 8
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call50, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client, align 4
  %name63 = getelementptr inbounds %struct.nvkm_client, ptr %36, i32 0, i32 1
  br label %cond.end66

cond.end66:                                       ; preds = %cond.true62, %do.end55.cond.end66_crit_edge
  %cond113 = phi i64 [ %34, %cond.true62 ], [ 0, %do.end55.cond.end66_crit_edge ]
  %cond67 = phi ptr [ %name63, %cond.true62 ], [ @.str.22, %do.end55.cond.end66_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %unit, i32 noundef %show.0, ptr noundef nonnull %msg, i32 noundef %and31, i64 noundef %cond113, ptr noundef %cond67, i32 noundef %shr, i32 noundef %and33, i32 noundef %13) #12
  br label %if.end68

if.end68:                                         ; preds = %cond.end66, %if.then48.if.end68_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %base, i32 noundef %38, ptr noundef nonnull %chan) #9
  br label %do.body73

do.body73:                                        ; preds = %if.end68, %do.body.do.body73_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr79 = getelementptr i8, ptr %40, i32 %add6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %and) #9, !srcloc !441
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_pbdma_1(ptr noundef %fifo, i32 noundef %unit) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %unit, 13
  %add = add i32 %mul, 262476
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add6 = add i32 %mul, 262472
  %add.ptr7 = getelementptr i8, ptr %6, i32 %add6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  %and = and i32 %7, %4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add13 = add i32 %mul, 262432
  %add.ptr14 = getelementptr i8, ptr %9, i32 %add13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  %and17 = and i32 %10, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #9
  %11 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body40_crit_edge, label %if.then

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

if.then:                                          ; preds = %entry
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @gk104_fifo_pbdma_intr_1, i32 noundef %and) #9
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.then.do.body40_crit_edge, label %do.end

if.then.do.body40_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add26 = add i32 %mul, 262480
  %add.ptr27 = getelementptr i8, ptr %19, i32 %add26
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add33 = add i32 %mul, 262484
  %add.ptr34 = getelementptr i8, ptr %22, i32 %add33
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %unit, i32 noundef %and, ptr noundef nonnull %msg, i32 noundef %and17, i32 noundef %20, i32 noundef %23) #12
  br label %do.body40

do.body40:                                        ; preds = %do.end, %if.then.do.body40_crit_edge, %entry.do.body40_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 %add6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %and) #9, !srcloc !441
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_runlist(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 10752
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not12 = icmp eq i32 %4, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %mask.013 = phi i32 [ %and, %while.body.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %mask.013, i1 true) #9, !range !469
  %wait = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %5, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 10752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %shl) #9, !srcloc !441
  %neg = xor i32 %shl, -1
  %and = and i32 %mask.013, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_engine(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  tail call void @nvkm_fifo_uevent(ptr noundef %base) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_fini(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %recover = getelementptr i8, ptr %base, i32 1200
  %call = tail call zeroext i1 @flush_work(ptr noundef %recover) #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  tail call void @arm_heavy_mb() #9
  %or = or i32 %4, 268435456
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or) #9, !srcloc !441
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_info(ptr nocapture noundef readonly %base, i64 noundef %mthd, ptr noundef %data) #0 align 64 {
entry:
  %engm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %mthd, ptr @__sancov_gen_cov_switch_values.202)
  switch i64 %mthd, label %entry.cleanup_crit_edge [
    i64 4294967296, label %sw.bb
    i64 4294967552, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %runlist_nr = getelementptr i8, ptr %base, i32 2860
  %0 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runlist_nr, align 4
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub, ptr %data, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %runlist_nr2 = getelementptr i8, ptr %base, i32 2860
  %5 = ptrtoint ptr %runlist_nr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runlist_nr2, align 4
  %conv = sext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv)
  %cmp = icmp ult i64 %4, %conv
  br i1 %cmp, label %if.then, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %engm) #9
  %runlist = getelementptr i8, ptr %base, i32 1452
  %idxprom = trunc i64 %4 to i32
  %arrayidx = getelementptr [16 x %struct.anon.144], ptr %runlist, i32 0, i32 %idxprom
  %engm4 = getelementptr inbounds %struct.anon.144, ptr %arrayidx, i32 0, i32 5
  %7 = ptrtoint ptr %engm4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %engm4, align 4
  %9 = ptrtoint ptr %engm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %engm, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %data, align 8
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %11 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %engine_nr, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %engine_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %14)
  %cmp696 = icmp slt i32 %call, %14
  br i1 %cmp696, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %engine8 = getelementptr i8, ptr %base, i32 1256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %engn.097 = phi i32 [ %call, %for.body.lr.ph ], [ %call64, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr [16 x %struct.anon.143], ptr %engine8, i32 0, i32 %engn.097
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %16, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %18, label %do.end [
    i32 48, label %sw.bb12
    i32 33, label %sw.bb13
    i32 36, label %sw.bb15
    i32 35, label %sw.bb17
    i32 29, label %sw.bb19
    i32 27, label %sw.bb21
    i32 50, label %sw.bb23
    i32 28, label %sw.bb25
    i32 46, label %sw.bb27
    i32 40, label %sw.bb29
    i32 38, label %sw.bb31
    i32 39, label %sw.bb33
    i32 37, label %sw.bb35
    i32 49, label %sw.bb37
    i32 47, label %sw.bb39
    i32 41, label %sw.bb41
    i32 42, label %sw.bb43
  ]

sw.bb12:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data, align 8
  %or = or i64 %21, 1
  store i64 %or, ptr %data, align 8
  br label %for.inc

sw.bb13:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %data, align 8
  %or14 = or i64 %23, 2
  store i64 %or14, ptr %data, align 8
  br label %for.inc

sw.bb15:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  %or16 = or i64 %25, 4
  store i64 %or16, ptr %data, align 8
  br label %for.inc

sw.bb17:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data, align 8
  %or18 = or i64 %27, 8
  store i64 %or18, ptr %data, align 8
  br label %for.inc

sw.bb19:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data, align 8
  %or20 = or i64 %29, 16
  store i64 %or20, ptr %data, align 8
  br label %for.inc

sw.bb21:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %data, align 8
  %or22 = or i64 %31, 32
  store i64 %or22, ptr %data, align 8
  br label %for.inc

sw.bb23:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  %or24 = or i64 %33, 64
  store i64 %or24, ptr %data, align 8
  br label %for.inc

sw.bb25:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %data, align 8
  %or26 = or i64 %35, 128
  store i64 %or26, ptr %data, align 8
  br label %for.inc

sw.bb27:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %data, align 8
  %or28 = or i64 %37, 256
  store i64 %or28, ptr %data, align 8
  br label %for.inc

sw.bb29:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data, align 8
  %or30 = or i64 %39, 512
  store i64 %or30, ptr %data, align 8
  br label %for.inc

sw.bb31:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %data, align 8
  %or32 = or i64 %41, 1024
  store i64 %or32, ptr %data, align 8
  br label %for.inc

sw.bb33:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %data, align 8
  %or34 = or i64 %43, 2048
  store i64 %or34, ptr %data, align 8
  br label %for.inc

sw.bb35:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data, align 8
  %or36 = or i64 %45, 4096
  store i64 %or36, ptr %data, align 8
  br label %for.inc

sw.bb37:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %data, align 8
  %or38 = or i64 %47, 8192
  store i64 %or38, ptr %data, align 8
  br label %for.inc

sw.bb39:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %data, align 8
  %or40 = or i64 %49, 16384
  store i64 %or40, ptr %data, align 8
  br label %for.inc

sw.bb41:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %data, align 8
  %or42 = or i64 %51, 32768
  store i64 %or42, ptr %data, align 8
  br label %for.inc

sw.bb43:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %data, align 8
  %or44 = or i64 %53, 65536
  store i64 %or44, ptr %data, align 8
  br label %for.inc

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 921, i32 noundef 9, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb12, %for.body.for.inc_crit_edge
  %54 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %engine_nr, align 4
  %add = add nsw i32 %engn.097, 1
  %call64 = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %55, i32 noundef %add) #9
  %56 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %engine_nr, align 4
  %cmp6 = icmp slt i32 %call64, %57
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %engm) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %sw.bb ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_oneinit(ptr noundef %base) #0 align 64 {
entry:
  %_en = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %call = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %1) #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %pbdma = getelementptr inbounds %struct.gk104_fifo_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pbdma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbdma, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %7(ptr noundef %add.ptr) #9
  %pbdma_nr = getelementptr i8, ptr %base, i32 1252
  %8 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %pbdma_nr, align 4
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ugt i32 %10, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %call4) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pbdma_nr, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #9
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end.cleanup195_crit_edge, label %if.end7.i.i, !prof !473

if.end.cleanup195_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end7.i.i:                                      ; preds = %if.end
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup195_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup195_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

for.cond.preheader:                               ; preds = %if.end7.i.i
  %20 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pbdma_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15307 = icmp sgt i32 %21, 0
  br i1 %cmp15307, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0308 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0308, 2
  %add = add i32 %mul, 9104
  %add.ptr16 = getelementptr i8, ptr %23, i32 %add
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.0308
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0308, 1
  %26 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pbdma_nr, align 4
  %cmp15 = icmp slt i32 %inc, %27
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %top = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 23
  %28 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %top, align 8
  %device20 = getelementptr inbounds %struct.nvkm_top, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn312 = load ptr, ptr %device20, align 4
  %cmp26.not315 = icmp eq ptr %.pn312, %device20
  br i1 %cmp26.not315, label %for.end.for.end127_crit_edge, label %for.body27.lr.ph

for.end.for.end127_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end127

for.body27.lr.ph:                                 ; preds = %for.end
  %engine44 = getelementptr i8, ptr %base, i32 1256
  %name75 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %runlist93 = getelementptr i8, ptr %base, i32 1452
  %runlist_nr = getelementptr i8, ptr %base, i32 2860
  br label %for.body27

for.body27:                                       ; preds = %cleanup.for.body27_crit_edge, %for.body27.lr.ph
  %.pn316 = phi ptr [ %.pn312, %for.body27.lr.ph ], [ %.pn, %cleanup.for.body27_crit_edge ]
  %tdev.0317 = getelementptr i8, ptr %.pn316, i32 -32
  %engine28 = getelementptr i8, ptr %.pn316, i32 -16
  %31 = ptrtoint ptr %engine28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %engine28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_en) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp29 = icmp slt i32 %32, 0
  %33 = call ptr @memset(ptr %_en, i32 255, i32 16)
  br i1 %cmp29, label %for.body27.cleanup_crit_edge, label %for.cond32.preheader

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond32.preheader:                             ; preds = %for.body27
  %34 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pbdma_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp34309 = icmp sgt i32 %35, 0
  br i1 %cmp34309, label %for.body35.lr.ph, label %for.cond32.preheader.for.end42_crit_edge

for.cond32.preheader.for.end42_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body35.lr.ph:                                 ; preds = %for.cond32.preheader
  %runlist = getelementptr i8, ptr %.pn316, i32 -12
  %36 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %runlist, align 4
  %shl = shl nuw i32 1, %37
  br label %for.body35

for.body35:                                       ; preds = %for.inc40.for.body35_crit_edge, %for.body35.lr.ph
  %j.0310 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc41, %for.inc40.for.body35_crit_edge ]
  %arrayidx36 = getelementptr i32, ptr %call8.i.i, i32 %j.0310
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36, align 4
  %and = and i32 %shl, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %for.inc40, label %for.body35.for.end42_crit_edge

for.body35.for.end42_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.inc40:                                        ; preds = %for.body35
  %inc41 = add nuw nsw i32 %j.0310, 1
  %exitcond.not = icmp eq i32 %inc41, %35
  br i1 %exitcond.not, label %for.inc40.for.end42_crit_edge, label %for.inc40.for.body35_crit_edge

for.inc40.for.body35_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %for.body35.for.end42_crit_edge, %for.cond32.preheader.for.end42_crit_edge
  %pbid.0 = phi i32 [ -1, %for.cond32.preheader.for.end42_crit_edge ], [ %j.0310, %for.body35.for.end42_crit_edge ], [ -1, %for.inc40.for.end42_crit_edge ]
  %40 = ptrtoint ptr %tdev.0317 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tdev.0317, align 4
  %inst = getelementptr i8, ptr %.pn316, i32 -28
  %42 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inst, align 4
  %call43 = call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef %41, i32 noundef %43) #9
  %arrayidx45 = getelementptr [16 x %struct.anon.143], ptr %engine44, i32 0, i32 %32
  %44 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call43, ptr %arrayidx45, align 4
  %tobool50.not = icmp eq ptr %call43, null
  br i1 %tobool50.not, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %tdev.0317 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tdev.0317, align 4
  %arrayidx54 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx54, align 4
  %49 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inst, align 4
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_en, i32 noundef 16, ptr noundef nonnull @.str.27, ptr noundef %48, i32 noundef %50)
  br label %do.body65

if.else:                                          ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  %name62 = getelementptr inbounds %struct.nvkm_engine, ptr %call43, i32 0, i32 1, i32 4
  br label %do.body65

do.body65:                                        ; preds = %if.else, %if.then51
  %en.0 = phi ptr [ %name62, %if.else ], [ %_en, %if.then51 ]
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp68 = icmp ugt i32 %52, 3
  br i1 %cmp68, label %do.end72, label %do.body65.if.end79_crit_edge

do.body65.if.end79_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end72:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device3, align 4
  %dev74 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev74, align 8
  %57 = ptrtoint ptr %engine28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %engine28, align 4
  %runlist78 = getelementptr i8, ptr %.pn316, i32 -12
  %59 = ptrtoint ptr %runlist78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %runlist78, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.29, ptr noundef %name75, i32 noundef %58, i32 noundef %60, i32 noundef %pbid.0, ptr noundef %en.0) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end72, %do.body65.if.end79_crit_edge
  %runlist82 = getelementptr i8, ptr %.pn316, i32 -12
  %61 = ptrtoint ptr %runlist82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %runlist82, align 4
  %runl = getelementptr inbounds %struct.anon.143, ptr %arrayidx45, i32 0, i32 1
  %63 = ptrtoint ptr %runl to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %runl, align 4
  %pbid87 = getelementptr inbounds %struct.anon.143, ptr %arrayidx45, i32 0, i32 2
  %64 = ptrtoint ptr %pbid87 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %pbid.0, ptr %pbid87, align 4
  %65 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %engine_nr, align 4
  %add88 = add i32 %32, 1
  %67 = call i32 @llvm.smax.i32(i32 %66, i32 %add88)
  %68 = ptrtoint ptr %engine_nr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %engine_nr, align 4
  %shl92 = shl nuw i32 1, %32
  %69 = ptrtoint ptr %runlist82 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %runlist82, align 4
  %arrayidx95 = getelementptr [16 x %struct.anon.144], ptr %runlist93, i32 0, i32 %70
  %engm = getelementptr inbounds %struct.anon.144, ptr %arrayidx95, i32 0, i32 5
  %71 = ptrtoint ptr %engm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %engm, align 4
  %or = or i32 %72, %shl92
  store i32 %or, ptr %engm, align 4
  %73 = load i32, ptr %runlist82, align 4
  %arrayidx99 = getelementptr [16 x %struct.anon.144], ptr %runlist93, i32 0, i32 %73
  %engm_sw = getelementptr inbounds %struct.anon.144, ptr %arrayidx99, i32 0, i32 6
  %74 = ptrtoint ptr %engm_sw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %engm_sw, align 4
  %or100 = or i32 %75, %shl92
  store i32 %or100, ptr %engm_sw, align 4
  %76 = ptrtoint ptr %tdev.0317 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tdev.0317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %77)
  %cmp102 = icmp eq i32 %77, 33
  br i1 %cmp102, label %if.then103, label %if.end79.if.end109_crit_edge

if.end79.if.end109_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then103:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %runlist82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %runlist82, align 4
  %arrayidx106 = getelementptr [16 x %struct.anon.144], ptr %runlist93, i32 0, i32 %79
  %engm_sw107 = getelementptr inbounds %struct.anon.144, ptr %arrayidx106, i32 0, i32 6
  %80 = ptrtoint ptr %engm_sw107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %engm_sw107, align 4
  %or108 = or i32 %81, 32768
  store i32 %or108, ptr %engm_sw107, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %if.end79.if.end109_crit_edge
  %82 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %runlist_nr, align 4
  %84 = ptrtoint ptr %runlist82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %runlist82, align 4
  %add111 = add i32 %85, 1
  %86 = call i32 @llvm.smax.i32(i32 %83, i32 %add111)
  %87 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %runlist_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %for.body27.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_en) #9
  %88 = ptrtoint ptr %.pn316 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load ptr, ptr %.pn316, align 4
  %89 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %top, align 8
  %device25 = getelementptr inbounds %struct.nvkm_top, ptr %90, i32 0, i32 2
  %cmp26.not = icmp eq ptr %.pn, %device25
  br i1 %cmp26.not, label %cleanup.for.end127_crit_edge, label %cleanup.for.body27_crit_edge

cleanup.for.body27_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

cleanup.for.end127_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end127

for.end127:                                       ; preds = %cleanup.for.end127_crit_edge, %for.end.for.end127_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  %runlist_nr129 = getelementptr i8, ptr %base, i32 2860
  %91 = ptrtoint ptr %runlist_nr129 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %runlist_nr129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp130319 = icmp sgt i32 %92, 0
  br i1 %cmp130319, label %for.cond132.preheader.lr.ph, label %for.end127.for.end163_crit_edge

for.end127.for.end163_crit_edge:                  ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end163

for.cond132.preheader.lr.ph:                      ; preds = %for.end127
  %nr136 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 3
  %runlist142 = getelementptr i8, ptr %base, i32 1452
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond132.1.for.cond132.preheader_crit_edge, %for.cond132.preheader.lr.ph
  %i.1320 = phi i32 [ 0, %for.cond132.preheader.lr.ph ], [ %inc162, %for.cond132.1.for.cond132.preheader_crit_edge ]
  %arrayidx143 = getelementptr [16 x %struct.anon.144], ptr %runlist142, i32 0, i32 %i.1320
  %93 = ptrtoint ptr %nr136 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr136, align 4
  %mul137 = shl i32 %94, 1
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 4
  %runlist139 = getelementptr inbounds %struct.gk104_fifo_func, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %runlist139 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %runlist139, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  %conv = zext i8 %100 to i32
  %mul140 = mul i32 %mul137, %conv
  %conv141 = sext i32 %mul140 to i64
  %call145 = call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv141, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %arrayidx143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.cond132, label %for.cond132.preheader.cleanup195_crit_edge

for.cond132.preheader.cleanup195_crit_edge:       ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

for.cond132:                                      ; preds = %for.cond132.preheader
  %101 = ptrtoint ptr %nr136 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr136, align 4
  %mul137.1 = shl i32 %102, 1
  %103 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr, align 4
  %runlist139.1 = getelementptr inbounds %struct.gk104_fifo_func, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %runlist139.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %runlist139.1, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 4
  %conv.1 = zext i8 %108 to i32
  %mul140.1 = mul i32 %mul137.1, %conv.1
  %conv141.1 = sext i32 %mul140.1 to i64
  %arrayidx144.1 = getelementptr [2 x ptr], ptr %arrayidx143, i32 0, i32 1
  %call145.1 = call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv141.1, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %arrayidx144.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.1)
  %tobool146.not.1 = icmp eq i32 %call145.1, 0
  br i1 %tobool146.not.1, label %for.cond132.1, label %for.cond132.cleanup195_crit_edge

for.cond132.cleanup195_crit_edge:                 ; preds = %for.cond132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

for.cond132.1:                                    ; preds = %for.cond132
  %wait = getelementptr inbounds %struct.anon.144, ptr %arrayidx143, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.31, ptr noundef nonnull @gk104_fifo_oneinit.__key) #9
  %cgrp = getelementptr inbounds %struct.anon.144, ptr %arrayidx143, i32 0, i32 3
  %109 = ptrtoint ptr %cgrp to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %cgrp, ptr %cgrp, align 4
  %prev.i = getelementptr inbounds %struct.anon.144, ptr %arrayidx143, i32 0, i32 3, i32 1
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %cgrp, ptr %prev.i, align 4
  %chan = getelementptr inbounds %struct.anon.144, ptr %arrayidx143, i32 0, i32 4
  %111 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %chan, ptr %chan, align 4
  %prev.i304 = getelementptr inbounds %struct.anon.144, ptr %arrayidx143, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %chan, ptr %prev.i304, align 4
  %inc162 = add nuw nsw i32 %i.1320, 1
  %113 = ptrtoint ptr %runlist_nr129 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %runlist_nr129, align 4
  %cmp130 = icmp slt i32 %inc162, %114
  br i1 %cmp130, label %for.cond132.1.for.cond132.preheader_crit_edge, label %for.cond132.1.for.end163_crit_edge

for.cond132.1.for.end163_crit_edge:               ; preds = %for.cond132.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end163

for.cond132.1.for.cond132.preheader_crit_edge:    ; preds = %for.cond132.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond132.preheader

for.end163:                                       ; preds = %for.cond132.1.for.end163_crit_edge, %for.end127.for.end163_crit_edge
  %nr165 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 3
  %115 = ptrtoint ptr %nr165 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr165, align 4
  %mul166 = shl i32 %116, 9
  %conv167 = sext i32 %mul166 to i64
  %user = getelementptr i8, ptr %base, i32 2864
  %call169 = call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv167, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %user) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %for.end163.cleanup195_crit_edge

for.end163.cleanup195_crit_edge:                  ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end172:                                        ; preds = %for.end163
  %117 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %user, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %size176 = getelementptr inbounds %struct.nvkm_memory_func, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %size176 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %size176, align 4
  %call179 = call i64 %122(ptr noundef %118) #9
  %bar181 = getelementptr i8, ptr %base, i32 2868
  %call182 = call i32 @nvkm_vmm_get(ptr noundef %call, i8 noundef zeroext 12, i64 noundef %call179, ptr noundef %bar181) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end172.cleanup195_crit_edge

if.end172.cleanup195_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end185:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %user, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %map189 = getelementptr inbounds %struct.nvkm_memory_func, ptr %126, i32 0, i32 9
  %127 = ptrtoint ptr %map189 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map189, align 4
  %129 = ptrtoint ptr %bar181 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bar181, align 4
  %call194 = call i32 %128(ptr noundef %124, i64 noundef 0, ptr noundef %call, ptr noundef %130, ptr noundef null, i32 noundef 0) #9
  br label %cleanup195

cleanup195:                                       ; preds = %if.end185, %if.end172.cleanup195_crit_edge, %for.end163.cleanup195_crit_edge, %for.cond132.cleanup195_crit_edge, %for.cond132.preheader.cleanup195_crit_edge, %if.end7.i.i.cleanup195_crit_edge, %if.end.cleanup195_crit_edge
  %retval.0 = phi i32 [ %call194, %if.end185 ], [ -12, %if.end7.i.i.cleanup195_crit_edge ], [ %call169, %for.end163.cleanup195_crit_edge ], [ %call182, %if.end172.cleanup195_crit_edge ], [ -12, %if.end.cleanup195_crit_edge ], [ %call145.1, %for.cond132.cleanup195_crit_edge ], [ %call145, %for.cond132.preheader.cleanup195_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_init(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %pbdma = getelementptr inbounds %struct.gk104_fifo_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pbdma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbdma, align 4
  %init = getelementptr inbounds %struct.gk104_fifo_pbdma_func, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  tail call void %7(ptr noundef %add.ptr) #9
  %pbdma_nr = getelementptr i8, ptr %base, i32 1252
  %8 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pbdma_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp90 = icmp sgt i32 %9, 0
  br i1 %cmp90, label %for.body.lr.ph, label %entry.do.body43_crit_edge

entry.do.body43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.cond22.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2492 = icmp sgt i32 %20, 0
  br i1 %cmp2492, label %do.body26.lr.ph, label %for.cond22.preheader.do.body43_crit_edge

for.cond22.preheader.do.body43_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.body26.lr.ph:                                  ; preds = %for.cond22.preheader
  %pri29 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.091, 13
  %add = add i32 %mul, 262460
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  tail call void @arm_heavy_mb() #9
  %and = and i32 %12, -268435713
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add13 = add i32 %mul, 262408
  %add.ptr14 = getelementptr i8, ptr %16, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add20 = add i32 %mul, 262412
  %add.ptr21 = getelementptr i8, ptr %18, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -257) #9, !srcloc !441
  %inc = add nuw nsw i32 %i.091, 1
  %19 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pbdma_nr, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond22.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body26.lr.ph
  %i.193 = phi i32 [ 0, %do.body26.lr.ph ], [ %inc41, %do.body26.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %pri29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri29, align 4
  %mul30 = shl i32 %i.193, 13
  %add31 = add i32 %mul30, 262472
  %add.ptr32 = getelementptr i8, ptr %22, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %pri29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri29, align 4
  %add38 = add i32 %mul30, 262476
  %add.ptr39 = getelementptr i8, ptr %24, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 -1) #9, !srcloc !441
  %inc41 = add nuw nsw i32 %i.193, 1
  %25 = ptrtoint ptr %pbdma_nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pbdma_nr, align 4
  %cmp24 = icmp slt i32 %inc41, %26
  br i1 %cmp24, label %do.body26.do.body26_crit_edge, label %do.body26.do.body43_crit_edge

do.body26.do.body43_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body43:                                        ; preds = %do.body26.do.body43_crit_edge, %for.cond22.preheader.do.body43_crit_edge, %entry.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  %bar = getelementptr i8, ptr %base, i32 2868
  %27 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bar, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %addr, align 8
  %shr = lshr i64 %30, 12
  %31 = trunc i64 %shr to i32
  %conv = or i32 %31, 268435456
  %pri47 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri47, align 4
  %add.ptr48 = getelementptr i8, ptr %33, i32 8788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %conv) #9, !srcloc !441
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %pbdma50 = getelementptr inbounds %struct.gk104_fifo_func, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pbdma50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pbdma50, align 4
  %init_timeout = getelementptr inbounds %struct.gk104_fifo_pbdma_func, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %init_timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_timeout, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %do.body43.do.body54_crit_edge, label %if.then

do.body43.do.body54_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.then:                                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %39(ptr noundef %add.ptr) #9
  br label %do.body54

do.body54:                                        ; preds = %if.then, %do.body43.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri47, align 4
  %add.ptr58 = getelementptr i8, ptr %41, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -1) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri47, align 4
  %add.ptr63 = getelementptr i8, ptr %43, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 2147483647) #9, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_dtor(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %call = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %1) #9
  %user = getelementptr i8, ptr %base, i32 2864
  %bar = getelementptr i8, ptr %base, i32 2868
  tail call void @nvkm_vmm_put(ptr noundef %call, ptr noundef %bar) #9
  tail call void @nvkm_memory_unref(ptr noundef %user) #9
  %runlist_nr = getelementptr i8, ptr %base, i32 2860
  %2 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runlist_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %runlist = getelementptr i8, ptr %base, i32 1452
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.144], ptr %runlist, i32 0, i32 %i.020
  %arrayidx5 = getelementptr [2 x ptr], ptr %arrayidx, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx5) #9
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx) #9
  %inc = add nuw nsw i32 %i.020, 1
  %4 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runlist_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %nr, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2876) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %recover = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %recover, i32 noundef 0) #9
  %2 = ptrtoint ptr %recover to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %recover, align 4
  %lockdep_map = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @gk104_fifo_new_.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8 = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8, ptr %prev.i, align 4
  %func11 = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %func11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gk104_fifo_recover_work, ptr %func11, align 8
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base, ptr %pfifo, align 4
  %call13 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gk104_fifo_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %nr, ptr noundef %base) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_fifo_recover_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -1204
  %device1 = getelementptr i8, ptr %w, i32 -1188
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %lock = getelementptr i8, ptr %w, i32 -472
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %runm9 = getelementptr inbounds %struct.anon.142, ptr %w, i32 0, i32 2
  %2 = ptrtoint ptr %runm9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runm9, align 4
  %engm11 = getelementptr inbounds %struct.anon.142, ptr %w, i32 0, i32 1
  %4 = ptrtoint ptr %engm11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %engm11, align 4
  store i32 0, ptr %engm11, align 4
  store i32 0, ptr %runm9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 9776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %or = or i32 %8, %3
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or) #9, !srcloc !441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not123 = icmp eq i32 %5, 0
  br i1 %tobool.not123, label %entry.for.cond63.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond63.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond63.preheader

for.body.lr.ph:                                   ; preds = %entry
  %11 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #9, !range !469
  %engine28 = getelementptr i8, ptr %w, i32 56
  br label %for.body

for.cond63.preheader:                             ; preds = %for.inc.for.cond63.preheader_crit_edge, %entry.for.cond63.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool65.not125 = icmp eq i32 %3, 0
  br i1 %tobool65.not125, label %for.cond63.preheader.do.body72_crit_edge, label %for.cond63.preheader.for.body66_crit_edge

for.cond63.preheader.for.body66_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body66

for.cond63.preheader.do.body72_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %11, %for.body.lr.ph ], [ %15, %for.inc.for.body_crit_edge ]
  %todo.0124 = phi i32 [ %5, %for.body.lr.ph ], [ %and62, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.143], ptr %engine28, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %14, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %subdev31 = getelementptr inbounds %struct.nvkm_engine, ptr %14, i32 0, i32 1
  %call32 = tail call i32 @nvkm_subdev_fini(ptr noundef %subdev31, i1 noundef zeroext false) #9
  %call34 = tail call i32 @nvkm_subdev_init(ptr noundef %subdev31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then.for.inc_crit_edge, label %do.end47, !prof !486

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end47:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef 9, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end47, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %shl = shl nuw i32 1, %12
  %neg61 = xor i32 %shl, -1
  %and62 = and i32 %todo.0124, %neg61
  %15 = tail call i32 @llvm.cttz.i32(i32 %and62, i1 false) #9, !range !469
  %tobool.not = icmp eq i32 %and62, 0
  br i1 %tobool.not, label %for.inc.for.cond63.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond63.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond63.preheader

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.cond63.preheader.for.body66_crit_edge
  %todo.1126 = phi i32 [ %and70, %for.body66.for.body66_crit_edge ], [ %3, %for.cond63.preheader.for.body66_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %todo.1126, i1 true) #9, !range !469
  tail call void @gk104_fifo_runlist_update(ptr noundef %add.ptr, i32 noundef %16)
  %shl68 = shl nuw i32 1, %16
  %neg69 = xor i32 %shl68, -1
  %and70 = and i32 %todo.1126, %neg69
  %tobool65.not = icmp eq i32 %and70, 0
  br i1 %tobool65.not, label %for.body66.do.body72_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

for.body66.do.body72_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

do.body72:                                        ; preds = %for.body66.do.body72_crit_edge, %for.cond63.preheader.do.body72_crit_edge
  %neg = xor i32 %3, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !487
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %18, i32 9772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %3) #9, !srcloc !441
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr82 = getelementptr i8, ptr %20, i32 9776
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %and89 = and i32 %21, %neg
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr92 = getelementptr i8, ptr %23, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %and89) #9, !srcloc !441
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2876) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.gk104_fifo_new_.exit_crit_edge, label %if.end.i

entry.gk104_fifo_new_.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gk104_fifo, ptr %call7.i.i.i, align 8
  %recover.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %recover.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %recover.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %recover.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @gk104_fifo_new_.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8.i, ptr %entry8.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func11.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %func11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gk104_fifo_recover_work, ptr %func11.i, align 8
  %base.i = getelementptr inbounds %struct.gk104_fifo, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i, ptr %pfifo, align 4
  %call13.i = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gk104_fifo_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 4096, ptr noundef %base.i) #9
  br label %gk104_fifo_new_.exit

gk104_fifo_new_.exit:                             ; preds = %if.end.i, %entry.gk104_fifo_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end.i ], [ -12, %entry.gk104_fifo_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_fifo_intr(ptr noundef %base) #0 align 64 {
entry:
  %engm.i.i = alloca i32, align 4
  %status.i.i = alloca %struct.gk104_fifo_engine_status, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 8448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  %and = and i32 %7, %4
  %and11 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 9516
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %and.i = and i32 %12, 255
  %call3.i = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_bind_reason, i32 noundef %and.i) #9
  %debug.i = getelementptr i8, ptr %base, i32 40
  %13 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.then.gk104_fifo_intr_bind.exit_crit_edge, label %do.end.i

if.then.gk104_fifo_intr_bind.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_bind.exit

do.end.i:                                         ; preds = %if.then
  %15 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %base, i32 24
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name6.i = getelementptr inbounds %struct.nvkm_enum, ptr %call3.i, i32 0, i32 1
  %19 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name6.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %20, %cond.true.i ], [ @.str.15, %do.end.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef %and.i, ptr noundef %cond.i) #12
  br label %gk104_fifo_intr_bind.exit

gk104_fifo_intr_bind.exit:                        ; preds = %cond.end.i, %if.then.gk104_fifo_intr_bind.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1) #9, !srcloc !441
  %and14 = and i32 %and, -2
  br label %if.end

if.end:                                           ; preds = %gk104_fifo_intr_bind.exit, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and14, %gk104_fifo_intr_bind.exit ], [ %and, %entry.if.end_crit_edge ]
  %and15 = and i32 %stat.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end33_crit_edge, label %do.body18

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.body18:                                        ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %do.body18.if.end24_crit_edge, label %do.end22

do.body18.if.end24_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end22:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.178, ptr noundef %name) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %do.body18.if.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %30, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16) #9, !srcloc !441
  %and32 = and i32 %stat.0, -17
  br label %if.end33

if.end33:                                         ; preds = %if.end24, %if.end.if.end33_crit_edge
  %stat.1 = phi i32 [ %and32, %if.end24 ], [ %stat.0, %if.end.if.end33_crit_edge ]
  %and34 = and i32 %stat.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end43_crit_edge, label %if.then36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then36:                                        ; preds = %if.end33
  %31 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device3, align 4
  %pri.i287 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %pri.i287 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri.i287, align 4
  %add.ptr.i288 = getelementptr i8, ptr %34, i32 9548
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i288) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  %and.i289 = and i32 %35, 255
  %call3.i290 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_sched_reason, i32 noundef %and.i289) #9
  %debug.i291 = getelementptr i8, ptr %base, i32 40
  %36 = ptrtoint ptr %debug.i291 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug.i291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i292 = icmp eq i32 %37, 0
  br i1 %cmp.not.i292, label %if.then36.if.end.i_crit_edge, label %do.end.i296

if.then36.if.end.i_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i296:                                      ; preds = %if.then36
  %38 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device3, align 4
  %dev.i293 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev.i293 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i293, align 8
  %name.i294 = getelementptr i8, ptr %base, i32 24
  %tobool.not.i295 = icmp eq ptr %call3.i290, null
  br i1 %tobool.not.i295, label %do.end.i296.cond.end.i300_crit_edge, label %cond.true.i298

do.end.i296.cond.end.i300_crit_edge:              ; preds = %do.end.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i300

cond.true.i298:                                   ; preds = %do.end.i296
  call void @__sanitizer_cov_trace_pc() #11
  %name6.i297 = getelementptr inbounds %struct.nvkm_enum, ptr %call3.i290, i32 0, i32 1
  %42 = ptrtoint ptr %name6.i297 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name6.i297, align 4
  br label %cond.end.i300

cond.end.i300:                                    ; preds = %cond.true.i298, %do.end.i296.cond.end.i300_crit_edge
  %cond.i299 = phi ptr [ %43, %cond.true.i298 ], [ @.str.15, %do.end.i296.cond.end.i300_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.189, ptr noundef %name.i294, i32 noundef %and.i289, ptr noundef %cond.i299) #12
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i300, %if.then36.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i289)
  %cond9.i = icmp eq i32 %and.i289, 10
  br i1 %cond9.i, label %sw.bb.i, label %if.end.i.gk104_fifo_intr_sched.exit_crit_edge

if.end.i.gk104_fifo_intr_sched.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_sched.exit

sw.bb.i:                                          ; preds = %if.end.i
  %44 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %engm.i.i) #9
  %46 = ptrtoint ptr %engm.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %engm.i.i, align 4
  %lock.i.i = getelementptr i8, ptr %base, i32 728
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %47 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 8512
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !496
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %49, -257
  %50 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %51, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %and.i.i) #9, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri.i.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %53, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 256) #9, !srcloc !441
  %engine_nr.i.i = getelementptr i8, ptr %base, i32 1448
  %54 = ptrtoint ptr %engine_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %engine_nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp2075.not.i.i = icmp eq i32 %55, 0
  br i1 %cmp2075.not.i.i, label %sw.bb.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb.i.for.end.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb.i
  %chsw.i.i = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status.i.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %engn.076.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status.i.i) #9
  %56 = call ptr @memset(ptr %status.i.i, i32 255, i32 28)
  call void @gk104_fifo_engine_status(ptr noundef %add.ptr, i32 noundef %engn.076.i.i, ptr noundef nonnull %status.i.i) #9
  %57 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %status.i.i, align 4, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %59 = ptrtoint ptr %chsw.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %chsw.i.i, align 2, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool22.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool22.not.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl nuw i32 1, %engn.076.i.i
  %61 = ptrtoint ptr %engm.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %engm.i.i, align 4
  %or23.i.i = or i32 %62, %shl.i.i
  store i32 %or23.i.i, ptr %engm.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status.i.i) #9
  %inc.i.i = add nuw i32 %engn.076.i.i, 1
  %63 = ptrtoint ptr %engine_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %engine_nr.i.i, align 4
  %cmp20.i.i = icmp ult i32 %inc.i.i, %64
  br i1 %cmp20.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.for.end.i.i_crit_edge

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %sw.bb.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %sw.bb.i.for.end.i.i_crit_edge ], [ %64, %cleanup.i.i.for.end.i.i_crit_edge ]
  %call25.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %engm.i.i, i32 noundef %.lcssa.i.i, i32 noundef 0) #9
  %65 = ptrtoint ptr %engine_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %engine_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25.i.i, i32 %66)
  %cmp2878.i.i = icmp ult i32 %call25.i.i, %66
  br i1 %cmp2878.i.i, label %for.end.i.i.for.body30.i.i_crit_edge, label %for.end.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge

for.end.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_sched_ctxsw.exit.i

for.end.i.i.for.body30.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body30.i.i

for.body30.i.i:                                   ; preds = %for.body30.i.i.for.body30.i.i_crit_edge, %for.end.i.i.for.body30.i.i_crit_edge
  %engn.179.i.i = phi i32 [ %call33.i.i, %for.body30.i.i.for.body30.i.i_crit_edge ], [ %call25.i.i, %for.end.i.i.for.body30.i.i_crit_edge ]
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %engn.179.i.i) #9
  %67 = ptrtoint ptr %engine_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %engine_nr.i.i, align 4
  %add.i.i = add nuw i32 %engn.179.i.i, 1
  %call33.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %engm.i.i, i32 noundef %68, i32 noundef %add.i.i) #9
  %69 = ptrtoint ptr %engine_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %engine_nr.i.i, align 4
  %cmp28.i.i = icmp ult i32 %call33.i.i, %70
  br i1 %cmp28.i.i, label %for.body30.i.i.for.body30.i.i_crit_edge, label %for.body30.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge

for.body30.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge: ; preds = %for.body30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_sched_ctxsw.exit.i

for.body30.i.i.for.body30.i.i_crit_edge:          ; preds = %for.body30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i.i

gk104_fifo_intr_sched_ctxsw.exit.i:               ; preds = %for.body30.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge, %for.end.i.i.gk104_fifo_intr_sched_ctxsw.exit.i_crit_edge
  %71 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri.i.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %72, i32 8512
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !498
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !499
  call void @arm_heavy_mb() #9
  %or47.i.i = or i32 %73, 256
  %74 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i.i, align 4
  %add.ptr49.i.i = getelementptr i8, ptr %75, i32 8512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i.i, i32 %or47.i.i) #9, !srcloc !441
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %engm.i.i) #9
  br label %gk104_fifo_intr_sched.exit

gk104_fifo_intr_sched.exit:                       ; preds = %gk104_fifo_intr_sched_ctxsw.exit.i, %if.end.i.gk104_fifo_intr_sched.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !500
  call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %77, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 256) #9, !srcloc !441
  %and42 = and i32 %stat.1, -257
  br label %if.end43

if.end43:                                         ; preds = %gk104_fifo_intr_sched.exit, %if.end33.if.end43_crit_edge
  %stat.2 = phi i32 [ %and42, %gk104_fifo_intr_sched.exit ], [ %stat.1, %if.end33.if.end43_crit_edge ]
  %and44 = and i32 %stat.2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end53_crit_edge, label %if.then46

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then46:                                        ; preds = %if.end43
  %78 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device3, align 4
  %pri.i302 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %pri.i302 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri.i302, align 4
  %add.ptr.i303 = getelementptr i8, ptr %81, i32 9580
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  %debug.i304 = getelementptr i8, ptr %base, i32 40
  %83 = ptrtoint ptr %debug.i304 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %debug.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not.i305 = icmp eq i32 %84, 0
  br i1 %cmp.not.i305, label %if.then46.gk104_fifo_intr_chsw.exit_crit_edge, label %do.end.i308

if.then46.gk104_fifo_intr_chsw.exit_crit_edge:    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_chsw.exit

do.end.i308:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device3, align 4
  %dev.i306 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev.i306 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i306, align 8
  %name.i307 = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.16, ptr noundef %name.i307, i32 noundef %82) #12
  br label %gk104_fifo_intr_chsw.exit

gk104_fifo_intr_chsw.exit:                        ; preds = %do.end.i308, %if.then46.gk104_fifo_intr_chsw.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %pri.i302 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i302, align 4
  %add.ptr11.i = getelementptr i8, ptr %90, i32 9580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %82) #9, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !501
  call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %92, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 65536) #9, !srcloc !441
  %and52 = and i32 %stat.2, -65537
  br label %if.end53

if.end53:                                         ; preds = %gk104_fifo_intr_chsw.exit, %if.end43.if.end53_crit_edge
  %stat.3 = phi i32 [ %and52, %gk104_fifo_intr_chsw.exit ], [ %stat.2, %if.end43.if.end53_crit_edge ]
  %and54 = and i32 %stat.3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end78_crit_edge, label %do.body57

if.end53.if.end78_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.body57:                                        ; preds = %if.end53
  %debug59 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %93 = ptrtoint ptr %debug59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %debug59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp60.not = icmp eq i32 %94, 0
  br i1 %cmp60.not, label %do.body57.if.end69_crit_edge, label %do.end64

do.body57.if.end69_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end64:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device3, align 4
  %dev66 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev66, align 8
  %name67 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.181, ptr noundef %name67) #12
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %do.body57.if.end69_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !502
  call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %100, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 8388608) #9, !srcloc !441
  %and77 = and i32 %stat.3, -8388609
  br label %if.end78

if.end78:                                         ; preds = %if.end69, %if.end53.if.end78_crit_edge
  %stat.4 = phi i32 [ %and77, %if.end69 ], [ %stat.3, %if.end53.if.end78_crit_edge ]
  %and79 = and i32 %stat.4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end103_crit_edge, label %do.body82

if.end78.if.end103_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

do.body82:                                        ; preds = %if.end78
  %debug84 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %101 = ptrtoint ptr %debug84 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp85.not = icmp eq i32 %102, 0
  br i1 %cmp85.not, label %do.body82.if.end94_crit_edge, label %do.end89

do.body82.if.end94_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end89:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device3, align 4
  %dev91 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev91, align 8
  %name92 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.184, ptr noundef %name92) #12
  br label %if.end94

if.end94:                                         ; preds = %do.end89, %do.body82.if.end94_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !503
  call void @arm_heavy_mb() #9
  %107 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri, align 4
  %add.ptr101 = getelementptr i8, ptr %108, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 16777216) #9, !srcloc !441
  %and102 = and i32 %stat.4, -16777217
  br label %if.end103

if.end103:                                        ; preds = %if.end94, %if.end78.if.end103_crit_edge
  %stat.5 = phi i32 [ %and102, %if.end94 ], [ %stat.4, %if.end78.if.end103_crit_edge ]
  %and104 = and i32 %stat.5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end113_crit_edge, label %if.then106

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then106:                                       ; preds = %if.end103
  %109 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device3, align 4
  %pri.i311 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 11
  %111 = ptrtoint ptr %pri.i311 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri.i311, align 4
  %add.ptr.i312 = getelementptr i8, ptr %112, i32 9628
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  %debug.i313 = getelementptr i8, ptr %base, i32 40
  %114 = ptrtoint ptr %debug.i313 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %debug.i313, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.not.i314 = icmp eq i32 %115, 0
  br i1 %cmp.not.i314, label %if.then106.gk104_fifo_intr_dropped_fault.exit_crit_edge, label %do.end.i317

if.then106.gk104_fifo_intr_dropped_fault.exit_crit_edge: ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_dropped_fault.exit

do.end.i317:                                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device3, align 4
  %dev.i315 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %dev.i315 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i315, align 8
  %name.i316 = getelementptr i8, ptr %base, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.18, ptr noundef %name.i316, i32 noundef %113) #12
  br label %gk104_fifo_intr_dropped_fault.exit

gk104_fifo_intr_dropped_fault.exit:               ; preds = %do.end.i317, %if.then106.gk104_fifo_intr_dropped_fault.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !504
  call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pri, align 4
  %add.ptr111 = getelementptr i8, ptr %121, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 134217728) #9, !srcloc !441
  %and112 = and i32 %stat.5, -134217729
  br label %if.end113

if.end113:                                        ; preds = %gk104_fifo_intr_dropped_fault.exit, %if.end103.if.end113_crit_edge
  %stat.6 = phi i32 [ %and112, %gk104_fifo_intr_dropped_fault.exit ], [ %stat.5, %if.end103.if.end113_crit_edge ]
  %and114 = and i32 %stat.6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end134_crit_edge, label %if.then116

if.end113.if.end134_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then116:                                       ; preds = %if.end113
  %122 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri, align 4
  %add.ptr120 = getelementptr i8, ptr %123, i32 9628
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool123.not323 = icmp eq i32 %124, 0
  br i1 %tobool123.not323, label %if.then116.while.end_crit_edge, label %if.then116.while.body_crit_edge

if.then116.while.body_crit_edge:                  ; preds = %if.then116
  br label %while.body

if.then116.while.end_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then116.while.body_crit_edge
  %mask117.0324 = phi i32 [ %and132, %while.body.while.body_crit_edge ], [ %124, %if.then116.while.body_crit_edge ]
  %125 = call i32 @llvm.cttz.i32(i32 %mask117.0324, i1 true) #9, !range !469
  %126 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  call void %129(ptr noundef %base, i32 noundef %125) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !506
  call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %125
  %130 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri, align 4
  %add.ptr130 = getelementptr i8, ptr %131, i32 9628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %shl) #9, !srcloc !441
  %neg = xor i32 %shl, -1
  %and132 = and i32 %mask117.0324, %neg
  %tobool123.not = icmp eq i32 %and132, 0
  br i1 %tobool123.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then116.while.end_crit_edge
  %and133 = and i32 %stat.6, -268435457
  br label %if.end134

if.end134:                                        ; preds = %while.end, %if.end113.if.end134_crit_edge
  %stat.7 = phi i32 [ %and133, %while.end ], [ %stat.6, %if.end113.if.end134_crit_edge ]
  %and135 = and i32 %stat.7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end134.if.end160_crit_edge, label %if.then137

if.end134.if.end160_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then137:                                       ; preds = %if.end134
  %132 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri, align 4
  %add.ptr141 = getelementptr i8, ptr %133, i32 9632
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !507
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool145.not325 = icmp eq i32 %134, 0
  br i1 %tobool145.not325, label %if.then137.while.end158_crit_edge, label %if.then137.while.body146_crit_edge

if.then137.while.body146_crit_edge:               ; preds = %if.then137
  br label %while.body146

if.then137.while.end158_crit_edge:                ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end158

while.body146:                                    ; preds = %while.body146.while.body146_crit_edge, %if.then137.while.body146_crit_edge
  %mask138.0326 = phi i32 [ %and157, %while.body146.while.body146_crit_edge ], [ %134, %if.then137.while.body146_crit_edge ]
  %135 = call i32 @llvm.cttz.i32(i32 %mask138.0326, i1 true) #9, !range !469
  call void @gk104_fifo_intr_pbdma_0(ptr noundef %add.ptr, i32 noundef %135)
  call void @gk104_fifo_intr_pbdma_1(ptr noundef %add.ptr, i32 noundef %135)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !508
  call void @arm_heavy_mb() #9
  %shl152 = shl nuw i32 1, %135
  %136 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri, align 4
  %add.ptr154 = getelementptr i8, ptr %137, i32 9632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %shl152) #9, !srcloc !441
  %neg156 = xor i32 %shl152, -1
  %and157 = and i32 %mask138.0326, %neg156
  %tobool145.not = icmp eq i32 %and157, 0
  br i1 %tobool145.not, label %while.body146.while.end158_crit_edge, label %while.body146.while.body146_crit_edge

while.body146.while.body146_crit_edge:            ; preds = %while.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body146

while.body146.while.end158_crit_edge:             ; preds = %while.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end158

while.end158:                                     ; preds = %while.body146.while.end158_crit_edge, %if.then137.while.end158_crit_edge
  %and159 = and i32 %stat.7, -536870913
  br label %if.end160

if.end160:                                        ; preds = %while.end158, %if.end134.if.end160_crit_edge
  %stat.8 = phi i32 [ %and159, %while.end158 ], [ %stat.7, %if.end134.if.end160_crit_edge ]
  %and161 = and i32 %stat.8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end165_crit_edge, label %if.then163

if.end160.if.end165_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then163:                                       ; preds = %if.end160
  %138 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %device3, align 4
  %pri.i319 = getelementptr inbounds %struct.nvkm_device, ptr %139, i32 0, i32 11
  %140 = ptrtoint ptr %pri.i319 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri.i319, align 4
  %add.ptr.i320 = getelementptr i8, ptr %141, i32 10752
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not12.i = icmp eq i32 %142, 0
  br i1 %tobool.not12.i, label %if.then163.gk104_fifo_intr_runlist.exit_crit_edge, label %if.then163.while.body.i_crit_edge

if.then163.while.body.i_crit_edge:                ; preds = %if.then163
  br label %while.body.i

if.then163.gk104_fifo_intr_runlist.exit_crit_edge: ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_runlist.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then163.while.body.i_crit_edge
  %mask.013.i = phi i32 [ %and.i321, %while.body.i.while.body.i_crit_edge ], [ %142, %if.then163.while.body.i_crit_edge ]
  %143 = call i32 @llvm.cttz.i32(i32 %mask.013.i, i1 true) #9, !range !469
  %wait.i = getelementptr %struct.gk104_fifo, ptr %add.ptr, i32 0, i32 6, i32 %143, i32 2
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  call void @arm_heavy_mb() #9
  %shl.i = shl nuw i32 1, %143
  %144 = ptrtoint ptr %pri.i319 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri.i319, align 4
  %add.ptr4.i = getelementptr i8, ptr %145, i32 10752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %shl.i) #9, !srcloc !441
  %neg.i = xor i32 %shl.i, -1
  %and.i321 = and i32 %mask.013.i, %neg.i
  %tobool.not.i322 = icmp eq i32 %and.i321, 0
  br i1 %tobool.not.i322, label %while.body.i.gk104_fifo_intr_runlist.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.gk104_fifo_intr_runlist.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_intr_runlist.exit

gk104_fifo_intr_runlist.exit:                     ; preds = %while.body.i.gk104_fifo_intr_runlist.exit_crit_edge, %if.then163.gk104_fifo_intr_runlist.exit_crit_edge
  %and164 = and i32 %stat.8, -1073741825
  br label %if.end165

if.end165:                                        ; preds = %gk104_fifo_intr_runlist.exit, %if.end160.if.end165_crit_edge
  %stat.9 = phi i32 [ %and164, %gk104_fifo_intr_runlist.exit ], [ %stat.8, %if.end160.if.end165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stat.9)
  %tobool167.not = icmp sgt i32 %stat.9, -1
  br i1 %tobool167.not, label %if.end165.if.end175_crit_edge, label %do.body169

if.end165.if.end175_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

do.body169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !509
  call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri, align 4
  %add.ptr173 = getelementptr i8, ptr %147, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 -2147483648) #9, !srcloc !441
  call void @nvkm_fifo_uevent(ptr noundef %base) #9
  %and174 = and i32 %stat.9, 2147483647
  br label %if.end175

if.end175:                                        ; preds = %do.body169, %if.end165.if.end175_crit_edge
  %stat.10 = phi i32 [ %and174, %do.body169 ], [ %stat.9, %if.end165.if.end175_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.10)
  %tobool176.not = icmp eq i32 %stat.10, 0
  br i1 %tobool176.not, label %if.end175.if.end211_crit_edge, label %do.body178

if.end175.if.end211_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

do.body178:                                       ; preds = %if.end175
  %debug180 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %148 = ptrtoint ptr %debug180 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %debug180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp181.not = icmp eq i32 %149, 0
  br i1 %cmp181.not, label %do.body178.if.end190_crit_edge, label %do.end185

do.body178.if.end190_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

do.end185:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device3, align 4
  %dev187 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev187, align 8
  %name188 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.187, ptr noundef %name188, i32 noundef %stat.10) #12
  br label %if.end190

if.end190:                                        ; preds = %do.end185, %do.body178.if.end190_crit_edge
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add.ptr195 = getelementptr i8, ptr %155, i32 8512
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #9, !srcloc !436
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !510
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !511
  call void @arm_heavy_mb() #9
  %neg201 = xor i32 %stat.10, -1
  %and202 = and i32 %156, %neg201
  %157 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri, align 4
  %add.ptr204 = getelementptr i8, ptr %158, i32 8512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %and202) #9, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !512
  call void @arm_heavy_mb() #9
  %159 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri, align 4
  %add.ptr210 = getelementptr i8, ptr %160, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %stat.10) #9, !srcloc !441
  br label %if.end211

if.end211:                                        ; preds = %if.end190, %if.end175.if.end211_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_fifo_fault(ptr noundef %base, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %ct = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ct) #9
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
  %call = tail call ptr @nvkm_enum_find(ptr noundef %6, i32 noundef %conv) #9
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
  %call11 = tail call ptr @nvkm_enum_find(ptr noundef %12, i32 noundef %conv10) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  %hubclient = getelementptr inbounds %struct.gk104_fifo_func, ptr %18, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %hubclient to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hubclient, align 4
  %client = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %client, align 1
  %conv14 = zext i8 %22 to i32
  %call15 = tail call ptr @nvkm_enum_find(ptr noundef %20, i32 noundef %conv14) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpcclient = getelementptr inbounds %struct.gk104_fifo_func, ptr %18, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %gpcclient to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpcclient, align 4
  %client18 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %25 = ptrtoint ptr %client18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %client18, align 1
  %conv19 = zext i8 %26 to i32
  %call20 = tail call ptr @nvkm_enum_find(ptr noundef %24, i32 noundef %conv19) #9
  %gpc = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 5
  %27 = ptrtoint ptr %gpc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gpc, align 2
  %conv21 = zext i8 %28 to i32
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ct, i32 noundef 8, ptr noundef nonnull @.str.197, i32 noundef %conv21)
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
  %call27 = tail call ptr @nvkm_enum_find(ptr noundef %32, i32 noundef %conv26) #9
  %tobool28.not = icmp eq ptr %call11, null
  br i1 %tobool28.not, label %if.then44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %data2 = getelementptr inbounds %struct.nvkm_enum, ptr %call11, i32 0, i32 3
  %35 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data2, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %36, label %sw.default [
    i32 0, label %land.lhs.true.if.else62_crit_edge
    i32 16, label %sw.bb
    i32 12, label %sw.bb32
    i32 34, label %sw.bb33
  ]

land.lhs.true.if.else62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else62

sw.bb:                                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_bar_bar1_reset(ptr noundef %1) #9
  br label %if.else62

sw.bb32:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_bar_bar2_reset(ptr noundef %1) #9
  br label %if.else62

sw.bb33:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %39, i32 5912
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !514
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %42, i32 5912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %40) #9, !srcloc !441
  br label %if.else62

sw.default:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call ptr @nvkm_device_engine(ptr noundef %1, i32 noundef %36, i32 noundef 0) #9
  br label %if.else62

if.then44:                                        ; preds = %if.end
  %43 = ptrtoint ptr %engine9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %engine9, align 8
  %conv47 = zext i8 %44 to i32
  %call48 = tail call ptr @nvkm_top_fault(ptr noundef %1, i32 noundef %conv47) #9
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then44.do.body66_crit_edge, label %if.then50

if.then44.do.body66_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
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
  %en.1 = phi ptr [ %48, %if.else62 ], [ %name, %if.then50 ], [ @.str.15, %if.then44.do.body66_crit_edge ]
  %engine4.3 = phi ptr [ %engine4.0.ph, %if.else62 ], [ %spec.select, %if.then50 ], [ null, %if.then44.do.body66_crit_edge ]
  %lock = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 5
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %inst = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %inst to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %inst, align 8
  %call78 = tail call ptr @nvkm_fifo_chan_inst_locked(ptr noundef %base, i64 noundef %50) #9
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp80.not = icmp eq i32 %52, 0
  br i1 %cmp80.not, label %do.body66.if.end133_crit_edge, label %do.end85

do.body66.if.end133_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  %name92 = getelementptr inbounds %struct.nvkm_enum, ptr %call27, i32 0, i32 1
  %59 = ptrtoint ptr %name92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name92, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end85.cond.end_crit_edge
  %cond = phi ptr [ %60, %cond.true ], [ @.str.15, %do.end85.cond.end_crit_edge ]
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %info, align 8
  %63 = ptrtoint ptr %engine9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %engine9, align 8
  %conv94 = zext i8 %64 to i32
  br i1 %tobool28.not, label %cond.end.cond.end99_crit_edge, label %cond.true96

cond.end.cond.end99_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end99

cond.true96:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end108

cond.true105:                                     ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #11
  %name106 = getelementptr inbounds %struct.nvkm_enum, ptr %ec.0, i32 0, i32 1
  %69 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name106, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.true105, %cond.end99.cond.end108_crit_edge
  %cond109 = phi ptr [ %70, %cond.true105 ], [ @.str.15, %cond.end99.cond.end108_crit_edge ]
  %71 = ptrtoint ptr %reason5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reason5, align 2
  %conv111 = zext i8 %72 to i32
  %tobool112.not = icmp eq ptr %call, null
  br i1 %tobool112.not, label %cond.end108.cond.end116_crit_edge, label %cond.true113

cond.end108.cond.end116_crit_edge:                ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end116

cond.true113:                                     ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  %name114 = getelementptr inbounds %struct.nvkm_enum, ptr %call, i32 0, i32 1
  %73 = ptrtoint ptr %name114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name114, align 4
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true113, %cond.end108.cond.end116_crit_edge
  %cond117 = phi ptr [ %74, %cond.true113 ], [ @.str.15, %cond.end108.cond.end116_crit_edge ]
  %tobool118.not = icmp eq ptr %call78, null
  br i1 %tobool118.not, label %cond.end116.cond.end131_crit_edge, label %cond.true126

cond.end116.cond.end131_crit_edge:                ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end131

cond.true126:                                     ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #11
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
  %cond123218 = phi i32 [ %conv120, %cond.true126 ], [ -1, %cond.end116.cond.end131_crit_edge ]
  %cond132 = phi ptr [ %name128, %cond.true126 ], [ @.str.22, %cond.end116.cond.end131_crit_edge ]
  %79 = ptrtoint ptr %inst to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %inst, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.198, ptr noundef %name87, i32 noundef %conv90, ptr noundef %cond, i64 noundef %62, i32 noundef %conv94, ptr noundef %cond100, i32 noundef %conv102, ptr noundef nonnull %ct, ptr noundef %cond109, i32 noundef %conv111, ptr noundef %cond117, i32 noundef %cond123218, i64 noundef %80, ptr noundef %cond132) #12
  br label %if.end133

if.end133:                                        ; preds = %cond.end131, %do.body66.if.end133_crit_edge
  %tobool136.not = icmp eq ptr %call78, null
  br i1 %tobool136.not, label %if.end133.if.end141_crit_edge, label %if.then137

if.end133.if.end141_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %chid139 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call78, i32 0, i32 5
  %81 = ptrtoint ptr %chid139 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %chid139, align 8
  %conv140 = zext i16 %82 to i32
  call void @gk104_fifo_recover_chan(ptr noundef %base, i32 noundef %conv140)
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end133.if.end141_crit_edge
  %tobool142.not = icmp eq ptr %engine4.3, null
  br i1 %tobool142.not, label %if.end141.if.end155_crit_edge, label %if.then143

if.end141.if.end155_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then143:                                       ; preds = %if.end141
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %engine_id = getelementptr inbounds %struct.nvkm_fifo_func, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %engine_id, align 4
  %call147 = call i32 %86(ptr noundef %base, ptr noundef nonnull %engine4.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call147)
  %cmp151.not = icmp eq i32 %call147, 15
  %or.cond = or i1 %cmp148, %cmp151.not
  br i1 %or.cond, label %if.then143.if.end155_crit_edge, label %if.then153

if.then143.if.end155_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then153:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %call147)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.then143.if.end155_crit_edge, %if.end141.if.end155_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_fifo_recover_chan(ptr noundef %base, i32 noundef %chid) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %engm = alloca i32, align 4
  %status = alloca %struct.gk104_fifo_engine_status, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  %and = lshr i32 %4, 16
  %shr = and i32 %and, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %engm) #9
  %runlist = getelementptr i8, ptr %base, i32 1452
  %arrayidx = getelementptr [16 x %struct.anon.144], ptr %runlist, i32 0, i32 %shr
  %engm7 = getelementptr inbounds %struct.anon.144, ptr %arrayidx, i32 0, i32 5
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
  br i1 %cmp.i.i.not, label %do.body14, label %do.end19, !prof !473

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 381, 0\0A.popsection", ""() #9, !srcloc !516
  unreachable

do.end19:                                         ; preds = %entry
  %and6 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.end19.cleanup56_crit_edge, label %if.end22

do.end19.cleanup56_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %chan.0.le.i = getelementptr i8, ptr %.pn.i, i32 -340
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

for.body29.i:                                     ; preds = %for.cond21.i
  %cgrp.0.i = getelementptr i8, ptr %.pn69.i, i32 -4
  %21 = ptrtoint ptr %cgrp.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cgrp.0.i, align 4
  %cmp30.i = icmp eq i32 %22, %chid
  br i1 %cmp30.i, label %if.then32.i, label %for.body29.i.for.cond21.i_crit_edge

for.body29.i.for.cond21.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.i

if.then32.i:                                      ; preds = %for.body29.i
  %chan34.i = getelementptr i8, ptr %.pn69.i, i32 8
  %23 = ptrtoint ptr %chan34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan34.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %24, i32 -340
  %call.i.i70.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #9
  br i1 %call.i.i70.i, label %if.end.i.i73.i, label %if.then32.i.list_del_init.exit75.i_crit_edge

if.then32.i.list_del_init.exit75.i_crit_edge:     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit75.i

if.end.i.i73.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i, label %if.then39.i, label %list_del_init.exit75.i.gk104_fifo_recover_chid.exit_crit_edge

list_del_init.exit75.i.gk104_fifo_recover_chid.exit_crit_edge: ; preds = %list_del_init.exit75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gk104_fifo_recover_chid.exit

if.then39.i:                                      ; preds = %list_del_init.exit75.i
  %call.i.i76.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn69.i) #9
  br i1 %call.i.i76.i, label %if.end.i.i79.i, label %if.then39.i.list_del_init.exit81.i_crit_edge

if.then39.i.list_del_init.exit81.i_crit_edge:     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit81.i

if.end.i.i79.i:                                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %gk104_fifo_recover_chid.exit

gk104_fifo_recover_chid.exit:                     ; preds = %cleanup.sink.split.i, %list_del_init.exit75.i.gk104_fifo_recover_chid.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr37.i, %list_del_init.exit75.i.gk104_fifo_recover_chid.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool24.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool24.not, label %gk104_fifo_recover_chid.exit.do.body28_crit_edge, label %if.then25

gk104_fifo_recover_chid.exit.do.body28_crit_edge: ; preds = %gk104_fifo_recover_chid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.then25:                                        ; preds = %gk104_fifo_recover_chid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %killed = getelementptr inbounds %struct.gk104_fifo_chan, ptr %retval.0.i, i32 0, i32 5
  %43 = ptrtoint ptr %killed to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %killed, align 4
  tail call void @nvkm_fifo_kevent(ptr noundef %base, i32 noundef %chid) #9
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %gk104_fifo_recover_chid.exit.do.body28_crit_edge, %for.cond21.i.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !517
  tail call void @arm_heavy_mb() #9
  %or = or i32 %4, 2048
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %45, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or) #9, !srcloc !441
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp = icmp ugt i32 %47, 1
  br i1 %cmp, label %do.end39, label %do.body28.if.end41_crit_edge

do.body28.if.end41_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end39:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %51, ptr noundef nonnull @.str.200, ptr noundef %name, i32 noundef %chid) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %do.body28.if.end41_crit_edge
  tail call fastcc void @gk104_fifo_recover_runl(ptr noundef %add.ptr, i32 noundef %shr)
  %engine_nr = getelementptr i8, ptr %base, i32 1448
  %52 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %engine_nr, align 4
  %call44 = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %53, i32 noundef 0) #9
  %54 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %engine_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call44, i32 %55)
  %cmp4698 = icmp ult i32 %call44, %55
  br i1 %cmp4698, label %for.body.lr.ph, label %if.end41.cleanup56_crit_edge

if.end41.cleanup56_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

for.body.lr.ph:                                   ; preds = %if.end41
  %chan47 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %engn.099 = phi i32 [ %call44, %for.body.lr.ph ], [ %call55, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status) #9
  %56 = call ptr @memset(ptr %status, i32 255, i32 28)
  call void @gk104_fifo_engine_status(ptr noundef %add.ptr, i32 noundef %engn.099, ptr noundef nonnull %status)
  %57 = ptrtoint ptr %chan47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan47, align 4
  %tobool48.not = icmp eq ptr %58, null
  br i1 %tobool48.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %add.ptr, i32 noundef %engn.099)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status) #9
  %61 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %engine_nr, align 4
  %add54 = add nuw i32 %engn.099, 1
  %call55 = call i32 @_find_next_bit_be(ptr noundef nonnull %engm, i32 noundef %62, i32 noundef %add54) #9
  %63 = ptrtoint ptr %engine_nr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %engine_nr, align 4
  %cmp46 = icmp ult i32 %call55, %64
  br i1 %cmp46, label %cleanup.for.body_crit_edge, label %cleanup.cleanup56_crit_edge

cleanup.cleanup56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup56:                                        ; preds = %cleanup.cleanup56_crit_edge, %if.end41.cleanup56_crit_edge, %do.end19.cleanup56_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %engm) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk104_fifo_recover_engn(ptr noundef %fifo, i32 noundef %engn) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %status = alloca %struct.gk104_fifo_engine_status, align 4
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 4, i32 %engn
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  %device5 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device5, align 4
  %runl8 = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 4, i32 %engn, i32 1
  %4 = ptrtoint ptr %runl8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runl8, align 4
  %shl = shl nuw i32 1, %engn
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %status) #9
  %6 = call ptr @memset(ptr %status, i32 255, i32 28)
  %lock = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body13, label %do.end18, !prof !473

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !518
  unreachable

do.end18:                                         ; preds = %entry
  %recover = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2
  %engm19 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %engm19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %engm19, align 4
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %do.end18
  %or = or i32 %10, %shl
  %11 = ptrtoint ptr %engm19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %engm19, align 4
  tail call fastcc void @gk104_fifo_recover_runl(ptr noundef %fifo, i32 noundef %5)
  call void @gk104_fifo_engine_status(ptr noundef %fifo, i32 noundef %engn, ptr noundef nonnull %status)
  %chan = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 7
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.anon.152, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @gk104_fifo_recover_chan(ptr noundef %base, i32 noundef %15)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22.if.end29_crit_edge
  %faulted = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %status, i32 0, i32 1
  %16 = ptrtoint ptr %faulted to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %faulted, align 1, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp ne i8 %17, 0
  %tobool31.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool30.not, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %if.end29.do.body155_crit_edge, label %if.then32

if.end29.do.body155_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body155

if.then32:                                        ; preds = %if.end29
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %inst = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inst, align 4
  %call35 = call i32 @nvkm_top_fault_id(ptr noundef %3, i32 noundef %19, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.then36, label %if.then32.do.body83_crit_edge

if.then32.do.body83_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body83

if.then36:                                        ; preds = %if.then32
  %22 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fifo, align 4
  %engine37 = getelementptr inbounds %struct.gk104_fifo_func, ptr %23, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %engine37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %engine37, align 4
  %tobool38.not227 = icmp eq ptr %25, null
  br i1 %tobool38.not227, label %if.then36.do.end67_crit_edge, label %if.then36.land.rhs_crit_edge

if.then36.land.rhs_crit_edge:                     ; preds = %if.then36
  br label %land.rhs

if.then36.do.end67_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.then36.land.rhs_crit_edge
  %en.0228 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %25, %if.then36.land.rhs_crit_edge ]
  %name = getelementptr inbounds %struct.nvkm_enum, ptr %en.0228, i32 0, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %land.rhs.if.end50_crit_edge, label %for.body

land.rhs.if.end50_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.body:                                         ; preds = %land.rhs
  %data2 = getelementptr inbounds %struct.nvkm_enum, ptr %en.0228, i32 0, i32 3
  %28 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data2, align 4
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp42 = icmp eq i32 %29, %31
  br i1 %cmp42, label %land.lhs.true43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true43:                                  ; preds = %for.body
  %inst44 = getelementptr inbounds %struct.nvkm_enum, ptr %en.0228, i32 0, i32 4
  %32 = ptrtoint ptr %inst44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inst44, align 4
  %34 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp47 = icmp eq i32 %33, %35
  br i1 %cmp47, label %if.then48, label %land.lhs.true43.for.inc_crit_edge

land.lhs.true43.for.inc_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %en.0228 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %en.0228, align 4
  br label %if.end50

for.inc:                                          ; preds = %land.lhs.true43.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.nvkm_enum, ptr %en.0228, i32 1
  %tobool38.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool38.not, label %for.inc.if.end50_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.if.end50_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %for.inc.if.end50_crit_edge, %if.then48, %land.rhs.if.end50_crit_edge
  %mmui.1 = phi i32 [ %37, %if.then48 ], [ %call35, %land.rhs.if.end50_crit_edge ], [ %call35, %for.inc.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmui.1)
  %cmp51 = icmp slt i32 %mmui.1, 0
  br i1 %cmp51, label %if.end50.do.end67_crit_edge, label %if.end50.do.body83_crit_edge, !prof !473

if.end50.do.body83_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body83

if.end50.do.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end67:                                         ; preds = %if.end50.do.end67_crit_edge, %if.then36.do.end67_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 450, i32 noundef 9, ptr noundef null) #9
  br label %do.body155

do.body83:                                        ; preds = %if.end50.do.body83_crit_edge, %if.then32.do.body83_crit_edge
  %mmui.2.ph = phi i32 [ %mmui.1, %if.end50.do.body83_crit_edge ], [ %call35, %if.then32.do.body83_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !519
  call void @arm_heavy_mb() #9
  %or86 = or i32 %mmui.2.ph, 256
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %mul = shl i32 %engn, 2
  %add = add i32 %mul, 10800
  %add.ptr = getelementptr i8, ptr %39, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or86) #9, !srcloc !441
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #9
  %40 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #9
  br label %do.body87

do.body87:                                        ; preds = %do.cond92.do.body87_crit_edge, %do.body83
  call void @gk104_fifo_engine_status(ptr noundef %fifo, i32 noundef %engn, ptr noundef nonnull %status)
  %41 = ptrtoint ptr %faulted to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %faulted, align 1, !range !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool89.not = icmp eq i8 %42, 0
  br i1 %tobool89.not, label %do.cond92, label %do.body87.if.end134_crit_edge

do.body87.if.end134_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

do.cond92:                                        ; preds = %do.body87
  %call93 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #9
  %cmp94 = icmp sgt i64 %call93, -1
  br i1 %cmp94, label %do.cond92.do.body87_crit_edge, label %do.end112

do.cond92.do.body87_crit_edge:                    ; preds = %do.cond92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body87

do.end112:                                        ; preds = %do.cond92
  %43 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_wait, align 8
  %device114 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %device114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device114, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %call115 = call ptr @dev_driver_string(ptr noundef %48) #9
  %49 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_wait, align 8
  %device118 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %device118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device118, align 4
  %dev119 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev119, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end112.dev_name.exit_crit_edge

do.end112.dev_name.exit_crit_edge:                ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end112.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %58, %if.end.i ], [ %56, %do.end112.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 466, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call115, ptr noundef %retval.0.i) #9
  br label %if.end134

if.end134:                                        ; preds = %dev_name.exit, %do.body87.if.end134_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !520
  call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr142 = getelementptr i8, ptr %60, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 0) #9, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !521
  call void @arm_heavy_mb() #9
  %shl146 = shl nuw i32 1, %mmui.2.ph
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr148 = getelementptr i8, ptr %62, i32 9628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %shl146) #9, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !522
  call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri, align 4
  %add.ptr153 = getelementptr i8, ptr %64, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 268435456) #9, !srcloc !441
  br label %do.body155

do.body155:                                       ; preds = %if.end134, %do.end67, %if.end29.do.body155_crit_edge
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %65 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp156 = icmp ugt i32 %66, 1
  br i1 %cmp156, label %do.end160, label %do.body155.if.end164_crit_edge

do.body155.if.end164_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

do.end160:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device5, align 4
  %dev162 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev162, align 8
  %name163 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %70, ptr noundef nonnull @.str.192, ptr noundef %name163, i32 noundef %engn) #12
  br label %if.end164

if.end164:                                        ; preds = %do.end160, %do.body155.if.end164_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %71 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %recover) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end164, %do.end18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk104_fifo_recover_runl(ptr noundef %fifo, i32 noundef %runl) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.i.i.not, label %do.body7, label %do.end12, !prof !473

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #9, !srcloc !523
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
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !525
  tail call void @arm_heavy_mb() #9
  %or24 = or i32 %9, %shl
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #9, !srcloc !441
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %do.end32, label %if.end16.if.end34_crit_edge

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %17, ptr noundef nonnull @.str.195, ptr noundef %name, i32 noundef %runl) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end16.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %recover) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_fault_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_fault(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !398, !400, !402, !404, !405, !406, !407, !408, !410, !411, !412, !413, !415, !417, !418, !419, !420, !422, !423, !424, !425}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 76, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gk104_fifo_engine_status._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gk104_fifo_engine_status._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 159, i32 6}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 163, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @gk104_fifo_runlist_commit._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @gk104_fifo_runlist_commit._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @gk104_fifo_runlist, !21, !"gk104_fifo_runlist", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 233, i32 1}
!22 = !{ptr @gk104_fifo_pbdma, !23, !"gk104_fifo_pbdma", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 256, i32 1}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 580, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gk104_fifo_intr_bind._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @gk104_fifo_intr_bind._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 647, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gk104_fifo_intr_chsw._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @gk104_fifo_intr_chsw._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 657, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @gk104_fifo_intr_dropped_fault._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @gk104_fifo_intr_dropped_fault._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 723, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gk104_fifo_intr_pbdma_0._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gk104_fifo_intr_pbdma_0._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 755, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gk104_fifo_intr_pbdma_1._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gk104_fifo_intr_pbdma_1._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 947, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gk104_fifo_oneinit._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gk104_fifo_oneinit._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 974, i32 31}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 981, i32 3}
!60 = !{ptr @gk104_fifo_oneinit._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @gk104_fifo_oneinit._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @gk104_fifo_oneinit.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1007, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gk104_fifo_new_.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1103, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1111, i32 9}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1112, i32 9}
!72 = !{ptr @gk104_fifo_fault_access, !73, !"gk104_fifo_fault_access", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1110, i32 1}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1118, i32 10}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1119, i32 10}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1120, i32 10}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1121, i32 10}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1122, i32 10}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1123, i32 10}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1124, i32 10}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1125, i32 10}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1126, i32 10}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1127, i32 10}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1128, i32 10}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1129, i32 10}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1130, i32 10}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1131, i32 10}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1132, i32 10}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1133, i32 10}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1134, i32 10}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1135, i32 10}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1136, i32 10}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1137, i32 10}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1138, i32 10}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1139, i32 10}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1140, i32 10}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1141, i32 10}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1142, i32 10}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1143, i32 10}
!126 = !{ptr @gk104_fifo_fault_engine, !127, !"gk104_fifo_fault_engine", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1117, i32 1}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1149, i32 10}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1150, i32 10}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1151, i32 10}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1152, i32 10}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1153, i32 10}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1154, i32 10}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1155, i32 10}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1156, i32 10}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1157, i32 10}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1158, i32 10}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1159, i32 10}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1160, i32 10}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1161, i32 10}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1162, i32 10}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1163, i32 10}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1164, i32 10}
!160 = !{ptr @gk104_fifo_fault_reason, !161, !"gk104_fifo_fault_reason", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1148, i32 1}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1170, i32 10}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1173, i32 10}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1174, i32 10}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1175, i32 10}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1176, i32 10}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1177, i32 10}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1178, i32 10}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1179, i32 10}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1180, i32 10}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1184, i32 10}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1185, i32 10}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1186, i32 10}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1189, i32 10}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1190, i32 10}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1191, i32 10}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1192, i32 10}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1193, i32 10}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1194, i32 10}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1196, i32 10}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1197, i32 10}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1199, i32 10}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1200, i32 10}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1201, i32 10}
!208 = !{ptr @gk104_fifo_fault_hubclient, !209, !"gk104_fifo_fault_hubclient", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1169, i32 1}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1207, i32 10}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1207, i32 28}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1207, i32 46}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1208, i32 10}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1208, i32 28}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1208, i32 46}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1209, i32 10}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1209, i32 28}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1209, i32 46}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1210, i32 10}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1210, i32 28}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1210, i32 46}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1211, i32 10}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1212, i32 10}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1213, i32 10}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1214, i32 10}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1215, i32 10}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1216, i32 10}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1217, i32 10}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1218, i32 10}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1218, i32 28}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1218, i32 46}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1219, i32 10}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1219, i32 28}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1219, i32 46}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1220, i32 10}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1220, i32 28}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1220, i32 46}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1221, i32 10}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1221, i32 28}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1221, i32 46}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1222, i32 10}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1223, i32 10}
!276 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1224, i32 10}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1225, i32 10}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1226, i32 10}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1227, i32 10}
!284 = !{ptr @gk104_fifo_fault_gpcclient, !285, !"gk104_fifo_fault_gpcclient", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1206, i32 1}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 561, i32 10}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 562, i32 10}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 563, i32 10}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 564, i32 10}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 565, i32 10}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 566, i32 10}
!298 = !{ptr @gk104_fifo_bind_reason, !299, !"gk104_fifo_bind_reason", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 560, i32 1}
!300 = !{ptr @.str.143, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 661, i32 16}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 662, i32 16}
!304 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 663, i32 16}
!306 = !{ptr @.str.146, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 664, i32 16}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 665, i32 16}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 666, i32 16}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 667, i32 16}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 668, i32 16}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 669, i32 16}
!318 = !{ptr @.str.152, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 670, i32 16}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 671, i32 16}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 672, i32 16}
!324 = !{ptr @.str.155, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 673, i32 16}
!326 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 674, i32 16}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 675, i32 16}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 676, i32 16}
!332 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 677, i32 16}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 678, i32 16}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 679, i32 16}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 680, i32 16}
!340 = !{ptr @.str.163, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 681, i32 16}
!342 = !{ptr @.str.164, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 682, i32 16}
!344 = !{ptr @.str.165, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 683, i32 16}
!346 = !{ptr @.str.166, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 684, i32 16}
!348 = !{ptr @.str.167, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 685, i32 16}
!350 = !{ptr @.str.168, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 686, i32 16}
!352 = !{ptr @.str.169, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 687, i32 16}
!354 = !{ptr @.str.170, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 688, i32 16}
!356 = !{ptr @.str.171, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 689, i32 16}
!358 = !{ptr @.str.172, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 690, i32 16}
!360 = !{ptr @gk104_fifo_pbdma_intr_0, !361, !"gk104_fifo_pbdma_intr_0", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 660, i32 35}
!362 = !{ptr @.str.173, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 735, i32 16}
!364 = !{ptr @.str.174, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 736, i32 16}
!366 = !{ptr @.str.175, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 737, i32 16}
!368 = !{ptr @.str.176, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 738, i32 16}
!370 = !{ptr @.str.177, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 739, i32 16}
!372 = !{ptr @gk104_fifo_pbdma_intr_1, !373, !"gk104_fifo_pbdma_intr_1", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 734, i32 35}
!374 = !{ptr @gk104_fifo_, !375, !"gk104_fifo_", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1077, i32 1}
!376 = !{ptr @.str.178, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 799, i32 3}
!378 = !{ptr @.str.179, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @gk104_fifo_intr._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @gk104_fifo_intr._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.181, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 817, i32 3}
!383 = !{ptr @gk104_fifo_intr._entry.180, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @gk104_fifo_intr._entry_ptr.182, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.184, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 823, i32 3}
!387 = !{ptr @gk104_fifo_intr._entry.183, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @gk104_fifo_intr._entry_ptr.185, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.187, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 869, i32 3}
!391 = !{ptr @gk104_fifo_intr._entry.186, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @gk104_fifo_intr._entry_ptr.188, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 630, i32 2}
!395 = !{ptr @.str.190, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @gk104_fifo_intr_sched._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @gk104_fifo_intr_sched._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 585, i32 10}
!400 = !{ptr @gk104_fifo_sched_reason, !401, !"gk104_fifo_sched_reason", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 584, i32 1}
!402 = !{ptr @.str.192, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 475, i32 2}
!404 = !{ptr @.str.193, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.194, !403, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @gk104_fifo_recover_engn._entry, !403, !"_entry", i1 false, i1 false}
!407 = !{ptr @gk104_fifo_recover_engn._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.195, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 339, i32 2}
!410 = !{ptr @.str.196, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @gk104_fifo_recover_runl._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @gk104_fifo_recover_runl._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.197, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 498, i32 28}
!415 = !{ptr @.str.198, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 533, i32 2}
!417 = !{ptr @.str.199, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @gk104_fifo_fault._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @gk104_fifo_fault._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.200, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 394, i32 2}
!422 = !{ptr @.str.201, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @gk104_fifo_recover_chan._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @gk104_fifo_recover_chan._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @gk104_fifo, !426, !"gk104_fifo", i1 false, i1 false}
!426 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c", i32 1232, i32 1}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!436 = !{i64 5426975}
!437 = !{i64 2156316241}
!438 = !{i8 0, i8 2}
!439 = !{i64 2156324485}
!440 = !{i64 2156324887}
!441 = !{i64 5426557}
!442 = !{i64 2156325760}
!443 = !{i64 2156326162}
!444 = !{i64 2156327276}
!445 = !{i64 2156327753}
!446 = !{i64 2156329739}
!447 = !{i64 2156343729}
!448 = !{i64 2156344157}
!449 = !{i64 2156345289}
!450 = !{i64 2156405591}
!451 = !{i64 2156414803}
!452 = !{i64 2156417313}
!453 = !{i64 2156417763}
!454 = !{i64 2156420466}
!455 = !{i64 2156420905}
!456 = !{i64 2156421344}
!457 = !{i64 2156421783}
!458 = !{i64 2156422222}
!459 = !{!"auto-init"}
!460 = !{i64 2156422600}
!461 = !{i64 2156426547}
!462 = !{i64 2156427051}
!463 = !{i64 2156427490}
!464 = !{i64 2156427929}
!465 = !{i64 2156431391}
!466 = !{i64 2156431830}
!467 = !{i64 2156432196}
!468 = !{i64 2156432646}
!469 = !{i32 0, i32 33}
!470 = !{i64 2156433117}
!471 = !{i64 2156452192}
!472 = !{i64 2156452594}
!473 = !{!"branch_weights", i32 1, i32 2000}
!474 = !{i64 2156465527}
!475 = !{i64 2156477760}
!476 = !{i64 2156478162}
!477 = !{i64 2156478637}
!478 = !{i64 2156479080}
!479 = !{i64 2156479523}
!480 = !{i64 2156479966}
!481 = !{i64 2156480437}
!482 = !{i64 2156480879}
!483 = !{i64 2156481292}
!484 = !{i64 2156363999}
!485 = !{i64 2156364377}
!486 = !{!"branch_weights", i32 2000, i32 1}
!487 = !{i64 2156365499}
!488 = !{i64 2156366328}
!489 = !{i64 2156366718}
!490 = !{i64 2156434817}
!491 = !{i64 2156435202}
!492 = !{i64 2156435544}
!493 = !{i64 2156438038}
!494 = !{i64 2156412066}
!495 = !{i64 2156409065}
!496 = !{i64 2156409467}
!497 = !{i64 2156409912}
!498 = !{i64 2156411176}
!499 = !{i64 2156411578}
!500 = !{i64 2156438451}
!501 = !{i64 2156438864}
!502 = !{i64 2156441442}
!503 = !{i64 2156443924}
!504 = !{i64 2156444337}
!505 = !{i64 2156444793}
!506 = !{i64 2156445137}
!507 = !{i64 2156445594}
!508 = !{i64 2156445938}
!509 = !{i64 2156446352}
!510 = !{i64 2156449295}
!511 = !{i64 2156449685}
!512 = !{i64 2156450112}
!513 = !{i64 2156398597}
!514 = !{i64 2156398999}
!515 = !{i64 2156382515}
!516 = !{i64 2156383201, i64 2156383714, i64 2156383238, i64 2156383294, i64 2156383328, i64 2156383352, i64 2156383393, i64 2156383414, i64 2156383442, i64 2156383476}
!517 = !{i64 2156384862}
!518 = !{i64 2156388281, i64 2156388794, i64 2156388318, i64 2156388374, i64 2156388408, i64 2156388432, i64 2156388473, i64 2156388494, i64 2156388522, i64 2156388556}
!519 = !{i64 2156390462}
!520 = !{i64 2156393123}
!521 = !{i64 2156393654}
!522 = !{i64 2156394087}
!523 = !{i64 2156367579, i64 2156368092, i64 2156367616, i64 2156367672, i64 2156367706, i64 2156367730, i64 2156367771, i64 2156367792, i64 2156367820, i64 2156367854}
!524 = !{i64 2156369610}
!525 = !{i64 2156369988}
