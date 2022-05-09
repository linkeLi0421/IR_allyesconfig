; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.81, %struct.anon.82, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.81 = type { ptr }
%struct.anon.82 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.83 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.83 = type { %struct.refcount_struct, %struct.mutex, i8 }
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
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.138, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.138 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.ga102_chan = type { %struct.nvkm_object, %struct.anon.145, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.anon.145 = type { i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@ga102_fifo = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @ga102_fifo_dtor, ptr null, ptr null, ptr @ga102_fifo_info, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.81 { ptr @ga102_fifo_sclass }, %struct.anon.82 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ga102_user_oclass = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @ga102_user_new, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@ga102_chan_oclass = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @ga102_chan_new, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@ga102_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @ga102_chan_dtor, ptr @ga102_chan_init, ptr @ga102_chan_fini, ptr null, ptr null, ptr @ga102_chan_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ga102_chan_sclass }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"ga102_fifo\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 293, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"ga102_user_oclass\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 253, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"ga102_chan_oclass\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 241, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"ga102_chan\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 140, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 94, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @ga102_fifo, ptr @ga102_user_oclass, ptr @ga102_chan_oclass, ptr @ga102_chan, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_fifo to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_user_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_chan_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ga102_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1200) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %engine = getelementptr inbounds %struct.nvkm_fifo, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @ga102_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #7
  %1 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pfifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ga102_fifo_dtor(ptr noundef readnone %engine) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_fifo_info(ptr nocapture noundef readnone %engine, i64 noundef %mthd, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967297, i64 %mthd)
  %cond = icmp eq i64 %mthd, 4294967297
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %data, align 8
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -38, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_fifo_sclass(ptr nocapture noundef writeonly %oclass, i32 noundef %index, ptr nocapture noundef writeonly %class) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %entry.return_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %base, align 4
  %.compoundliteral.sroa.2.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.2.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50017, ptr %.compoundliteral.sroa.3.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %.compoundliteral.sroa.4.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.5.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.5.0.base.sroa_idx, align 4
  br label %return.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base4 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %6 = ptrtoint ptr %base4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %base4, align 4
  %.compoundliteral5.sroa.2.0.base4.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %.compoundliteral5.sroa.2.0.base4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 51055, ptr %.compoundliteral5.sroa.2.0.base4.sroa_idx, align 4
  %.compoundliteral5.sroa.3.0.base4.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %.compoundliteral5.sroa.3.0.base4.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %.compoundliteral5.sroa.3.0.base4.sroa_idx, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then3, %if.then
  %ga102_chan_oclass.sink = phi ptr [ @ga102_chan_oclass, %if.then3 ], [ @ga102_user_oclass, %if.then ]
  %9 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ga102_chan_oclass.sink, ptr %class, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 2, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_user_new(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tu102_fifo_user_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_fifo_user_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_chan_new(ptr noundef %device, ptr noundef %oclass, ptr nocapture noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 48
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %vmm1 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 6
  %2 = ptrtoint ptr %vmm1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vmm1, align 8
  %call = tail call ptr @nvkm_uvmm_search(ptr noundef %1, i64 noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 104) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  tail call void @nvkm_object_ctor(ptr noundef nonnull @ga102_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #7
  %6 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %pobject, align 4
  %top = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 23
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %top, align 8
  %device10 = getelementptr inbounds %struct.nvkm_top, ptr %8, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end8
  %.pn.in = phi ptr [ %device10, %if.end8 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp13.not = icmp eq ptr %.pn, %device10
  br i1 %cmp13.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %tdev.0 = getelementptr i8, ptr %.pn, i32 -32
  %10 = ptrtoint ptr %tdev.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tdev.0, align 4
  %cmp14 = icmp eq i32 %11, 28
  br i1 %cmp14, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %runlist = getelementptr i8, ptr %.pn, i32 -12
  %12 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %runlist, align 4
  %ctrl = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctrl, align 8
  br label %for.end

for.end:                                          ; preds = %if.then15, %for.cond.for.end_crit_edge
  %ctrl22 = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add = add i32 %16, 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  %and = and i32 %19, -16
  %chan33 = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %chan33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %chan33, align 4
  %chid = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 2
  %21 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %chid, align 2
  %inst = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 7
  %22 = ptrtoint ptr %inst to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %inst, align 8
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %25 = ptrtoint ptr %ctrl22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl22, align 8
  %add38 = add i32 %26, 8
  %add.ptr39 = getelementptr i8, ptr %24, i32 %add38
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %and42 = and i32 %27, -65536
  %token = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 8
  %28 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and42, ptr %token, align 8
  %mthd = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 2
  %call43 = tail call i32 @nvkm_memory_new(ptr noundef %device, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %mthd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end26
  %inst47 = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 3
  %call48 = tail call i32 @nvkm_memory_new(ptr noundef %device, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %inst47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %29 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inst47, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %acquire, align 4
  %call54 = tail call ptr %34(ptr noundef %30) #7
  %35 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inst47, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr32, align 4
  tail call void %40(ptr noundef %36, i64 noundef 16, i32 noundef 64206) #7
  %41 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inst47, align 4
  %ptrs58 = getelementptr inbounds %struct.nvkm_memory, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ptrs58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptrs58, align 4
  %wr3259 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr3259 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr3259, align 4
  tail call void %46(ptr noundef %42, i64 noundef 48, i32 noundef 2147481858) #7
  %47 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %inst47, align 4
  %ptrs62 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ptrs62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptrs62, align 4
  %wr3263 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wr3263 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr3263, align 4
  %ioffset = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 4
  %53 = ptrtoint ptr %ioffset to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ioffset, align 8
  %conv = trunc i64 %54 to i32
  tail call void %52(ptr noundef %48, i64 noundef 72, i32 noundef %conv) #7
  %55 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %inst47, align 4
  %ptrs67 = getelementptr inbounds %struct.nvkm_memory, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ptrs67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptrs67, align 4
  %wr3268 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wr3268 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr3268, align 4
  %61 = ptrtoint ptr %ioffset to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ioffset, align 8
  %shr = lshr i64 %62, 32
  %conv72 = trunc i64 %shr to i32
  %ilength = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %argv, i32 0, i32 3
  %63 = ptrtoint ptr %ilength to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ilength, align 4
  %div385 = lshr i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %64)
  %cmp.i386 = icmp ugt i32 %64, 15
  %sub.i387 = add nsw i32 %div385, -1
  %65 = tail call i32 @llvm.ctlz.i32(i32 %sub.i387, i1 false) #7, !range !23
  %.neg = mul nsw i32 %65, -65536
  %phi.bo = add nsw i32 %.neg, 2097152
  %cond112 = select i1 %cmp.i386, i32 %phi.bo, i32 0
  %or = or i32 %cond112, %conv72
  tail call void %60(ptr noundef %56, i64 noundef 76, i32 noundef %or) #7
  %66 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %inst47, align 4
  %ptrs114 = getelementptr inbounds %struct.nvkm_memory, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %ptrs114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ptrs114, align 4
  %wr32115 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr32115 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr32115, align 4
  tail call void %71(ptr noundef %67, i64 noundef 132, i32 noundef 541065216) #7
  %72 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inst47, align 4
  %ptrs118 = getelementptr inbounds %struct.nvkm_memory, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %ptrs118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ptrs118, align 4
  %wr32119 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wr32119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wr32119, align 4
  tail call void %77(ptr noundef %73, i64 noundef 148, i32 noundef 805306369) #7
  %78 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %inst47, align 4
  %ptrs122 = getelementptr inbounds %struct.nvkm_memory, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %ptrs122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ptrs122, align 4
  %wr32123 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wr32123 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wr32123, align 4
  tail call void %83(ptr noundef %79, i64 noundef 172, i32 noundef 131072) #7
  %84 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %inst47, align 4
  %ptrs126 = getelementptr inbounds %struct.nvkm_memory, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %ptrs126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ptrs126, align 4
  %wr32127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %wr32127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wr32127, align 4
  tail call void %89(ptr noundef %85, i64 noundef 228, i32 noundef 0) #7
  %90 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %inst47, align 4
  %ptrs130 = getelementptr inbounds %struct.nvkm_memory, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %ptrs130 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ptrs130, align 4
  %wr32131 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wr32131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wr32131, align 4
  tail call void %95(ptr noundef %91, i64 noundef 232, i32 noundef 0) #7
  %96 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %inst47, align 4
  %ptrs134 = getelementptr inbounds %struct.nvkm_memory, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %ptrs134 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ptrs134, align 4
  %wr32135 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %wr32135 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wr32135, align 4
  tail call void %101(ptr noundef %97, i64 noundef 244, i32 noundef 4096) #7
  %102 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %inst47, align 4
  %ptrs138 = getelementptr inbounds %struct.nvkm_memory, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %ptrs138 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ptrs138, align 4
  %wr32139 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %wr32139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wr32139, align 4
  tail call void %107(ptr noundef %103, i64 noundef 248, i32 noundef 268447872) #7
  %108 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %inst47, align 4
  %ptrs142 = getelementptr inbounds %struct.nvkm_memory, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %ptrs142 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ptrs142, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call145 = tail call i32 %113(ptr noundef %109, i64 noundef 536) #7
  %114 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %inst47, align 4
  %ptrs147 = getelementptr inbounds %struct.nvkm_memory, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %ptrs147 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ptrs147, align 4
  %wr32148 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %wr32148 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wr32148, align 4
  tail call void %119(ptr noundef %115, i64 noundef 536, i32 noundef %call145) #7
  %120 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %inst47, align 4
  %ptrs155 = getelementptr inbounds %struct.nvkm_memory, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %ptrs155 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ptrs155, align 4
  %wr32156 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %wr32156 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wr32156, align 4
  %126 = ptrtoint ptr %mthd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mthd, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %bar2 = getelementptr inbounds %struct.nvkm_memory_func, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bar2, align 4
  %call161 = tail call i64 %131(ptr noundef %127) #7
  %conv163 = trunc i64 %call161 to i32
  tail call void %125(ptr noundef %121, i64 noundef 544, i32 noundef %conv163) #7
  %132 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %inst47, align 4
  %ptrs165 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %ptrs165 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ptrs165, align 4
  %wr32166 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %wr32166 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wr32166, align 4
  %138 = ptrtoint ptr %mthd to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mthd, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %bar2170 = getelementptr inbounds %struct.nvkm_memory_func, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %bar2170 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bar2170, align 4
  %call172 = tail call i64 %143(ptr noundef %139) #7
  %shr173 = lshr i64 %call172, 32
  %conv175 = trunc i64 %shr173 to i32
  tail call void %137(ptr noundef %133, i64 noundef 548, i32 noundef %conv175) #7
  %144 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %inst47, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %147, i32 0, i32 8
  %148 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %release, align 4
  tail call void %149(ptr noundef %145) #7
  %user = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 4
  %call179 = tail call i32 @nvkm_memory_new(ptr noundef %device, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %user) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end182:                                        ; preds = %if.end51
  %runl183 = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 5
  %call184 = tail call i32 @nvkm_memory_new(ptr noundef %device, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %runl183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end187:                                        ; preds = %if.end182
  %150 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %runl183, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %acquire190 = getelementptr inbounds %struct.nvkm_memory_func, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %acquire190 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %acquire190, align 4
  %call192 = tail call ptr %155(ptr noundef %151) #7
  %156 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %runl183, align 4
  %ptrs194 = getelementptr inbounds %struct.nvkm_memory, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %ptrs194 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ptrs194, align 4
  %wr32195 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %wr32195 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %wr32195, align 4
  tail call void %161(ptr noundef %157, i64 noundef 0, i32 noundef -2147287039) #7
  %162 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %runl183, align 4
  %ptrs198 = getelementptr inbounds %struct.nvkm_memory, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %ptrs198 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ptrs198, align 4
  %wr32199 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %wr32199 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wr32199, align 4
  tail call void %167(ptr noundef %163, i64 noundef 4, i32 noundef 1) #7
  %168 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %runl183, align 4
  %ptrs202 = getelementptr inbounds %struct.nvkm_memory, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %ptrs202 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ptrs202, align 4
  %wr32203 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %wr32203 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wr32203, align 4
  tail call void %173(ptr noundef %169, i64 noundef 8, i32 noundef 0) #7
  %174 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %runl183, align 4
  %ptrs206 = getelementptr inbounds %struct.nvkm_memory, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %ptrs206 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ptrs206, align 4
  %wr32207 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %wr32207 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wr32207, align 4
  tail call void %179(ptr noundef %175, i64 noundef 12, i32 noundef 0) #7
  %180 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %runl183, align 4
  %ptrs210 = getelementptr inbounds %struct.nvkm_memory, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %ptrs210 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ptrs210, align 4
  %wr32211 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %wr32211 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wr32211, align 4
  %186 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %user, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %addr, align 4
  %call216 = tail call i64 %191(ptr noundef %187) #7
  %conv218 = trunc i64 %call216 to i32
  tail call void %185(ptr noundef %181, i64 noundef 16, i32 noundef %conv218) #7
  %192 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %runl183, align 4
  %ptrs220 = getelementptr inbounds %struct.nvkm_memory, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %ptrs220 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ptrs220, align 4
  %wr32221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %wr32221 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wr32221, align 4
  %198 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %user, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %addr225 = getelementptr inbounds %struct.nvkm_memory_func, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %addr225 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %addr225, align 4
  %call227 = tail call i64 %203(ptr noundef %199) #7
  %shr228 = lshr i64 %call227, 32
  %conv230 = trunc i64 %shr228 to i32
  tail call void %197(ptr noundef %193, i64 noundef 20, i32 noundef %conv230) #7
  %204 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %runl183, align 4
  %ptrs232 = getelementptr inbounds %struct.nvkm_memory, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %ptrs232 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ptrs232, align 4
  %wr32233 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %wr32233 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %wr32233, align 4
  %210 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %inst47, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %addr237 = getelementptr inbounds %struct.nvkm_memory_func, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %addr237 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %addr237, align 4
  %call239 = tail call i64 %215(ptr noundef %211) #7
  %conv241 = trunc i64 %call239 to i32
  tail call void %209(ptr noundef %205, i64 noundef 24, i32 noundef %conv241) #7
  %216 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %runl183, align 4
  %ptrs243 = getelementptr inbounds %struct.nvkm_memory, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %ptrs243 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ptrs243, align 4
  %wr32244 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %wr32244 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %wr32244, align 4
  %222 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %inst47, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %addr248 = getelementptr inbounds %struct.nvkm_memory_func, ptr %225, i32 0, i32 4
  %226 = ptrtoint ptr %addr248 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %addr248, align 4
  %call250 = tail call i64 %227(ptr noundef %223) #7
  %shr251 = lshr i64 %call250, 32
  %conv253 = trunc i64 %shr251 to i32
  tail call void %221(ptr noundef %217, i64 noundef 28, i32 noundef %conv253) #7
  %228 = ptrtoint ptr %runl183 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %runl183, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %release256 = getelementptr inbounds %struct.nvkm_memory_func, ptr %231, i32 0, i32 8
  %232 = ptrtoint ptr %release256 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %release256, align 4
  tail call void %233(ptr noundef %229) #7
  %234 = ptrtoint ptr %inst47 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %inst47, align 4
  %call259 = tail call i32 @nvkm_vmm_join(ptr noundef %call, ptr noundef %235) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end262, label %if.end187.cleanup_crit_edge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end262:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  %call263 = tail call ptr @nvkm_vmm_ref(ptr noundef %call) #7
  %vmm264 = getelementptr inbounds %struct.ga102_chan, ptr %call7.i.i, i32 0, i32 6
  %236 = ptrtoint ptr %vmm264 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call263, ptr %vmm264, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end262, %if.end187.cleanup_crit_edge, %if.end182.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ 0, %if.end262 ], [ -38, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ %call43, %if.end26.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ %call179, %if.end51.cleanup_crit_edge ], [ %call184, %if.end182.cleanup_crit_edge ], [ %call259, %if.end187.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_uvmm_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ga102_chan_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 6
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inst = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 3
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  tail call void @nvkm_vmm_part(ptr noundef nonnull %1, ptr noundef %3) #7
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %runl = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 5
  tail call void @nvkm_memory_unref(ptr noundef %runl) #7
  %user = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 4
  tail call void @nvkm_memory_unref(ptr noundef %user) #7
  %inst3 = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %inst3) #7
  %mthd = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %mthd) #7
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_chan_init(ptr nocapture noundef readonly %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %ctrl = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 8
  %add = add i32 %5, 768
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %or = or i32 %8, -2147483648
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %or) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %runl11 = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 5
  %11 = ptrtoint ptr %runl11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runl11, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %call13 = tail call i64 %16(ptr noundef %12) #7
  %conv = trunc i64 %call13 to i32
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 8
  %add18 = add i32 %20, 128
  %add.ptr19 = getelementptr i8, ptr %18, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %conv) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %runl11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runl11, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %addr25 = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %addr25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr25, align 4
  %call27 = tail call i64 %26(ptr noundef %22) #7
  %shr = lshr i64 %call27, 32
  %conv29 = trunc i64 %shr to i32
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctrl, align 8
  %add33 = add i32 %30, 132
  %add.ptr34 = getelementptr i8, ptr %28, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %conv29) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 8
  %add41 = add i32 %34, 136
  %add.ptr42 = getelementptr i8, ptr %32, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 2) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %chan48 = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %chan48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chan48, align 4
  %add.ptr49 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 2) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl, align 8
  %add56 = add i32 %42, 144
  %add.ptr57 = getelementptr i8, ptr %40, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #7, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_chan_fini(ptr nocapture noundef readonly %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %ctrl = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 1
  %chan3 = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan3, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 3) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 8
  %add = add i32 %11, 152
  %add.ptr10 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #7, !srcloc !26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %12 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body11

do.body11:                                        ; preds = %do.cond18.do.body11_crit_edge, %entry
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl, align 8
  %add15 = add i32 %16, 152
  %add.ptr16 = getelementptr i8, ptr %14, i32 %add15
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %and = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body11.if.end53_crit_edge, label %do.cond18

do.body11.if.end53_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.cond18:                                        ; preds = %do.body11
  %call19 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp = icmp sgt i64 %call19, -1
  br i1 %cmp, label %do.cond18.do.body11_crit_edge, label %do.end31

do.cond18.do.body11_crit_edge:                    ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end31:                                         ; preds = %do.cond18
  %18 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait, align 8
  %device33 = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device33, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %call34 = call ptr @dev_driver_string(ptr noundef %23) #7
  %24 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_wait, align 8
  %device37 = getelementptr inbounds %struct.nvkm_timer, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device37, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev38, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end31.dev_name.exit_crit_edge

do.end31.dev_name.exit_crit_edge:                 ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %do.end31.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call34, ptr noundef %retval.0.i) #7
  br label %if.end53

if.end53:                                         ; preds = %dev_name.exit, %do.body11.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %36 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl, align 8
  %add61 = add i32 %37, 136
  %add.ptr62 = getelementptr i8, ptr %35, i32 %add61
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #7, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %40 = ptrtoint ptr %chan3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan3, align 4
  %add.ptr69 = getelementptr i8, ptr %39, i32 %41
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -1) #7, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_chan_map(ptr nocapture noundef readonly %object, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %user = getelementptr inbounds %struct.ga102_chan, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bar23 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bar23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar23, align 4
  %call = tail call i64 %9(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call)
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resource_addr, align 4
  %call6 = tail call i32 %14(ptr noundef %3, i32 noundef 3) #7
  %conv = zext i32 %call6 to i64
  %add = add i64 %call, %conv
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add, ptr %addr, align 8
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4096, ptr %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ga102_chan_sclass(ptr nocapture noundef readnone %object, i32 noundef %index, ptr nocapture noundef writeonly %oclass) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nvkm_object_new, ptr %oclass, align 8
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %base, align 4
  %.compoundliteral.sroa.2.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.2.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 51125, ptr %.compoundliteral.sroa.3.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %.compoundliteral.sroa.4.0.base.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.base.sroa_idx = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.5.0.base.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.5.0.base.sroa_idx, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @ga102_fifo, !1, !"ga102_fifo", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c", i32 293, i32 1}
!2 = !{ptr @ga102_user_oclass, !3, !"ga102_user_oclass", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c", i32 253, i32 1}
!4 = !{ptr @ga102_chan_oclass, !5, !"ga102_chan_oclass", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c", i32 241, i32 1}
!6 = !{ptr @ga102_chan, !7, !"ga102_chan", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c", i32 140, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/ga102.c", i32 94, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 5393537}
!21 = !{i64 2156285325}
!22 = !{i64 2156285755}
!23 = !{i32 0, i32 33}
!24 = !{i64 2156276852}
!25 = !{i64 2156277254}
!26 = !{i64 5393119}
!27 = !{i64 2156277949}
!28 = !{i64 2156278671}
!29 = !{i64 2156279153}
!30 = !{i64 2156279571}
!31 = !{i64 2156279998}
!32 = !{i64 2156270628}
!33 = !{i64 2156271071}
!34 = !{i64 2156273044}
!35 = !{i64 2156274291}
!36 = !{i64 2156274709}
