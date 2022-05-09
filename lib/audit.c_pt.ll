; ModuleID = '/llk/IR_all_yes/lib/audit.c_pt.bc'
source_filename = "../lib/audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__initcall__kmod_audit__222_89_audit_classes_init6 = internal global ptr @audit_classes_init, section ".initcall6.init", align 4
@write_class = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 38, i32 39, i32 40, i32 8, i32 9, i32 10, i32 83, i32 14, i32 323, i32 324, i32 328, i32 329, i32 330, i32 331, i32 382, i32 51, i32 87, i32 131, i32 92, i32 193, i32 93, i32 194, i32 282, i32 352, i32 -1], [60 x i8] zeroinitializer }, align 32
@read_class = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 85, i32 131, i32 232, i32 233, i32 234, i32 229, i32 230, i32 231, i32 332, i32 -1], [56 x i8] zeroinitializer }, align 32
@dir_class = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 38, i32 39, i32 40, i32 8, i32 9, i32 10, i32 83, i32 14, i32 323, i32 324, i32 328, i32 329, i32 330, i32 331, i32 382, i32 -1], [32 x i8] zeroinitializer }, align 32
@chattr_class = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 15, i32 94, i32 182, i32 16, i32 95, i32 226, i32 227, i32 228, i32 235, i32 236, i32 237, i32 325, i32 333, i32 212, i32 207, i32 198, i32 9, i32 330, i32 -1], [52 x i8] zeroinitializer }, align 32
@signal_class = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 37, i32 268, i32 238, i32 -1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 11, i64 322, i64 387, i64 437]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"write_class\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 17, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"read_class\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 12, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"dir_class\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 7, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"chattr_class\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 22, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"signal_class\00", align 1
@___asan_gen_.14 = private constant [15 x i8] c"../lib/audit.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 27, i32 17 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_audit__222_89_audit_classes_init6, ptr @write_class, ptr @read_class, ptr @dir_class, ptr @chattr_class, ptr @signal_class], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_class to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_class to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir_class to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chattr_class to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_classify_arch(i32 noundef %arch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @audit_classify_syscall(i32 noundef %abi, i32 noundef %syscall) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = zext i32 %syscall to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %syscall, label %sw.default [
    i32 5, label %entry.return_crit_edge
    i32 322, label %sw.bb1
    i32 387, label %entry.sw.bb2_crit_edge
    i32 11, label %entry.sw.bb2_crit_edge4
    i32 437, label %sw.bb3
  ]

entry.sw.bb2_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 6, %sw.bb3 ], [ 5, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_classes_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @audit_register_class(i32 noundef 6, ptr noundef nonnull @write_class) #5
  %call1 = tail call i32 @audit_register_class(i32 noundef 4, ptr noundef nonnull @read_class) #5
  %call2 = tail call i32 @audit_register_class(i32 noundef 0, ptr noundef nonnull @dir_class) #5
  %call3 = tail call i32 @audit_register_class(i32 noundef 2, ptr noundef nonnull @chattr_class) #5
  %call4 = tail call i32 @audit_register_class(i32 noundef 8, ptr noundef nonnull @signal_class) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @audit_register_class(i32 noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_audit__222_89_audit_classes_init6, !1, !"__initcall__kmod_audit__222_89_audit_classes_init6", i1 false, i1 false}
!1 = !{!"../lib/audit.c", i32 89, i32 1}
!2 = !{ptr @write_class, !3, !"write_class", i1 false, i1 false}
!3 = !{!"../lib/audit.c", i32 17, i32 17}
!4 = !{ptr @read_class, !5, !"read_class", i1 false, i1 false}
!5 = !{!"../lib/audit.c", i32 12, i32 17}
!6 = !{ptr @dir_class, !7, !"dir_class", i1 false, i1 false}
!7 = !{!"../lib/audit.c", i32 7, i32 17}
!8 = !{ptr @chattr_class, !9, !"chattr_class", i1 false, i1 false}
!9 = !{!"../lib/audit.c", i32 22, i32 17}
!10 = !{ptr @signal_class, !11, !"signal_class", i1 false, i1 false}
!11 = !{!"../lib/audit.c", i32 27, i32 17}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
