; ModuleID = '/llk/IR_all_yes/fs/fscache/proc.c_pt.bc'
source_filename = "../fs/fscache/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/fscache\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/fscache/caches\00", [46 x i8] zeroinitializer }, align 32
@fscache_caches_seq_ops = external dso_local constant %struct.seq_operations, align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/fscache/volumes\00", [45 x i8] zeroinitializer }, align 32
@fscache_volumes_seq_ops = external dso_local constant %struct.seq_operations, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/fscache/cookies\00", [45 x i8] zeroinitializer }, align 32
@fscache_cookies_seq_ops = external dso_local constant %struct.seq_operations, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/fscache/stats\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 19, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 22, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 26, i32 7 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 30, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [21 x i8] c"../fs/fscache/proc.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 35, i32 7 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscache_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef null) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull @fscache_caches_seq_ops, i32 noundef 0, ptr noundef null) #3
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull @fscache_volumes_seq_ops, i32 noundef 0, ptr noundef null) #3
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.error_crit_edge, label %if.end8

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull @fscache_cookies_seq_ops, i32 noundef 0, ptr noundef null) #3
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.error_crit_edge, label %if.end12

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.4, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull @fscache_stats_show, ptr noundef null) #3
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.error_crit_edge, label %if.end12.return_crit_edge

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

error:                                            ; preds = %if.end12.error_crit_edge, %if.end8.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #3
  br label %return

return:                                           ; preds = %error, %if.end12.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %error ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_stats_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscache_proc_cleanup() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fscache/proc.c", i32 19, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fscache/proc.c", i32 22, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fscache/proc.c", i32 26, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fscache/proc.c", i32 30, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fscache/proc.c", i32 35, i32 7}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
