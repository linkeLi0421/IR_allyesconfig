; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/chacha-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/chacha-glue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hchacha_block_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_hchacha_block_arch\09\09\09\09"
module asm "\09.long\09__crc_hchacha_block_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hchacha_block_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22hchacha_block_arch\22\09\09\09\09\09"
module asm "__kstrtabns_hchacha_block_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+chacha_init_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha_init_arch\09\09\09\09"
module asm "\09.long\09__crc_chacha_init_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_init_arch\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+chacha_crypt_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha_crypt_arch\09\09\09\09"
module asm "\09.long\09__crc_chacha_crypt_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_crypt_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_crypt_arch\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_crypt_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.chacha_ctx = type { [8 x i32], i32 }
%struct.skcipher_walk = type { %union.anon.48, %union.anon.48, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.50 = type { ptr, ptr }

@__kstrtab_hchacha_block_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_hchacha_block_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_hchacha_block_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hchacha_block_arch to i32), ptr @__kstrtab_hchacha_block_arch, ptr @__kstrtabns_hchacha_block_arch }, section "___ksymtab+hchacha_block_arch", align 4
@__kstrtab_chacha_init_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_init_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_init_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_init_arch to i32), ptr @__kstrtab_chacha_init_arch, ptr @__kstrtabns_chacha_init_arch }, section "___ksymtab+chacha_init_arch", align 4
@__kstrtab_chacha_crypt_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_crypt_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_crypt_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_crypt_arch to i32), ptr @__kstrtab_chacha_crypt_arch, ptr @__kstrtabns_chacha_crypt_arch }, section "___ksymtab+chacha_crypt_arch", align 4
@arm_algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @chacha20_setkey, ptr @chacha_arm, ptr @chacha_arm, ptr null, ptr null, i32 32, i32 32, i32 16, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"chacha20-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha20_setkey, ptr @xchacha_arm, ptr @xchacha_arm, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha20-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha12_setkey, ptr @xchacha_arm, ptr @xchacha_arm, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha12-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@neon_algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @chacha20_setkey, ptr @chacha_neon, ptr @chacha_neon, ptr null, ptr null, i32 32, i32 32, i32 16, i32 64, i32 256, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"chacha20-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha20_setkey, ptr @xchacha_neon, ptr @xchacha_neon, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 256, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha20-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @chacha12_setkey, ptr @xchacha_neon, ptr @xchacha_neon, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 256, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha12-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_chacha_neon__177_342_chacha_simd_mod_init6 = internal global ptr @chacha_simd_mod_init, section ".initcall6.init", align 4
@__exitcall_chacha_simd_mod_fini = internal global ptr @chacha_simd_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description178 = internal constant [88 x i8] c"chacha_neon.description=ChaCha and XChaCha stream ciphers (scalar and NEON accelerated)\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [62 x i8] c"chacha_neon.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [45 x i8] c"chacha_neon.file=arch/arm/crypto/chacha-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [27 x i8] c"chacha_neon.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [27 x i8] c"chacha_neon.alias=chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [34 x i8] c"chacha_neon.alias=crypto-chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [31 x i8] c"chacha_neon.alias=chacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [38 x i8] c"chacha_neon.alias=crypto-chacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace186 = internal constant [28 x i8] c"chacha_neon.alias=xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto187 = internal constant [35 x i8] c"chacha_neon.alias=crypto-xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace188 = internal constant [32 x i8] c"chacha_neon.alias=xchacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto189 = internal constant [39 x i8] c"chacha_neon.alias=crypto-xchacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace190 = internal constant [28 x i8] c"chacha_neon.alias=xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto191 = internal constant [35 x i8] c"chacha_neon.alias=crypto-xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace192 = internal constant [32 x i8] c"chacha_neon.alias=xchacha12-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto193 = internal constant [39 x i8] c"chacha_neon.alias=crypto-xchacha12-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace194 = internal constant [32 x i8] c"chacha_neon.alias=chacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto195 = internal constant [39 x i8] c"chacha_neon.alias=crypto-chacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace196 = internal constant [33 x i8] c"chacha_neon.alias=xchacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto197 = internal constant [40 x i8] c"chacha_neon.alias=crypto-xchacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace198 = internal constant [33 x i8] c"chacha_neon.alias=xchacha12-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto199 = internal constant [40 x i8] c"chacha_neon.alias=crypto-xchacha12-neon\00", section ".modinfo", align 1
@use_neon = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 64]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1090568272, i64 1090568304]
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_crypto187, ptr @__UNIQUE_ID_alias_crypto189, ptr @__UNIQUE_ID_alias_crypto191, ptr @__UNIQUE_ID_alias_crypto193, ptr @__UNIQUE_ID_alias_crypto195, ptr @__UNIQUE_ID_alias_crypto197, ptr @__UNIQUE_ID_alias_crypto199, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_alias_userspace186, ptr @__UNIQUE_ID_alias_userspace188, ptr @__UNIQUE_ID_alias_userspace190, ptr @__UNIQUE_ID_alias_userspace192, ptr @__UNIQUE_ID_alias_userspace194, ptr @__UNIQUE_ID_alias_userspace196, ptr @__UNIQUE_ID_alias_userspace198, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__exitcall_chacha_simd_mod_fini, ptr @__initcall__kmod_chacha_neon__177_342_chacha_simd_mod_init6, ptr @__ksymtab_chacha_crypt_arch, ptr @__ksymtab_chacha_init_arch, ptr @__ksymtab_hchacha_block_arch, ptr @chacha_simd_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hchacha_block_arch(ptr noundef %state, ptr noundef %stream, i32 noundef %nrounds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_neon, i32 1), ptr blockaddress(@hchacha_block_arch, %if.then)) #8
          to label %land.rhs.i [label %if.then], !srcloc !60

land.rhs.i:                                       ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i6.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %7, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i8.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %11, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %if.else, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.rhs.i.if.then_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hchacha_block_arm(ptr noundef %state, ptr noundef %stream, i32 noundef %nrounds) #8
  br label %if.end

if.else:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kernel_neon_begin() #8
  tail call void @hchacha_block_neon(ptr noundef %state, ptr noundef %stream, i32 noundef %nrounds) #8
  tail call void @kernel_neon_end() #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_arm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @chacha_init_arch(ptr nocapture noundef writeonly %state, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %iv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1634760805, ptr %state, align 4
  %arrayidx1.i.i = getelementptr i32, ptr %state, i32 1
  %1 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 857760878, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %state, i32 2
  %2 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2036477234, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %state, i32 3
  %3 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1797285236, ptr %arrayidx3.i.i, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %arrayidx1.i = getelementptr i32, ptr %state, i32 4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %key, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %state, i32 5
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %key, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %state, i32 6
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %key, i32 3
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %state, i32 7
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %key, i32 4
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %state, i32 8
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %key, i32 5
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %state, i32 9
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %key, i32 6
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %state, i32 10
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %key, i32 7
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %state, i32 11
  %27 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx15.i, align 4
  %28 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %iv, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %arrayidx16.i = getelementptr i32, ptr %state, i32 12
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %iv, i32 4
  %32 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr17.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %arrayidx19.i = getelementptr i32, ptr %state, i32 13
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %iv, i32 8
  %36 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr20.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %arrayidx22.i = getelementptr i32, ptr %state, i32 14
  %39 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %iv, i32 12
  %40 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr23.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %arrayidx25.i = getelementptr i32, ptr %state, i32 15
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx25.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chacha_crypt_arch(ptr noundef %state, ptr noundef %dst, ptr noundef %src, i32 noundef %bytes, i32 noundef %nrounds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_neon, i32 1), ptr blockaddress(@chacha_crypt_arch, %neon_usable.exit)) #8
          to label %land.rhs.i [label %neon_usable.exit], !srcloc !60

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i6.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %7, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i8.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %11, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp ne i32 %or5.i.i, 0
  br label %neon_usable.exit

neon_usable.exit:                                 ; preds = %land.rhs.i, %entry
  %12 = phi i1 [ %tobool.not.i.i, %land.rhs.i ], [ true, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %bytes)
  %cmp = icmp ult i32 %bytes, 65
  %or.cond = or i1 %cmp, %12
  br i1 %or.cond, label %if.then, label %neon_usable.exit.do.body_crit_edge

neon_usable.exit.do.body_crit_edge:               ; preds = %neon_usable.exit
  br label %do.body

if.then:                                          ; preds = %neon_usable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @chacha_doarm(ptr noundef %dst, ptr noundef %src, i32 noundef %bytes, ptr noundef %state, i32 noundef %nrounds) #8
  %sub = add i32 %bytes, 63
  %div22 = lshr i32 %sub, 6
  %arrayidx = getelementptr i32, ptr %state, i32 12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add1 = add i32 %14, %div22
  store i32 %add1, ptr %arrayidx, align 4
  br label %do.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %neon_usable.exit.do.body_crit_edge
  %bytes.addr.0 = phi i32 [ %sub3, %do.body.do.body_crit_edge ], [ %bytes, %neon_usable.exit.do.body_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr, %do.body.do.body_crit_edge ], [ %src, %neon_usable.exit.do.body_crit_edge ]
  %dst.addr.0 = phi ptr [ %add.ptr4, %do.body.do.body_crit_edge ], [ %dst, %neon_usable.exit.do.body_crit_edge ]
  %15 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.0, i32 4096)
  tail call void @kernel_neon_begin() #8
  tail call fastcc void @chacha_doneon(ptr noundef %state, ptr noundef %dst.addr.0, ptr noundef %src.addr.0, i32 noundef %15, i32 noundef %nrounds)
  tail call void @kernel_neon_end() #8
  %sub3 = sub i32 %bytes.addr.0, %15
  %add.ptr = getelementptr i8, ptr %src.addr.0, i32 %15
  %add.ptr4 = getelementptr i8, ptr %dst.addr.0, i32 %15
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %do.body.do.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_doarm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chacha_doneon(ptr noundef %state, ptr noundef %dst, ptr noundef %src, i32 noundef %bytes, i32 noundef %nrounds) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %bytes)
  %cmp41 = icmp ugt i32 %bytes, 64
  br i1 %cmp41, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx = getelementptr i32, ptr %state, i32 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dst.addr.044 = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr2, %while.body.while.body_crit_edge ]
  %src.addr.043 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %bytes.addr.042 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %1 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.042, i32 256)
  tail call void @chacha_4block_xor_neon(ptr noundef %state, ptr noundef %dst.addr.044, ptr noundef %src.addr.043, i32 noundef %nrounds, i32 noundef %1) #8
  %sub = sub i32 %bytes.addr.042, %1
  %add.ptr = getelementptr i8, ptr %src.addr.043, i32 %1
  %add.ptr2 = getelementptr i8, ptr %dst.addr.044, i32 %1
  %sub3 = add nuw nsw i32 %1, 63
  %div37 = lshr i32 %sub3, 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add4 = add i32 %3, %div37
  store i32 %add4, ptr %arrayidx, align 4
  %cmp = icmp ugt i32 %sub, 64
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %add.ptr2, %while.body.while.end_crit_edge ]
  %4 = zext i32 %bytes.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bytes.addr.0.lcssa, label %if.end [
    i32 0, label %while.end.if.end12_crit_edge
    i32 64, label %if.end.thread
  ]

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.thread:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @chacha_block_xor_neon(ptr noundef %state, ptr noundef %dst.addr.0.lcssa, ptr noundef %src.addr.0.lcssa, i32 noundef %nrounds) #8
  br label %if.end10

if.end:                                           ; preds = %while.end
  %5 = call ptr @memcpy(ptr %buf, ptr %src.addr.0.lcssa, i32 %bytes.addr.0.lcssa)
  call void @chacha_block_xor_neon(ptr noundef %state, ptr noundef nonnull %buf, ptr noundef nonnull %buf, i32 noundef %nrounds) #8
  %cmp7.not = icmp eq ptr %buf, %dst.addr.0.lcssa
  br i1 %cmp7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %dst.addr.0.lcssa, ptr %buf, i32 %bytes.addr.0.lcssa)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge, %if.end.thread
  %arrayidx11 = getelementptr i32, ptr %state, i32 12
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx11, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %while.end.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chacha_simd_mod_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @neon_algs, i32 noundef 3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chacha_simd_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !61
  %and.i = and i32 %1, -16711696
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and.i, label %sw.default [
    i32 1090568304, label %if.then2.for.body.preheader_crit_edge
    i32 1090568272, label %if.then2.for.body.preheader_crit_edge15
  ]

if.then2.for.body.preheader_crit_edge15:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then2.for.body.preheader_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then2.for.body.preheader_crit_edge, %if.then2.for.body.preheader_crit_edge15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %cra_priority = getelementptr [3 x %struct.skcipher_alg], ptr @neon_algs, i32 0, i32 %i.014, i32 11, i32 6
  %3 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cra_priority, align 32
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @static_key_enable(ptr noundef nonnull @use_neon) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.body.sw.epilog_crit_edge
  %call4 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @neon_algs, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.epilog.cleanup_crit_edge, label %if.then6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.then6 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_4block_xor_neon(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_xor_neon(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chacha20_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keysize) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keysize)
  %cmp.not.i = icmp eq i32 %keysize, 32
  br i1 %cmp.not.i, label %for.body.preheader.i, label %entry.chacha_setkey.exit_crit_edge

entry.chacha_setkey.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chacha_setkey.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.1.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %arrayidx.1.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %key, i32 8
  %8 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.2.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %arrayidx.2.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %key, i32 12
  %12 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.3.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %arrayidx.3.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %key, i32 16
  %16 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.4.i, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %arrayidx.4.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.4.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %key, i32 20
  %20 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.5.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %arrayidx.5.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.5.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %key, i32 24
  %24 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.6.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %arrayidx.6.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.6.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %key, i32 28
  %28 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.7.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %arrayidx.7.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 24
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.7.i, align 4
  %nrounds4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %32 = ptrtoint ptr %nrounds4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %nrounds4.i, align 4
  br label %chacha_setkey.exit

chacha_setkey.exit:                               ; preds = %for.body.preheader.i, %entry.chacha_setkey.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.preheader.i ], [ -22, %entry.chacha_setkey.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chacha_arm(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv.i, align 4
  %call2.i = tail call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef %__crt_ctx.i.i.i, ptr noundef %3, i1 noundef zeroext false) #8
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchacha_arm(ptr noundef %req) #0 align 64 {
entry:
  %subctx.i = alloca %struct.chacha_ctx, align 4
  %state.i = alloca [16 x i32], align 4
  %real_iv.i = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %subctx.i) #8
  %2 = call ptr @memset(ptr %subctx.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %state.i) #8
  %3 = getelementptr inbounds i8, ptr %state.i, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %real_iv.i) #8
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv.i, align 4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1634760805, ptr %state.i, align 4
  %arrayidx1.i.i.i = getelementptr inbounds i32, ptr %state.i, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 857760878, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr inbounds i32, ptr %state.i, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2036477234, ptr %arrayidx2.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds i32, ptr %state.i, i32 3
  %9 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1797285236, ptr %arrayidx3.i.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__crt_ctx.i.i.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %1, i32 132
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %state.i, i32 5
  %15 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %1, i32 136
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr inbounds i32, ptr %state.i, i32 6
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %1, i32 140
  %19 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds i32, ptr %state.i, i32 7
  %21 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %1, i32 144
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.i.i, align 4
  %arrayidx9.i.i = getelementptr inbounds i32, ptr %state.i, i32 8
  %24 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %1, i32 148
  %25 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds i32, ptr %state.i, i32 9
  %27 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx11.i.i, align 4
  %arrayidx12.i.i = getelementptr i8, ptr %1, i32 152
  %28 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx12.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds i32, ptr %state.i, i32 10
  %30 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx13.i.i, align 4
  %arrayidx14.i.i = getelementptr i8, ptr %1, i32 156
  %31 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx15.i.i = getelementptr inbounds i32, ptr %state.i, i32 11
  %33 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx15.i.i, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %5, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %arrayidx16.i.i = getelementptr inbounds i32, ptr %state.i, i32 12
  %37 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx16.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %5, i32 4
  %38 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr17.i.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %arrayidx19.i.i = getelementptr inbounds i32, ptr %state.i, i32 13
  %41 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx19.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %5, i32 8
  %42 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr20.i.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  %arrayidx22.i.i = getelementptr inbounds i32, ptr %state.i, i32 14
  %45 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx22.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %5, i32 12
  %46 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %add.ptr23.i.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %arrayidx25.i.i = getelementptr inbounds i32, ptr %state.i, i32 15
  %49 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx25.i.i, align 4
  %nrounds.i = getelementptr i8, ptr %1, i32 160
  %50 = ptrtoint ptr %nrounds.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nrounds.i, align 4
  call void @hchacha_block_arm(ptr noundef nonnull %state.i, ptr noundef nonnull %subctx.i, i32 noundef %51) #8
  %52 = getelementptr inbounds [16 x i8], ptr %real_iv.i, i32 0, i32 8
  %53 = ptrtoint ptr %nrounds.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nrounds.i, align 4
  %nrounds11.i = getelementptr inbounds %struct.chacha_ctx, ptr %subctx.i, i32 0, i32 1
  %55 = ptrtoint ptr %nrounds11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %nrounds11.i, align 4
  %56 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 24
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %add.ptr.i, align 1
  %60 = ptrtoint ptr %real_iv.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %real_iv.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %57, i32 16
  %61 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %add.ptr15.i, align 1
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %52, align 8
  %call18.i = call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef nonnull %subctx.i, ptr noundef nonnull %real_iv.i, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %real_iv.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %state.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %subctx.i) #8
  ret i32 %call18.i
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chacha12_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keysize) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keysize)
  %cmp.not.i = icmp eq i32 %keysize, 32
  br i1 %cmp.not.i, label %for.body.preheader.i, label %entry.chacha_setkey.exit_crit_edge

entry.chacha_setkey.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chacha_setkey.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %__crt_ctx.i.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %key, i32 4
  %4 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.1.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %arrayidx.1.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx.1.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %key, i32 8
  %8 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.2.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %arrayidx.2.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.2.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %key, i32 12
  %12 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.3.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %arrayidx.3.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.3.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %key, i32 16
  %16 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.4.i, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %arrayidx.4.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.4.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %key, i32 20
  %20 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.5.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %arrayidx.5.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.5.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %key, i32 24
  %24 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.6.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %arrayidx.6.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.6.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %key, i32 28
  %28 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.7.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %arrayidx.7.i = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 24
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.7.i, align 4
  %nrounds4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %32 = ptrtoint ptr %nrounds4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %nrounds4.i, align 4
  br label %chacha_setkey.exit

chacha_setkey.exit:                               ; preds = %for.body.preheader.i, %entry.chacha_setkey.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.preheader.i ], [ -22, %entry.chacha_setkey.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %iv, i1 noundef zeroext %neon) unnamed_addr #0 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #8
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %state) #8
  %1 = call ptr @memset(ptr %state, i32 255, i32 64)
  %call = call i32 @skcipher_walk_virt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1634760805, ptr %state, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %state, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 857760878, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %state, i32 2
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2036477234, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %state, i32 3
  %5 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1797285236, ptr %arrayidx3.i.i, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx, align 4
  %arrayidx1.i = getelementptr inbounds i32, ptr %state, i32 4
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %ctx, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds i32, ptr %state, i32 5
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %ctx, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr inbounds i32, ptr %state, i32 6
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %ctx, i32 3
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr inbounds i32, ptr %state, i32 7
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %ctx, i32 4
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr inbounds i32, ptr %state, i32 8
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %ctx, i32 5
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds i32, ptr %state, i32 9
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %ctx, i32 6
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr inbounds i32, ptr %state, i32 10
  %26 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %ctx, i32 7
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr inbounds i32, ptr %state, i32 11
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx15.i, align 4
  %30 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %iv, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  %arrayidx16.i = getelementptr inbounds i32, ptr %state, i32 12
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %iv, i32 4
  %34 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr17.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #8
  %arrayidx19.i = getelementptr inbounds i32, ptr %state, i32 13
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %iv, i32 8
  %38 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr20.i, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %arrayidx22.i = getelementptr inbounds i32, ptr %state, i32 14
  %41 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %iv, i32 12
  %42 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr23.i, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43) #8
  %arrayidx25.i = getelementptr inbounds i32, ptr %state, i32 15
  %45 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx25.i, align 4
  %nbytes = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %46 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not28 = icmp eq i32 %47, 0
  br i1 %cmp.not28, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %total = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr6 = getelementptr inbounds %struct.anon.50, ptr %walk, i32 0, i32 1
  %nrounds = getelementptr inbounds %struct.chacha_ctx, ptr %ctx, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %48 = phi i32 [ %47, %while.body.lr.ph ], [ %70, %if.end16.while.body_crit_edge ]
  %49 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp4 = icmp ult i32 %48, %50
  br i1 %cmp4, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stride, align 4
  %neg = sub i32 0, %52
  %and = and i32 %48, %neg
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %nbytes2.0 = phi i32 [ %and, %if.then ], [ %48, %while.body.if.end_crit_edge ]
  br i1 %neon, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %addr, align 4
  %55 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr6, align 4
  %57 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nrounds, align 4
  call void @chacha_doarm(ptr noundef %54, ptr noundef %56, i32 noundef %nbytes2.0, ptr noundef nonnull %state, i32 noundef %58) #8
  %sub8 = add i32 %nbytes2.0, 63
  %div27 = lshr i32 %sub8, 6
  %59 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx16.i, align 4
  %add9 = add i32 %60, %div27
  store i32 %add9, ptr %arrayidx16.i, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kernel_neon_begin() #8
  %61 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr, align 4
  %63 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr6, align 4
  %65 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nrounds, align 4
  call fastcc void @chacha_doneon(ptr noundef nonnull %state, ptr noundef %62, ptr noundef %64, i32 noundef %nbytes2.0, i32 noundef %66)
  call void @kernel_neon_end() #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then5
  %67 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nbytes, align 4
  %sub18 = sub i32 %68, %nbytes2.0
  %call19 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub18) #8
  %69 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nbytes, align 4
  %cmp.not = icmp eq i32 %70, 0
  br i1 %cmp.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call19, %if.end16.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %state) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #8
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_xchacha(ptr noundef %req, i1 noundef zeroext %neon) unnamed_addr #0 align 64 {
entry:
  %subctx = alloca %struct.chacha_ctx, align 4
  %state = alloca [16 x i32], align 4
  %real_iv = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %subctx) #8
  %2 = call ptr @memset(ptr %subctx, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %state) #8
  %3 = getelementptr inbounds i8, ptr %state, i32 16
  %4 = call ptr @memset(ptr %3, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %real_iv) #8
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %5 = call ptr @memset(ptr %real_iv, i32 255, i32 16)
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1634760805, ptr %state, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %state, i32 1
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 857760878, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %state, i32 2
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2036477234, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %state, i32 3
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1797285236, ptr %arrayidx3.i.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx1.i = getelementptr inbounds i32, ptr %state, i32 4
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %1, i32 132
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds i32, ptr %state, i32 5
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %1, i32 136
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr inbounds i32, ptr %state, i32 6
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %1, i32 140
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr inbounds i32, ptr %state, i32 7
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %1, i32 144
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr inbounds i32, ptr %state, i32 8
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %1, i32 148
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds i32, ptr %state, i32 9
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %1, i32 152
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr inbounds i32, ptr %state, i32 10
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %1, i32 156
  %33 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr inbounds i32, ptr %state, i32 11
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx15.i, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %7, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %arrayidx16.i = getelementptr inbounds i32, ptr %state, i32 12
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %7, i32 4
  %40 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr17.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %arrayidx19.i = getelementptr inbounds i32, ptr %state, i32 13
  %43 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %7, i32 8
  %44 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %add.ptr20.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  %arrayidx22.i = getelementptr inbounds i32, ptr %state, i32 14
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %7, i32 12
  %48 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr23.i, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %arrayidx25.i = getelementptr inbounds i32, ptr %state, i32 15
  %51 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx25.i, align 4
  br i1 %neon, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nrounds = getelementptr i8, ptr %1, i32 160
  %52 = ptrtoint ptr %nrounds to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nrounds, align 4
  call void @hchacha_block_arm(ptr noundef nonnull %state, ptr noundef nonnull %subctx, i32 noundef %53) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kernel_neon_begin() #8
  %nrounds9 = getelementptr i8, ptr %1, i32 160
  %54 = ptrtoint ptr %nrounds9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nrounds9, align 4
  call void @hchacha_block_neon(ptr noundef nonnull %state, ptr noundef nonnull %subctx, i32 noundef %55) #8
  call void @kernel_neon_end() #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %56 = getelementptr inbounds [16 x i8], ptr %real_iv, i32 0, i32 8
  %nrounds10 = getelementptr i8, ptr %1, i32 160
  %57 = ptrtoint ptr %nrounds10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nrounds10, align 4
  %nrounds11 = getelementptr inbounds %struct.chacha_ctx, ptr %subctx, i32 0, i32 1
  %59 = ptrtoint ptr %nrounds11 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %nrounds11, align 4
  %60 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iv, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 24
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %add.ptr, align 1
  %64 = ptrtoint ptr %real_iv to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %real_iv, align 8
  %add.ptr15 = getelementptr i8, ptr %61, i32 16
  %65 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %add.ptr15, align 1
  %67 = ptrtoint ptr %56 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %56, align 8
  %call18 = call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef nonnull %subctx, ptr noundef nonnull %real_iv, i1 noundef zeroext %neon)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %real_iv) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %state) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %subctx) #8
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chacha_neon(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_neon, i32 1), ptr blockaddress(@chacha_neon, %neon_usable.exit)) #8
          to label %land.rhs.i [label %neon_usable.exit], !srcloc !60

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i6.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %7, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i8.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %11, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br label %neon_usable.exit

neon_usable.exit:                                 ; preds = %land.rhs.i, %entry
  %12 = phi i1 [ %tobool.not.i.i, %land.rhs.i ], [ false, %entry ]
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %14, i32 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv.i, align 4
  %call2.i = tail call fastcc i32 @chacha_stream_xor(ptr noundef %req, ptr noundef %__crt_ctx.i.i.i, ptr noundef %16, i1 noundef zeroext %12) #8
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchacha_neon(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @use_neon, i32 1), ptr blockaddress(@xchacha_neon, %neon_usable.exit)) #8
          to label %land.rhs.i [label %neon_usable.exit], !srcloc !60

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i6.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %7, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i8.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %11, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br label %neon_usable.exit

neon_usable.exit:                                 ; preds = %land.rhs.i, %entry
  %12 = phi i1 [ %tobool.not.i.i, %land.rhs.i ], [ false, %entry ]
  %call1 = tail call fastcc i32 @do_xchacha(ptr noundef %req, i1 noundef zeroext %12)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab_hchacha_block_arch, !1, !"__ksymtab_hchacha_block_arch", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/chacha-glue.c", i32 77, i32 1}
!2 = !{ptr @__ksymtab_chacha_init_arch, !3, !"__ksymtab_chacha_init_arch", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/chacha-glue.c", i32 83, i32 1}
!4 = !{ptr @__ksymtab_chacha_crypt_arch, !5, !"__ksymtab_chacha_crypt_arch", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/chacha-glue.c", i32 107, i32 1}
!6 = !{ptr @__initcall__kmod_chacha_neon__177_342_chacha_simd_mod_init6, !7, !"__initcall__kmod_chacha_neon__177_342_chacha_simd_mod_init6", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/chacha-glue.c", i32 342, i32 1}
!8 = !{ptr @__exitcall_chacha_simd_mod_fini, !9, !"__exitcall_chacha_simd_mod_fini", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/chacha-glue.c", i32 343, i32 1}
!10 = !{ptr @__UNIQUE_ID_description178, !11, !"__UNIQUE_ID_description178", i1 false, i1 false}
!11 = !{!"../arch/arm/crypto/chacha-glue.c", i32 345, i32 1}
!12 = !{ptr @__UNIQUE_ID_author179, !13, !"__UNIQUE_ID_author179", i1 false, i1 false}
!13 = !{!"../arch/arm/crypto/chacha-glue.c", i32 346, i32 1}
!14 = !{ptr @__UNIQUE_ID_file180, !15, !"__UNIQUE_ID_file180", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/chacha-glue.c", i32 347, i32 1}
!16 = !{ptr @__UNIQUE_ID_license181, !15, !"__UNIQUE_ID_license181", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace182, !18, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/chacha-glue.c", i32 348, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto183, !18, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace184, !21, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!21 = !{!"../arch/arm/crypto/chacha-glue.c", i32 349, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto185, !21, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias_userspace186, !24, !"__UNIQUE_ID_alias_userspace186", i1 false, i1 false}
!24 = !{!"../arch/arm/crypto/chacha-glue.c", i32 350, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto187, !24, !"__UNIQUE_ID_alias_crypto187", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace188, !27, !"__UNIQUE_ID_alias_userspace188", i1 false, i1 false}
!27 = !{!"../arch/arm/crypto/chacha-glue.c", i32 351, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto189, !27, !"__UNIQUE_ID_alias_crypto189", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias_userspace190, !30, !"__UNIQUE_ID_alias_userspace190", i1 false, i1 false}
!30 = !{!"../arch/arm/crypto/chacha-glue.c", i32 352, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias_crypto191, !30, !"__UNIQUE_ID_alias_crypto191", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias_userspace192, !33, !"__UNIQUE_ID_alias_userspace192", i1 false, i1 false}
!33 = !{!"../arch/arm/crypto/chacha-glue.c", i32 353, i32 1}
!34 = !{ptr @__UNIQUE_ID_alias_crypto193, !33, !"__UNIQUE_ID_alias_crypto193", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_alias_userspace194, !36, !"__UNIQUE_ID_alias_userspace194", i1 false, i1 false}
!36 = !{!"../arch/arm/crypto/chacha-glue.c", i32 355, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias_crypto195, !36, !"__UNIQUE_ID_alias_crypto195", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_alias_userspace196, !39, !"__UNIQUE_ID_alias_userspace196", i1 false, i1 false}
!39 = !{!"../arch/arm/crypto/chacha-glue.c", i32 356, i32 1}
!40 = !{ptr @__UNIQUE_ID_alias_crypto197, !39, !"__UNIQUE_ID_alias_crypto197", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_alias_userspace198, !42, !"__UNIQUE_ID_alias_userspace198", i1 false, i1 false}
!42 = !{!"../arch/arm/crypto/chacha-glue.c", i32 357, i32 1}
!43 = !{ptr @__UNIQUE_ID_alias_crypto199, !42, !"__UNIQUE_ID_alias_crypto199", i1 false, i1 false}
!44 = !{ptr @use_neon, !45, !"use_neon", i1 false, i1 false}
!45 = !{!"../arch/arm/crypto/chacha-glue.c", i32 33, i32 24}
!46 = !{ptr @arm_algs, !47, !"arm_algs", i1 false, i1 false}
!47 = !{!"../arch/arm/crypto/chacha-glue.c", i32 195, i32 28}
!48 = !{ptr @neon_algs, !49, !"neon_algs", i1 false, i1 false}
!49 = !{!"../arch/arm/crypto/chacha-glue.c", i32 244, i32 28}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148734807, i64 2148734812, i64 2148734833, i64 2148734877, i64 2148734911, i64 2148734932}
!61 = !{i64 2152545606}
