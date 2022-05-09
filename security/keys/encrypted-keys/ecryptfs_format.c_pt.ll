; ModuleID = '/llk/IR_all_yes/security/keys/encrypted-keys/ecryptfs_format.c_pt.bc'
source_filename = "../security/keys/encrypted-keys/ecryptfs_format.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab+ecryptfs_get_auth_tok_key\22, \22a\22\09"
module asm "\09.weak\09__crc_ecryptfs_get_auth_tok_key\09\09\09\09"
module asm "\09.long\09__crc_ecryptfs_get_auth_tok_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecryptfs_get_auth_tok_key:\09\09\09\09\09"
module asm "\09.asciz \09\22ecryptfs_get_auth_tok_key\22\09\09\09\09\09"
module asm "__kstrtabns_ecryptfs_get_auth_tok_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecryptfs_get_versions\22, \22a\22\09"
module asm "\09.weak\09__crc_ecryptfs_get_versions\09\09\09\09"
module asm "\09.long\09__crc_ecryptfs_get_versions\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecryptfs_get_versions:\09\09\09\09\09"
module asm "\09.asciz \09\22ecryptfs_get_versions\22\09\09\09\09\09"
module asm "__kstrtabns_ecryptfs_get_versions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecryptfs_fill_auth_tok\22, \22a\22\09"
module asm "\09.weak\09__crc_ecryptfs_fill_auth_tok\09\09\09\09"
module asm "\09.long\09__crc_ecryptfs_fill_auth_tok\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecryptfs_fill_auth_tok:\09\09\09\09\09"
module asm "\09.asciz \09\22ecryptfs_fill_auth_tok\22\09\09\09\09\09"
module asm "__kstrtabns_ecryptfs_fill_auth_tok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ecryptfs_auth_tok = type { i16, i16, i32, %struct.ecryptfs_session_key, [32 x i8], %union.anon }
%struct.ecryptfs_session_key = type { i32, i32, i32, [512 x i8], [64 x i8] }
%union.anon = type { %struct.ecryptfs_password }
%struct.ecryptfs_password = type { i32, i32, i32, i32, i32, [64 x i8], [17 x i8], [8 x i8] }

@__kstrtab_ecryptfs_get_auth_tok_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecryptfs_get_auth_tok_key = external dso_local constant [0 x i8], align 1
@__ksymtab_ecryptfs_get_auth_tok_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecryptfs_get_auth_tok_key to i32), ptr @__kstrtab_ecryptfs_get_auth_tok_key, ptr @__kstrtabns_ecryptfs_get_auth_tok_key }, section "___ksymtab+ecryptfs_get_auth_tok_key", align 4
@__kstrtab_ecryptfs_get_versions = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecryptfs_get_versions = external dso_local constant [0 x i8], align 1
@__ksymtab_ecryptfs_get_versions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecryptfs_get_versions to i32), ptr @__kstrtab_ecryptfs_get_versions, ptr @__kstrtabns_ecryptfs_get_versions }, section "___ksymtab+ecryptfs_get_versions", align 4
@__kstrtab_ecryptfs_fill_auth_tok = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecryptfs_fill_auth_tok = external dso_local constant [0 x i8], align 1
@__ksymtab_ecryptfs_fill_auth_tok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecryptfs_fill_auth_tok to i32), ptr @__kstrtab_ecryptfs_fill_auth_tok, ptr @__kstrtabns_ecryptfs_fill_auth_tok }, section "___ksymtab+ecryptfs_fill_auth_tok", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ecryptfs_fill_auth_tok, ptr @__ksymtab_ecryptfs_get_auth_tok_key, ptr @__ksymtab_ecryptfs_get_versions], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ecryptfs_get_auth_tok_key(ptr noundef readnone %auth_tok) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %session_key_encryption_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 5
  ret ptr %session_key_encryption_key
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ecryptfs_get_versions(ptr nocapture noundef writeonly %major, ptr nocapture noundef writeonly %minor, ptr noundef writeonly %file_version) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %major, align 4
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %minor, align 4
  %tobool.not = icmp eq ptr %file_version, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %file_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %file_version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ecryptfs_fill_auth_tok(ptr noundef %auth_tok, ptr nocapture noundef readonly %key_desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %auth_tok to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 4, ptr %auth_tok, align 1
  %token_type = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 1
  %1 = ptrtoint ptr %token_type to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %token_type, align 1
  %signature = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 6
  %call = tail call ptr @strncpy(ptr noundef %signature, ptr noundef %key_desc, i32 noundef 16)
  %session_key_encryption_key_bytes = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %session_key_encryption_key_bytes to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 64, ptr %session_key_encryption_key_bytes, align 1
  %flags = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %flags, align 1
  %encrypted_key = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %encrypted_key to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %encrypted_key, align 1
  %encrypted_key_size = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %encrypted_key_size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %encrypted_key_size, align 1
  %hash_algo = getelementptr inbounds %struct.ecryptfs_auth_tok, ptr %auth_tok, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %hash_algo to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 10, ptr %hash_algo, align 1
  %or8 = and i32 %4, -4
  %and13 = or i32 %or8, 2
  store i32 %and13, ptr %flags, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_ecryptfs_get_auth_tok_key, !1, !"__ksymtab_ecryptfs_get_auth_tok_key", i1 false, i1 false}
!1 = !{!"../security/keys/encrypted-keys/ecryptfs_format.c", i32 23, i32 1}
!2 = !{ptr @__ksymtab_ecryptfs_get_versions, !3, !"__ksymtab_ecryptfs_get_versions", i1 false, i1 false}
!3 = !{!"../security/keys/encrypted-keys/ecryptfs_format.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_ecryptfs_fill_auth_tok, !5, !"__ksymtab_ecryptfs_fill_auth_tok", i1 false, i1 false}
!5 = !{!"../security/keys/encrypted-keys/ecryptfs_format.c", i32 77, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
