; ModuleID = '/llk/IR_all_yes/crypto/sha3_generic.c_pt.bc'
source_filename = "../crypto/sha3_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crypto_sha3_init\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha3_init\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha3_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha3_init:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha3_init\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha3_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha3_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha3_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha3_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha3_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha3_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha3_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha3_final\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha3_final\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha3_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha3_final:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha3_final\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha3_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sha3_state = type { [25 x i64], i32, i32, i32, [144 x i8] }

@__kstrtab_crypto_sha3_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha3_init = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha3_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha3_init to i32), ptr @__kstrtab_crypto_sha3_init, ptr @__kstrtabns_crypto_sha3_init }, section "___ksymtab+crypto_sha3_init", align 4
@__kstrtab_crypto_sha3_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha3_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha3_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha3_update to i32), ptr @__kstrtab_crypto_sha3_update, ptr @__kstrtabns_crypto_sha3_update }, section "___ksymtab+crypto_sha3_update", align 4
@__kstrtab_crypto_sha3_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha3_final = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha3_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha3_final to i32), ptr @__kstrtab_crypto_sha3_final, ptr @__kstrtabns_crypto_sha3_final }, section "___ksymtab+crypto_sha3_final", align 4
@algs = internal global [4 x %struct.shash_alg] [%struct.shash_alg { ptr @crypto_sha3_init, ptr @crypto_sha3_update, ptr @crypto_sha3_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 360, [84 x i8] undef, i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-224-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_sha3_init, ptr @crypto_sha3_update, ptr @crypto_sha3_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 360, [84 x i8] undef, i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 136, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_sha3_init, ptr @crypto_sha3_update, ptr @crypto_sha3_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 360, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 104, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @crypto_sha3_init, ptr @crypto_sha3_update, ptr @crypto_sha3_final, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 360, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 72, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-512-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_sha3_generic__173_292_sha3_generic_mod_init4 = internal global ptr @sha3_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_sha3_generic_mod_fini = internal global ptr @sha3_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [38 x i8] c"sha3_generic.file=crypto/sha3_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [25 x i8] c"sha3_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [53 x i8] c"sha3_generic.description=SHA-3 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [28 x i8] c"sha3_generic.alias=sha3-224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [35 x i8] c"sha3_generic.alias=crypto-sha3-224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [36 x i8] c"sha3_generic.alias=sha3-224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [43 x i8] c"sha3_generic.alias=crypto-sha3-224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace181 = internal constant [28 x i8] c"sha3_generic.alias=sha3-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto182 = internal constant [35 x i8] c"sha3_generic.alias=crypto-sha3-256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace183 = internal constant [36 x i8] c"sha3_generic.alias=sha3-256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto184 = internal constant [43 x i8] c"sha3_generic.alias=crypto-sha3-256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace185 = internal constant [28 x i8] c"sha3_generic.alias=sha3-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto186 = internal constant [35 x i8] c"sha3_generic.alias=crypto-sha3-384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace187 = internal constant [36 x i8] c"sha3_generic.alias=sha3-384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto188 = internal constant [43 x i8] c"sha3_generic.alias=crypto-sha3-384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace189 = internal constant [28 x i8] c"sha3_generic.alias=sha3-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto190 = internal constant [35 x i8] c"sha3_generic.alias=crypto-sha3-512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace191 = internal constant [36 x i8] c"sha3_generic.alias=sha3-512-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto192 = internal constant [43 x i8] c"sha3_generic.alias=crypto-sha3-512-generic\00", section ".modinfo", align 1
@keccakf_rndc = internal constant { [24 x i64], [32 x i8] } { [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"keccakf_rndc\00", align 1
@___asan_gen_.2 = private constant [25 x i8] c"../crypto/sha3_generic.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 34, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_crypto182, ptr @__UNIQUE_ID_alias_crypto184, ptr @__UNIQUE_ID_alias_crypto186, ptr @__UNIQUE_ID_alias_crypto188, ptr @__UNIQUE_ID_alias_crypto190, ptr @__UNIQUE_ID_alias_crypto192, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_alias_userspace181, ptr @__UNIQUE_ID_alias_userspace183, ptr @__UNIQUE_ID_alias_userspace185, ptr @__UNIQUE_ID_alias_userspace187, ptr @__UNIQUE_ID_alias_userspace189, ptr @__UNIQUE_ID_alias_userspace191, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_sha3_generic_mod_fini, ptr @__initcall__kmod_sha3_generic__173_292_sha3_generic_mod_init4, ptr @__ksymtab_crypto_sha3_final, ptr @__ksymtab_crypto_sha3_init, ptr @__ksymtab_crypto_sha3_update, ptr @sha3_generic_mod_fini, ptr @keccakf_rndc], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keccakf_rndc to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_sha3_init(ptr nocapture noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
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
  %mul.neg = mul i32 %5, -2
  %sub = add i32 %mul.neg, 200
  %rsiz = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26
  %6 = ptrtoint ptr %rsiz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %rsiz, align 8
  %div8 = lshr i32 %sub, 3
  %rsizw = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26, i32 1
  %7 = ptrtoint ptr %rsizw to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div8, ptr %rsizw, align 4
  %partial = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27
  %8 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %partial, align 8
  %9 = call ptr @memset(ptr %__ctx.i, i32 0, i32 200)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha3_update(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %partial = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27
  %0 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partial, align 8
  %add = add i32 %1, %len
  %rsiz = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26
  %2 = ptrtoint ptr %rsiz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsiz, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ugt i32 %add, %sub
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub4 = sub i32 0, %1
  %buf = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %1
  %add7 = sub i32 %3, %1
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %add7)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %done.0 = phi i32 [ %sub4, %if.then2 ], [ 0, %if.then.if.end_crit_edge ]
  %src.0 = phi ptr [ %buf, %if.then2 ], [ %data, %if.then.if.end_crit_edge ]
  %rsizw = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26, i32 1
  br label %do.body

do.body:                                          ; preds = %keccakf.exit.do.body_crit_edge, %if.end
  %done.1 = phi i32 [ %done.0, %if.end ], [ %add16, %keccakf.exit.do.body_crit_edge ]
  %src.1 = phi ptr [ %src.0, %if.end ], [ %add.ptr17, %keccakf.exit.do.body_crit_edge ]
  %5 = ptrtoint ptr %rsizw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rsizw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1062.not = icmp eq i32 %6, 0
  br i1 %cmp1062.not, label %do.body.for.body.i.preheader_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.body.i.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %mul = shl i32 %i.063, 3
  %add.ptr11 = getelementptr i8, ptr %src.1, i32 %mul
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr11, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #6
  %arrayidx = getelementptr [25 x i64], ptr %__ctx.i, i32 0, i32 %i.063
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %xor = xor i64 %11, %9
  store i64 %xor, ptr %arrayidx, align 8
  %inc = add nuw i32 %i.063, 1
  %12 = ptrtoint ptr %rsizw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsizw, align 4
  %cmp10 = icmp ult i32 %inc, %13
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.body.i.preheader_crit_edge

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.i.preheader:                             ; preds = %for.body.for.body.i.preheader_crit_edge, %do.body.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %round.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  tail call fastcc void @keccakf_round(ptr noundef %__ctx.i) #6
  %arrayidx.i = getelementptr [24 x i64], ptr @keccakf_rndc, i32 0, i32 %round.05.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %__ctx.i, align 8
  %xor.i = xor i64 %17, %15
  store i64 %xor.i, ptr %__ctx.i, align 8
  %inc.i = add nuw nsw i32 %round.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %keccakf.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

keccakf.exit:                                     ; preds = %for.body.i
  %18 = ptrtoint ptr %rsiz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsiz, align 8
  %add16 = add i32 %19, %done.1
  %add.ptr17 = getelementptr i8, ptr %data, i32 %add16
  %sub19 = add i32 %19, -1
  %add20 = add i32 %sub19, %add16
  %cmp21 = icmp ult i32 %add20, %len
  br i1 %cmp21, label %keccakf.exit.do.body_crit_edge, label %do.end

keccakf.exit.do.body_crit_edge:                   ; preds = %keccakf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %keccakf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %partial, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  %done.2 = phi i32 [ %add16, %do.end ], [ 0, %entry.if.end23_crit_edge ]
  %src.2 = phi ptr [ %add.ptr17, %do.end ], [ %data, %entry.if.end23_crit_edge ]
  %buf24 = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27, i32 1
  %21 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %partial, align 8
  %add.ptr27 = getelementptr i8, ptr %buf24, i32 %22
  %sub28 = sub i32 %len, %done.2
  %23 = call ptr @memcpy(ptr %add.ptr27, ptr %src.2, i32 %sub28)
  %24 = load i32, ptr %partial, align 8
  %add31 = add i32 %24, %sub28
  store i32 %add31, ptr %partial, align 8
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha3_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %partial = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27
  %0 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partial, align 8
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digestsize.i, align 128
  %buf = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 27, i32 1
  %inc = add i32 %1, 1
  %arrayidx = getelementptr %struct.sha3_state, ptr %__ctx.i, i32 0, i32 4, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %inc
  %rsiz = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26
  %9 = ptrtoint ptr %rsiz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsiz, align 8
  %sub = sub i32 %10, %inc
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %12 = load i32, ptr %rsiz, align 8
  %sub5 = add i32 %12, -1
  %arrayidx6 = getelementptr %struct.sha3_state, ptr %__ctx.i, i32 0, i32 4, i32 %sub5
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %15 = or i8 %14, -128
  store i8 %15, ptr %arrayidx6, align 1
  %rsizw = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 26, i32 1
  %16 = ptrtoint ptr %rsizw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rsizw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp54.not = icmp eq i32 %17, 0
  br i1 %cmp54.not, label %entry.for.body.i.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.055 = phi i32 [ %inc14, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.055, 3
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %mul
  %18 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %add.ptr11, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #6
  %arrayidx13 = getelementptr [25 x i64], ptr %__ctx.i, i32 0, i32 %i.055
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx13, align 8
  %xor = xor i64 %22, %20
  store i64 %xor, ptr %arrayidx13, align 8
  %inc14 = add nuw i32 %i.055, 1
  %23 = ptrtoint ptr %rsizw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rsizw, align 4
  %cmp = icmp ult i32 %inc14, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body.i.preheader_crit_edge

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.i.preheader:                             ; preds = %for.body.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %round.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  tail call fastcc void @keccakf_round(ptr noundef %__ctx.i) #6
  %arrayidx.i = getelementptr [24 x i64], ptr @keccakf_rndc, i32 0, i32 %round.05.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i, align 8
  %27 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %__ctx.i, align 8
  %xor.i = xor i64 %28, %26
  store i64 %xor.i, ptr %__ctx.i, align 8
  %inc.i = add nuw nsw i32 %round.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.cond17.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond17.preheader:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp1856.not = icmp ult i32 %7, 8
  br i1 %cmp1856.not, label %for.cond17.preheader.for.end25_crit_edge, label %for.body20.preheader

for.cond17.preheader.for.end25_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.body20.preheader:                             ; preds = %for.cond17.preheader
  %div53 = lshr i32 %7, 3
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.preheader
  %digest.058 = phi ptr [ %incdec.ptr, %for.body20.for.body20_crit_edge ], [ %out, %for.body20.preheader ]
  %i.157 = phi i32 [ %inc24, %for.body20.for.body20_crit_edge ], [ 0, %for.body20.preheader ]
  %arrayidx22 = getelementptr [25 x i64], ptr %__ctx.i, i32 0, i32 %i.157
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx22, align 8
  %incdec.ptr = getelementptr i64, ptr %digest.058, i32 1
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #6
  %32 = ptrtoint ptr %digest.058 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %digest.058, align 1
  %inc24 = add nuw nsw i32 %i.157, 1
  %exitcond.not = icmp eq i32 %inc24, %div53
  br i1 %exitcond.not, label %for.body20.for.end25_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

for.body20.for.end25_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.end25:                                        ; preds = %for.body20.for.end25_crit_edge, %for.cond17.preheader.for.end25_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond17.preheader.for.end25_crit_edge ], [ %div53, %for.body20.for.end25_crit_edge ]
  %digest.0.lcssa = phi ptr [ %out, %for.cond17.preheader.for.end25_crit_edge ], [ %incdec.ptr, %for.body20.for.end25_crit_edge ]
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end25.if.end_crit_edge, label %if.then

for.end25.if.end_crit_edge:                       ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx27 = getelementptr [25 x i64], ptr %__ctx.i, i32 0, i32 %i.1.lcssa
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx27, align 8
  %conv28 = trunc i64 %34 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv28) #6
  %36 = ptrtoint ptr %digest.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %digest.0.lcssa, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end25.if.end_crit_edge
  %37 = call ptr @memset(ptr %__ctx.i, i32 0, i32 360)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha3_generic_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha3_generic_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @algs, i32 noundef 4) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @keccakf_round(ptr noundef %st) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %st, align 8
  %arrayidx1 = getelementptr i64, ptr %st, i32 5
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx1, align 8
  %xor = xor i64 %3, %1
  %arrayidx2 = getelementptr i64, ptr %st, i32 10
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx2, align 8
  %xor3 = xor i64 %xor, %5
  %arrayidx4 = getelementptr i64, ptr %st, i32 15
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx4, align 8
  %xor5 = xor i64 %xor3, %7
  %arrayidx6 = getelementptr i64, ptr %st, i32 20
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx6, align 8
  %xor7 = xor i64 %xor5, %9
  %arrayidx9 = getelementptr i64, ptr %st, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr i64, ptr %st, i32 6
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx10, align 8
  %xor11 = xor i64 %13, %11
  %arrayidx12 = getelementptr i64, ptr %st, i32 11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx12, align 8
  %xor13 = xor i64 %xor11, %15
  %arrayidx14 = getelementptr i64, ptr %st, i32 16
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx14, align 8
  %xor15 = xor i64 %xor13, %17
  %arrayidx16 = getelementptr i64, ptr %st, i32 21
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx16, align 8
  %xor17 = xor i64 %xor15, %19
  %arrayidx19 = getelementptr i64, ptr %st, i32 2
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr i64, ptr %st, i32 7
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx20, align 8
  %xor21 = xor i64 %23, %21
  %arrayidx22 = getelementptr i64, ptr %st, i32 12
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx22, align 8
  %xor23 = xor i64 %xor21, %25
  %arrayidx24 = getelementptr i64, ptr %st, i32 17
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx24, align 8
  %xor25 = xor i64 %xor23, %27
  %arrayidx26 = getelementptr i64, ptr %st, i32 22
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx26, align 8
  %xor27 = xor i64 %xor25, %29
  %arrayidx29 = getelementptr i64, ptr %st, i32 3
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr i64, ptr %st, i32 8
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx30, align 8
  %xor31 = xor i64 %33, %31
  %arrayidx32 = getelementptr i64, ptr %st, i32 13
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx32, align 8
  %xor33 = xor i64 %xor31, %35
  %arrayidx34 = getelementptr i64, ptr %st, i32 18
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx34, align 8
  %xor35 = xor i64 %xor33, %37
  %arrayidx36 = getelementptr i64, ptr %st, i32 23
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx36, align 8
  %xor37 = xor i64 %xor35, %39
  %arrayidx39 = getelementptr i64, ptr %st, i32 4
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx39, align 8
  %arrayidx40 = getelementptr i64, ptr %st, i32 9
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx40, align 8
  %xor41 = xor i64 %43, %41
  %arrayidx42 = getelementptr i64, ptr %st, i32 14
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx42, align 8
  %xor43 = xor i64 %xor41, %45
  %arrayidx44 = getelementptr i64, ptr %st, i32 19
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx44, align 8
  %xor45 = xor i64 %xor43, %47
  %arrayidx46 = getelementptr i64, ptr %st, i32 24
  %48 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx46, align 8
  %xor47 = xor i64 %xor45, %49
  %or.i = tail call i64 @llvm.fshl.i64(i64 %xor17, i64 %xor17, i64 1) #6
  %xor51 = xor i64 %xor47, %or.i
  %or.i632 = tail call i64 @llvm.fshl.i64(i64 %xor27, i64 %xor27, i64 1) #6
  %xor56 = xor i64 %or.i632, %xor7
  %or.i633 = tail call i64 @llvm.fshl.i64(i64 %xor37, i64 %xor37, i64 1) #6
  %xor61 = xor i64 %or.i633, %xor17
  %or.i634 = tail call i64 @llvm.fshl.i64(i64 %xor47, i64 %xor47, i64 1) #6
  %xor66 = xor i64 %or.i634, %xor27
  %or.i635 = tail call i64 @llvm.fshl.i64(i64 %xor7, i64 %xor7, i64 1) #6
  %xor71 = xor i64 %xor37, %or.i635
  %xor75 = xor i64 %xor51, %1
  %xor79 = xor i64 %xor56, %13
  %or.i636 = tail call i64 @llvm.fshl.i64(i64 %xor79, i64 %xor79, i64 44) #6
  %xor84 = xor i64 %43, %xor71
  %or.i637 = tail call i64 @llvm.fshl.i64(i64 %xor84, i64 %xor84, i64 20) #6
  %xor89 = xor i64 %xor61, %29
  %or.i638 = tail call i64 @llvm.fshl.i64(i64 %xor89, i64 %xor89, i64 61) #6
  %xor94 = xor i64 %45, %xor71
  %or.i639 = tail call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 39) #6
  %xor99 = xor i64 %xor51, %9
  %or.i640 = tail call i64 @llvm.fshl.i64(i64 %xor99, i64 %xor99, i64 18) #6
  %xor104 = xor i64 %xor61, %21
  %or.i641 = tail call i64 @llvm.fshl.i64(i64 %xor104, i64 %xor104, i64 62) #6
  %xor109 = xor i64 %xor61, %25
  %or.i642 = tail call i64 @llvm.fshl.i64(i64 %xor109, i64 %xor109, i64 43) #6
  %xor114 = xor i64 %xor66, %35
  %or.i643 = tail call i64 @llvm.fshl.i64(i64 %xor114, i64 %xor114, i64 25) #6
  %xor119 = xor i64 %47, %xor71
  %or.i644 = tail call i64 @llvm.fshl.i64(i64 %xor119, i64 %xor119, i64 8) #6
  %xor124 = xor i64 %xor66, %39
  %or.i645 = tail call i64 @llvm.fshl.i64(i64 %xor124, i64 %xor124, i64 56) #6
  %xor129 = xor i64 %xor51, %7
  %or.i646 = tail call i64 @llvm.fshl.i64(i64 %xor129, i64 %xor129, i64 41) #6
  %xor134 = xor i64 %xor71, %41
  %or.i647 = tail call i64 @llvm.fshl.i64(i64 %xor134, i64 %xor134, i64 27) #6
  %xor139 = xor i64 %49, %xor71
  %or.i648 = tail call i64 @llvm.fshl.i64(i64 %xor139, i64 %xor139, i64 14) #6
  %xor144 = xor i64 %xor56, %19
  %or.i649 = tail call i64 @llvm.fshl.i64(i64 %xor144, i64 %xor144, i64 2) #6
  %xor149 = xor i64 %xor66, %33
  %or.i650 = tail call i64 @llvm.fshl.i64(i64 %xor149, i64 %xor149, i64 55) #6
  %xor154 = xor i64 %xor56, %17
  %or.i651 = tail call i64 @llvm.fshl.i64(i64 %xor154, i64 %xor154, i64 45) #6
  %xor159 = xor i64 %xor51, %3
  %or.i652 = tail call i64 @llvm.fshl.i64(i64 %xor159, i64 %xor159, i64 36) #6
  %xor164 = xor i64 %xor66, %31
  %or.i653 = tail call i64 @llvm.fshl.i64(i64 %xor164, i64 %xor164, i64 28) #6
  %xor169 = xor i64 %xor66, %37
  %or.i654 = tail call i64 @llvm.fshl.i64(i64 %xor169, i64 %xor169, i64 21) #6
  %xor174 = xor i64 %xor61, %27
  %or.i655 = tail call i64 @llvm.fshl.i64(i64 %xor174, i64 %xor174, i64 15) #6
  %xor179 = xor i64 %xor56, %15
  %or.i656 = tail call i64 @llvm.fshl.i64(i64 %xor179, i64 %xor179, i64 10) #6
  %xor184 = xor i64 %xor61, %23
  %or.i657 = tail call i64 @llvm.fshl.i64(i64 %xor184, i64 %xor184, i64 6) #6
  %xor189 = xor i64 %xor51, %5
  %or.i658 = tail call i64 @llvm.fshl.i64(i64 %xor189, i64 %xor189, i64 3) #6
  %xor193 = xor i64 %xor56, %11
  %or.i659 = tail call i64 @llvm.fshl.i64(i64 %xor193, i64 %xor193, i64 1) #6
  %neg = xor i64 %or.i636, -1
  %and = and i64 %or.i642, %neg
  %neg200 = xor i64 %or.i642, -1
  %and202 = and i64 %or.i654, %neg200
  %neg205 = xor i64 %or.i654, -1
  %and207 = and i64 %or.i648, %neg205
  %neg210 = xor i64 %or.i648, -1
  %and212 = and i64 %xor75, %neg210
  %neg215 = xor i64 %xor75, -1
  %and217 = and i64 %or.i636, %neg215
  %xor221 = xor i64 %xor75, %and
  %50 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %xor221, ptr %st, align 8
  %xor224 = xor i64 %and202, %or.i636
  %51 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %xor224, ptr %arrayidx9, align 8
  %xor227 = xor i64 %and207, %or.i642
  %52 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %xor227, ptr %arrayidx19, align 8
  %xor230 = xor i64 %or.i654, %and212
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %xor230, ptr %arrayidx29, align 8
  %xor233 = xor i64 %and217, %or.i648
  %54 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %xor233, ptr %arrayidx39, align 8
  %neg235 = xor i64 %or.i637, -1
  %and237 = and i64 %or.i658, %neg235
  %neg240 = xor i64 %or.i658, -1
  %and242 = and i64 %or.i651, %neg240
  %neg245 = xor i64 %or.i651, -1
  %and247 = and i64 %or.i638, %neg245
  %neg250 = xor i64 %or.i638, -1
  %and252 = and i64 %or.i653, %neg250
  %neg255 = xor i64 %or.i653, -1
  %and257 = and i64 %or.i637, %neg255
  %xor261 = xor i64 %or.i653, %and237
  %55 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %xor261, ptr %arrayidx1, align 8
  %xor264 = xor i64 %and242, %or.i637
  %56 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %xor264, ptr %arrayidx10, align 8
  %xor267 = xor i64 %or.i658, %and247
  %57 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %xor267, ptr %arrayidx20, align 8
  %xor270 = xor i64 %and252, %or.i651
  %58 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %xor270, ptr %arrayidx30, align 8
  %xor273 = xor i64 %and257, %or.i638
  %59 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %xor273, ptr %arrayidx40, align 8
  %neg275 = xor i64 %or.i657, -1
  %and277 = and i64 %or.i643, %neg275
  %neg280 = xor i64 %or.i643, -1
  %and282 = and i64 %or.i644, %neg280
  %neg285 = xor i64 %or.i644, -1
  %and287 = and i64 %or.i640, %neg285
  %neg290 = xor i64 %or.i640, -1
  %and292 = and i64 %or.i659, %neg290
  %neg295 = xor i64 %or.i659, -1
  %and297 = and i64 %or.i657, %neg295
  %xor301 = xor i64 %and277, %or.i659
  %60 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %xor301, ptr %arrayidx2, align 8
  %xor304 = xor i64 %and282, %or.i657
  %61 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %xor304, ptr %arrayidx12, align 8
  %xor307 = xor i64 %or.i643, %and287
  %62 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %xor307, ptr %arrayidx22, align 8
  %xor310 = xor i64 %and292, %or.i644
  %63 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %xor310, ptr %arrayidx32, align 8
  %xor313 = xor i64 %or.i640, %and297
  %64 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %xor313, ptr %arrayidx42, align 8
  %neg315 = xor i64 %or.i652, -1
  %and317 = and i64 %or.i656, %neg315
  %neg320 = xor i64 %or.i656, -1
  %and322 = and i64 %or.i655, %neg320
  %neg325 = xor i64 %or.i655, -1
  %and327 = and i64 %or.i645, %neg325
  %neg330 = xor i64 %or.i645, -1
  %and332 = and i64 %or.i647, %neg330
  %neg335 = xor i64 %or.i647, -1
  %and337 = and i64 %or.i652, %neg335
  %xor341 = xor i64 %and317, %or.i647
  %65 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %xor341, ptr %arrayidx4, align 8
  %xor344 = xor i64 %or.i652, %and322
  %66 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %xor344, ptr %arrayidx14, align 8
  %xor347 = xor i64 %and327, %or.i656
  %67 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %xor347, ptr %arrayidx24, align 8
  %xor350 = xor i64 %and332, %or.i655
  %68 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %xor350, ptr %arrayidx34, align 8
  %xor353 = xor i64 %or.i645, %and337
  %69 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %xor353, ptr %arrayidx44, align 8
  %neg355 = xor i64 %or.i650, -1
  %and357 = and i64 %or.i639, %neg355
  %neg360 = xor i64 %or.i639, -1
  %and362 = and i64 %or.i646, %neg360
  %neg365 = xor i64 %or.i646, -1
  %and367 = and i64 %or.i649, %neg365
  %neg370 = xor i64 %or.i649, -1
  %and372 = and i64 %or.i641, %neg370
  %neg375 = xor i64 %or.i641, -1
  %and377 = and i64 %or.i650, %neg375
  %xor381 = xor i64 %and357, %or.i641
  %70 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %xor381, ptr %arrayidx6, align 8
  %xor384 = xor i64 %or.i650, %and362
  %71 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %xor384, ptr %arrayidx16, align 8
  %xor387 = xor i64 %and367, %or.i639
  %72 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %xor387, ptr %arrayidx26, align 8
  %xor390 = xor i64 %or.i646, %and372
  %73 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %xor390, ptr %arrayidx36, align 8
  %xor393 = xor i64 %and377, %or.i649
  %74 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %xor393, ptr %arrayidx46, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_crypto_sha3_init, !1, !"__ksymtab_crypto_sha3_init", i1 false, i1 false}
!1 = !{!"../crypto/sha3_generic.c", i32 173, i32 1}
!2 = !{ptr @__ksymtab_crypto_sha3_update, !3, !"__ksymtab_crypto_sha3_update", i1 false, i1 false}
!3 = !{!"../crypto/sha3_generic.c", i32 211, i32 1}
!4 = !{ptr @__ksymtab_crypto_sha3_final, !5, !"__ksymtab_crypto_sha3_final", i1 false, i1 false}
!5 = !{!"../crypto/sha3_generic.c", i32 238, i32 1}
!6 = !{ptr @__initcall__kmod_sha3_generic__173_292_sha3_generic_mod_init4, !7, !"__initcall__kmod_sha3_generic__173_292_sha3_generic_mod_init4", i1 false, i1 false}
!7 = !{!"../crypto/sha3_generic.c", i32 292, i32 1}
!8 = !{ptr @__exitcall_sha3_generic_mod_fini, !9, !"__exitcall_sha3_generic_mod_fini", i1 false, i1 false}
!9 = !{!"../crypto/sha3_generic.c", i32 293, i32 1}
!10 = !{ptr @__UNIQUE_ID_file174, !11, !"__UNIQUE_ID_file174", i1 false, i1 false}
!11 = !{!"../crypto/sha3_generic.c", i32 295, i32 1}
!12 = !{ptr @__UNIQUE_ID_license175, !11, !"__UNIQUE_ID_license175", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description176, !14, !"__UNIQUE_ID_description176", i1 false, i1 false}
!14 = !{!"../crypto/sha3_generic.c", i32 296, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_userspace177, !16, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!16 = !{!"../crypto/sha3_generic.c", i32 298, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_crypto178, !16, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias_userspace179, !19, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!19 = !{!"../crypto/sha3_generic.c", i32 299, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias_crypto180, !19, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias_userspace181, !22, !"__UNIQUE_ID_alias_userspace181", i1 false, i1 false}
!22 = !{!"../crypto/sha3_generic.c", i32 300, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias_crypto182, !22, !"__UNIQUE_ID_alias_crypto182", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_alias_userspace183, !25, !"__UNIQUE_ID_alias_userspace183", i1 false, i1 false}
!25 = !{!"../crypto/sha3_generic.c", i32 301, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias_crypto184, !25, !"__UNIQUE_ID_alias_crypto184", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias_userspace185, !28, !"__UNIQUE_ID_alias_userspace185", i1 false, i1 false}
!28 = !{!"../crypto/sha3_generic.c", i32 302, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias_crypto186, !28, !"__UNIQUE_ID_alias_crypto186", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias_userspace187, !31, !"__UNIQUE_ID_alias_userspace187", i1 false, i1 false}
!31 = !{!"../crypto/sha3_generic.c", i32 303, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias_crypto188, !31, !"__UNIQUE_ID_alias_crypto188", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_alias_userspace189, !34, !"__UNIQUE_ID_alias_userspace189", i1 false, i1 false}
!34 = !{!"../crypto/sha3_generic.c", i32 304, i32 1}
!35 = !{ptr @__UNIQUE_ID_alias_crypto190, !34, !"__UNIQUE_ID_alias_crypto190", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_alias_userspace191, !37, !"__UNIQUE_ID_alias_userspace191", i1 false, i1 false}
!37 = !{!"../crypto/sha3_generic.c", i32 305, i32 1}
!38 = !{ptr @__UNIQUE_ID_alias_crypto192, !37, !"__UNIQUE_ID_alias_crypto192", i1 false, i1 false}
!39 = !{ptr @keccakf_rndc, !40, !"keccakf_rndc", i1 false, i1 false}
!40 = !{!"../crypto/sha3_generic.c", i32 34, i32 18}
!41 = !{ptr @algs, !42, !"algs", i1 false, i1 false}
!42 = !{!"../crypto/sha3_generic.c", i32 240, i32 25}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
