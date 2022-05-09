; ModuleID = '/llk/IR_all_yes/crypto/ecdh_helper.c_pt.bc'
source_filename = "../crypto/ecdh_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_ecdh_key_len\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_ecdh_key_len\09\09\09\09"
module asm "\09.long\09__crc_crypto_ecdh_key_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_key_len\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_ecdh_encode_key\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_ecdh_encode_key\09\09\09\09"
module asm "\09.long\09__crc_crypto_ecdh_encode_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_encode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_ecdh_decode_key\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_ecdh_decode_key\09\09\09\09"
module asm "\09.long\09__crc_crypto_ecdh_decode_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_decode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ecdh = type { ptr, i16 }

@__kstrtab_crypto_ecdh_key_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_key_len = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_key_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_key_len to i32), ptr @__kstrtab_crypto_ecdh_key_len, ptr @__kstrtabns_crypto_ecdh_key_len }, section "___ksymtab_gpl+crypto_ecdh_key_len", align 4
@__kstrtab_crypto_ecdh_encode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_encode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_encode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_encode_key to i32), ptr @__kstrtab_crypto_ecdh_encode_key, ptr @__kstrtabns_crypto_ecdh_encode_key }, section "___ksymtab_gpl+crypto_ecdh_encode_key", align 4
@__kstrtab_crypto_ecdh_decode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_decode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_decode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_decode_key to i32), ptr @__kstrtab_crypto_ecdh_decode_key, ptr @__kstrtabns_crypto_ecdh_decode_key }, section "___ksymtab_gpl+crypto_ecdh_decode_key", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_crypto_ecdh_decode_key, ptr @__ksymtab_crypto_ecdh_encode_key, ptr @__ksymtab_crypto_ecdh_key_len], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_key_len(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %key_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 6
  ret i32 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_encode_key(ptr noundef writeonly %buf, i32 noundef %len, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %len to i16
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size.i = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %key_size.i, align 4
  %conv.i = zext i16 %1 to i32
  %add.i = add nuw nsw i32 %conv.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len)
  %cmp.not = icmp eq i32 %add.i, %len
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 2, ptr %buf, align 1
  %secret.sroa.5.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 2
  %3 = ptrtoint ptr %secret.sroa.5.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %conv, ptr %secret.sroa.5.0.buf.sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %4 = ptrtoint ptr %key_size.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %key_size.i, align 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %add.ptr.i, align 1
  %add.ptr.i21 = getelementptr i8, ptr %buf, i32 6
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params, align 4
  %9 = load i16, ptr %key_size.i, align 4
  %conv11 = zext i16 %9 to i32
  %10 = call ptr @memcpy(ptr %add.ptr.i21, ptr %8, i32 %conv11)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_decode_key(ptr noundef %buf, i32 noundef %len, ptr nocapture noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len)
  %cmp = icmp ult i32 %len, 6
  %spec.select = or i1 %tobool.not, %cmp
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %secret.sroa.0.0.copyload = load i16, ptr %buf, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %secret.sroa.0.0.copyload)
  %cmp3.not = icmp eq i16 %secret.sroa.0.0.copyload, 2
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %secret.sroa.5.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = ptrtoint ptr %secret.sroa.5.0.buf.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %secret.sroa.5.0.copyload = load i16, ptr %secret.sroa.5.0.buf.sroa_idx, align 1
  %conv8 = zext i16 %secret.sroa.5.0.copyload to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %len)
  %cmp9 = icmp ugt i32 %conv8, %len
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end18, !prof !15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %key_size = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %add.ptr.i, align 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %key_size, align 1
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv8)
  %cmp23.not = icmp eq i32 %add.i, %conv8
  br i1 %cmp23.not, label %if.end26, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i34 = getelementptr i8, ptr %buf, i32 6
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i34, ptr %params, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_crypto_ecdh_key_len, !1, !"__ksymtab_crypto_ecdh_key_len", i1 false, i1 false}
!1 = !{!"../crypto/ecdh_helper.c", i32 31, i32 1}
!2 = !{ptr @__ksymtab_crypto_ecdh_encode_key, !3, !"__ksymtab_crypto_ecdh_encode_key", i1 false, i1 false}
!3 = !{!"../crypto/ecdh_helper.c", i32 54, i32 1}
!4 = !{ptr @__ksymtab_crypto_ecdh_decode_key, !5, !"__ksymtab_crypto_ecdh_decode_key", i1 false, i1 false}
!5 = !{!"../crypto/ecdh_helper.c", i32 83, i32 1}
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
