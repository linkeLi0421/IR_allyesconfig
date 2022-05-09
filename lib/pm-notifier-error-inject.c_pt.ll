; ModuleID = '/llk/IR_all_yes/lib/pm-notifier-error-inject.c_pt.bc'
source_filename = "../lib/pm-notifier-error-inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.notifier_err_inject_action = type { i32, i32, ptr }

@__param_str_priority = internal constant [34 x i8] c"pm_notifier_error_inject.priority\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@priority = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_priority = internal constant %struct.kernel_param { ptr @__param_str_priority, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @priority } }, section "__param", align 4
@__UNIQUE_ID_prioritytype288 = internal constant [47 x i8] c"pm_notifier_error_inject.parmtype=priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_priority289 = internal constant [68 x i8] c"pm_notifier_error_inject.parm=priority:specify PM notifier priority\00", section ".modinfo", align 1
@__initcall__kmod_pm_notifier_error_inject__290_45_err_inject_init6 = internal global ptr @err_inject_init, section ".initcall6.init", align 4
@__exitcall_err_inject_exit = internal global ptr @err_inject_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [72 x i8] c"pm_notifier_error_inject.description=PM notifier error injection module\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [59 x i8] c"pm_notifier_error_inject.file=lib/pm-notifier-error-inject\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [37 x i8] c"pm_notifier_error_inject.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [70 x i8] c"pm_notifier_error_inject.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@notifier_err_inject_dir = external dso_local local_unnamed_addr global ptr, align 4
@dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PM_HIBERNATION_PREPARE\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PM_SUSPEND_PREPARE\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PM_RESTORE_PREPARE\00", [45 x i8] zeroinitializer }, align 32
@pm_notifier_err_inject = internal global { { %struct.notifier_block, [4 x %struct.notifier_err_inject_action] }, [36 x i8] } { { %struct.notifier_block, [4 x %struct.notifier_err_inject_action] } { %struct.notifier_block zeroinitializer, [4 x %struct.notifier_err_inject_action] [%struct.notifier_err_inject_action { i32 1, i32 0, ptr @.str.1 }, %struct.notifier_err_inject_action { i32 3, i32 0, ptr @.str.2 }, %struct.notifier_err_inject_action { i32 5, i32 0, ptr @.str.3 }, %struct.notifier_err_inject_action zeroinitializer] }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 8, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 27, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 21, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 14, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 15, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 16, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"pm_notifier_err_inject\00", align 1
@___asan_gen_.24 = private constant [34 x i8] c"../lib/pm-notifier-error-inject.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 12, i32 35 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_priority289, ptr @__UNIQUE_ID_prioritytype288, ptr @__exitcall_err_inject_exit, ptr @__initcall__kmod_pm_notifier_error_inject__290_45_err_inject_init6, ptr @__param_priority, ptr @priority, ptr @.str, ptr @dir, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pm_notifier_err_inject], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_notifier_err_inject to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @err_inject_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @notifier_err_inject_dir to i32))
  %0 = load ptr, ptr @notifier_err_inject_dir, align 4
  %1 = load i32, ptr @priority, align 4
  %call = tail call ptr @notifier_err_inject_init(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @pm_notifier_err_inject, i32 noundef %1) #4
  store ptr %call, ptr @dir, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @register_pm_notifier(ptr noundef nonnull @pm_notifier_err_inject) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %3 = load ptr, ptr @dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @err_inject_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call i32 @unregister_pm_notifier(ptr noundef nonnull @pm_notifier_err_inject) #4
  %0 = load ptr, ptr @dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @notifier_err_inject_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__param_priority, !1, !"__param_priority", i1 false, i1 false}
!1 = !{!"../lib/pm-notifier-error-inject.c", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_prioritytype288, !1, !"__UNIQUE_ID_prioritytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_priority289, !4, !"__UNIQUE_ID_priority289", i1 false, i1 false}
!4 = !{!"../lib/pm-notifier-error-inject.c", i32 10, i32 1}
!5 = !{ptr @__initcall__kmod_pm_notifier_error_inject__290_45_err_inject_init6, !6, !"__initcall__kmod_pm_notifier_error_inject__290_45_err_inject_init6", i1 false, i1 false}
!6 = !{!"../lib/pm-notifier-error-inject.c", i32 45, i32 1}
!7 = !{ptr @__exitcall_err_inject_exit, !8, !"__exitcall_err_inject_exit", i1 false, i1 false}
!8 = !{!"../lib/pm-notifier-error-inject.c", i32 46, i32 1}
!9 = !{ptr @__UNIQUE_ID_description291, !10, !"__UNIQUE_ID_description291", i1 false, i1 false}
!10 = !{!"../lib/pm-notifier-error-inject.c", i32 48, i32 1}
!11 = !{ptr @__UNIQUE_ID_file292, !12, !"__UNIQUE_ID_file292", i1 false, i1 false}
!12 = !{!"../lib/pm-notifier-error-inject.c", i32 49, i32 1}
!13 = !{ptr @__UNIQUE_ID_license293, !12, !"__UNIQUE_ID_license293", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author294, !15, !"__UNIQUE_ID_author294", i1 false, i1 false}
!15 = !{!"../lib/pm-notifier-error-inject.c", i32 50, i32 1}
!16 = !{ptr @priority, !17, !"priority", i1 false, i1 false}
!17 = !{!"../lib/pm-notifier-error-inject.c", i32 8, i32 12}
!18 = !{ptr @__param_str_priority, !1, !"__param_str_priority", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/pm-notifier-error-inject.c", i32 27, i32 33}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/pm-notifier-error-inject.c", i32 14, i32 5}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/pm-notifier-error-inject.c", i32 15, i32 5}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/pm-notifier-error-inject.c", i32 16, i32 5}
!27 = !{ptr @pm_notifier_err_inject, !28, !"pm_notifier_err_inject", i1 false, i1 false}
!28 = !{!"../lib/pm-notifier-error-inject.c", i32 12, i32 35}
!29 = !{ptr @dir, !30, !"dir", i1 false, i1 false}
!30 = !{!"../lib/pm-notifier-error-inject.c", i32 21, i32 23}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
