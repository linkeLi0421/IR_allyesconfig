; ModuleID = '/llk/IR_all_yes/lib/math/int_sqrt.c_pt.bc'
source_filename = "../lib/math/int_sqrt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+int_sqrt\22, \22a\22\09"
module asm "\09.weak\09__crc_int_sqrt\09\09\09\09"
module asm "\09.long\09__crc_int_sqrt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_sqrt:\09\09\09\09\09"
module asm "\09.asciz \09\22int_sqrt\22\09\09\09\09\09"
module asm "__kstrtabns_int_sqrt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+int_sqrt64\22, \22a\22\09"
module asm "\09.weak\09__crc_int_sqrt64\09\09\09\09"
module asm "\09.long\09__crc_int_sqrt64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_sqrt64:\09\09\09\09\09"
module asm "\09.asciz \09\22int_sqrt64\22\09\09\09\09\09"
module asm "__kstrtabns_int_sqrt64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_int_sqrt = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_sqrt = external dso_local constant [0 x i8], align 1
@__ksymtab_int_sqrt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_sqrt to i32), ptr @__kstrtab_int_sqrt, ptr @__kstrtabns_int_sqrt }, section "___ksymtab+int_sqrt", align 4
@__kstrtab_int_sqrt64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_sqrt64 = external dso_local constant [0 x i8], align 1
@__ksymtab_int_sqrt64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_sqrt64 to i32), ptr @__kstrtab_int_sqrt64, ptr @__kstrtabns_int_sqrt64 }, section "___ksymtab+int_sqrt64", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_int_sqrt, ptr @__ksymtab_int_sqrt64], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @int_sqrt(i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %x)
  %cmp = icmp ult i32 %x, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true) #2, !range !13
  %sub.i = and i32 %0, 30
  %and = xor i32 %sub.i, 30
  %shl = shl nuw i32 1, %and
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %y.022 = phi i32 [ 0, %if.end ], [ %y.1, %while.body.while.body_crit_edge ]
  %m.021 = phi i32 [ %shl, %if.end ], [ %shr6, %while.body.while.body_crit_edge ]
  %x.addr.020 = phi i32 [ %x, %if.end ], [ %x.addr.1, %while.body.while.body_crit_edge ]
  %add = add i32 %y.022, %m.021
  %shr = lshr i32 %y.022, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %x.addr.020, i32 %add)
  %cmp2.not = icmp ult i32 %x.addr.020, %add
  %sub = select i1 %cmp2.not, i32 0, i32 %add
  %x.addr.1 = sub i32 %x.addr.020, %sub
  %add4 = select i1 %cmp2.not, i32 0, i32 %m.021
  %y.1 = add nuw i32 %add4, %shr
  %shr6 = lshr i32 %m.021, 2
  %cmp1.not = icmp ult i32 %m.021, 4
  br i1 %cmp1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %x, %entry.cleanup_crit_edge ], [ %y.1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @int_sqrt64(i64 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %x)
  %cmp = icmp ult i64 %x, 4294967296
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i64 %x to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp.i = icmp ult i32 %conv, 2
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %0 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #2, !range !13
  %sub.i.i = and i32 %0, 30
  %and.i = xor i32 %sub.i.i, 30
  %shl.i = shl nuw i32 1, %and.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i
  %y.022.i = phi i32 [ 0, %if.end.i ], [ %y.1.i, %while.body.i.while.body.i_crit_edge ]
  %m.021.i = phi i32 [ %shl.i, %if.end.i ], [ %shr6.i, %while.body.i.while.body.i_crit_edge ]
  %x.addr.020.i = phi i32 [ %conv, %if.end.i ], [ %x.addr.1.i, %while.body.i.while.body.i_crit_edge ]
  %add.i27 = add i32 %m.021.i, %y.022.i
  %shr.i28 = lshr i32 %y.022.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %x.addr.020.i, i32 %add.i27)
  %cmp2.not.i = icmp ult i32 %x.addr.020.i, %add.i27
  %sub.i = select i1 %cmp2.not.i, i32 0, i32 %add.i27
  %x.addr.1.i = sub i32 %x.addr.020.i, %sub.i
  %add4.i = select i1 %cmp2.not.i, i32 0, i32 %m.021.i
  %y.1.i = add nuw i32 %add4.i, %shr.i28
  %shr6.i = lshr i32 %m.021.i, 2
  %cmp1.not.i = icmp ult i32 %m.021.i, 4
  br i1 %cmp1.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i64 %x, 32
  %conv.i = trunc i64 %shr.i to i32
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 false) #2, !range !13
  %sub = and i32 %1, 62
  %2 = xor i32 %sub, 62
  %and26 = zext i32 %2 to i64
  %shl = shl nuw i64 1, %and26
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %y.031 = phi i64 [ 0, %if.end ], [ %y.1, %while.body.while.body_crit_edge ]
  %m.030 = phi i64 [ %shl, %if.end ], [ %shr11, %while.body.while.body_crit_edge ]
  %x.addr.029 = phi i64 [ %x, %if.end ], [ %x.addr.1, %while.body.while.body_crit_edge ]
  %add = add i64 %y.031, %m.030
  %shr = lshr i64 %y.031, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %x.addr.029, i64 %add)
  %cmp5.not = icmp ult i64 %x.addr.029, %add
  %sub8 = select i1 %cmp5.not, i64 0, i64 %add
  %x.addr.1 = sub i64 %x.addr.029, %sub8
  %add9 = select i1 %cmp5.not, i64 0, i64 %m.030
  %y.1 = add nuw i64 %add9, %shr
  %shr11 = lshr i64 %m.030, 2
  %cmp3.not = icmp ult i64 %m.030, 4
  br i1 %cmp3.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %conv12 = trunc i64 %y.1 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv12, %while.end ], [ %conv, %if.then.cleanup_crit_edge ], [ %y.1.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_int_sqrt, !1, !"__ksymtab_int_sqrt", i1 false, i1 false}
!1 = !{!"../lib/math/int_sqrt.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_int_sqrt64, !3, !"__ksymtab_int_sqrt64", i1 false, i1 false}
!3 = !{!"../lib/math/int_sqrt.c", i32 70, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
