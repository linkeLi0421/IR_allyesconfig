; ModuleID = '/llk/IR_all_yes/lib/netdev-notifier-error-inject.c_pt.bc'
source_filename = "../lib/netdev-notifier-error-inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.notifier_err_inject_action = type { i32, i32, ptr }

@__param_str_priority = internal constant [38 x i8] c"netdev_notifier_error_inject.priority\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@priority = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_priority = internal constant %struct.kernel_param { ptr @__param_str_priority, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @priority } }, section "__param", align 4
@__UNIQUE_ID_prioritytype337 = internal constant [51 x i8] c"netdev_notifier_error_inject.parmtype=priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_priority338 = internal constant [79 x i8] c"netdev_notifier_error_inject.parm=priority:specify netdevice notifier priority\00", section ".modinfo", align 1
@__initcall__kmod_netdev_notifier_error_inject__339_51_netdev_err_inject_init6 = internal global ptr @netdev_err_inject_init, section ".initcall6.init", align 4
@__exitcall_netdev_err_inject_exit = internal global ptr @netdev_err_inject_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description340 = internal constant [83 x i8] c"netdev_notifier_error_inject.description=Netdevice notifier error injection module\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [67 x i8] c"netdev_notifier_error_inject.file=lib/netdev-notifier-error-inject\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [41 x i8] c"netdev_notifier_error_inject.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [78 x i8] c"netdev_notifier_error_inject.author=Nikolay Aleksandrov <razor@blackwall.org>\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netdev\00", [25 x i8] zeroinitializer }, align 32
@notifier_err_inject_dir = external dso_local local_unnamed_addr global ptr, align 4
@dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NETDEV_REGISTER\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NETDEV_CHANGEMTU\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NETDEV_CHANGENAME\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NETDEV_PRE_UP\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NETDEV_PRE_TYPE_CHANGE\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NETDEV_POST_INIT\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NETDEV_PRECHANGEMTU\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NETDEV_PRECHANGEUPPER\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NETDEV_CHANGEUPPER\00", [45 x i8] zeroinitializer }, align 32
@netdev_notifier_err_inject = internal global { { %struct.notifier_block, [10 x %struct.notifier_err_inject_action] }, [60 x i8] } { { %struct.notifier_block, [10 x %struct.notifier_err_inject_action] } { %struct.notifier_block zeroinitializer, [10 x %struct.notifier_err_inject_action] [%struct.notifier_err_inject_action { i32 5, i32 0, ptr @.str.1 }, %struct.notifier_err_inject_action { i32 7, i32 0, ptr @.str.2 }, %struct.notifier_err_inject_action { i32 11, i32 0, ptr @.str.3 }, %struct.notifier_err_inject_action { i32 14, i32 0, ptr @.str.4 }, %struct.notifier_err_inject_action { i32 15, i32 0, ptr @.str.5 }, %struct.notifier_err_inject_action { i32 17, i32 0, ptr @.str.6 }, %struct.notifier_err_inject_action { i32 23, i32 0, ptr @.str.7 }, %struct.notifier_err_inject_action { i32 26, i32 0, ptr @.str.8 }, %struct.notifier_err_inject_action { i32 21, i32 0, ptr @.str.9 }, %struct.notifier_err_inject_action zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 8, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 33, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 27, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 14, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 15, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 16, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 17, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 18, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 19, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 20, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 21, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 22, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"netdev_notifier_err_inject\00", align 1
@___asan_gen_.48 = private constant [38 x i8] c"../lib/netdev-notifier-error-inject.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 12, i32 35 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__UNIQUE_ID_priority338, ptr @__UNIQUE_ID_prioritytype337, ptr @__exitcall_netdev_err_inject_exit, ptr @__initcall__kmod_netdev_notifier_error_inject__339_51_netdev_err_inject_init6, ptr @__param_priority, ptr @priority, ptr @.str, ptr @dir, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @netdev_notifier_err_inject], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_notifier_err_inject to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_err_inject_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @notifier_err_inject_dir to i32))
  %0 = load ptr, ptr @notifier_err_inject_dir, align 4
  %1 = load i32, ptr @priority, align 4
  %call = tail call ptr @notifier_err_inject_init(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @netdev_notifier_err_inject, i32 noundef %1) #4
  store ptr %call, ptr @dir, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @netdev_notifier_err_inject) #4
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
define internal void @netdev_err_inject_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @netdev_notifier_err_inject) #4
  %0 = load ptr, ptr @dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @notifier_err_inject_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__param_priority, !1, !"__param_priority", i1 false, i1 false}
!1 = !{!"../lib/netdev-notifier-error-inject.c", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_prioritytype337, !1, !"__UNIQUE_ID_prioritytype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_priority338, !4, !"__UNIQUE_ID_priority338", i1 false, i1 false}
!4 = !{!"../lib/netdev-notifier-error-inject.c", i32 10, i32 1}
!5 = !{ptr @__initcall__kmod_netdev_notifier_error_inject__339_51_netdev_err_inject_init6, !6, !"__initcall__kmod_netdev_notifier_error_inject__339_51_netdev_err_inject_init6", i1 false, i1 false}
!6 = !{!"../lib/netdev-notifier-error-inject.c", i32 51, i32 1}
!7 = !{ptr @__exitcall_netdev_err_inject_exit, !8, !"__exitcall_netdev_err_inject_exit", i1 false, i1 false}
!8 = !{!"../lib/netdev-notifier-error-inject.c", i32 52, i32 1}
!9 = !{ptr @__UNIQUE_ID_description340, !10, !"__UNIQUE_ID_description340", i1 false, i1 false}
!10 = !{!"../lib/netdev-notifier-error-inject.c", i32 54, i32 1}
!11 = !{ptr @__UNIQUE_ID_file341, !12, !"__UNIQUE_ID_file341", i1 false, i1 false}
!12 = !{!"../lib/netdev-notifier-error-inject.c", i32 55, i32 1}
!13 = !{ptr @__UNIQUE_ID_license342, !12, !"__UNIQUE_ID_license342", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author343, !15, !"__UNIQUE_ID_author343", i1 false, i1 false}
!15 = !{!"../lib/netdev-notifier-error-inject.c", i32 56, i32 1}
!16 = !{ptr @priority, !17, !"priority", i1 false, i1 false}
!17 = !{!"../lib/netdev-notifier-error-inject.c", i32 8, i32 12}
!18 = !{ptr @__param_str_priority, !1, !"__param_str_priority", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/netdev-notifier-error-inject.c", i32 33, i32 33}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/netdev-notifier-error-inject.c", i32 14, i32 5}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/netdev-notifier-error-inject.c", i32 15, i32 5}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/netdev-notifier-error-inject.c", i32 16, i32 5}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/netdev-notifier-error-inject.c", i32 17, i32 5}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/netdev-notifier-error-inject.c", i32 18, i32 5}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/netdev-notifier-error-inject.c", i32 19, i32 5}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/netdev-notifier-error-inject.c", i32 20, i32 5}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/netdev-notifier-error-inject.c", i32 21, i32 5}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/netdev-notifier-error-inject.c", i32 22, i32 5}
!39 = !{ptr @netdev_notifier_err_inject, !40, !"netdev_notifier_err_inject", i1 false, i1 false}
!40 = !{!"../lib/netdev-notifier-error-inject.c", i32 12, i32 35}
!41 = !{ptr @dir, !42, !"dir", i1 false, i1 false}
!42 = !{!"../lib/netdev-notifier-error-inject.c", i32 27, i32 23}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
