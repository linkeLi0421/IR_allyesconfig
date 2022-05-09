; ModuleID = '/llk/IR_all_yes/crypto/sha256_generic.c_pt.bc'
source_filename = "../crypto/sha256_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sha224_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sha224_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sha224_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sha256_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sha256_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sha256_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha256_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha256_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha256_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha256_finup\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha256_finup\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha256_finup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@sha224_zero_message_hash = dso_local constant { [28 x i8], [36 x i8] } { [28 x i8] c"\D1J\02\8C*:+\C9Ga\02\BB(\824\C4\15\A2\B0\1F\82\8E\A6*\C5\B3\E4/", [36 x i8] zeroinitializer }, align 32
@__kstrtab_sha224_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_zero_message_hash to i32), ptr @__kstrtab_sha224_zero_message_hash, ptr @__kstrtabns_sha224_zero_message_hash }, section "___ksymtab_gpl+sha224_zero_message_hash", align 4
@sha256_zero_message_hash = dso_local constant { [32 x i8], [32 x i8] } { [32 x i8] c"\E3\B0\C4B\98\FC\1C\14\9A\FB\F4\C8\99o\B9$'\AEA\E4d\9B\93L\A4\95\99\1BxR\B8U", [32 x i8] zeroinitializer }, align 32
@__kstrtab_sha256_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_zero_message_hash to i32), ptr @__kstrtab_sha256_zero_message_hash, ptr @__kstrtabns_sha256_zero_message_hash }, section "___ksymtab_gpl+sha256_zero_message_hash", align 4
@__kstrtab_crypto_sha256_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_update to i32), ptr @__kstrtab_crypto_sha256_update, ptr @__kstrtabns_crypto_sha256_update }, section "___ksymtab+crypto_sha256_update", align 4
@__kstrtab_crypto_sha256_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_finup to i32), ptr @__kstrtab_crypto_sha256_finup, ptr @__kstrtabns_crypto_sha256_finup }, section "___ksymtab+crypto_sha256_finup", align 4
@sha256_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_update, ptr @crypto_sha256_final, ptr @crypto_sha256_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_update, ptr @crypto_sha256_final, ptr @crypto_sha256_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [84 x i8] undef, i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_sha256_generic__226_101_sha256_generic_mod_init4 = internal global ptr @sha256_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_sha256_generic_mod_fini = internal global ptr @sha256_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [42 x i8] c"sha256_generic.file=crypto/sha256_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [27 x i8] c"sha256_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [69 x i8] c"sha256_generic.description=SHA-224 and SHA-256 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [28 x i8] c"sha256_generic.alias=sha224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [35 x i8] c"sha256_generic.alias=crypto-sha224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [36 x i8] c"sha256_generic.alias=sha224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [43 x i8] c"sha256_generic.alias=crypto-sha224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace234 = internal constant [28 x i8] c"sha256_generic.alias=sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto235 = internal constant [35 x i8] c"sha256_generic.alias=crypto-sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace236 = internal constant [36 x i8] c"sha256_generic.alias=sha256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto237 = internal constant [43 x i8] c"sha256_generic.alias=crypto-sha256-generic\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"sha224_zero_message_hash\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"sha256_zero_message_hash\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../crypto/sha256_generic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 28, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_crypto235, ptr @__UNIQUE_ID_alias_crypto237, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_alias_userspace234, ptr @__UNIQUE_ID_alias_userspace236, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_sha256_generic_mod_fini, ptr @__initcall__kmod_sha256_generic__226_101_sha256_generic_mod_init4, ptr @__ksymtab_crypto_sha256_finup, ptr @__ksymtab_crypto_sha256_update, ptr @__ksymtab_sha224_zero_message_hash, ptr @__ksymtab_sha256_zero_message_hash, ptr @sha256_generic_mod_fini, ptr @sha224_zero_message_hash, ptr @sha256_zero_message_hash], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha224_zero_message_hash to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha256_zero_message_hash to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_update(ptr noundef %desc, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  tail call void @sha256_update(ptr noundef %__ctx.i, ptr noundef %data, i32 noundef %len) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_finup(ptr noundef %desc, ptr noundef %data, i32 noundef %len, ptr noundef %hash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  tail call void @sha256_update(ptr noundef %__ctx.i, ptr noundef %data, i32 noundef %len) #4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %5)
  %cmp.i = icmp eq i32 %5, 28
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sha224_final(ptr noundef %__ctx.i, ptr noundef %hash) #4
  br label %crypto_sha256_final.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sha256_final(ptr noundef %__ctx.i, ptr noundef %hash) #4
  br label %crypto_sha256_final.exit

crypto_sha256_final.exit:                         ; preds = %if.else.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_sha256_final(ptr noundef %desc, ptr noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %5)
  %cmp = icmp eq i32 %5, 28
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sha224_final(ptr noundef %__ctx.i, ptr noundef %out) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sha256_final(ptr noundef %__ctx.i, ptr noundef %out) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha256_generic_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha256_algs, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha256_generic_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha256_algs, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha224_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1779033703, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1150833019, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1013904242, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1521486534, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1359893119, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1694144372, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 528734635, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1541459225, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1056596264, ptr %__ctx.i, align 8
  %arrayidx2.i = getelementptr %struct.shash_desc, ptr %desc, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 914150663, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 812702999, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.shash_desc, ptr %desc, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -150054599, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -4191439, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.shash_desc, ptr %desc, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1750603025, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1694076839, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1090891868, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %count.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @sha224_zero_message_hash, !1, !"sha224_zero_message_hash", i1 false, i1 false}
!1 = !{!"../crypto/sha256_generic.c", i32 20, i32 10}
!2 = !{ptr @__ksymtab_sha224_zero_message_hash, !3, !"__ksymtab_sha224_zero_message_hash", i1 false, i1 false}
!3 = !{!"../crypto/sha256_generic.c", i32 26, i32 1}
!4 = !{ptr @sha256_zero_message_hash, !5, !"sha256_zero_message_hash", i1 false, i1 false}
!5 = !{!"../crypto/sha256_generic.c", i32 28, i32 10}
!6 = !{ptr @__ksymtab_sha256_zero_message_hash, !7, !"__ksymtab_sha256_zero_message_hash", i1 false, i1 false}
!7 = !{!"../crypto/sha256_generic.c", i32 34, i32 1}
!8 = !{ptr @__ksymtab_crypto_sha256_update, !9, !"__ksymtab_crypto_sha256_update", i1 false, i1 false}
!9 = !{!"../crypto/sha256_generic.c", i32 42, i32 1}
!10 = !{ptr @__ksymtab_crypto_sha256_finup, !11, !"__ksymtab_crypto_sha256_finup", i1 false, i1 false}
!11 = !{!"../crypto/sha256_generic.c", i32 59, i32 1}
!12 = !{ptr @__initcall__kmod_sha256_generic__226_101_sha256_generic_mod_init4, !13, !"__initcall__kmod_sha256_generic__226_101_sha256_generic_mod_init4", i1 false, i1 false}
!13 = !{!"../crypto/sha256_generic.c", i32 101, i32 1}
!14 = !{ptr @__exitcall_sha256_generic_mod_fini, !15, !"__exitcall_sha256_generic_mod_fini", i1 false, i1 false}
!15 = !{!"../crypto/sha256_generic.c", i32 102, i32 1}
!16 = !{ptr @__UNIQUE_ID_file227, !17, !"__UNIQUE_ID_file227", i1 false, i1 false}
!17 = !{!"../crypto/sha256_generic.c", i32 104, i32 1}
!18 = !{ptr @__UNIQUE_ID_license228, !17, !"__UNIQUE_ID_license228", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description229, !20, !"__UNIQUE_ID_description229", i1 false, i1 false}
!20 = !{!"../crypto/sha256_generic.c", i32 105, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_userspace230, !22, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!22 = !{!"../crypto/sha256_generic.c", i32 107, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias_crypto231, !22, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_alias_userspace232, !25, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!25 = !{!"../crypto/sha256_generic.c", i32 108, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias_crypto233, !25, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias_userspace234, !28, !"__UNIQUE_ID_alias_userspace234", i1 false, i1 false}
!28 = !{!"../crypto/sha256_generic.c", i32 109, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias_crypto235, !28, !"__UNIQUE_ID_alias_crypto235", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias_userspace236, !31, !"__UNIQUE_ID_alias_userspace236", i1 false, i1 false}
!31 = !{!"../crypto/sha256_generic.c", i32 110, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias_crypto237, !31, !"__UNIQUE_ID_alias_crypto237", i1 false, i1 false}
!33 = !{ptr @sha256_algs, !34, !"sha256_algs", i1 false, i1 false}
!34 = !{!"../crypto/sha256_generic.c", i32 61, i32 25}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
