; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-ic-common.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-ic-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx_ic_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.imx_ic_priv = type { ptr, ptr, %struct.v4l2_subdev, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ic_ops = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @imx_ic_prpencvf_ops, ptr @imx_ic_prpencvf_ops, ptr null, ptr @imx_ic_prp_ops], [16 x i8] zeroinitializer }, align 32
@imx_media_ic_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: Removing\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_media_ic_unregister\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/imx/imx-ic-common.c\00", [54 x i8] zeroinitializer }, align 32
@imx_media_ic_unregister._entry_ptr = internal global ptr @imx_media_ic_unregister._entry, section ".printk_index", align 4
@imx_ic_prpencvf_ops = external dso_local global %struct.imx_ic_ops, align 4
@imx_ic_prp_ops = external dso_local global %struct.imx_ic_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8192, i64 16384, i64 32768]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"ic_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 15, i32 27 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [45 x i8] c"../drivers/staging/media/imx/imx-ic-common.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 79, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @imx_media_ic_unregister._entry, ptr @imx_media_ic_unregister._entry_ptr, ptr @ic_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_ic_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_ic_register(ptr noundef %v4l2_dev, ptr noundef %ipu_dev, ptr noundef %ipu, i32 noundef %grp_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ipu_dev, i32 noundef 212, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ipu_dev, ptr %call.i, align 4
  %ipu3 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ipu3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ipu, ptr %ipu3, align 4
  %2 = zext i32 %grp_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %grp_id, label %if.end.cleanup_crit_edge [
    i32 8192, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb4
    i32 32768, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb6 ], [ 0, %sw.bb4 ], [ 3, %if.end.sw.epilog_crit_edge ]
  %task_id7 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %task_id7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %task_id7, align 4
  %sd = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2
  %task_id9 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 3
  %arrayidx = getelementptr [4 x ptr], ptr @ic_ops, i32 0, i32 %.sink
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef %7) #3
  %dev_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %9 = ptrtoint ptr %task_id9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %task_id9, align 4
  %arrayidx12 = getelementptr [4 x ptr], ptr @ic_ops, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %internal_ops = getelementptr inbounds %struct.imx_ic_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %internal_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %internal_ops, align 4
  %internal_ops14 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %internal_ops14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %internal_ops14, align 4
  %entity_ops = getelementptr inbounds %struct.imx_ic_ops, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %entity_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity_ops, align 4
  %ops = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ops, align 4
  %function = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16389, ptr %function, align 4
  %driver = getelementptr inbounds %struct.device, ptr %ipu_dev, i32 0, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner, align 4
  %owner21 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %owner21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %owner21, align 4
  %flags = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %flags, align 4
  %grp_id24 = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %grp_id24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %grp_id, ptr %grp_id24, align 4
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %call.i, i32 0, i32 2, i32 9
  %call28 = tail call i32 @ipu_get_num(ptr noundef %ipu) #3
  tail call void @imx_media_grp_id_to_sd_name(ptr noundef %name, i32 noundef 32, i32 noundef %grp_id, i32 noundef %call28) #3
  %27 = ptrtoint ptr %task_id9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %task_id9, align 4
  %arrayidx30 = getelementptr [4 x ptr], ptr @ic_ops, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx30, align 4
  %init = getelementptr inbounds %struct.imx_ic_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init, align 4
  %call31 = tail call i32 %32(ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %33 = inttoptr i32 %call31 to ptr
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog
  %call37 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %sd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.then39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %task_id9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %task_id9, align 4
  %arrayidx41 = getelementptr [4 x ptr], ptr @ic_ops, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx41, align 4
  %remove = getelementptr inbounds %struct.imx_ic_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remove, align 4
  tail call void %39(ptr noundef nonnull %call.i) #3
  %40 = inttoptr i32 %call37 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end35.cleanup_crit_edge, %if.then33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %if.then33 ], [ %40, %if.then39 ], [ %sd, %if.end35.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_grp_id_to_sd_name(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_get_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_ic_unregister(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sd, i32 -8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #6
  %task_id = getelementptr i8, ptr %sd, i32 196
  %0 = ptrtoint ptr %task_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %task_id, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @ic_ops, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %remove = getelementptr inbounds %struct.imx_ic_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  tail call void %5(ptr noundef %add.ptr) #3
  tail call void @v4l2_device_unregister_subdev(ptr noundef %sd) #3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-ic-common.c", i32 79, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @imx_media_ic_unregister._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @imx_media_ic_unregister._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ic_ops, !7, !"ic_ops", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-ic-common.c", i32 15, i32 27}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
