; ModuleID = '/llk/IR_all_yes/sound/hda/array.c_pt.bc'
source_filename = "../sound/hda/array.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_array_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_array_new\09\09\09\09"
module asm "\09.long\09__crc_snd_array_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_array_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_array_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_array_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_array_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_array_free\09\09\09\09"
module asm "\09.long\09__crc_snd_array_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_array_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_array_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_array_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/hda/array.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_snd_array_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_array_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_array_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_array_new to i32), ptr @__kstrtab_snd_array_new, ptr @__kstrtabns_snd_array_new }, section "___ksymtab_gpl+snd_array_new", align 4
@__kstrtab_snd_array_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_array_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_array_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_array_free to i32), ptr @__kstrtab_snd_array_free, ptr @__kstrtabns_snd_array_free }, section "___ksymtab_gpl+snd_array_free", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../sound/hda/array.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_snd_array_free, ptr @__ksymtab_snd_array_new, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_array_new(ptr nocapture noundef %array) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %elem_size = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 2
  %0 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %elem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %array, align 4
  %alloced = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 1
  %4 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloced, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end23.if.end73_crit_edge, label %if.then24

if.end23.if.end73_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then24:                                        ; preds = %if.end23
  %alloc_align = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_align to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_align, align 4
  %add = add i32 %7, %5
  %mul = mul i32 %5, %1
  %add28 = add i32 %add, 1
  %mul30 = mul i32 %add28, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp32 = icmp sgt i32 %add, 4095
  br i1 %cmp32, label %do.end48, label %if.end64, !prof !15

do.end48:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end64:                                         ; preds = %if.then24
  %list = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %call = tail call noalias ptr @krealloc(ptr noundef %9, i32 noundef %mul30, i32 noundef 3264) #6
  %tobool65.not = icmp eq ptr %call, null
  br i1 %tobool65.not, label %if.end64.return_crit_edge, label %cleanup

if.end64.return_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

cleanup:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %call, i32 %mul
  %sub = sub i32 %mul30, %mul
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %list, align 4
  %12 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %alloced, align 4
  br label %if.end73

if.end73:                                         ; preds = %cleanup, %if.end23.if.end73_crit_edge
  %13 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %array, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %array, align 4
  %list.i = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 4
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %17 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elem_size, align 4
  %mul.i = mul i32 %18, %14
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  br label %return

return:                                           ; preds = %if.end73, %if.end64.return_crit_edge, %do.end48, %do.end
  %retval.1 = phi ptr [ null, %do.end ], [ %add.ptr.i, %if.end73 ], [ null, %do.end48 ], [ null, %if.end64.return_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_array_free(ptr nocapture noundef %array) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 4
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  tail call void @kfree(ptr noundef %1) #3
  %2 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %array, align 4
  %alloced = getelementptr inbounds %struct.snd_array, ptr %array, i32 0, i32 1
  %3 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %alloced, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %list, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/hda/array.c", i32 21, i32 6}
!2 = !{ptr @__ksymtab_snd_array_new, !3, !"__ksymtab_snd_array_new", i1 false, i1 false}
!3 = !{!"../sound/hda/array.c", i32 39, i32 1}
!4 = !{ptr @__ksymtab_snd_array_free, !5, !"__ksymtab_snd_array_free", i1 false, i1 false}
!5 = !{!"../sound/hda/array.c", i32 52, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
