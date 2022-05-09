; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/common.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fimc_find_remote_sensor\22, \22a\22\09"
module asm "\09.weak\09__crc_fimc_find_remote_sensor\09\09\09\09"
module asm "\09.long\09__crc_fimc_find_remote_sensor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fimc_find_remote_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22fimc_find_remote_sensor\22\09\09\09\09\09"
module asm "__kstrtabns_fimc_find_remote_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__fimc_vidioc_querycap\22, \22a\22\09"
module asm "\09.weak\09__crc___fimc_vidioc_querycap\09\09\09\09"
module asm "\09.long\09__crc___fimc_vidioc_querycap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fimc_vidioc_querycap:\09\09\09\09\09"
module asm "\09.asciz \09\22__fimc_vidioc_querycap\22\09\09\09\09\09"
module asm "__kstrtabns___fimc_vidioc_querycap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }

@__kstrtab_fimc_find_remote_sensor = external dso_local constant [0 x i8], align 1
@__kstrtabns_fimc_find_remote_sensor = external dso_local constant [0 x i8], align 1
@__ksymtab_fimc_find_remote_sensor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fimc_find_remote_sensor to i32), ptr @__kstrtab_fimc_find_remote_sensor, ptr @__kstrtabns_fimc_find_remote_sensor }, section "___ksymtab+fimc_find_remote_sensor", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab___fimc_vidioc_querycap = external dso_local constant [0 x i8], align 1
@__kstrtabns___fimc_vidioc_querycap = external dso_local constant [0 x i8], align 1
@__ksymtab___fimc_vidioc_querycap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fimc_vidioc_querycap to i32), ptr @__kstrtab___fimc_vidioc_querycap, ptr @__kstrtabns___fimc_vidioc_querycap }, section "___ksymtab+__fimc_vidioc_querycap", align 4
@__UNIQUE_ID_file292 = internal constant [75 x i8] c"exynos4_is_common.file=drivers/media/platform/exynos4-is/exynos4-is-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"exynos4_is_common.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [46 x i8] c"../drivers/media/platform/exynos4-is/common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 42, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab___fimc_vidioc_querycap, ptr @__ksymtab_fimc_find_remote_sensor, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fimc_find_remote_sensor(ptr nocapture noundef readonly %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %entity.pn = phi ptr [ %entity, %entry ], [ %4, %if.end.while.cond_crit_edge ]
  %pad.0.in = getelementptr inbounds %struct.media_entity, ptr %entity.pn, i32 0, i32 9
  %0 = ptrtoint ptr %pad.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pad.0 = load ptr, ptr %pad.0.in, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %pad.0, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %pad.0) #3
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %lor.lhs.false

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.body
  %entity2 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entity2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.end, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %grp_id, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.while.cond_crit_edge [
    i32 512, label %if.end.cleanup_crit_edge
    i32 256, label %if.end.cleanup_crit_edge25
  ]

if.end.cleanup_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge25, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.end.cleanup_crit_edge ], [ %4, %if.end.cleanup_crit_edge25 ], [ null, %while.body.cleanup_crit_edge ], [ null, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fimc_vidioc_querycap(ptr nocapture noundef readonly %dev, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %3, i32 noundef 16) #3
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %4 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %7, i32 noundef 32) #3
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_fimc_find_remote_sensor, !1, !"__ksymtab_fimc_find_remote_sensor", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/common.c", i32 35, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/exynos4-is/common.c", i32 42, i32 5}
!4 = !{ptr @__ksymtab___fimc_vidioc_querycap, !5, !"__ksymtab___fimc_vidioc_querycap", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/exynos4-is/common.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/common.c", i32 46, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
