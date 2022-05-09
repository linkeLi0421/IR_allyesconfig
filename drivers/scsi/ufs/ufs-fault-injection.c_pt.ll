; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-fault-injection.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-fault-injection.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__param_str_trigger_eh = internal constant [23 x i8] c"ufshcd_core.trigger_eh\00", align 1
@ufs_fault_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ufs_fault_set, ptr @ufs_fault_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@g_trigger_eh_str = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@__param_trigger_eh = internal constant %struct.kernel_param { ptr @__param_str_trigger_eh, ptr null, ptr @ufs_fault_ops, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @g_trigger_eh_str } }, section "__param", align 4
@__UNIQUE_ID_trigger_eh200 = internal constant [97 x i8] c"ufshcd_core.parm=trigger_eh:Fault injection. trigger_eh=<interval>,<probability>,<space>,<times>\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [20 x i8] c"ufshcd_core.timeout\00", align 1
@g_timeout_str = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @ufs_fault_ops, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @g_timeout_str } }, section "__param", align 4
@__UNIQUE_ID_timeout201 = internal constant [91 x i8] c"ufshcd_core.parm=timeout:Fault injection. timeout=<interval>,<probability>,<space>,<times>\00", section ".modinfo", align 1
@ufs_trigger_eh_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_timeout_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufs_fault_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/ufs/ufs-fault-injection.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"ufs_fault_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 12, i32 38 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"g_trigger_eh_str\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 23, i32 13 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"g_timeout_str\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 29, i32 13 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"ufs_trigger_eh_attr\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"ufs_timeout_attr\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 33, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 51, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 39, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [42 x i8] c"../drivers/scsi/ufs/ufs-fault-injection.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 27, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_timeout201, ptr @__UNIQUE_ID_trigger_eh200, ptr @__param_timeout, ptr @__param_trigger_eh, ptr @ufs_fault_ops, ptr @g_trigger_eh_str, ptr @g_timeout_str, ptr @ufs_trigger_eh_attr, ptr @ufs_timeout_attr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fault_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_trigger_eh_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_timeout_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_trigger_eh_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_timeout_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ufs_trigger_eh() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @should_fail(ptr noundef nonnull @ufs_trigger_eh_attr, i32 noundef 1) #3
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ufs_fail_completion() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @should_fail(ptr noundef nonnull @ufs_timeout_attr, i32 noundef 1) #3
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_fault_set(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, @g_trigger_eh_str
  br i1 %cmp, label %entry.if.end44_crit_edge, label %if.end3

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.end3:                                          ; preds = %entry
  %cmp1 = icmp eq ptr %2, @g_timeout_str
  br i1 %cmp1, label %if.end3.if.end44_crit_edge, label %land.rhs

if.end3.if.end44_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

land.rhs:                                         ; preds = %if.end3
  %.b55 = load i1, ptr @ufs_fault_set.__already_done, align 1
  br i1 %.b55, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !35

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @ufs_fault_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end44:                                         ; preds = %if.end3.if.end44_crit_edge, %entry.if.end44_crit_edge
  %attr.060 = phi ptr [ @ufs_timeout_attr, %if.end3.if.end44_crit_edge ], [ @ufs_trigger_eh_attr, %entry.if.end44_crit_edge ]
  %call = tail call i32 @setup_fault_attr(ptr noundef nonnull %attr.060, ptr noundef %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool45.not = icmp eq i32 %call, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %call48 = tail call i32 @strlcpy(ptr noundef %4, ptr noundef %val, i32 noundef 80) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end44.cleanup_crit_edge, %if.then12, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %if.then12 ], [ -22, %if.end44.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_fault_get(ptr noundef %buffer, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buffer, ptr noundef nonnull @.str.1, ptr noundef %2) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_fault_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__param_trigger_eh, !1, !"__param_trigger_eh", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_trigger_eh200, !3, !"__UNIQUE_ID_trigger_eh200", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 25, i32 1}
!4 = !{ptr @__param_timeout, !5, !"__param_timeout", i1 false, i1 false}
!5 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_timeout201, !7, !"__UNIQUE_ID_timeout201", i1 false, i1 false}
!7 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 31, i32 1}
!8 = !{ptr @g_trigger_eh_str, !9, !"g_trigger_eh_str", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 23, i32 13}
!10 = !{ptr @g_timeout_str, !11, !"g_timeout_str", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 29, i32 13}
!12 = !{ptr @__param_str_trigger_eh, !1, !"__param_str_trigger_eh", i1 false, i1 false}
!13 = !{ptr @ufs_fault_ops, !14, !"ufs_fault_ops", i1 false, i1 false}
!14 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 12, i32 38}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 51, i32 6}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 39, i32 28}
!20 = !{ptr @__param_str_timeout, !5, !"__param_str_timeout", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 27, i32 8}
!23 = !{ptr @ufs_trigger_eh_attr, !22, !"ufs_trigger_eh_attr", i1 false, i1 false}
!24 = !{ptr @ufs_timeout_attr, !25, !"ufs_timeout_attr", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ufs/ufs-fault-injection.c", i32 33, i32 8}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
