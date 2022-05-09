; ModuleID = '/llk/IR_all_yes/block/blk-mq-virtio.c_pt.bc'
source_filename = "../block/blk-mq-virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_mq_virtio_map_queues\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_virtio_map_queues\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_virtio_map_queues\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_virtio_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_virtio_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_virtio_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blk_mq_virtio_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_virtio_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_virtio_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_virtio_map_queues to i32), ptr @__kstrtab_blk_mq_virtio_map_queues, ptr @__kstrtabns_blk_mq_virtio_map_queues }, section "___ksymtab_gpl+blk_mq_virtio_map_queues", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_mq_virtio_map_queues], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_virtio_map_queues(ptr noundef %qmap, ptr noundef %vdev, i32 noundef %first_vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get_vq_affinity = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %get_vq_affinity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_vq_affinity, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.fallback_crit_edge, label %for.cond.preheader

entry.fallback_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %fallback

for.cond.preheader:                               ; preds = %entry
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 1
  %4 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %qmap, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 8
  %get_vq_affinity2 = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %get_vq_affinity2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_vq_affinity2, align 4
  %add = add i32 %queue.030, %first_vec
  %call = tail call ptr %9(ptr noundef %vdev, i32 noundef %add) #3
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %for.body.fallback_crit_edge, label %for.cond6.preheader

for.body.fallback_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %fallback

for.cond6.preheader:                              ; preds = %for.body
  %call726 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %call) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call726, i32 %10)
  %cmp827 = icmp ult i32 %call726, %10
  br i1 %cmp827, label %for.cond6.preheader.for.body9_crit_edge, label %for.cond6.preheader.for.inc_crit_edge

for.cond6.preheader.for.inc_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.cond6.preheader.for.body9_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond6.preheader.for.body9_crit_edge
  %call728 = phi i32 [ %call7, %for.body9.for.body9_crit_edge ], [ %call726, %for.cond6.preheader.for.body9_crit_edge ]
  %11 = ptrtoint ptr %queue_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_offset, align 4
  %add10 = add i32 %12, %queue.030
  %13 = ptrtoint ptr %qmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qmap, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %call728
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add10, ptr %arrayidx, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call728, ptr noundef nonnull %call) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %16
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.inc_crit_edge

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body9

for.inc:                                          ; preds = %for.body9.for.inc_crit_edge, %for.cond6.preheader.for.inc_crit_edge
  %inc = add nuw i32 %queue.030, 1
  %17 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_queues, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

fallback:                                         ; preds = %for.body.fallback_crit_edge, %entry.fallback_crit_edge
  %call12 = tail call i32 @blk_mq_map_queues(ptr noundef %qmap) #3
  br label %cleanup

cleanup:                                          ; preds = %fallback, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %fallback ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_blk_mq_virtio_map_queues, !1, !"__ksymtab_blk_mq_virtio_map_queues", i1 false, i1 false}
!1 = !{!"../block/blk-mq-virtio.c", i32 46, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
