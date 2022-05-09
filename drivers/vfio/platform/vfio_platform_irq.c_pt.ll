; ModuleID = '/llk/IR_all_yes/drivers/vfio/platform/vfio_platform_irq.c_pt.bc'
source_filename = "../drivers/vfio/platform/vfio_platform_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vfio_platform_device = type { %struct.vfio_device, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vfio_platform_irq = type { i32, i32, i32, ptr, ptr, i8, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@vfio_platform_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vdev->irqs[i].lock\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfio-irq[%d](%s)\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 299, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [45 x i8] c"../drivers/vfio/platform/vfio_platform_irq.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 190, i32 36 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @vfio_platform_irq_init.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_platform_set_irqs_ioctl(ptr noundef %vdev, i32 noundef %flags, i32 noundef %index, i32 noundef %start, i32 noundef %count, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 56
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 8, label %entry.if.end_crit_edge
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %sw.bb2, %sw.bb1, %entry.if.end_crit_edge
  %func.0.ph = phi ptr [ @vfio_platform_set_irq_unmask, %sw.bb1 ], [ @vfio_platform_set_irq_trigger, %sw.bb2 ], [ @vfio_platform_set_irq_mask, %entry.if.end_crit_edge ]
  %call = tail call i32 %func.0.ph(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr noundef %data) #4, !callees !14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_set_irq_mask(ptr nocapture noundef readonly %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp.not = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp1.not = icmp eq i32 %count, 1
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp8 = icmp sgt i32 %5, -1
  %mask = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 8
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @vfio_virqfd_enable(ptr noundef %arrayidx, ptr noundef nonnull @vfio_platform_mask_handler, ptr noundef null, ptr noundef null, ptr noundef %mask, i32 noundef %5) #4
  br label %return

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfio_virqfd_disable(ptr noundef %mask) #4
  br label %return

if.end18:                                         ; preds = %if.end4
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %lock.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %masked.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 5
  %6 = ptrtoint ptr %masked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %masked.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then21.vfio_platform_mask.exit_crit_edge

if.then21.vfio_platform_mask.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_mask.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %9) #4
  %10 = ptrtoint ptr %masked.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %masked.i, align 4
  br label %vfio_platform_mask.exit

vfio_platform_mask.exit:                          ; preds = %if.then.i, %if.then21.vfio_platform_mask.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  br label %return

if.else:                                          ; preds = %if.end18
  %and24 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.return_crit_edge, label %if.then26

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then26:                                        ; preds = %if.else
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.then26.return_crit_edge, label %if.then29

if.then26.return_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then29:                                        ; preds = %if.then26
  %lock.i49 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 6
  %call2.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i49) #4
  %masked.i51 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 5
  %13 = ptrtoint ptr %masked.i51 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %masked.i51, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i52 = icmp eq i8 %14, 0
  br i1 %tobool.not.i52, label %if.then.i54, label %if.then29.vfio_platform_mask.exit55_crit_edge

if.then29.vfio_platform_mask.exit55_crit_edge:    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_mask.exit55

if.then.i54:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i53 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %15 = ptrtoint ptr %hwirq.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwirq.i53, align 4
  tail call void @disable_irq_nosync(i32 noundef %16) #4
  %17 = ptrtoint ptr %masked.i51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %masked.i51, align 4
  br label %vfio_platform_mask.exit55

vfio_platform_mask.exit55:                        ; preds = %if.then.i54, %if.then29.vfio_platform_mask.exit55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i49, i32 noundef %call2.i50) #4
  br label %return

return:                                           ; preds = %vfio_platform_mask.exit55, %if.then26.return_crit_edge, %if.else.return_crit_edge, %vfio_platform_mask.exit, %if.end14, %if.then9, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %call, %if.then9 ], [ 0, %if.end14 ], [ 0, %if.then26.return_crit_edge ], [ 0, %vfio_platform_mask.exit55 ], [ 0, %if.else.return_crit_edge ], [ 0, %vfio_platform_mask.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_set_irq_unmask(ptr nocapture noundef readonly %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp.not = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp1.not = icmp eq i32 %count, 1
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp8 = icmp sgt i32 %5, -1
  %unmask = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 7
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @vfio_virqfd_enable(ptr noundef %arrayidx, ptr noundef nonnull @vfio_platform_unmask_handler, ptr noundef null, ptr noundef null, ptr noundef %unmask, i32 noundef %5) #4
  br label %return

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfio_virqfd_disable(ptr noundef %unmask) #4
  br label %return

if.end18:                                         ; preds = %if.end4
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %lock.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %masked.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 5
  %6 = ptrtoint ptr %masked.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %masked.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then21.vfio_platform_unmask.exit_crit_edge, label %if.then.i

if.then21.vfio_platform_unmask.exit_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_unmask.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  tail call void @enable_irq(i32 noundef %9) #4
  %10 = ptrtoint ptr %masked.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %masked.i, align 4
  br label %vfio_platform_unmask.exit

vfio_platform_unmask.exit:                        ; preds = %if.then.i, %if.then21.vfio_platform_unmask.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  br label %return

if.else:                                          ; preds = %if.end18
  %and24 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.return_crit_edge, label %if.then26

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then26:                                        ; preds = %if.else
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.then26.return_crit_edge, label %if.then29

if.then26.return_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then29:                                        ; preds = %if.then26
  %lock.i49 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 6
  %call2.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i49) #4
  %masked.i51 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 5
  %13 = ptrtoint ptr %masked.i51 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %masked.i51, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i52 = icmp eq i8 %14, 0
  br i1 %tobool.not.i52, label %if.then29.vfio_platform_unmask.exit55_crit_edge, label %if.then.i54

if.then29.vfio_platform_unmask.exit55_crit_edge:  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_unmask.exit55

if.then.i54:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i53 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %15 = ptrtoint ptr %hwirq.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwirq.i53, align 4
  tail call void @enable_irq(i32 noundef %16) #4
  %17 = ptrtoint ptr %masked.i51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %masked.i51, align 4
  br label %vfio_platform_unmask.exit55

vfio_platform_unmask.exit55:                      ; preds = %if.then.i54, %if.then29.vfio_platform_unmask.exit55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i49, i32 noundef %call2.i50) #4
  br label %return

return:                                           ; preds = %vfio_platform_unmask.exit55, %if.then26.return_crit_edge, %if.else.return_crit_edge, %vfio_platform_unmask.exit, %if.end14, %if.then9, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %call, %if.then9 ], [ 0, %if.end14 ], [ 0, %if.then26.return_crit_edge ], [ 0, %vfio_platform_unmask.exit55 ], [ 0, %if.else.return_crit_edge ], [ 0, %vfio_platform_unmask.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_set_irq_trigger(ptr nocapture noundef readonly %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %vfio_irq_handler.vfio_automasked_irq_handler = select i1 %tobool.not, ptr @vfio_irq_handler, ptr @vfio_automasked_irq_handler
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not = icmp ne i32 %count, 0
  %and5 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = or i1 %tobool4.not, %tobool6.not
  br i1 %or.cond, label %if.end8, label %if.then7

if.then7:                                         ; preds = %entry
  %trigger1.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 4
  %4 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigger1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  tail call void @irq_modify_status(i32 noundef %7, i32 noundef 4096, i32 noundef 0) #4
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef %arrayidx) #4
  %name.i = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 3
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %11) #4
  %12 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trigger1.i, align 4
  tail call void @eventfd_ctx_put(ptr noundef %13) #4
  %14 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %trigger1.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp.not = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp9.not = icmp eq i32 %count, 1
  %or.cond50 = and i1 %cmp.not, %cmp9.not
  br i1 %or.cond50, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %and12 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %call15 = tail call fastcc i32 @vfio_set_trigger(ptr noundef %vdev, i32 noundef %index, i32 noundef %16, ptr noundef nonnull %vfio_irq_handler.vfio_automasked_irq_handler)
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  br i1 %tobool6.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %17 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq, align 4
  %call20 = tail call i32 %vfio_irq_handler.vfio_automasked_irq_handler(i32 noundef %18, ptr noundef %arrayidx) #4, !callees !16
  br label %cleanup

if.else21:                                        ; preds = %if.end16
  %and22 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else21.cleanup_crit_edge, label %if.then24

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24:                                        ; preds = %if.else21
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %if.then24.cleanup_crit_edge, label %if.then26

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq27 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %21 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwirq27, align 4
  %call28 = tail call i32 %vfio_irq_handler.vfio_automasked_irq_handler(i32 noundef %22, ptr noundef %arrayidx) #4, !callees !16
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then24.cleanup_crit_edge, %if.else21.cleanup_crit_edge, %if.then19, %if.then14, %if.end8.cleanup_crit_edge, %if.then.i, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.else21.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_platform_irq_init(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %get_irq = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %get_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_irq, align 4
  %call = tail call i32 %1(ptr noundef %vdev, i32 noundef %cnt.0) #4
  %cmp = icmp sgt i32 %call, -1
  %inc = add i32 %cnt.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cnt.0, i32 76) #4
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !17

kcalloc.exit.thread:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %irqs59 = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %4 = ptrtoint ptr %irqs59 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %irqs59, align 4
  br label %cleanup29

if.end7.i.i:                                      ; preds = %while.end
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #7
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %6 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %irqs, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup29_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup29_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup29

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %cmp365.not = icmp eq i32 %cnt.0, 0
  br i1 %cmp365.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %get_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_irq, align 4
  %call5 = tail call i32 %8(ptr noundef %vdev, i32 noundef %i.066) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %9 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irqs, align 4
  br i1 %cmp6, label %err, label %do.body

do.body:                                          ; preds = %for.body
  %lock = getelementptr %struct.vfio_platform_irq, ptr %10, i32 %i.066, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vfio_platform_irq_init.__key, i16 noundef signext 3) #4
  %11 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs, align 4
  %arrayidx12 = getelementptr %struct.vfio_platform_irq, ptr %12, i32 %i.066
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx12, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %call5) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.for.inc_crit_edge, label %irq_get_trigger_type.exit

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

irq_get_trigger_type.exit:                        ; preds = %do.body
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and = and i32 %17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %irq_get_trigger_type.exit.for.inc_crit_edge, label %if.then15

irq_get_trigger_type.exit.for.inc_crit_edge:      ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then15:                                        ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irqs, align 4
  %arrayidx17 = getelementptr %struct.vfio_platform_irq, ptr %19, i32 %i.066
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17, align 4
  %or = or i32 %21, 6
  store i32 %or, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %irq_get_trigger_type.exit.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %22 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irqs, align 4
  %count = getelementptr %struct.vfio_platform_irq, ptr %23, i32 %i.066, i32 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count, align 4
  %25 = load ptr, ptr %irqs, align 4
  %hwirq24 = getelementptr %struct.vfio_platform_irq, ptr %25, i32 %i.066, i32 2
  %26 = ptrtoint ptr %hwirq24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call5, ptr %hwirq24, align 4
  %27 = load ptr, ptr %irqs, align 4
  %masked = getelementptr %struct.vfio_platform_irq, ptr %27, i32 %i.066, i32 5
  %28 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %masked, align 4
  %inc27 = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc27, %cnt.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 4
  %29 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cnt.0, ptr %num_irqs, align 4
  br label %cleanup29

err:                                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %10) #4
  br label %cleanup29

cleanup29:                                        ; preds = %err, %for.end, %if.end7.i.i.cleanup29_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -22, %err ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup29_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_platform_irq_cleanup(ptr nocapture noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irqs.i = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %vfio_set_trigger.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vfio_set_trigger.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqs.i, align 4
  %trigger1.i = getelementptr %struct.vfio_platform_irq, ptr %3, i32 %i.08, i32 4
  %4 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigger1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.vfio_set_trigger.exit_crit_edge, label %if.then.i

for.body.vfio_set_trigger.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_set_trigger.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.vfio_platform_irq, ptr %3, i32 %i.08
  %hwirq.i = getelementptr %struct.vfio_platform_irq, ptr %3, i32 %i.08, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  tail call void @irq_modify_status(i32 noundef %7, i32 noundef 4096, i32 noundef 0) #4
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef %arrayidx.i) #4
  %name.i = getelementptr %struct.vfio_platform_irq, ptr %3, i32 %i.08, i32 3
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %11) #4
  %12 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trigger1.i, align 4
  tail call void @eventfd_ctx_put(ptr noundef %13) #4
  %14 = ptrtoint ptr %trigger1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %trigger1.i, align 4
  br label %vfio_set_trigger.exit

vfio_set_trigger.exit:                            ; preds = %if.then.i, %for.body.vfio_set_trigger.exit_crit_edge
  %inc = add nuw i32 %i.08, 1
  %15 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %vfio_set_trigger.exit.for.body_crit_edge, label %vfio_set_trigger.exit.for.end_crit_edge

vfio_set_trigger.exit.for.end_crit_edge:          ; preds = %vfio_set_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

vfio_set_trigger.exit.for.body_crit_edge:         ; preds = %vfio_set_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %vfio_set_trigger.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_irqs, align 4
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %18 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irqs, align 4
  tail call void @kfree(ptr noundef %19) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_set_trigger(ptr nocapture noundef readonly %vdev, i32 noundef %index, i32 noundef %fd, ptr noundef %handler) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index
  %trigger1 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 4
  %2 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  tail call void @irq_modify_status(i32 noundef %5, i32 noundef 4096, i32 noundef 0) #4
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %arrayidx) #4
  %name = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %9) #4
  %10 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigger1, align 4
  tail call void @eventfd_ctx_put(ptr noundef %11) #4
  %12 = ptrtoint ptr %trigger1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %trigger1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp = icmp slt i32 %fd, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hwirq7 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 2
  %13 = ptrtoint ptr %hwirq7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq7, align 4
  %name8 = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 11
  %15 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name8, align 4
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %14, ptr noundef %16) #4
  %name10 = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 3
  %17 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %name10, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @eventfd_ctx_fdget(i32 noundef %fd) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name10, align 4
  tail call void @kfree(ptr noundef %19) #4
  %20 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %trigger1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15, ptr %trigger1, align 4
  %22 = ptrtoint ptr %hwirq7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwirq7, align 4
  tail call void @irq_modify_status(i32 noundef %23, i32 noundef 0, i32 noundef 4096) #4
  %24 = ptrtoint ptr %hwirq7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwirq7, align 4
  %26 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name10, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef %handler, ptr noundef null, i32 noundef 0, ptr noundef %27, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name10, align 4
  tail call void @kfree(ptr noundef %29) #4
  tail call void @eventfd_ctx_put(ptr noundef %call15) #4
  %30 = ptrtoint ptr %trigger1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %trigger1, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %masked = getelementptr %struct.vfio_platform_irq, ptr %1, i32 %index, i32 5
  %31 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %masked, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool31.not = icmp eq i8 %32, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %hwirq7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwirq7, align 4
  tail call void @enable_irq(i32 noundef %34) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30.cleanup_crit_edge, %if.then27, %if.then17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then17 ], [ %call.i, %if.then27 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_virqfd_enable(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_mask_handler(ptr noundef %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %masked.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 5
  %0 = ptrtoint ptr %masked.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %masked.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.vfio_platform_mask.exit_crit_edge

entry.vfio_platform_mask.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #4
  %4 = ptrtoint ptr %masked.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %masked.i, align 4
  br label %vfio_platform_mask.exit

vfio_platform_mask.exit:                          ; preds = %if.then.i, %entry.vfio_platform_mask.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_virqfd_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_unmask_handler(ptr noundef %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %masked.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 5
  %0 = ptrtoint ptr %masked.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %masked.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.vfio_platform_unmask.exit_crit_edge, label %if.then.i

entry.vfio_platform_unmask.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfio_platform_unmask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq.i = getelementptr inbounds %struct.vfio_platform_irq, ptr %opaque, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  tail call void @enable_irq(i32 noundef %3) #4
  %4 = ptrtoint ptr %masked.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %masked.i, align 4
  br label %vfio_platform_unmask.exit

vfio_platform_unmask.exit:                        ; preds = %if.then.i, %entry.vfio_platform_unmask.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_automasked_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vfio_platform_irq, ptr %dev_id, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %masked = getelementptr inbounds %struct.vfio_platform_irq, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %masked, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  br label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hwirq = getelementptr inbounds %struct.vfio_platform_irq, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #4
  %4 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %masked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  %trigger = getelementptr inbounds %struct.vfio_platform_irq, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trigger, align 4
  %call10 = tail call i64 @eventfd_signal(ptr noundef %6, i64 noundef 1) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %ret.019 = phi i32 [ 1, %if.then9 ], [ 0, %if.end ]
  ret i32 %ret.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.vfio_platform_irq, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %call = tail call i64 @eventfd_signal(ptr noundef %1, i64 noundef 1) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @vfio_platform_irq_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/vfio/platform/vfio_platform_irq.c", i32 299, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/vfio/platform/vfio_platform_irq.c", i32 190, i32 36}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{ptr @vfio_platform_set_irq_mask, ptr @vfio_platform_set_irq_trigger, ptr @vfio_platform_set_irq_unmask}
!15 = !{i8 0, i8 2}
!16 = !{ptr @vfio_automasked_irq_handler, ptr @vfio_irq_handler}
!17 = !{!"branch_weights", i32 1, i32 2000}
