; ModuleID = '/llk/IR_all_yes/lib/kasprintf.c_pt.bc'
source_filename = "../lib/kasprintf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kvasprintf\22, \22a\22\09"
module asm "\09.weak\09__crc_kvasprintf\09\09\09\09"
module asm "\09.long\09__crc_kvasprintf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22kvasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kvasprintf_const\22, \22a\22\09"
module asm "\09.weak\09__crc_kvasprintf_const\09\09\09\09"
module asm "\09.long\09__crc_kvasprintf_const\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvasprintf_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kvasprintf_const\22\09\09\09\09\09"
module asm "__kstrtabns_kvasprintf_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kasprintf\22, \22a\22\09"
module asm "\09.weak\09__crc_kasprintf\09\09\09\09"
module asm "\09.long\09__crc_kasprintf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22kasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/kasprintf.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"different return values (%u and %u) from vsnprintf(\22%s\22, ...)\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_kvasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_kvasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvasprintf to i32), ptr @__kstrtab_kvasprintf, ptr @__kstrtabns_kvasprintf }, section "___ksymtab+kvasprintf", align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_kvasprintf_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvasprintf_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kvasprintf_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvasprintf_const to i32), ptr @__kstrtab_kvasprintf_const, ptr @__kstrtabns_kvasprintf_const }, section "___ksymtab+kvasprintf_const", align 4
@__kstrtab_kasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_kasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasprintf to i32), ptr @__kstrtab_kasprintf, ptr @__kstrtabns_kasprintf }, section "___ksymtab+kasprintf", align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 30, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [19 x i8] c"../lib/kasprintf.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 47, i32 19 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_kasprintf, ptr @__ksymtab_kvasprintf, ptr @__ksymtab_kvasprintf_const, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @kvasprintf(i32 noundef %gfp, ptr noundef %fmt, [1 x i32] %ap.coerce) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  %aq = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %ap.coerce.fca.0.extract = extractvalue [1 x i32] %ap.coerce, 0
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ap.coerce.fca.0.extract, ptr %ap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aq) #9
  %1 = ptrtoint ptr %aq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %aq, align 4, !annotation !19
  call void @llvm.va_copy(ptr nonnull %aq, ptr nonnull %ap)
  %2 = ptrtoint ptr %aq to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %aq, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %aq)
  %add = add i32 %call, 1
  %3 = call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %call2 = call ptr @__kmalloc_track_caller(i32 noundef %add, i32 noundef %gfp, i32 noundef %4) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.0.load40 = load i32, ptr %ap, align 4
  %.fca.0.insert41 = insertvalue [1 x i32] poison, i32 %.fca.0.load40, 0
  %call5 = call i32 @vsnprintf(ptr noundef nonnull %call2, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert41)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call5)
  %cmp.not = icmp eq i32 %call, %call5
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end, !prof !20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call, i32 noundef %call5, ptr noundef %fmt) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aq) #9
  ret ptr %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kvasprintf_const(i32 noundef %gfp, ptr noundef %fmt, [1 x i32] %ap.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ap.coerce.fca.0.extract = extractvalue [1 x i32] %ap.coerce, 0
  %0 = inttoptr i32 %ap.coerce.fca.0.extract to ptr
  %call = tail call ptr @strchr(ptr noundef %fmt, i32 noundef 37)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @kstrdup_const(ptr noundef %fmt, i32 noundef %gfp) #9
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %fmt, ptr noundef nonnull dereferenceable(3) @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call5 = tail call ptr @kstrdup_const(ptr noundef %2, i32 noundef %gfp) #9
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call noalias ptr @kvasprintf(i32 noundef %gfp, ptr noundef %fmt, [1 x i32] %ap.coerce)
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi ptr [ %call8, %if.end6 ], [ %call5, %if.then4 ], [ %call1, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @kasprintf(i32 noundef %gfp, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #9
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !19
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call noalias ptr @kvasprintf(i32 noundef %gfp, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #9
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/kasprintf.c", i32 30, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_kvasprintf, !4, !"__ksymtab_kvasprintf", i1 false, i1 false}
!4 = !{!"../lib/kasprintf.c", i32 35, i32 1}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/kasprintf.c", i32 47, i32 19}
!7 = !{ptr @__ksymtab_kvasprintf_const, !8, !"__ksymtab_kvasprintf_const", i1 false, i1 false}
!8 = !{!"../lib/kasprintf.c", i32 51, i32 1}
!9 = !{ptr @__ksymtab_kasprintf, !10, !"__ksymtab_kasprintf", i1 false, i1 false}
!10 = !{!"../lib/kasprintf.c", i32 64, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
