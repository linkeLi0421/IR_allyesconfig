; ModuleID = '/llk/IR_all_yes/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c_pt.bc'
source_filename = "../drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vfio_fsl_mc_device = type { %struct.vfio_device, ptr, %struct.notifier_block, ptr, %struct.mutex, ptr }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.vfio_fsl_mc_irq = type { i32, i32, ptr, ptr }
%struct.vfio_device_set = type { ptr, %struct.mutex, %struct.list_head, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio-irq[%d](%s)\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 81, i32 36 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_fsl_mc_set_irqs_ioctl(ptr nocapture noundef %vdev, i32 noundef %flags, i32 noundef %index, i32 noundef %start, i32 noundef %count, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  %mc_dev1.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1.i, align 4
  %flags2.i = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags2.i, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.then.cond.end.i_crit_edge

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %cond.i = phi ptr [ %6, %cond.false.i ], [ %1, %if.then.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool8.not.i = icmp ne i32 %count, 0
  %and9.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = or i1 %tobool10.not.i, %tobool8.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  %mc_irqs.i.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 5
  %7 = ptrtoint ptr %mc_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_irqs.i.i, align 4
  %trigger2.i.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %8, i32 %index, i32 2
  %9 = ptrtoint ptr %trigger2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trigger2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.return_crit_edge, label %if.then.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %irqs.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs.i.i, align 8
  %arrayidx1.i.i = getelementptr ptr, ptr %12, i32 %index
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %arrayidx.i.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %8, i32 %index
  %call.i.i = tail call ptr @free_irq(i32 noundef %16, ptr noundef %arrayidx.i.i) #4
  %name.i.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %8, i32 %index, i32 3
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 4
  tail call void @kfree(ptr noundef %18) #4
  %19 = ptrtoint ptr %trigger2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trigger2.i.i, align 4
  tail call void @eventfd_ctx_put(ptr noundef %20) #4
  %21 = ptrtoint ptr %trigger2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %trigger2.i.i, align 4
  br label %return

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp.not.i = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp12.not.i = icmp eq i32 %count, 1
  %or.cond78.i = and i1 %cmp.not.i, %cmp12.not.i
  br i1 %or.cond78.i, label %if.end15.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end15.i:                                       ; preds = %if.end.i
  %dev_set.i = getelementptr inbounds %struct.vfio_device, ptr %vdev, i32 0, i32 3
  %22 = ptrtoint ptr %dev_set.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_set.i, align 4
  %lock.i = getelementptr inbounds %struct.vfio_device_set, ptr %23, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %call17.i = tail call i32 @fsl_mc_populate_irq_pool(ptr noundef %cond.i, i32 noundef 256) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.unlock.i_crit_edge

if.end15.i.unlock.i_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock.i

if.end20.i:                                       ; preds = %if.end15.i
  %24 = ptrtoint ptr %mc_dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mc_dev1.i, align 4
  %irq_count2.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %25, i32 0, i32 6, i32 5
  %26 = ptrtoint ptr %irq_count2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %irq_count2.i.i, align 2
  %conv.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i.i = icmp eq i8 %27, 0
  br i1 %cmp.i.i, label %if.end20.i.if.end24.i_crit_edge, label %if.end.i.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

if.end.i.i:                                       ; preds = %if.end20.i
  %mc_irqs.i79.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 5
  %28 = ptrtoint ptr %mc_irqs.i79.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mc_irqs.i79.i, align 4
  %tobool.not.i80.i = icmp eq ptr %29, null
  br i1 %tobool.not.i80.i, label %if.end7.i.i.i.i, label %if.end.i.i.if.end24.i_crit_edge

if.end.i.i.if.end24.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %30 = shl nuw nsw i32 %conv.i.i, 4
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #7
  %tobool9.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.end7.i.i.i.i.unlock.i_crit_edge, label %if.end11.i.i

if.end7.i.i.i.i.unlock.i_crit_edge:               ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock.i

if.end11.i.i:                                     ; preds = %if.end7.i.i.i.i
  %call12.i.i = tail call i32 @fsl_mc_allocate_irqs(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %for.body.preheader.i.i, label %if.then14.i.i

for.body.preheader.i.i:                           ; preds = %if.end11.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %conv.i.i, i32 1) #4
  br label %for.body.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #4
  br label %unlock.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.044.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i81.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %call8.i.i.i.i, i32 %i.044.i.i
  %count.i.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %call8.i.i.i.i, i32 %i.044.i.i, i32 1
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %count.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx.i81.i, align 16
  %inc.i.i = add nuw nsw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %mc_irqs.i79.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i.i, ptr %mc_irqs.i79.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %for.end.i.i, %if.end.i.i.if.end24.i_crit_edge, %if.end20.i.if.end24.i_crit_edge
  %34 = ptrtoint ptr %dev_set.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_set.i, align 4
  %lock27.i = getelementptr inbounds %struct.vfio_device_set, ptr %35, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock27.i) #4
  %and28.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end32.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  %call31.i = tail call fastcc i32 @vfio_set_trigger(ptr noundef %vdev, i32 noundef %index, i32 noundef %37) #4
  br label %return

if.end32.i:                                       ; preds = %if.end24.i
  %mc_irqs.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 5
  %38 = ptrtoint ptr %mc_irqs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc_irqs.i, align 4
  br i1 %tobool10.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %trigger.i.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %39, i32 %index, i32 2
  %40 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trigger.i.i, align 4
  %call.i82.i = tail call i64 @eventfd_signal(ptr noundef %41, i64 noundef 1) #4
  br label %return

if.else.i:                                        ; preds = %if.end32.i
  %and39.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else.i.return_crit_edge, label %if.then41.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then41.i:                                      ; preds = %if.else.i
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool42.not.i = icmp eq i8 %43, 0
  br i1 %tobool42.not.i, label %if.then41.i.return_crit_edge, label %if.then43.i

if.then41.i.return_crit_edge:                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then43.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #6
  %trigger.i83.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %39, i32 %index, i32 2
  %44 = ptrtoint ptr %trigger.i83.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trigger.i83.i, align 4
  %call.i84.i = tail call i64 @eventfd_signal(ptr noundef %45, i64 noundef 1) #4
  br label %return

unlock.i:                                         ; preds = %if.then14.i.i, %if.end7.i.i.i.i.unlock.i_crit_edge, %if.end15.i.unlock.i_crit_edge
  %ret.0.i = phi i32 [ %call17.i, %if.end15.i.unlock.i_crit_edge ], [ %call12.i.i, %if.then14.i.i ], [ -12, %if.end7.i.i.i.i.unlock.i_crit_edge ]
  %46 = ptrtoint ptr %dev_set.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_set.i, align 4
  %lock50.i = getelementptr inbounds %struct.vfio_device_set, ptr %47, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock50.i) #4
  br label %return

return:                                           ; preds = %unlock.i, %if.then43.i, %if.then41.i.return_crit_edge, %if.else.i.return_crit_edge, %if.then37.i, %if.then30.i, %if.end.i.return_crit_edge, %if.then.i.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %ret.0.i, %unlock.i ], [ %call31.i, %if.then30.i ], [ -22, %if.end.i.return_crit_edge ], [ 0, %if.then41.i.return_crit_edge ], [ 0, %if.then43.i ], [ 0, %if.else.i.return_crit_edge ], [ 0, %if.then37.i ], [ 0, %if.then.i.return_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_fsl_mc_irqs_cleanup(ptr nocapture noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %irq_count2 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %irq_count2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_count2, align 2
  %conv = zext i8 %3 to i32
  %mc_irqs = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 5
  %4 = ptrtoint ptr %mc_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_irqs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp15.not = icmp eq i8 %3, 0
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %vfio_set_trigger.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %vfio_set_trigger.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %mc_irqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_irqs, align 4
  %trigger2.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %7, i32 %i.016, i32 2
  %8 = ptrtoint ptr %trigger2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trigger2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.vfio_set_trigger.exit_crit_edge, label %if.then.i

for.body.vfio_set_trigger.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_set_trigger.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_dev1, align 4
  %irqs.i = getelementptr inbounds %struct.fsl_mc_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irqs.i, align 8
  %arrayidx1.i = getelementptr ptr, ptr %13, i32 %i.016
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %arrayidx.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %7, i32 %i.016
  %call.i = tail call ptr @free_irq(i32 noundef %17, ptr noundef %arrayidx.i) #4
  %name.i = getelementptr %struct.vfio_fsl_mc_irq, ptr %7, i32 %i.016, i32 3
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %19) #4
  %20 = ptrtoint ptr %trigger2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trigger2.i, align 4
  tail call void @eventfd_ctx_put(ptr noundef %21) #4
  %22 = ptrtoint ptr %trigger2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %trigger2.i, align 4
  br label %vfio_set_trigger.exit

vfio_set_trigger.exit:                            ; preds = %if.then.i, %for.body.vfio_set_trigger.exit_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %vfio_set_trigger.exit.for.end_crit_edge, label %vfio_set_trigger.exit.for.body_crit_edge

vfio_set_trigger.exit.for.body_crit_edge:         ; preds = %vfio_set_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

vfio_set_trigger.exit.for.end_crit_edge:          ; preds = %vfio_set_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %vfio_set_trigger.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @fsl_mc_free_irqs(ptr noundef %1) #4
  %23 = ptrtoint ptr %mc_irqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_irqs, align 4
  tail call void @kfree(ptr noundef %24) #4
  %25 = ptrtoint ptr %mc_irqs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mc_irqs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_set_trigger(ptr nocapture noundef readonly %vdev, i32 noundef %index, i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_irqs = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %mc_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_irqs, align 4
  %arrayidx = getelementptr %struct.vfio_fsl_mc_irq, ptr %1, i32 %index
  %mc_dev = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %mc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_dev, align 4
  %irqs = getelementptr inbounds %struct.fsl_mc_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqs, align 8
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %index
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %trigger2 = getelementptr %struct.vfio_fsl_mc_irq, ptr %1, i32 %index, i32 2
  %10 = ptrtoint ptr %trigger2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigger2, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @free_irq(i32 noundef %9, ptr noundef %arrayidx) #4
  %name = getelementptr %struct.vfio_fsl_mc_irq, ptr %1, i32 %index, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %13) #4
  %14 = ptrtoint ptr %trigger2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trigger2, align 4
  tail call void @eventfd_ctx_put(ptr noundef %15) #4
  %16 = ptrtoint ptr %trigger2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %trigger2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp = icmp slt i32 %fd, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %17 = ptrtoint ptr %mc_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end6.dev_name.exit_crit_edge ]
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %9, ptr noundef %retval.0.i) #4
  %name10 = getelementptr %struct.vfio_fsl_mc_irq, ptr %1, i32 %index, i32 3
  %23 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9, ptr %name10, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %dev_name.exit.cleanup_crit_edge, label %if.end14

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %dev_name.exit
  %call15 = tail call ptr @eventfd_ctx_fdget(i32 noundef %fd) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name10, align 4
  tail call void @kfree(ptr noundef %25) #4
  %26 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %27 = ptrtoint ptr %trigger2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call15, ptr %trigger2, align 4
  %28 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name10, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @vfio_fsl_mc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %29, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name10, align 4
  tail call void @kfree(ptr noundef %31) #4
  tail call void @eventfd_ctx_put(ptr noundef %call15) #4
  %32 = ptrtoint ptr %trigger2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %trigger2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end20.cleanup_crit_edge, %if.then17, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then17 ], [ %call.i, %if.then25 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_free_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_populate_irq_pool(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_irq_handler(i32 noundef %irq_num, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.vfio_fsl_mc_irq, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %call = tail call i64 @eventfd_signal(ptr noundef %1, i64 noundef 1) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_allocate_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c", i32 81, i32 36}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
