; ModuleID = '/llk/IR_all_yes/lib/crypto/arc4.c_pt.bc'
source_filename = "../lib/crypto/arc4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+arc4_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_arc4_setkey\09\09\09\09"
module asm "\09.long\09__crc_arc4_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc4_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22arc4_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_arc4_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arc4_crypt\22, \22a\22\09"
module asm "\09.weak\09__crc_arc4_crypt\09\09\09\09"
module asm "\09.long\09__crc_arc4_crypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc4_crypt:\09\09\09\09\09"
module asm "\09.asciz \09\22arc4_crypt\22\09\09\09\09\09"
module asm "__kstrtabns_arc4_crypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }

@__kstrtab_arc4_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc4_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_arc4_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc4_setkey to i32), ptr @__kstrtab_arc4_setkey, ptr @__kstrtabns_arc4_setkey }, section "___ksymtab+arc4_setkey", align 4
@__kstrtab_arc4_crypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc4_crypt = external dso_local constant [0 x i8], align 1
@__ksymtab_arc4_crypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc4_crypt to i32), ptr @__kstrtab_arc4_crypt, ptr @__kstrtabns_arc4_crypt }, section "___ksymtab+arc4_crypt", align 4
@__UNIQUE_ID_file106 = internal constant [32 x i8] c"libarc4.file=lib/crypto/libarc4\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [20 x i8] c"libarc4.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_arc4_crypt, ptr @__ksymtab_arc4_setkey], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arc4_setkey(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %x = getelementptr inbounds %struct.arc4_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %x, align 4
  %y = getelementptr inbounds %struct.arc4_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %y, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %i.037
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.037, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %i.140 = phi i32 [ %inc18, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %k.039 = phi i32 [ %spec.store.select, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %j.038 = phi i32 [ %and, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %arrayidx5 = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %i.140
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i8, ptr %in_key, i32 %k.039
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %6 to i32
  %add = add i32 %4, %j.038
  %add7 = add i32 %add, %conv
  %and = and i32 %add7, 255
  %arrayidx9 = getelementptr [256 x i32], ptr %ctx, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  store i32 %8, ptr %arrayidx5, align 4
  store i32 %4, ptr %arrayidx9, align 4
  %inc14 = add i32 %k.039, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14, i32 %key_len)
  %cmp15.not = icmp ult i32 %inc14, %key_len
  %spec.store.select = select i1 %cmp15.not, i32 %inc14, i32 0
  %inc18 = add nuw nsw i32 %i.140, 1
  %exitcond41.not = icmp eq i32 %inc18, 256
  br i1 %exitcond41.not, label %for.end19, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body3

for.end19:                                        ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arc4_crypt(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %x2 = getelementptr inbounds %struct.arc4_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x2, align 4
  %y3 = getelementptr inbounds %struct.arc4_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %y3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y3, align 4
  %arrayidx = getelementptr i32, ptr %ctx, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %and = and i32 %add, 255
  %arrayidx4 = getelementptr i32, ptr %ctx, i32 %and
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  br label %do.body

do.body:                                          ; preds = %if.end21, %if.end
  %out.addr.0 = phi ptr [ %out, %if.end ], [ %incdec.ptr17, %if.end21 ]
  %in.addr.0 = phi ptr [ %in, %if.end ], [ %incdec.ptr, %if.end21 ]
  %len.addr.0 = phi i32 [ %len, %if.end ], [ %dec, %if.end21 ]
  %x.0 = phi i32 [ %1, %if.end ], [ %and10, %if.end21 ]
  %y.0 = phi i32 [ %and, %if.end ], [ %and13, %if.end21 ]
  %a.0 = phi i32 [ %5, %if.end ], [ %11, %if.end21 ]
  %b.0 = phi i32 [ %7, %if.end ], [ %13, %if.end21 ]
  %arrayidx5 = getelementptr i32, ptr %ctx, i32 %y.0
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %a.0, ptr %arrayidx5, align 4
  %add6 = add i32 %b.0, %a.0
  %and7 = and i32 %add6, 255
  %arrayidx8 = getelementptr i32, ptr %ctx, i32 %x.0
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %b.0, ptr %arrayidx8, align 4
  %add9 = add i32 %x.0, 1
  %and10 = and i32 %add9, 255
  %arrayidx11 = getelementptr i32, ptr %ctx, i32 %and10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %11, %y.0
  %and13 = and i32 %add12, 255
  %arrayidx14 = getelementptr i32, ptr %ctx, i32 %and13
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %14 = ptrtoint ptr %in.addr.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in.addr.0, align 1
  %arrayidx15 = getelementptr i32, ptr %ctx, i32 %and7
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %18 = trunc i32 %17 to i8
  %conv16 = xor i8 %15, %18
  %19 = ptrtoint ptr %out.addr.0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv16, ptr %out.addr.0, align 1
  %dec = add i32 %len.addr.0, -1
  %cmp18 = icmp eq i32 %dec, 0
  br i1 %cmp18, label %do.end, label %if.end21

if.end21:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr17 = getelementptr i8, ptr %out.addr.0, i32 1
  %incdec.ptr = getelementptr i8, ptr %in.addr.0, i32 1
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and10, ptr %x2, align 4
  %21 = ptrtoint ptr %y3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %y.0, ptr %y3, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_arc4_setkey, !1, !"__ksymtab_arc4_setkey", i1 false, i1 false}
!1 = !{!"../lib/crypto/arc4.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_arc4_crypt, !3, !"__ksymtab_arc4_crypt", i1 false, i1 false}
!3 = !{!"../lib/crypto/arc4.c", i32 72, i32 1}
!4 = !{ptr @__UNIQUE_ID_file106, !5, !"__UNIQUE_ID_file106", i1 false, i1 false}
!5 = !{!"../lib/crypto/arc4.c", i32 74, i32 1}
!6 = !{ptr @__UNIQUE_ID_license107, !5, !"__UNIQUE_ID_license107", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
