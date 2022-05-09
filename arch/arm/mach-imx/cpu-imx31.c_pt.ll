; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/cpu-imx31.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpu-imx31.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mx31_revision\22, \22a\22\09"
module asm "\09.weak\09__crc_mx31_revision\09\09\09\09"
module asm "\09.long\09__crc_mx31_revision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mx31_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22mx31_revision\22\09\09\09\09\09"
module asm "__kstrtabns_mx31_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.6 = type { i8, ptr, i32 }

@mx31_cpu_rev = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_mx31_revision = external dso_local constant [0 x i8], align 1
@__kstrtabns_mx31_revision = external dso_local constant [0 x i8], align 1
@__ksymtab_mx31_revision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mx31_revision to i32), ptr @__kstrtab_mx31_revision, ptr @__kstrtabns_mx31_revision }, section "___ksymtab+mx31_revision", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx31-iim\00", [18 x i8] zeroinitializer }, align 32
@mx31_cpu_type = internal constant { [9 x %struct.anon.6], [52 x i8] } { [9 x %struct.anon.6] [%struct.anon.6 { i8 0, ptr @.str.2, i32 16 }, %struct.anon.6 { i8 16, ptr @.str.1, i32 17 }, %struct.anon.6 { i8 17, ptr @.str.3, i32 17 }, %struct.anon.6 { i8 18, ptr @.str.1, i32 17 }, %struct.anon.6 { i8 19, ptr @.str.3, i32 17 }, %struct.anon.6 { i8 20, ptr @.str.1, i32 18 }, %struct.anon.6 { i8 21, ptr @.str.3, i32 18 }, %struct.anon.6 { i8 40, ptr @.str.1, i32 32 }, %struct.anon.6 { i8 41, ptr @.str.3, i32 32 }], [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX31\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i.MX31(L)\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX31L\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 40, i64 41]
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"mx31_cpu_rev\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 16, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 40, i32 43 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"mx31_cpu_type\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 22, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 55, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 23, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [33 x i8] c"../arch/arm/mach-imx/cpu-imx31.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 25, i32 26 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_mx31_revision, ptr @mx31_cpu_rev, ptr @.str, ptr @mx31_cpu_type, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx31_cpu_rev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx31_cpu_type to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mx31_revision() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mx31_cpu_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #2
  %call1.i = tail call ptr @of_iomap(ptr noundef %call.i, i32 noundef 0) #2
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !23

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/cpu-imx31.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #2, !srcloc !24
  unreachable

do.end10.i:                                       ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 36
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp13.i = icmp ult i32 %1, 16777216
  br i1 %cmp13.i, label %do.end10.i.if.then15.i_crit_edge, label %for.inc.i

do.end10.i.if.then15.i_crit_edge:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split34.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split35.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split36.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split37.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split38.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.fold.split39.i:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

if.then15.i:                                      ; preds = %for.inc.i.if.then15.i_crit_edge, %if.then15.fold.split39.i, %if.then15.fold.split38.i, %if.then15.fold.split37.i, %if.then15.fold.split36.i, %if.then15.fold.split35.i, %if.then15.fold.split34.i, %if.then15.fold.split.i, %do.end10.i.if.then15.i_crit_edge
  %i.032.lcssa.i = phi i32 [ 0, %do.end10.i.if.then15.i_crit_edge ], [ 1, %for.inc.i.if.then15.i_crit_edge ], [ 2, %if.then15.fold.split.i ], [ 3, %if.then15.fold.split34.i ], [ 4, %if.then15.fold.split35.i ], [ 5, %if.then15.fold.split36.i ], [ 6, %if.then15.fold.split37.i ], [ 7, %if.then15.fold.split38.i ], [ 8, %if.then15.fold.split39.i ]
  %name.i = getelementptr [9 x %struct.anon.6], ptr @mx31_cpu_type, i32 0, i32 %i.032.lcssa.i, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %rev.i = getelementptr [9 x %struct.anon.6], ptr @mx31_cpu_type, i32 0, i32 %i.032.lcssa.i, i32 2
  %4 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev.i, align 4
  tail call void @imx_print_silicon_rev(ptr noundef %3, i32 noundef %5) #2
  br label %mx31_read_cpu_rev.exit

for.inc.i:                                        ; preds = %do.end10.i
  %6 = lshr i32 %1, 24
  %trunc.i = trunc i32 %6 to i8
  %7 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %for.inc.8.i [
    i8 16, label %for.inc.i.if.then15.i_crit_edge
    i8 17, label %if.then15.fold.split.i
    i8 18, label %if.then15.fold.split34.i
    i8 19, label %if.then15.fold.split35.i
    i8 20, label %if.then15.fold.split36.i
    i8 21, label %if.then15.fold.split37.i
    i8 40, label %if.then15.fold.split38.i
    i8 41, label %if.then15.fold.split39.i
  ]

for.inc.i.if.then15.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then15.i

for.inc.8.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.1, i32 noundef 255) #2
  br label %mx31_read_cpu_rev.exit

mx31_read_cpu_rev.exit:                           ; preds = %for.inc.8.i, %if.then15.i
  %retval.0.i = phi i32 [ %5, %if.then15.i ], [ 255, %for.inc.8.i ]
  store i32 %retval.0.i, ptr @mx31_cpu_rev, align 4
  br label %if.end

if.end:                                           ; preds = %mx31_read_cpu_rev.exit, %entry.if.end_crit_edge
  %8 = load i32, ptr @mx31_cpu_rev, align 4
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_mx31_revision, !1, !"__ksymtab_mx31_revision", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 66, i32 1}
!2 = !{ptr @mx31_cpu_rev, !3, !"mx31_cpu_rev", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 16, i32 12}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 40, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 55, i32 24}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 23, i32 26}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 25, i32 26}
!12 = !{ptr @mx31_cpu_type, !13, !"mx31_cpu_type", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-imx/cpu-imx31.c", i32 22, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2151768035, i64 2151768528, i64 2151768072, i64 2151768128, i64 2151768162, i64 2151768186, i64 2151768227, i64 2151768248, i64 2151768276, i64 2151768310}
!25 = !{i64 4174002}
