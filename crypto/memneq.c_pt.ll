; ModuleID = '/llk/IR_all_yes/crypto/memneq.c_pt.bc'
source_filename = "../crypto/memneq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__crypto_memneq\22, \22a\22\09"
module asm "\09.weak\09__crc___crypto_memneq\09\09\09\09"
module asm "\09.long\09__crc___crypto_memneq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___crypto_memneq:\09\09\09\09\09"
module asm "\09.asciz \09\22__crypto_memneq\22\09\09\09\09\09"
module asm "__kstrtabns___crypto_memneq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___crypto_memneq = external dso_local constant [0 x i8], align 1
@__kstrtabns___crypto_memneq = external dso_local constant [0 x i8], align 1
@__ksymtab___crypto_memneq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__crypto_memneq to i32), ptr @__kstrtab___crypto_memneq, ptr @__kstrtabns___crypto_memneq }, section "___ksymtab+__crypto_memneq", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___crypto_memneq], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__crypto_memneq(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cond = icmp eq i32 %size, 16
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %xor.i = xor i32 %3, %1
  %4 = tail call i32 asm "", "=r,0"(i32 %xor.i) #4, !srcloc !11
  %add.ptr.i = getelementptr i8, ptr %a, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %b, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.i, align 4
  %xor2.i = xor i32 %8, %6
  %or3.i = or i32 %xor2.i, %4
  %9 = tail call i32 asm "", "=r,0"(i32 %or3.i) #4, !srcloc !12
  %add.ptr4.i = getelementptr i8, ptr %a, i32 8
  %10 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %b, i32 8
  %12 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr5.i, align 4
  %xor6.i = xor i32 %13, %11
  %or7.i = or i32 %xor6.i, %9
  %14 = tail call i32 asm "", "=r,0"(i32 %or7.i) #4, !srcloc !13
  %add.ptr8.i = getelementptr i8, ptr %a, i32 12
  %15 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %b, i32 12
  %17 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr9.i, align 4
  %xor10.i = xor i32 %18, %16
  %or11.i = or i32 %xor10.i, %14
  %19 = tail call i32 asm "", "=r,0"(i32 %or11.i) #4, !srcloc !14
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp26.i = icmp ugt i32 %size, 3
  br i1 %cmp26.i, label %sw.default.while.body.i_crit_edge, label %sw.default.while.cond2.preheader.i_crit_edge

sw.default.while.cond2.preheader.i_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond2.preheader.i

sw.default.while.body.i_crit_edge:                ; preds = %sw.default
  br label %while.body.i

while.cond2.preheader.i:                          ; preds = %while.body.i.while.cond2.preheader.i_crit_edge, %sw.default.while.cond2.preheader.i_crit_edge
  %a.addr.0.lcssa.i = phi ptr [ %a, %sw.default.while.cond2.preheader.i_crit_edge ], [ %add.ptr.i6, %while.body.i.while.cond2.preheader.i_crit_edge ]
  %b.addr.0.lcssa.i = phi ptr [ %b, %sw.default.while.cond2.preheader.i_crit_edge ], [ %add.ptr1.i7, %while.body.i.while.cond2.preheader.i_crit_edge ]
  %size.addr.0.lcssa.i = phi i32 [ %size, %sw.default.while.cond2.preheader.i_crit_edge ], [ %sub.i, %while.body.i.while.cond2.preheader.i_crit_edge ]
  %neq.0.lcssa.i = phi i32 [ 0, %sw.default.while.cond2.preheader.i_crit_edge ], [ %24, %while.body.i.while.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa.i)
  %cmp3.not34.i = icmp eq i32 %size.addr.0.lcssa.i, 0
  br i1 %cmp3.not34.i, label %while.cond2.preheader.i.return_crit_edge, label %while.cond2.preheader.i.while.body4.i_crit_edge

while.cond2.preheader.i.while.body4.i_crit_edge:  ; preds = %while.cond2.preheader.i
  br label %while.body4.i

while.cond2.preheader.i.return_crit_edge:         ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.default.while.body.i_crit_edge
  %neq.030.i = phi i32 [ %24, %while.body.i.while.body.i_crit_edge ], [ 0, %sw.default.while.body.i_crit_edge ]
  %size.addr.029.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %size, %sw.default.while.body.i_crit_edge ]
  %b.addr.028.i = phi ptr [ %add.ptr1.i7, %while.body.i.while.body.i_crit_edge ], [ %b, %sw.default.while.body.i_crit_edge ]
  %a.addr.027.i = phi ptr [ %add.ptr.i6, %while.body.i.while.body.i_crit_edge ], [ %a, %sw.default.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %a.addr.027.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a.addr.027.i, align 4
  %22 = ptrtoint ptr %b.addr.028.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b.addr.028.i, align 4
  %xor.i5 = xor i32 %23, %21
  %or.i = or i32 %xor.i5, %neq.030.i
  %24 = tail call i32 asm "", "=r,0"(i32 %or.i) #4, !srcloc !15
  %add.ptr.i6 = getelementptr i8, ptr %a.addr.027.i, i32 4
  %add.ptr1.i7 = getelementptr i8, ptr %b.addr.028.i, i32 4
  %sub.i = add i32 %size.addr.029.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond2.preheader.i_crit_edge

while.body.i.while.cond2.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond2.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %while.cond2.preheader.i.while.body4.i_crit_edge
  %neq.138.i = phi i32 [ %29, %while.body4.i.while.body4.i_crit_edge ], [ %neq.0.lcssa.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %size.addr.137.i = phi i32 [ %sub10.i, %while.body4.i.while.body4.i_crit_edge ], [ %size.addr.0.lcssa.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %b.addr.136.i = phi ptr [ %add.ptr9.i11, %while.body4.i.while.body4.i_crit_edge ], [ %b.addr.0.lcssa.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %a.addr.135.i = phi ptr [ %add.ptr8.i10, %while.body4.i.while.body4.i_crit_edge ], [ %a.addr.0.lcssa.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %25 = ptrtoint ptr %a.addr.135.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %a.addr.135.i, align 1
  %27 = ptrtoint ptr %b.addr.136.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %b.addr.136.i, align 1
  %xor625.i = xor i8 %28, %26
  %xor6.i8 = zext i8 %xor625.i to i32
  %or7.i9 = or i32 %neq.138.i, %xor6.i8
  %29 = tail call i32 asm "", "=r,0"(i32 %or7.i9) #4, !srcloc !16
  %add.ptr8.i10 = getelementptr i8, ptr %a.addr.135.i, i32 1
  %add.ptr9.i11 = getelementptr i8, ptr %b.addr.136.i, i32 1
  %sub10.i = add i32 %size.addr.137.i, -1
  %cmp3.not.i = icmp eq i32 %sub10.i, 0
  br i1 %cmp3.not.i, label %while.body4.i.return_crit_edge, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body4.i

while.body4.i.return_crit_edge:                   ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

return:                                           ; preds = %while.body4.i.return_crit_edge, %while.cond2.preheader.i.return_crit_edge, %sw.bb
  %retval.0 = phi i32 [ %19, %sw.bb ], [ %neq.0.lcssa.i, %while.cond2.preheader.i.return_crit_edge ], [ %29, %while.body4.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }
attributes #4 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab___crypto_memneq, !1, !"__ksymtab___crypto_memneq", i1 false, i1 false}
!1 = !{!"../crypto/memneq.c", i32 166, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2152084124}
!12 = !{i64 2152084170}
!13 = !{i64 2152084216}
!14 = !{i64 2152084262}
!15 = !{i64 2152083771}
!16 = !{i64 2152083817}
