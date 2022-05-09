; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.fermi_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64 }
%struct.gf100_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, %struct.list_head, i8, [16 x %struct.gf100_fifo_engn] }
%struct.gf100_fifo_engn = type { ptr, ptr }
%struct.gf100_fifo = type { %struct.nvkm_fifo, %struct.list_head, %struct.anon.161, i32, %struct.anon.162, %struct.anon.163 }
%struct.anon.161 = type { %struct.work_struct, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.162 = type { [2 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.163 = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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

@gf100_fifo_gpfifo_oclass = dso_local constant { %struct.nvkm_fifo_chan_oclass, [40 x i8] } { %struct.nvkm_fifo_chan_oclass { ptr @gf100_fifo_gpfifo_new, %struct.nvkm_sclass { i32 0, i32 0, i32 36975, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@gf100_fifo_gpfifo_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf100_fifo_gpfifo_new\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c\00", [41 x i8] zeroinitializer }, align 32
@gf100_fifo_gpfifo_new._entry_ptr = internal global ptr @gf100_fifo_gpfifo_new._entry, section ".printk_index", align 4
@gf100_fifo_gpfifo_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@gf100_fifo_gpfifo_new._entry_ptr.5 = internal global ptr @gf100_fifo_gpfifo_new._entry.3, section ".printk_index", align 4
@gf100_fifo_gpfifo_func = internal constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @gf100_fifo_gpfifo_dtor, ptr @gf100_fifo_gpfifo_init, ptr @gf100_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gf100_fifo_gpfifo_engine_ctor, ptr @gf100_fifo_gpfifo_engine_dtor, ptr @gf100_fifo_gpfifo_engine_init, ptr @gf100_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf100_fifo_gpfifo_engine_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 95, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: channel %d [%s] kick timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gf100_fifo_gpfifo_engine_fini\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_fifo_gpfifo_engine_fini._entry_ptr = internal global ptr @gf100_fifo_gpfifo_engine_fini._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 28, i64 33, i64 38, i64 39, i64 40, i64 48]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 32, i64 28, i64 33, i64 38, i64 39, i64 40, i64 48]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 28, i64 33, i64 38, i64 39, i64 40, i64 48]
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"gf100_fifo_gpfifo_oclass\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 303, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 233, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 235, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"gf100_fifo_gpfifo_func\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 209, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 90, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [58 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 94, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @gf100_fifo_gpfifo_engine_fini._entry, ptr @gf100_fifo_gpfifo_engine_fini._entry_ptr, ptr @gf100_fifo_gpfifo_new._entry, ptr @gf100_fifo_gpfifo_new._entry.3, ptr @gf100_fifo_gpfifo_new._entry_ptr, ptr @gf100_fifo_gpfifo_new._entry_ptr.5, ptr @gf100_fifo_gpfifo_oclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @gf100_fifo_gpfifo_func, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_gpfifo_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_gpfifo_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_gpfifo_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_gpfifo_func to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_fifo_gpfifo_engine_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_fifo_chan_ntfy(ptr nocapture noundef readonly %chan, i32 noundef %type, ptr nocapture noundef writeonly %pevent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fifo = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %1 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fifo, align 4
  %uevent = getelementptr inbounds %struct.nvkm_fifo, ptr %2, i32 0, i32 7
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fifo2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fifo2, align 4
  %kevent = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 9
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %kevent.sink = phi ptr [ %kevent, %sw.bb1 ], [ %uevent, %sw.bb ]
  %5 = ptrtoint ptr %pevent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %kevent.sink, ptr %pevent, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_new(ptr noundef %base, ptr noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass4 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass4, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %size)
  %cmp8 = icmp ugt i32 %size, 23
  br i1 %cmp8, label %land.lhs.true12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp15 = icmp eq i8 %11, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %size)
  %tobool.not = icmp eq i32 %size, 24
  br i1 %tobool.not, label %do.body25, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body25:                                        ; preds = %if.then17
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp30 = icmp ugt i32 %15, 4
  br i1 %cmp30, label %do.end35, label %do.body25.if.end46_crit_edge

do.body25.if.end46_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end35:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %name37 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle39 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle39, align 8
  %oclass40 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass40, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 8
  %conv42 = zext i8 %21 to i32
  %vmm = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vmm, align 8
  %ioffset43 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %ioffset43 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ioffset43, align 8
  %ilength44 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %ilength44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ilength44, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name37, i32 noundef %17, i32 noundef %19, i32 noundef %conv42, i64 noundef %23, i64 noundef %25, i32 noundef %27) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end35, %do.body25.if.end46_crit_edge
  %vmm49 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %vmm49 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vmm49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool50.not = icmp eq i64 %29, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 472) #12
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %object = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %object, ptr %pobject, align 4
  %fifo59 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %fifo59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %base, ptr %fifo59, align 8
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.gf100_fifo_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %head, ptr %prev.i, align 8
  %35 = ptrtoint ptr %vmm49 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vmm49, align 8
  %user = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5
  %bar = getelementptr inbounds %struct.gf100_fifo, ptr %base, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bar, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %addr, align 8
  %conv62 = trunc i64 %40 to i32
  %call64 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @gf100_fifo_gpfifo_func, ptr noundef %base, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %36, i64 noundef 0, i32 noundef 32831, i32 noundef 1, i32 noundef %conv62, i32 noundef 4096, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end57
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %chid, align 8
  %conv69 = trunc i16 %42 to i8
  %chid70 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 1
  %43 = ptrtoint ptr %chid70 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv69, ptr %chid70, align 1
  %conv73 = zext i16 %42 to i32
  %mul = shl nuw nsw i32 %conv73, 12
  %44 = zext i32 %mul to i64
  %ioffset75 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 4
  %45 = ptrtoint ptr %ioffset75 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ioffset75, align 8
  %ilength76 = getelementptr inbounds %struct.fermi_channel_gpfifo_v0, ptr %data, i32 0, i32 3
  %47 = ptrtoint ptr %ilength76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ilength76, align 4
  %div349 = lshr i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %48)
  %cmp.i = icmp ugt i32 %48, 15
  %sub.i350 = add nsw i32 %div349, -1
  %49 = tail call i32 @llvm.ctlz.i32(i32 %sub.i350, i1 false) #8, !range !32
  %add.i = sub nuw nsw i32 32, %49
  %cond117 = select i1 %cmp.i, i32 %add.i, i32 0
  %50 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %acquire, align 4
  %call122 = tail call ptr %55(ptr noundef %51) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end67
  %i.0353 = phi i32 [ 0, %if.end67 ], [ %add131, %for.body.for.body_crit_edge ]
  %56 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %user, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr32, align 4
  %narrow = add nuw nsw i32 %i.0353, %mul
  %add130 = zext i32 %narrow to i64
  tail call void %61(ptr noundef %57, i64 noundef %add130, i32 noundef 0) #8
  %add131 = add nuw nsw i32 %i.0353, 4
  %cmp123 = icmp ult i32 %i.0353, 4092
  br i1 %cmp123, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv118 = sext i32 %cond117 to i64
  %62 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %user, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %release, align 4
  tail call void %67(ptr noundef %63) #8
  %68 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %user, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %addr140 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %addr140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr140, align 4
  %call143 = tail call i64 %73(ptr noundef %69) #8
  %add144 = add i64 %call143, %44
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inst, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call149 = tail call ptr %79(ptr noundef %75) #8
  %80 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inst, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %wr32152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %wr32152 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr32152, align 4
  %conv155 = trunc i64 %add144 to i32
  tail call void %85(ptr noundef %81, i32 noundef 8, i32 noundef %conv155) #8
  %86 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %inst, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %wr32158 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %wr32158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr32158, align 4
  %shr = lshr i64 %add144, 32
  %conv162 = trunc i64 %shr to i32
  tail call void %91(ptr noundef %87, i32 noundef 12, i32 noundef %conv162) #8
  %92 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %inst, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %wr32165 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %wr32165 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wr32165, align 4
  tail call void %97(ptr noundef %93, i32 noundef 16, i32 noundef 64206) #8
  %98 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %inst, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %wr32170 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %wr32170 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wr32170, align 4
  tail call void %103(ptr noundef %99, i32 noundef 48, i32 noundef -1790) #8
  %104 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %inst, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %wr32175 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %wr32175 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wr32175, align 4
  %conv179 = trunc i64 %46 to i32
  tail call void %109(ptr noundef %105, i32 noundef 72, i32 noundef %conv179) #8
  %110 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %inst, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %wr32182 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %wr32182 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wr32182, align 4
  %shr185 = lshr i64 %46, 32
  %shl = shl nsw i64 %conv118, 16
  %or = or i64 %shl, %shr185
  %conv189 = trunc i64 %or to i32
  tail call void %115(ptr noundef %111, i32 noundef 76, i32 noundef %conv189) #8
  %116 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %inst, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %wr32192 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %wr32192 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr32192, align 4
  tail call void %121(ptr noundef %117, i32 noundef 84, i32 noundef 2) #8
  %122 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %inst, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %wr32197 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %wr32197 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wr32197, align 4
  tail call void %127(ptr noundef %123, i32 noundef 132, i32 noundef 541065216) #8
  %128 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %inst, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  %wr32202 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %wr32202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wr32202, align 4
  tail call void %133(ptr noundef %129, i32 noundef 148, i32 noundef 805306369) #8
  %134 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %inst, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %wr32207 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %wr32207 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wr32207, align 4
  tail call void %139(ptr noundef %135, i32 noundef 156, i32 noundef 256) #8
  %140 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %inst, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %wr32212 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %wr32212 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wr32212, align 4
  tail call void %145(ptr noundef %141, i32 noundef 164, i32 noundef 522133279) #8
  %146 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %inst, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %wr32217 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %wr32217 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wr32217, align 4
  tail call void %151(ptr noundef %147, i32 noundef 168, i32 noundef 522133279) #8
  %152 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %inst, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %wr32222 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %wr32222 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wr32222, align 4
  tail call void %157(ptr noundef %153, i32 noundef 172, i32 noundef 31) #8
  %158 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %inst, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 8
  %wr32227 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %wr32227 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wr32227, align 4
  tail call void %163(ptr noundef %159, i32 noundef 184, i32 noundef -134217728) #8
  %164 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %inst, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  %wr32232 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %wr32232 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wr32232, align 4
  tail call void %169(ptr noundef %165, i32 noundef 248, i32 noundef 268447872) #8
  %170 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %inst, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  %wr32237 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %wr32237 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wr32237, align 4
  tail call void %175(ptr noundef %171, i32 noundef 252, i32 noundef 268435472) #8
  %176 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %inst, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %release242 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %release242 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %release242, align 4
  tail call void %181(ptr noundef %177) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %if.end46.cleanup_crit_edge ], [ -12, %if.end53.cleanup_crit_edge ], [ %call64, %if.end57.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true12.cleanup_crit_edge ], [ -7, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gf100_fifo_gpfifo_dtor(ptr noundef readnone returned %base) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_init(ptr noundef %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %or = or i32 %conv, -1073741824
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add = add nuw nsw i32 %mul, 12288
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #8, !srcloc !34
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 2
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %13, %head
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %killed = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 3
  %14 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %killed, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_fifo_runlist_insert(ptr noundef %1, ptr noundef %base) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add14 = add nuw nsw i32 %mul, 12292
  %add.ptr15 = getelementptr i8, ptr %17, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 2031617) #8, !srcloc !34
  tail call void @gf100_fifo_runlist_commit(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_fini(ptr noundef %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 8
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %head = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 2
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %7, %head
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %killed = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 3
  %8 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %killed, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_fifo_runlist_remove(ptr noundef %1, ptr noundef %base) #8
  %add = add nuw nsw i32 %mul, 12292
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %and = and i32 %12, -2
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %and) #8, !srcloc !34
  tail call void @gf100_fifo_runlist_commit(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @gf100_fifo_intr_engine(ptr noundef %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %pri15 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri15, align 4
  %add16 = add nuw nsw i32 %mul, 12288
  %add.ptr17 = getelementptr i8, ptr %16, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #8, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_ctor(ptr noundef %base, ptr noundef %engine, ptr noundef %object) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gf100_fifo_chan, ptr %base, i32 0, i32 4, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %7, label %do.end.i [
    i32 48, label %entry.cleanup_crit_edge
    i32 33, label %entry.if.end_crit_edge
    i32 28, label %gf100_fifo_gpfifo_engine_addr.exit
    i32 38, label %entry.if.end_crit_edge38
    i32 39, label %entry.if.end_crit_edge39
    i32 40, label %entry.if.end_crit_edge40
  ]

entry.if.end_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

gf100_fifo_gpfifo_engine_addr.exit:               ; preds = %entry
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inst.i, align 4
  %mul.i.mask = and i32 %10, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435421, i32 %mul.i.mask)
  %tobool.not = icmp eq i32 %mul.i.mask, 268435421
  br i1 %tobool.not, label %gf100_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge, label %gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge

gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge: ; preds = %gf100_fifo_gpfifo_engine_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

gf100_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge: ; preds = %gf100_fifo_gpfifo_engine_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge38, %entry.if.end_crit_edge39, %entry.if.end_crit_edge40
  %call2 = tail call i32 @nvkm_object_bind(ptr noundef %object, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 8
  %11 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vmm, align 4
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retval.0.i, align 4
  %size = getelementptr inbounds %struct.nvkm_gpuobj, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %conv = zext i32 %16 to i64
  %vma = getelementptr inbounds %struct.gf100_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  %call8 = tail call i32 @nvkm_vmm_get(ptr noundef %12, i8 noundef zeroext 12, i64 noundef %conv, ptr noundef %vma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %map = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %23 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vmm, align 4
  %25 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vma, align 4
  %call17 = tail call i32 %22(ptr noundef %18, i64 noundef 0, ptr noundef %24, ptr noundef %26, ptr noundef null, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %gf100_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end11 ], [ 0, %gf100_fifo_gpfifo_engine_addr.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf100_fifo_gpfifo_engine_dtor(ptr noundef %base, ptr noundef %engine) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gf100_fifo_chan, ptr %base, i32 0, i32 4, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %vmm = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 8
  %6 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmm, align 4
  %vma = getelementptr inbounds %struct.gf100_fifo_engn, ptr %retval.0.i, i32 0, i32 1
  tail call void @nvkm_vmm_put(ptr noundef %7, ptr noundef %vma) #8
  tail call void @nvkm_gpuobj_del(ptr noundef %retval.0.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_init(ptr nocapture noundef readonly %base, ptr noundef %engine) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %do.end.i [
    i32 48, label %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge
    i32 33, label %sw.bb1.i
    i32 28, label %sw.bb2.i
    i32 38, label %sw.bb4.i
    i32 39, label %sw.bb5.i
    i32 40, label %sw.bb6.i
  ]

entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst.i, align 4
  %mul.i = shl i32 %4, 4
  %add.i = add i32 %mul.i, 560
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #8
  br label %gf100_fifo_gpfifo_engine_addr.exit

gf100_fifo_gpfifo_engine_addr.exit:               ; preds = %do.end.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 624, %sw.bb6.i ], [ 608, %sw.bb5.i ], [ 592, %sw.bb4.i ], [ %add.i, %sw.bb2.i ], [ 528, %sw.bb1.i ], [ 0, %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge ]
  %fifo.i = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 1
  %5 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %10(ptr noundef %6, ptr noundef %engine) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge, label %if.then

gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge: ; preds = %gf100_fifo_gpfifo_engine_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %gf100_fifo_gpfifo_engine_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.gf100_fifo_chan, ptr %base, i32 0, i32 4, i32 %call.i
  %retval.0.i23 = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %inst3 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %11 = ptrtoint ptr %inst3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inst3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call4 = tail call ptr %16(ptr noundef %12) #8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr32, align 4
  %vma = getelementptr inbounds %struct.gf100_fifo_engn, ptr %retval.0.i23, i32 0, i32 1
  %21 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr, align 8
  %conv = trunc i64 %24 to i32
  %or = or i32 %conv, 4
  tail call void %20(ptr noundef %12, i32 noundef %retval.0.i, i32 noundef %or) #8
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 8
  %wr325 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %wr325 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr325, align 4
  %add6 = add i32 %retval.0.i, 4
  %29 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vma, align 4
  %addr8 = getelementptr inbounds %struct.nvkm_vma, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %addr8 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr8, align 8
  %shr = lshr i64 %32, 32
  %conv10 = trunc i64 %shr to i32
  tail call void %28(ptr noundef %12, i32 noundef %add6, i32 noundef %conv10) #8
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %12, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  tail call void %36(ptr noundef %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %gf100_fifo_gpfifo_engine_addr.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_fifo_gpfifo_engine_fini(ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %engine, i1 noundef zeroext %suspend) #1 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %do.end.i [
    i32 48, label %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge
    i32 33, label %sw.bb1.i
    i32 28, label %sw.bb2.i
    i32 38, label %sw.bb4.i
    i32 39, label %sw.bb5.i
    i32 40, label %sw.bb6.i
  ]

entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inst.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst.i, align 4
  %mul.i = shl i32 %4, 4
  %add.i = add i32 %mul.i, 560
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_fifo_gpfifo_engine_addr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #8
  br label %gf100_fifo_gpfifo_engine_addr.exit

gf100_fifo_gpfifo_engine_addr.exit:               ; preds = %do.end.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 624, %sw.bb6.i ], [ 608, %sw.bb5.i ], [ 592, %sw.bb4.i ], [ %add.i, %sw.bb2.i ], [ 528, %sw.bb1.i ], [ 0, %entry.gf100_fifo_gpfifo_engine_addr.exit_crit_edge ]
  %fifo = getelementptr inbounds %struct.gf100_fifo_chan, ptr %base, i32 0, i32 1
  %5 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo, align 8
  %device4 = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device4, align 4
  %inst6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %9 = ptrtoint ptr %inst6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inst6, align 4
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %11 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %chid, align 8
  %conv = zext i16 %12 to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 9780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %conv) #8, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #8
  %15 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %_wait) #8
  br label %do.body11

do.body11:                                        ; preds = %do.cond20.do.body11_crit_edge, %gf100_fifo_gpfifo_engine_addr.exit
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 9780
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  %19 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %chid, align 8
  %conv18 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv18)
  %cmp = icmp eq i32 %18, %conv18
  br i1 %cmp, label %if.end58.thread, label %do.cond20

if.end58.thread:                                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #8
  br label %if.end81

do.cond20:                                        ; preds = %do.body11
  %call21 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #8
  %cmp22 = icmp sgt i64 %call21, -1
  br i1 %cmp22, label %do.cond20.do.body11_crit_edge, label %do.end36

do.cond20.do.body11_crit_edge:                    ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end36:                                         ; preds = %do.cond20
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device38 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device38, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %call39 = call ptr @dev_driver_string(ptr noundef %26) #8
  %27 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_wait, align 8
  %device42 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device42, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev43, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end36.do.body63_crit_edge

do.end36.do.body63_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

if.end.i:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.end.i, %do.end36.do.body63_crit_edge
  %retval.0.i127 = phi ptr [ %36, %if.end.i ], [ %34, %do.end36.do.body63_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call39, ptr noundef %retval.0.i127) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #8
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 5
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp64.not = icmp eq i32 %38, 0
  br i1 %cmp64.not, label %do.body63.if.end81_crit_edge, label %do.end69

do.body63.if.end81_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device4, align 4
  %dev71 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev71, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %6, i32 0, i32 1, i32 1, i32 4
  %43 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %chid, align 8
  %conv74 = zext i16 %44 to i32
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 4
  %name76 = getelementptr inbounds %struct.nvkm_client, ptr %46, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %conv74, ptr noundef %name76) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end69, %do.body63.if.end81_crit_edge, %if.end58.thread
  %ret.0 = phi i32 [ -110, %do.end69 ], [ -110, %do.body63.if.end81_crit_edge ], [ 0, %if.end58.thread ]
  %47 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fifo, align 8
  %mutex84 = getelementptr inbounds %struct.nvkm_fifo, ptr %48, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %mutex84) #8
  %cmp.not = xor i1 %cmp, true
  %brmerge.not = and i1 %cmp.not, %suspend
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool91.not = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %brmerge.not, i1 true, i1 %tobool91.not
  br i1 %or.cond, label %if.end81.cleanup_crit_edge, label %if.then92

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then92:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %10, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call93 = call ptr %52(ptr noundef %10) #8
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %10, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wr32, align 4
  call void %56(ptr noundef %10, i32 noundef %retval.0.i, i32 noundef 0) #8
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %10, align 8
  %wr3294 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %wr3294 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr3294, align 4
  %add95 = add i32 %retval.0.i, 4
  call void %60(ptr noundef %10, i32 noundef %add95, i32 noundef 0) #8
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %10, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %release, align 4
  call void %64(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end81.cleanup_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_runlist_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_engine(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @gf100_fifo_gpfifo_oclass, !1, !"gf100_fifo_gpfifo_oclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 303, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 233, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gf100_fifo_gpfifo_new._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gf100_fifo_gpfifo_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 235, i32 3}
!10 = !{ptr @gf100_fifo_gpfifo_new._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gf100_fifo_gpfifo_new._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @gf100_fifo_gpfifo_func, !13, !"gf100_fifo_gpfifo_func", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 209, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 90, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.c", i32 94, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gf100_fifo_gpfifo_engine_fini._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @gf100_fifo_gpfifo_engine_fini._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i32 0, i32 33}
!33 = !{i64 2156304781}
!34 = !{i64 5398051}
!35 = !{i8 0, i8 2}
!36 = !{i64 2156305215}
!37 = !{i64 5398469}
!38 = !{i64 2156302184}
!39 = !{i64 2156302586}
!40 = !{i64 2156303045}
!41 = !{i64 2156290196}
!42 = !{i64 2156292088}
