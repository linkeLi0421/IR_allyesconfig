; ModuleID = '/llk/IR_all_yes/crypto/compress.c_pt.bc'
source_filename = "../crypto/compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_comp_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_comp_compress\09\09\09\09"
module asm "\09.long\09__crc_crypto_comp_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_comp_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_comp_compress\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_comp_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_comp_decompress\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_comp_decompress\09\09\09\09"
module asm "\09.long\09__crc_crypto_comp_decompress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_comp_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_comp_decompress\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_comp_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }

@__kstrtab_crypto_comp_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_comp_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_comp_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_comp_compress to i32), ptr @__kstrtab_crypto_comp_compress, ptr @__kstrtabns_crypto_comp_compress }, section "___ksymtab_gpl+crypto_comp_compress", align 4
@__kstrtab_crypto_comp_decompress = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_comp_decompress = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_comp_decompress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_comp_decompress to i32), ptr @__kstrtab_crypto_comp_decompress, ptr @__kstrtabns_crypto_comp_decompress }, section "___ksymtab_gpl+crypto_comp_decompress", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_crypto_comp_compress, ptr @__ksymtab_crypto_comp_decompress], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_comp_compress(ptr noundef %comp, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr noundef %dlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %cra_u = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cra_u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cra_u, align 4
  %call1 = tail call i32 %3(ptr noundef %comp, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr noundef %dlen) #1
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_comp_decompress(ptr noundef %comp, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr noundef %dlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %coa_decompress = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %coa_decompress to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coa_decompress, align 4
  %call1 = tail call i32 %3(ptr noundef %comp, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, ptr noundef %dlen) #1
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_crypto_comp_compress, !1, !"__ksymtab_crypto_comp_compress", i1 false, i1 false}
!1 = !{!"../crypto/compress.c", i32 21, i32 1}
!2 = !{ptr @__ksymtab_crypto_comp_decompress, !3, !"__ksymtab_crypto_comp_decompress", i1 false, i1 false}
!3 = !{!"../crypto/compress.c", i32 32, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
