; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/cpu-imx35.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpu-imx35.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mx35_revision\22, \22a\22\09"
module asm "\09.weak\09__crc_mx35_revision\09\09\09\09"
module asm "\09.long\09__crc_mx35_revision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mx35_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22mx35_revision\22\09\09\09\09\09"
module asm "__kstrtabns_mx35_revision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@mx35_cpu_rev = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_mx35_revision = external dso_local constant [0 x i8], align 1
@__kstrtabns_mx35_revision = external dso_local constant [0 x i8], align 1
@__ksymtab_mx35_revision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mx35_revision to i32), ptr @__kstrtab_mx35_revision, ptr @__kstrtabns_mx35_revision }, section "___ksymtab+mx35_revision", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx35-iim\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 17]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"mx35_cpu_rev\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 14, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [33 x i8] c"../arch/arm/mach-imx/cpu-imx35.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 22, i32 43 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mx35_revision, ptr @mx35_cpu_rev, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx35_cpu_rev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mx35_revision() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mx35_cpu_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #3
  %call1.i = tail call ptr @of_iomap(ptr noundef %call.i, i32 noundef 0) #3
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !15

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/cpu-imx35.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 24, 0\0A.popsection", ""() #3, !srcloc !16
  unreachable

do.end10.i:                                       ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 36
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #3
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.default.i [
    i32 0, label %do.end10.i.mx35_read_cpu_rev.exit_crit_edge
    i32 16, label %sw.bb12.i
    i32 17, label %sw.bb13.i
  ]

do.end10.i.mx35_read_cpu_rev.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mx35_read_cpu_rev.exit

sw.bb12.i:                                        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mx35_read_cpu_rev.exit

sw.bb13.i:                                        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mx35_read_cpu_rev.exit

sw.default.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mx35_read_cpu_rev.exit

mx35_read_cpu_rev.exit:                           ; preds = %sw.default.i, %sw.bb13.i, %sw.bb12.i, %do.end10.i.mx35_read_cpu_rev.exit_crit_edge
  %retval.0.i = phi i32 [ 255, %sw.default.i ], [ 33, %sw.bb13.i ], [ 32, %sw.bb12.i ], [ 16, %do.end10.i.mx35_read_cpu_rev.exit_crit_edge ]
  store i32 %retval.0.i, ptr @mx35_cpu_rev, align 4
  br label %if.end

if.end:                                           ; preds = %mx35_read_cpu_rev.exit, %entry.if.end_crit_edge
  %4 = load i32, ptr @mx35_cpu_rev, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_mx35_revision, !1, !"__ksymtab_mx35_revision", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/cpu-imx35.c", i32 46, i32 1}
!2 = !{ptr @mx35_cpu_rev, !3, !"mx35_cpu_rev", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/cpu-imx35.c", i32 14, i32 12}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/cpu-imx35.c", i32 22, i32 43}
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
!16 = !{i64 2151759082, i64 2151759575, i64 2151759119, i64 2151759175, i64 2151759209, i64 2151759233, i64 2151759274, i64 2151759295, i64 2151759323, i64 2151759357}
!17 = !{i64 4173097}
