; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.11, i32, [16 x %struct.anon.12], i32, [16 x %struct.anon.13], i32, %struct.anon.14 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.8 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.11 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.12 = type { ptr, i32, i32 }
%struct.anon.13 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.14 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.159, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.159 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.kepler_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64 }
%struct.gk104_fifo_func = type { %struct.anon.9, ptr, %struct.anon.10, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.9 = type { ptr }
%struct.anon.10 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_kick_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 57, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s %d [%s] kick timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gk104_fifo_gpfifo_kick_locked\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_kick_locked._entry_ptr = internal global ptr @gk104_fifo_gpfifo_kick_locked._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_func = dso_local constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @gk104_fifo_gpfifo_dtor, ptr @gk104_fifo_gpfifo_init, ptr @gk104_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gk104_fifo_gpfifo_engine_ctor, ptr @gk104_fifo_gpfifo_engine_dtor, ptr @gk104_fifo_gpfifo_engine_init, ptr @gk104_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gk104_fifo_gpfifo_new\00", [42 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_new._entry_ptr = internal global ptr @gk104_fifo_gpfifo_new._entry, section ".printk_index", align 4
@gk104_fifo_gpfifo_new._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x runlist %016llx priv %d\0A\00", [35 x i8] zeroinitializer }, align 32
@gk104_fifo_gpfifo_new._entry_ptr.12 = internal global ptr @gk104_fifo_gpfifo_new._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 28, i64 33, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 46, i64 48, i64 49]
@__sancov_gen_cov_switch_values.13 = internal global [13 x i64] [i64 11, i64 32, i64 28, i64 33, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 46, i64 48, i64 49]
@__sancov_gen_cov_switch_values.14 = internal global [13 x i64] [i64 11, i64 32, i64 28, i64 33, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 46, i64 48, i64 49]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 51, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 55, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"gk104_fifo_gpfifo_func\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 240, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 337, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [58 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 339, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @gk104_fifo_gpfifo_kick_locked._entry, ptr @gk104_fifo_gpfifo_kick_locked._entry_ptr, ptr @gk104_fifo_gpfifo_new._entry, ptr @gk104_fifo_gpfifo_new._entry.10, ptr @gk104_fifo_gpfifo_new._entry_ptr, ptr @gk104_fifo_gpfifo_new._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gk104_fifo_gpfifo_func, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_gpfifo_kick_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_gpfifo_func to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_gpfifo_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fifo_gpfifo_new._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_kick_locked(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1
  %device3 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %client5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client5, align 4
  %cgrp6 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %cgrp6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cgrp6, align 8
  %tobool.not = icmp eq ptr %7, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or = or i32 %9, 16777216
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 9780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #6, !srcloc !32
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %12 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chid, align 8
  %conv = zext i16 %13 to i32
  %pri11 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri11, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 9780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %conv) #6, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %do.body7, %do.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %16 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  %pri14 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %do.body13

do.body13:                                        ; preds = %do.cond19.do.body13_crit_edge, %if.end
  %17 = ptrtoint ptr %pri14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri14, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 9780
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %and = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end57.thread, label %do.cond19

if.end57.thread:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %if.end87

do.cond19:                                        ; preds = %do.body13
  %call20 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp = icmp sgt i64 %call20, -1
  br i1 %cmp, label %do.cond19.do.body13_crit_edge, label %do.end35

do.cond19.do.body13_crit_edge:                    ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.end35:                                         ; preds = %do.cond19
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device37 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device37, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %call38 = call ptr @dev_driver_string(ptr noundef %25) #6
  %26 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_wait, align 8
  %device41 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device41, align 4
  %dev42 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev42, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end35.do.body62_crit_edge

do.end35.do.body62_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body62

if.end.i:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.end.i, %do.end35.do.body62_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %do.end35.do.body62_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call38, ptr noundef %retval.0.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %debug = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %36 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp63.not = icmp eq i32 %37, 0
  br i1 %cmp63.not, label %do.body62.if.end80_crit_edge, label %do.end68

do.body62.if.end80_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end68:                                         ; preds = %do.body62
  %38 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device3, align 4
  %dev70 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev70, align 8
  %name = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  %chid75 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %44 = ptrtoint ptr %chid75 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %chid75, align 8
  %conv76 = zext i16 %45 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond77 = phi i32 [ %43, %cond.true ], [ %conv76, %cond.false ]
  %name78 = getelementptr inbounds %struct.nvkm_client, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %cond77, ptr noundef %name78) #9
  br label %if.end80

if.end80:                                         ; preds = %cond.end, %do.body62.if.end80_crit_edge
  %chid85 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %46 = ptrtoint ptr %chid85 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %chid85, align 8
  %conv86 = zext i16 %47 to i32
  call void @nvkm_fifo_recover_chan(ptr noundef %base, i32 noundef %conv86) #6
  br label %if.end87

if.end87:                                         ; preds = %if.end80, %if.end57.thread
  %ret.0 = phi i32 [ -110, %if.end80 ], [ 0, %if.end57.thread ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_recover_chan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_kick(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %chan)
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo, align 4
  %mutex3 = getelementptr inbounds %struct.nvkm_fifo, ptr %3, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex3) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_gpfifo_engine(ptr noundef readonly %chan, ptr noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  %arrayidx = getelementptr %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 7, i32 %call
  %retval.0 = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_engine_dtor(ptr noundef %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gk104_fifo_chan, ptr %base, i32 0, i32 7, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 8
  %6 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmm, align 4
  %vma = getelementptr inbounds %struct.gk104_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %7, ptr noundef %vma) #6
  tail call void @nvkm_gpuobj_del(ptr noundef %retval.0.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_engine_ctor(ptr noundef %base, ptr noundef %engine, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gk104_fifo_chan, ptr %base, i32 0, i32 7, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end.i [
    i32 48, label %entry.cleanup_crit_edge
    i32 28, label %entry.cleanup_crit_edge34
    i32 33, label %entry.if.end_crit_edge
    i32 46, label %entry.if.end_crit_edge35
    i32 38, label %entry.if.end_crit_edge36
    i32 39, label %entry.if.end_crit_edge37
    i32 40, label %entry.if.end_crit_edge38
    i32 49, label %entry.if.end_crit_edge39
    i32 37, label %entry.if.end_crit_edge40
    i32 41, label %entry.if.end_crit_edge41
    i32 42, label %entry.if.end_crit_edge42
  ]

entry.if.end_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge35, %entry.if.end_crit_edge36, %entry.if.end_crit_edge37, %entry.if.end_crit_edge38, %entry.if.end_crit_edge39, %entry.if.end_crit_edge40, %entry.if.end_crit_edge41, %entry.if.end_crit_edge42
  %call2 = tail call i32 @nvkm_object_bind(ptr noundef %object, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 8
  %9 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmm, align 4
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %size = getelementptr inbounds %struct.nvkm_gpuobj, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %conv = zext i32 %14 to i64
  %vma = getelementptr inbounds %struct.gk104_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  %call8 = tail call i32 @nvkm_vmm_get(ptr noundef %10, i8 noundef zeroext 12, i64 noundef %conv, ptr noundef %vma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %map = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %21 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vmm, align 4
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vma, align 4
  %call17 = tail call i32 %20(ptr noundef %16, i64 noundef 0, ptr noundef %22, ptr noundef %24, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge34
  %retval.0 = phi i32 [ %call17, %if.end11 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge34 ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_fini(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device3 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %head = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %7, %head
  br i1 %cmp.i.not, label %entry.do.body12_crit_edge, label %if.then

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gk104_fifo_runlist_remove(ptr noundef %1, ptr noundef %base) #6
  %add = or i32 %mul, 8388612
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %or = or i32 %10, 2048
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %or) #6, !srcloc !32
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %13 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fifo.i, align 4
  %mutex.i = getelementptr inbounds %struct.nvkm_fifo, ptr %14, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %call.i = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %base) #6
  %15 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fifo.i, align 4
  %mutex3.i = getelementptr inbounds %struct.nvkm_fifo, ptr %16, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex3.i) #6
  %runl = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 2
  %17 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runl, align 4
  tail call void @gk104_fifo_runlist_update(ptr noundef %1, i32 noundef %18) #6
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %pri15 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri15, align 4
  %add16 = or i32 %mul, 8388608
  %add.ptr17 = getelementptr i8, ptr %20, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #6, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_fifo_gpfifo_init(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device3 = getelementptr inbounds %struct.gk104_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 4
  %addr5 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr5, align 8
  %shr = lshr i64 %7, 12
  %conv = trunc i64 %shr to i32
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %8 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chid, align 8
  %conv7 = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv7, 3
  %add = or i32 %mul, 8388612
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %and = and i32 %12, -983041
  %runl = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 2
  %13 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %runl, align 4
  %shl = shl i32 %14, 16
  %or = or i32 %shl, %and
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %or) #6, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %or16 = or i32 %conv, -2147483648
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add18 = or i32 %mul, 8388608
  %add.ptr19 = getelementptr i8, ptr %18, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or16) #6, !srcloc !32
  %head = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 4
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %20, %head
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %killed = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 5
  %21 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %killed, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gk104_fifo_runlist_insert(ptr noundef %1, ptr noundef %base) #6
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %or35 = or i32 %25, 1024
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %or35) #6, !srcloc !32
  %28 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %runl, align 4
  tail call void @gk104_fifo_runlist_update(ptr noundef %1, i32 noundef %29) #6
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 %add
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %or53 = or i32 %32, 1024
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %34, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %or53) #6, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_gpfifo_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mthd = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 6
  tail call void @nvkm_memory_unref(ptr noundef %mthd) #6
  %cgrp = getelementptr inbounds %struct.gk104_fifo_chan, ptr %base, i32 0, i32 3
  %0 = ptrtoint ptr %cgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgrp, align 8
  tail call void @kfree(ptr noundef %1) #6
  ret ptr %base
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_chan_ntfy(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_fifo_gpfifo_engine_init(ptr nocapture noundef readonly %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gk104_fifo_chan, ptr %base, i32 0, i32 7, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %inst2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %6 = ptrtoint ptr %inst2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inst2, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %9, label %do.end.i [
    i32 48, label %entry.if.end20_crit_edge
    i32 28, label %entry.if.end20_crit_edge46
    i32 33, label %entry.if.then_crit_edge
    i32 46, label %sw.bb2.i
    i32 38, label %sw.bb3.i
    i32 39, label %sw.bb4.i
    i32 40, label %sw.bb5.i
    i32 49, label %sw.bb6.i
    i32 37, label %sw.bb7.i
    i32 41, label %sw.bb8.i
    i32 42, label %sw.bb9.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end20_crit_edge46:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool.not.i, i32 34603664, i32 528
  br label %if.then

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #6
  br label %if.end20

if.then:                                          ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.if.then_crit_edge
  %retval.0.i42.ph = phi i32 [ 544, %sw.bb2.i ], [ 592, %sw.bb3.i ], [ 608, %sw.bb4.i ], [ 624, %sw.bb5.i ], [ 640, %sw.bb6.i ], [ 656, %sw.bb7.i ], [ 34603632, %sw.bb8.i ], [ 528, %entry.if.then_crit_edge ], [ %spec.select, %sw.bb9.i ]
  %vma = getelementptr inbounds %struct.gk104_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %conv = trunc i64 %16 to i32
  %or = or i32 %conv, 4
  %shr = lshr i64 %16, 32
  %conv7 = trunc i64 %shr to i32
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call8 = tail call ptr %20(ptr noundef %7) #6
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr32, align 4
  %and9 = and i32 %retval.0.i42.ph, 752
  tail call void %24(ptr noundef %7, i32 noundef %and9, i32 noundef %or) #6
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 8
  %wr3210 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %wr3210 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr3210, align 4
  %add12 = or i32 %and9, 4
  tail call void %28(ptr noundef %7, i32 noundef %add12, i32 noundef %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %retval.0.i42.ph)
  %tobool14.not = icmp ult i32 %retval.0.i42.ph, 65536
  br i1 %tobool14.not, label %if.then.if.end_crit_edge, label %if.then15

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shr13 = lshr i32 %retval.0.i42.ph, 16
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 8
  %wr3216 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %wr3216 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr3216, align 4
  tail call void %32(ptr noundef %7, i32 noundef %shr13, i32 noundef %or) #6
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 8
  %wr3218 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %wr3218 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr3218, align 4
  %add19 = or i32 %shr13, 4
  tail call void %36(ptr noundef %7, i32 noundef %add19, i32 noundef %conv7) #6
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then.if.end_crit_edge
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %7, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %release, align 4
  tail call void %40(ptr noundef %7) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end, %do.end.i, %entry.if.end20_crit_edge, %entry.if.end20_crit_edge46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_fifo_gpfifo_engine_fini(ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inst2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %0 = ptrtoint ptr %inst2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst2, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %do.end.i [
    i32 48, label %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge
    i32 28, label %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge42
    i32 33, label %sw.bb1.i
    i32 46, label %sw.bb2.i
    i32 38, label %sw.bb3.i
    i32 39, label %sw.bb4.i
    i32 40, label %sw.bb5.i
    i32 49, label %sw.bb6.i
    i32 37, label %sw.bb7.i
    i32 41, label %sw.bb8.i
    i32 42, label %sw.bb9.i
  ]

entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge42: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gk104_fifo_gpfifo_engine_addr.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %..i = select i1 %tobool.not.i, i32 34603664, i32 528
  br label %gk104_fifo_gpfifo_engine_addr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #6
  br label %gk104_fifo_gpfifo_engine_addr.exit

gk104_fifo_gpfifo_engine_addr.exit:               ; preds = %do.end.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge, %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge42
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 34603632, %sw.bb8.i ], [ 656, %sw.bb7.i ], [ 640, %sw.bb6.i ], [ 624, %sw.bb5.i ], [ 608, %sw.bb4.i ], [ 592, %sw.bb3.i ], [ 544, %sw.bb2.i ], [ 528, %sw.bb1.i ], [ 0, %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge ], [ 0, %entry.gk104_fifo_gpfifo_engine_addr.exit_crit_edge42 ], [ %..i, %sw.bb9.i ]
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %7 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fifo.i, align 4
  %mutex.i = getelementptr inbounds %struct.nvkm_fifo, ptr %8, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %call.i = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %base) #6
  %9 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fifo.i, align 4
  %mutex3.i = getelementptr inbounds %struct.nvkm_fifo, ptr %10, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  %11 = and i1 %tobool.not, %suspend
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %11, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %gk104_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge, label %if.then6

gk104_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge: ; preds = %gk104_fifo_gpfifo_engine_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %gk104_fifo_gpfifo_engine_addr.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call7 = tail call ptr %15(ptr noundef %1) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %and = and i32 %retval.0.i, 752
  tail call void %19(ptr noundef %1, i32 noundef %and, i32 noundef 0) #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %wr328 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %wr328 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr328, align 4
  %add10 = or i32 %and, 4
  tail call void %23(ptr noundef %1, i32 noundef %add10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %retval.0.i)
  %tobool11.not = icmp ult i32 %retval.0.i, 65536
  br i1 %tobool11.not, label %if.then6.if.end17_crit_edge, label %if.then12

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %retval.0.i, 16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %wr3213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %wr3213 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3213, align 4
  tail call void %27(ptr noundef %1, i32 noundef %shr, i32 noundef 0) #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %wr3215 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %wr3215 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr3215, align 4
  %add16 = or i32 %shr, 4
  tail call void %31(ptr noundef %1, i32 noundef %add16, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then6.if.end17_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %gk104_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef %fifo, ptr noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %size)
  %cmp7 = icmp ugt i32 %size, 39
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %size)
  %tobool.not = icmp eq i32 %size, 40
  br i1 %tobool.not, label %do.body23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body23:                                        ; preds = %if.then16
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp28 = icmp ugt i32 %15, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end43_crit_edge

do.body23.if.end43_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass38, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 8
  %conv40 = zext i8 %21 to i32
  %vmm = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vmm, align 8
  %ioffset = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %ioffset to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ioffset, align 8
  %ilength = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %ilength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ilength, align 4
  %runlist = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %runlist to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %runlist, align 8
  %priv = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priv, align 1
  %conv41 = zext i8 %31 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name35, i32 noundef %17, i32 noundef %19, i32 noundef %conv40, i64 noundef %23, i64 noundef %25, i32 noundef %27, i64 noundef %29, i32 noundef %conv41) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end33, %do.body23.if.end43_crit_edge
  %runlist46 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 5
  %chid = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 2
  %vmm47 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 6
  %32 = ptrtoint ptr %vmm47 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vmm47, align 8
  %ioffset48 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %ioffset48 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ioffset48, align 8
  %ilength49 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 3
  %36 = ptrtoint ptr %ilength49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ilength49, align 4
  %inst = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 7
  %priv51 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %priv51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %priv51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool52.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %runlist46 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %runlist46, align 8
  %conv.i = trunc i64 %41 to i32
  %42 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #6, !range !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %iszero.i = icmp eq i32 %conv.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.not.i = icmp eq i64 %33, 0
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %iszero.i
  br i1 %brmerge.i, label %if.end43.cleanup_crit_edge, label %lor.lhs.false2.i

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %if.end43
  %runlist_nr.i = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 7
  %43 = ptrtoint ptr %runlist_nr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %runlist_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %44)
  %cmp3.not.i = icmp slt i32 %sub.i, %44
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false2.i.cleanup_crit_edge

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %45 = ptrtoint ptr %runlist46 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shl.i, ptr %runlist46, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 488) #10
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %object.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %object.i, ptr %pobject, align 4
  %fifo8.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %fifo8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fifo, ptr %fifo8.i, align 8
  %runl.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %runl.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i, ptr %runl.i, align 4
  %head.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %prev.i.i, align 8
  %base9.i = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  %engm_sw.i = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %sub.i, i32 6
  %52 = ptrtoint ptr %engm_sw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %engm_sw.i, align 4
  %user.i = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 8
  %bar.i = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bar.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_vma, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %addr.i, align 8
  %conv11.i = trunc i64 %57 to i32
  %call13.i = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @gk104_fifo_gpfifo_func, ptr noundef %base9.i, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %33, i64 noundef 0, i32 noundef %53, i32 noundef 1, i32 noundef %conv11.i, i32 noundef 512, ptr noundef %oclass, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.i:                                       ; preds = %if.end7.i
  %chid18.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %chid18.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %chid18.i, align 8
  %60 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %chid, align 2
  %inst20.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inst20.i, align 4
  %addr21.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %addr21.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %addr21.i, align 8
  %65 = ptrtoint ptr %inst to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %inst, align 8
  %66 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fifo, align 4
  %cgrp_force.i = getelementptr inbounds %struct.gk104_fifo_func, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %cgrp_force.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cgrp_force.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool22.not.i = icmp eq i8 %69, 0
  br i1 %tobool22.not.i, label %if.end16.i.if.end37.i_crit_edge, label %if.then23.i

if.end16.i.if.end37.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then23.i:                                      ; preds = %if.end16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 24) #10
  %cgrp.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %cgrp.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %cgrp.i, align 8
  %tobool25.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not.i, label %if.then23.i.cleanup_crit_edge, label %if.end27.i

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %chid18.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %chid18.i, align 8
  %conv30.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv30.i, ptr %call7.i.i, align 8
  %head33.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %head33.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %head33.i, ptr %head33.i, align 4
  %prev.i294.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i294.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %head33.i, ptr %prev.i294.i, align 8
  %chan35.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %chan35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %chan35.i, ptr %chan35.i, align 4
  %prev.i295.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i.i, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %prev.i295.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %chan35.i, ptr %prev.i295.i, align 8
  %chan_nr.i = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %chan_nr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %chan_nr.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end27.i, %if.end16.i.if.end37.i_crit_edge
  %80 = ptrtoint ptr %chid18.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %chid18.i, align 8
  %conv40.i = zext i16 %81 to i32
  %mul.i = shl nuw nsw i32 %conv40.i, 9
  %82 = zext i32 %mul.i to i64
  %83 = lshr i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %37)
  %cmp.i.i = icmp ugt i32 %37, 15
  %sub.i296.i = add nsw i32 %83, -1
  %84 = tail call i32 @llvm.ctlz.i32(i32 %sub.i296.i, i1 false) #6, !range !46
  %add.i.i = sub nuw nsw i32 32, %84
  %cond75.i = select i1 %cmp.i.i, i32 %add.i.i, i32 0
  %85 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %user.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %acquire.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %acquire.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %acquire.i, align 4
  %call81.i = tail call ptr %90(ptr noundef %86) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end37.i
  %i.0297.i = phi i32 [ 0, %if.end37.i ], [ %add90.i, %for.body.i.for.body.i_crit_edge ]
  %91 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %user.i, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wr32.i, align 4
  %narrow.i = add nuw nsw i32 %i.0297.i, %mul.i
  %add89.i = zext i32 %narrow.i to i64
  tail call void %96(ptr noundef %92, i64 noundef %add89.i, i32 noundef 0) #6
  %add90.i = add nuw nsw i32 %i.0297.i, 4
  %cmp82.i = icmp ult i32 %i.0297.i, 508
  br i1 %cmp82.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv76.i = sext i32 %cond75.i to i64
  %97 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %release.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %release.i, align 4
  tail call void %102(ptr noundef %98) #6
  %103 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %user.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %addr99.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %addr99.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %addr99.i, align 4
  %call102.i = tail call i64 %108(ptr noundef %104) #6
  %add103.i = add i64 %call102.i, %82
  %109 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %inst20.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %call109.i = tail call ptr %114(ptr noundef %110) #6
  %115 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %inst20.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %wr32112.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %wr32112.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wr32112.i, align 4
  %conv115.i = trunc i64 %add103.i to i32
  tail call void %120(ptr noundef %116, i32 noundef 8, i32 noundef %conv115.i) #6
  %121 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %inst20.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %wr32118.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %wr32118.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr32118.i, align 4
  %shr.i = lshr i64 %add103.i, 32
  %conv122.i = trunc i64 %shr.i to i32
  tail call void %126(ptr noundef %122, i32 noundef 12, i32 noundef %conv122.i) #6
  %127 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %inst20.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %wr32125.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %wr32125.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wr32125.i, align 4
  tail call void %132(ptr noundef %128, i32 noundef 16, i32 noundef 64206) #6
  %133 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %inst20.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %wr32130.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %wr32130.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wr32130.i, align 4
  tail call void %138(ptr noundef %134, i32 noundef 48, i32 noundef -1790) #6
  %139 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %inst20.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %wr32135.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %wr32135.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wr32135.i, align 4
  %conv139.i = trunc i64 %35 to i32
  tail call void %144(ptr noundef %140, i32 noundef 72, i32 noundef %conv139.i) #6
  %145 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %inst20.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %wr32142.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %wr32142.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wr32142.i, align 4
  %shr145.i = lshr i64 %35, 32
  %shl149.i = shl nsw i64 %conv76.i, 16
  %or.i = or i64 %shl149.i, %shr145.i
  %conv150.i = trunc i64 %or.i to i32
  tail call void %150(ptr noundef %146, i32 noundef 76, i32 noundef %conv150.i) #6
  %151 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %inst20.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 8
  %wr32153.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %wr32153.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %wr32153.i, align 4
  tail call void %156(ptr noundef %152, i32 noundef 132, i32 noundef 541065216) #6
  %157 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %inst20.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 8
  %wr32158.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %wr32158.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wr32158.i, align 4
  tail call void %162(ptr noundef %158, i32 noundef 148, i32 noundef 805306369) #6
  %163 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %inst20.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %wr32163.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %wr32163.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %wr32163.i, align 4
  tail call void %168(ptr noundef %164, i32 noundef 156, i32 noundef 256) #6
  %169 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %inst20.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 8
  %wr32168.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %wr32168.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %wr32168.i, align 4
  tail call void %174(ptr noundef %170, i32 noundef 172, i32 noundef 31) #6
  %175 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %inst20.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %wr32173.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %wr32173.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %wr32173.i, align 4
  %cond178.i = select i1 %tobool52.not, i32 0, i32 32
  tail call void %180(ptr noundef %176, i32 noundef 228, i32 noundef %cond178.i) #6
  %181 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %inst20.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %wr32181.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %wr32181.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wr32181.i, align 4
  %187 = ptrtoint ptr %chid18.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %chid18.i, align 8
  %conv186.i = zext i16 %188 to i32
  tail call void %186(ptr noundef %182, i32 noundef 232, i32 noundef %conv186.i) #6
  %189 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %inst20.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 8
  %wr32189.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %wr32189.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %wr32189.i, align 4
  tail call void %194(ptr noundef %190, i32 noundef 184, i32 noundef -134217728) #6
  %195 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %inst20.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  %wr32194.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %198, i32 0, i32 3
  %199 = ptrtoint ptr %wr32194.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %wr32194.i, align 4
  tail call void %200(ptr noundef %196, i32 noundef 248, i32 noundef 268447872) #6
  %201 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %inst20.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 8
  %wr32199.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %wr32199.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wr32199.i, align 4
  tail call void %206(ptr noundef %202, i32 noundef 252, i32 noundef 268435472) #6
  %207 = ptrtoint ptr %inst20.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %inst20.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 8
  %release204.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %release204.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %release204.i, align 4
  tail call void %212(ptr noundef %208) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.then23.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.i ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call13.i, %if.end7.i.cleanup_crit_edge ], [ -12, %if.then23.i.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true11.cleanup_crit_edge ], [ -7, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c", i32 51, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c", i32 55, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gk104_fifo_gpfifo_kick_locked._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @gk104_fifo_gpfifo_kick_locked._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !4, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !4, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gk104_fifo_gpfifo_func, !13, !"gk104_fifo_gpfifo_func", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c", i32 240, i32 1}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c", i32 337, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gk104_fifo_gpfifo_new._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @gk104_fifo_gpfifo_new._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogk104.c", i32 339, i32 3}
!21 = !{ptr @gk104_fifo_gpfifo_new._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gk104_fifo_gpfifo_new._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 5400808}
!33 = !{i64 5401226}
!34 = !{i64 2156298576}
!35 = !{i64 2156310868}
!36 = !{i64 2156311270}
!37 = !{i64 2156311729}
!38 = !{i64 2156313878}
!39 = !{i64 2156314292}
!40 = !{i64 2156314771}
!41 = !{i8 0, i8 2}
!42 = !{i64 2156315626}
!43 = !{i64 2156316028}
!44 = !{i64 2156316908}
!45 = !{i64 2156317310}
!46 = !{i32 0, i32 33}
