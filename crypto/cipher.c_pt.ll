; ModuleID = '/llk/IR_all_yes/crypto/cipher.c_pt.bc'
source_filename = "../crypto/cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_cipher_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_cipher_setkey\09\09\09\09"
module asm "\09.long\09__crc_crypto_cipher_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_cipher_encrypt_one\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_cipher_encrypt_one\09\09\09\09"
module asm "\09.long\09__crc_crypto_cipher_encrypt_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_encrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_encrypt_one\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_encrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_cipher_decrypt_one\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_cipher_decrypt_one\09\09\09\09"
module asm "\09.long\09__crc_crypto_cipher_decrypt_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_decrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_decrypt_one\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_decrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
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

@__kstrtab_crypto_cipher_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_setkey to i32), ptr @__kstrtab_crypto_cipher_setkey, ptr @__kstrtabns_crypto_cipher_setkey }, section "___ksymtab_gpl+crypto_cipher_setkey", align 4
@__kstrtab_crypto_cipher_encrypt_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_encrypt_one = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_encrypt_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_encrypt_one to i32), ptr @__kstrtab_crypto_cipher_encrypt_one, ptr @__kstrtabns_crypto_cipher_encrypt_one }, section "___ksymtab_gpl+crypto_cipher_encrypt_one", align 4
@__kstrtab_crypto_cipher_decrypt_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_decrypt_one = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_decrypt_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_decrypt_one to i32), ptr @__kstrtab_crypto_cipher_decrypt_one, ptr @__kstrtabns_crypto_cipher_decrypt_one }, section "___ksymtab_gpl+crypto_cipher_decrypt_one", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_crypto_cipher_decrypt_one, ptr @__ksymtab_crypto_cipher_encrypt_one, ptr @__ksymtab_crypto_cipher_setkey], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_u.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_alignmask.i.i, align 4
  %4 = ptrtoint ptr %cra_u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_u.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %keylen)
  %cmp = icmp ugt i32 %5, %keylen
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cia_max_keysize = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 1
  %6 = ptrtoint ptr %cia_max_keysize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cia_max_keysize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %keylen)
  %cmp2 = icmp ult i32 %7, %keylen
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %key to i32
  %and = and i32 %3, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end
  %add.i = add i32 %3, %keylen
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call9.i.i to i32
  %add4.i = add i32 %3, %9
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %add4.i, %neg.i
  %10 = inttoptr i32 %and.i to ptr
  %11 = call ptr @memcpy(ptr %10, ptr %key, i32 %keylen)
  %cia_setkey.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 2
  %12 = ptrtoint ptr %cia_setkey.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cia_setkey.i, align 4
  %call8.i = tail call i32 %13(ptr noundef %tfm, ptr noundef %10, i32 noundef %keylen) #4
  %14 = call ptr @memset(ptr %10, i32 0, i32 %keylen)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cia_setkey = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 2
  %15 = ptrtoint ptr %cia_setkey to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cia_setkey, align 4
  %call7 = tail call i32 %16(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.i, %if.end8.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call8.i, %if.end.i ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_cipher_encrypt_one(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #0 align 64 {
entry:
  %buffer.i = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %cia_encrypt.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 3
  %4 = ptrtoint ptr %cia_encrypt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.i = load ptr, ptr %cia_encrypt.i, align 4
  %5 = ptrtoint ptr %dst to i32
  %6 = ptrtoint ptr %src to i32
  %or.i = or i32 %6, %5
  %and.i = and i32 %3, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buffer.i) #4
  %9 = ptrtoint ptr %buffer.i to i32
  %add6.i = add i32 %3, %9
  %neg.i = xor i32 %3, -1
  %and9.i = and i32 %add6.i, %neg.i
  %10 = inttoptr i32 %and9.i to ptr
  %11 = call ptr @memset(ptr %buffer.i, i32 255, i32 31)
  %12 = call ptr @memcpy(ptr %10, ptr %src, i32 %8)
  call void %cond.i(ptr noundef %tfm, ptr noundef %10, ptr noundef %10) #4
  %13 = call ptr @memcpy(ptr %dst, ptr %10, i32 %8)
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buffer.i) #4
  br label %cipher_crypt_one.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %cond.i(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #4
  br label %cipher_crypt_one.exit

cipher_crypt_one.exit:                            ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_cipher_decrypt_one(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #0 align 64 {
entry:
  %buffer.i = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %cia_decrypt.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 4
  %4 = ptrtoint ptr %cia_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.i = load ptr, ptr %cia_decrypt.i, align 4
  %5 = ptrtoint ptr %dst to i32
  %6 = ptrtoint ptr %src to i32
  %or.i = or i32 %6, %5
  %and.i = and i32 %3, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buffer.i) #4
  %9 = ptrtoint ptr %buffer.i to i32
  %add6.i = add i32 %3, %9
  %neg.i = xor i32 %3, -1
  %and9.i = and i32 %add6.i, %neg.i
  %10 = inttoptr i32 %and9.i to ptr
  %11 = call ptr @memset(ptr %buffer.i, i32 255, i32 31)
  %12 = call ptr @memcpy(ptr %10, ptr %src, i32 %8)
  call void %cond.i(ptr noundef %tfm, ptr noundef %10, ptr noundef %10) #4
  %13 = call ptr @memcpy(ptr %dst, ptr %10, i32 %8)
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buffer.i) #4
  br label %cipher_crypt_one.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %cond.i(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #4
  br label %cipher_crypt_one.exit

cipher_crypt_one.exit:                            ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_crypto_cipher_setkey, !1, !"__ksymtab_crypto_cipher_setkey", i1 false, i1 false}
!1 = !{!"../crypto/cipher.c", i32 57, i32 1}
!2 = !{ptr @__ksymtab_crypto_cipher_encrypt_one, !3, !"__ksymtab_crypto_cipher_encrypt_one", i1 false, i1 false}
!3 = !{!"../crypto/cipher.c", i32 85, i32 1}
!4 = !{ptr @__ksymtab_crypto_cipher_decrypt_one, !5, !"__ksymtab_crypto_cipher_decrypt_one", i1 false, i1 false}
!5 = !{!"../crypto/cipher.c", i32 92, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
