; ModuleID = '/llk/IR_all_yes/crypto/drbg.c_pt.bc'
source_filename = "../crypto/drbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.drbg_core = type { i32, i8, i8, [128 x i8], [128 x i8] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drbg_state_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.drbg_string = type { ptr, i32, %struct.list_head }
%struct.drbg_state = type { %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.crypto_wait, %struct.scatterlist, %struct.scatterlist, i32, i32, i8, i8, ptr, ptr, ptr, ptr, %struct.drbg_string }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@__UNIQUE_ID_alias_userspace226 = internal constant [30 x i8] c"drbg.alias=drbg_pr_ctr_aes256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [37 x i8] c"drbg.alias=crypto-drbg_pr_ctr_aes256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [32 x i8] c"drbg.alias=drbg_nopr_ctr_aes256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [39 x i8] c"drbg.alias=crypto-drbg_nopr_ctr_aes256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [30 x i8] c"drbg.alias=drbg_pr_ctr_aes192\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [37 x i8] c"drbg.alias=crypto-drbg_pr_ctr_aes192\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [32 x i8] c"drbg.alias=drbg_nopr_ctr_aes192\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [39 x i8] c"drbg.alias=crypto-drbg_nopr_ctr_aes192\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace234 = internal constant [30 x i8] c"drbg.alias=drbg_pr_ctr_aes128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto235 = internal constant [37 x i8] c"drbg.alias=crypto-drbg_pr_ctr_aes128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace236 = internal constant [32 x i8] c"drbg.alias=drbg_nopr_ctr_aes128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto237 = internal constant [39 x i8] c"drbg.alias=crypto-drbg_nopr_ctr_aes128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace240 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto241 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace242 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto243 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace246 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto247 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [31 x i8] c"drbg.alias=drbg_pr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace250 = internal constant [33 x i8] c"drbg.alias=drbg_nopr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto251 = internal constant [40 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace252 = internal constant [29 x i8] c"drbg.alias=drbg_pr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto253 = internal constant [36 x i8] c"drbg.alias=crypto-drbg_pr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace254 = internal constant [31 x i8] c"drbg.alias=drbg_nopr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto255 = internal constant [38 x i8] c"drbg.alias=crypto-drbg_nopr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace256 = internal constant [26 x i8] c"drbg.alias=drbg_pr_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto257 = internal constant [33 x i8] c"drbg.alias=crypto-drbg_pr_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace258 = internal constant [28 x i8] c"drbg.alias=drbg_nopr_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto259 = internal constant [35 x i8] c"drbg.alias=crypto-drbg_nopr_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace260 = internal constant [26 x i8] c"drbg.alias=drbg_pr_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto261 = internal constant [33 x i8] c"drbg.alias=crypto-drbg_pr_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace262 = internal constant [28 x i8] c"drbg.alias=drbg_nopr_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto263 = internal constant [35 x i8] c"drbg.alias=crypto-drbg_nopr_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace264 = internal constant [26 x i8] c"drbg.alias=drbg_pr_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto265 = internal constant [33 x i8] c"drbg.alias=crypto-drbg_pr_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace266 = internal constant [28 x i8] c"drbg.alias=drbg_nopr_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto267 = internal constant [35 x i8] c"drbg.alias=crypto-drbg_nopr_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace268 = internal constant [24 x i8] c"drbg.alias=drbg_pr_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto269 = internal constant [31 x i8] c"drbg.alias=crypto-drbg_pr_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace270 = internal constant [26 x i8] c"drbg.alias=drbg_nopr_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto271 = internal constant [33 x i8] c"drbg.alias=crypto-drbg_nopr_sha1\00", section ".modinfo", align 1
@drbg_algs = internal global [22 x %struct.rng_alg] zeroinitializer, align 128
@__initcall__kmod_drbg__278_2150_drbg_init4 = internal global ptr @drbg_init, section ".initcall4.init", align 4
@__exitcall_drbg_exit = internal global ptr @drbg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file279 = internal constant [22 x i8] c"drbg.file=crypto/drbg\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [17 x i8] c"drbg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [50 x i8] c"drbg.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [112 x i8] c"drbg.description=NIST SP800-90A Deterministic Random Bit Generator (DRBG) using following cores: HASH HMAC CTR \00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace283 = internal constant [18 x i8] c"drbg.alias=stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto284 = internal constant [25 x i8] c"drbg.alias=crypto-stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns285 = internal constant [31 x i8] c"drbg.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@drbg_cores = internal constant { [11 x %struct.drbg_core], [712 x i8] } { [11 x %struct.drbg_core] [%struct.drbg_core { i32 9, i8 32, i8 16, [128 x i8] c"ctr_aes128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 17, i8 40, i8 16, [128 x i8] c"ctr_aes192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 33, i8 48, i8 16, [128 x i8] c"ctr_aes256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 12, i8 55, i8 20, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 36, i8 111, i8 48, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 36, i8 111, i8 64, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 36, i8 55, i8 32, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 10, i8 20, i8 20, [128 x i8] c"hmac_sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 48, i8 48, [128 x i8] c"hmac_sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 32, i8 32, [128 x i8] c"hmac_sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 64, i8 64, [128 x i8] c"hmac_sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [712 x i8] zeroinitializer }, align 32
@drbg_fill_array.priority = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stdrng\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"drbg_pr_\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"drbg_nopr_\00", [21 x i8] zeroinitializer }, align 32
@drbg_kcapi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&drbg->drbg_mutex\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@drbg_hmac_ops = internal constant { %struct.drbg_state_ops, [16 x i8] } { %struct.drbg_state_ops { ptr @drbg_hmac_update, ptr @drbg_hmac_generate, ptr @drbg_init_hash_kernel, ptr @drbg_fini_hash_kernel }, [16 x i8] zeroinitializer }, align 32
@drbg_hash_ops = internal constant { %struct.drbg_state_ops, [16 x i8] } { %struct.drbg_state_ops { ptr @drbg_hash_update, ptr @drbg_hash_generate, ptr @drbg_init_hash_kernel, ptr @drbg_fini_hash_kernel }, [16 x i8] zeroinitializer }, align 32
@drbg_ctr_ops = internal constant { %struct.drbg_state_ops, [16 x i8] } { %struct.drbg_state_ops { ptr @drbg_ctr_update, ptr @drbg_ctr_generate, ptr @drbg_init_sym_kernel, ptr @drbg_fini_sym_kernel }, [16 x i8] zeroinitializer }, align 32
@drbg_init_hash_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016DRBG: could not allocate digest TFM handle: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drbg_init_hash_kernel\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crypto/drbg.c\00", [18 x i8] zeroinitializer }, align 32
@drbg_init_hash_kernel._entry_ptr = internal global ptr @drbg_init_hash_kernel._entry, section ".printk_index", align 4
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\00", [63 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@drbg_init_sym_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016DRBG: could not allocate cipher TFM handle: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbg_init_sym_kernel\00", [43 x i8] zeroinitializer }, align 32
@drbg_init_sym_kernel._entry_ptr = internal global ptr @drbg_init_sym_kernel._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctr(%s)\00", [24 x i8] zeroinitializer }, align 32
@drbg_init_sym_kernel._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.6, i32 1784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016DRBG: could not allocate CTR cipher TFM handle: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@drbg_init_sym_kernel._entry_ptr.14 = internal global ptr @drbg_init_sym_kernel._entry.12, section ".printk_index", align 4
@drbg_init_sym_kernel._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.6, i32 1793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016DRBG: could not allocate request queue\0A\00", [54 x i8] zeroinitializer }, align 32
@drbg_init_sym_kernel._entry_ptr.17 = internal global ptr @drbg_init_sym_kernel._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jitterentropy_rng\00", [46 x i8] zeroinitializer }, align 32
@drbg_prepare_hrng._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016DRBG: Continuing without Jitter RNG\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbg_prepare_hrng\00", [46 x i8] zeroinitializer }, align 32
@drbg_prepare_hrng._entry_ptr = internal global ptr @drbg_prepare_hrng._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"drbg_cores\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 118, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2079, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2081, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2083, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2086, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1931, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"drbg_hmac_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 751, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"drbg_hash_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1027, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"drbg_ctr_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 622, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1686, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 416, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 87, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1769, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1776, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1783, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1793, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1544, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [17 x i8] c"../crypto/drbg.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1551, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_crypto235, ptr @__UNIQUE_ID_alias_crypto237, ptr @__UNIQUE_ID_alias_crypto241, ptr @__UNIQUE_ID_alias_crypto243, ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_crypto247, ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_crypto251, ptr @__UNIQUE_ID_alias_crypto253, ptr @__UNIQUE_ID_alias_crypto255, ptr @__UNIQUE_ID_alias_crypto257, ptr @__UNIQUE_ID_alias_crypto259, ptr @__UNIQUE_ID_alias_crypto261, ptr @__UNIQUE_ID_alias_crypto263, ptr @__UNIQUE_ID_alias_crypto265, ptr @__UNIQUE_ID_alias_crypto267, ptr @__UNIQUE_ID_alias_crypto269, ptr @__UNIQUE_ID_alias_crypto271, ptr @__UNIQUE_ID_alias_crypto284, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_alias_userspace234, ptr @__UNIQUE_ID_alias_userspace236, ptr @__UNIQUE_ID_alias_userspace240, ptr @__UNIQUE_ID_alias_userspace242, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_alias_userspace246, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_alias_userspace250, ptr @__UNIQUE_ID_alias_userspace252, ptr @__UNIQUE_ID_alias_userspace254, ptr @__UNIQUE_ID_alias_userspace256, ptr @__UNIQUE_ID_alias_userspace258, ptr @__UNIQUE_ID_alias_userspace260, ptr @__UNIQUE_ID_alias_userspace262, ptr @__UNIQUE_ID_alias_userspace264, ptr @__UNIQUE_ID_alias_userspace266, ptr @__UNIQUE_ID_alias_userspace268, ptr @__UNIQUE_ID_alias_userspace270, ptr @__UNIQUE_ID_alias_userspace283, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_import_ns285, ptr @__UNIQUE_ID_license280, ptr @__exitcall_drbg_exit, ptr @__initcall__kmod_drbg__278_2150_drbg_init4, ptr @drbg_exit, ptr @drbg_init_hash_kernel._entry, ptr @drbg_init_hash_kernel._entry_ptr, ptr @drbg_init_sym_kernel._entry, ptr @drbg_init_sym_kernel._entry.12, ptr @drbg_init_sym_kernel._entry.15, ptr @drbg_init_sym_kernel._entry_ptr, ptr @drbg_init_sym_kernel._entry_ptr.14, ptr @drbg_init_sym_kernel._entry_ptr.17, ptr @drbg_prepare_hrng._entry, ptr @drbg_prepare_hrng._entry_ptr, ptr @drbg_cores, ptr @drbg_fill_array.priority, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @drbg_kcapi_init.__key, ptr @.str.3, ptr @drbg_hmac_ops, ptr @drbg_hash_ops, ptr @drbg_ctr_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_cores to i32), i32 2904, i32 3616, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_fill_array.priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_kcapi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_hmac_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_hash_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_ctr_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_init_hash_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_init_sym_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_init_sym_kernel._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_init_sym_kernel._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbg_prepare_hrng._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drbg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_unregister_rngs(ptr noundef nonnull @drbg_algs, i32 noundef 22) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rngs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %j.025 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i32 0, i32 %j.025
  %arrayidx1 = getelementptr [11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %j.025
  tail call fastcc void @drbg_fill_array(ptr noundef %arrayidx, ptr noundef %arrayidx1, i32 noundef 1) #14
  %inc = add nuw nsw i32 %j.025, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.body.for.body5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %j.127 = phi i32 [ %inc9, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %i.126 = phi i32 [ %inc10, %for.body5.for.body5_crit_edge ], [ 11, %for.body.for.body5_crit_edge ]
  %arrayidx6 = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i32 0, i32 %i.126
  %arrayidx7 = getelementptr [11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %j.127
  tail call fastcc void @drbg_fill_array(ptr noundef %arrayidx6, ptr noundef %arrayidx7, i32 noundef 0) #14
  %inc9 = add nuw nsw i32 %j.127, 1
  %inc10 = add nuw nsw i32 %i.126, 1
  %exitcond28.not = icmp eq i32 %inc9, 11
  br i1 %exitcond28.not, label %for.end11, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end11:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @crypto_register_rngs(ptr noundef nonnull @drbg_algs, i32 noundef 22) #11
  ret i32 %call12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold inlinehint mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @drbg_fill_array(ptr nocapture noundef writeonly %alg, ptr nocapture noundef readonly %core, i32 noundef %pr) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 8
  %0 = call ptr @memcpy(ptr %cra_name, ptr @.str, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pr)
  %tobool.not = icmp eq i32 %pr, 0
  %cra_driver_name4 = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %cra_driver_name4 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 7237955747260166751, ptr %cra_driver_name4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memcpy(ptr %cra_driver_name4, ptr @.str.2, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pos.0 = phi i32 [ 8, %if.then ], [ 10, %if.else ]
  %cra_driver_name7 = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 9
  %add.ptr = getelementptr i8, ptr %cra_driver_name7, i32 %pos.0
  %cra_name9 = getelementptr inbounds %struct.drbg_core, ptr %core, i32 0, i32 3
  %call = tail call i32 @strlen(ptr noundef %cra_name9) #15
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %cra_name9, i32 %call)
  %4 = load i32, ptr @drbg_fill_array.priority, align 4
  %cra_priority = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 6
  %5 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cra_priority, align 32
  %inc = add i32 %4, 1
  store i32 %inc, ptr @drbg_fill_array.priority, align 4
  %cra_ctxsize = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 288, ptr %cra_ctxsize, align 8
  %cra_module = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 15
  %7 = ptrtoint ptr %cra_module to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cra_module, align 4
  %cra_init = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 12
  %8 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @drbg_kcapi_init, ptr %cra_init, align 64
  %cra_exit = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 5, i32 13
  %9 = ptrtoint ptr %cra_exit to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @drbg_kcapi_cleanup, ptr %cra_exit, align 4
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @drbg_kcapi_random, ptr %alg, align 128
  %seed = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 1
  %11 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @drbg_kcapi_seed, ptr %seed, align 4
  %set_ent = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 2
  %12 = ptrtoint ptr %set_ent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @drbg_kcapi_set_entropy, ptr %set_ent, align 8
  %seedsize = getelementptr inbounds %struct.rng_alg, ptr %alg, i32 0, i32 3
  %13 = ptrtoint ptr %seedsize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %seedsize, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rngs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_init(ptr noundef %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %__crt_ctx.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @drbg_kcapi_init.__key) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drbg_kcapi_cleanup(ptr noundef %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call fastcc void @drbg_uninstantiate(ptr noundef %__crt_ctx.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_random(ptr noundef %tfm, ptr noundef %src, i32 noundef %slen, ptr noundef %dst, i32 noundef %dlen) #5 align 64 {
entry:
  %data.i.i = alloca %struct.drbg_string, align 4
  %seedlist.i.i = alloca %struct.list_head, align 4
  %entropy.i.i = alloca [32 x i8], align 1
  %addtllist.i.i = alloca %struct.list_head, align 4
  %string = alloca %struct.drbg_string, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %string) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %tobool.not = icmp eq i32 %slen, 0
  %0 = call ptr @memset(ptr %string, i32 255, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 2, i32 1
  %2 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 1
  %4 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %src, ptr %string, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slen, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %2, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addtl.0 = phi ptr [ %string, %if.then ], [ null, %entry.if.end_crit_edge ]
  %8 = getelementptr inbounds %struct.list_head, ptr %addtllist.i.i, i32 0, i32 1
  %core.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 3
  %tobool5.not.i.i = icmp eq ptr %addtl.0, null
  %len9.i.i = getelementptr inbounds %struct.drbg_string, ptr %addtl.0, i32 0, i32 1
  %reseed_threshold.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %reseed_ctr.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %seeded.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 100
  %pr.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 108
  %list.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %last_seed_time.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 104
  %9 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.list_head, ptr %seedlist.i.i, i32 0, i32 1
  %d_ops.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 2
  %list.i.i = getelementptr inbounds %struct.drbg_string, ptr %addtl.0, i32 0, i32 2
  %prev3.i.i.i.i = getelementptr inbounds %struct.drbg_string, ptr %addtl.0, i32 0, i32 2, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %len.0.i = phi i32 [ 0, %if.end ], [ %add.i, %do.cond.i.do.body.i_crit_edge ]
  %sub.i = sub i32 %dlen, %len.0.i
  %13 = call i32 @llvm.umin.i32(i32 %sub.i, i32 65536) #11
  call void @mutex_lock_nested(ptr noundef %__crt_ctx.i.i, i32 noundef 0) #11
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %len.0.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addtllist.i.i) #11
  %14 = ptrtoint ptr %addtllist.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %addtllist.i.i, ptr %addtllist.i.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addtllist.i.i, ptr %8, align 4
  %16 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %do.body.i.drbg_generate.exit.thread.i_crit_edge, label %if.end.i.i

do.body.i.drbg_generate.exit.thread.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate.exit.thread.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  %tobool1.not.i.i = icmp eq ptr %add.ptr.i, null
  %or.cond.i.i = or i1 %tobool1.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.drbg_generate.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i.i.drbg_generate.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.end25.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.i.if.end25.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i.i
  %18 = ptrtoint ptr %addtl.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addtl.0, align 4
  %cmp7.i.i = icmp eq ptr %19, null
  %20 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len9.i.i, align 4
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %land.lhs.true19.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not.i.not.i = icmp eq i32 %21, 0
  br i1 %cmp10.not.i.not.i, label %land.lhs.true8.i.i.if.end25.i.i_crit_edge, label %land.lhs.true8.i.i.drbg_generate.exit.thread.i_crit_edge

land.lhs.true8.i.i.drbg_generate.exit.thread.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate.exit.thread.i

land.lhs.true8.i.i.if.end25.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp22.i.i = icmp eq i32 %21, -1
  br i1 %cmp22.i.i, label %land.lhs.true19.i.i.drbg_generate.exit.thread.i_crit_edge, label %land.lhs.true19.i.i.if.end25.i.i_crit_edge

land.lhs.true19.i.i.if.end25.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

land.lhs.true19.i.i.drbg_generate.exit.thread.i_crit_edge: ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate.exit.thread.i

if.end25.i.i:                                     ; preds = %land.lhs.true19.i.i.if.end25.i.i_crit_edge, %land.lhs.true8.i.i.if.end25.i.i_crit_edge, %if.end4.i.i.if.end25.i.i_crit_edge
  %22 = ptrtoint ptr %reseed_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reseed_threshold.i.i, align 4
  %24 = ptrtoint ptr %reseed_ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reseed_ctr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp26.i.i = icmp ult i32 %23, %25
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.end25.i.i.if.end28.i.i_crit_edge

if.end25.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %seeded.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %seeded.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then27.i.i, %if.end25.i.i.if.end28.i.i_crit_edge
  %27 = ptrtoint ptr %pr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pr.i.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool29.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool29.not.i.i, label %lor.lhs.false30.i.i, label %if.end28.i.i.if.then33.i.i_crit_edge

if.end28.i.i.if.then33.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i.i

lor.lhs.false30.i.i:                              ; preds = %if.end28.i.i
  %29 = ptrtoint ptr %seeded.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seeded.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp32.i.i = icmp eq i32 %30, 0
  br i1 %cmp32.i.i, label %lor.lhs.false30.i.i.if.then33.i.i_crit_edge, label %if.else.i.i

lor.lhs.false30.i.i.if.then33.i.i_crit_edge:      ; preds = %lor.lhs.false30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i.i

if.then33.i.i:                                    ; preds = %lor.lhs.false30.i.i.if.then33.i.i_crit_edge, %if.end28.i.i.if.then33.i.i_crit_edge
  %call35.i.i = call fastcc i32 @drbg_seed(ptr noundef %__crt_ctx.i.i, ptr noundef %addtl.0, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then33.i.i.if.end57.i.i_crit_edge, label %if.then33.i.i.drbg_generate.exit.i_crit_edge

if.then33.i.i.drbg_generate.exit.i_crit_edge:     ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate.exit.i

if.then33.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false30.i.i
  %call39.i.i = call zeroext i1 @rng_is_initialized() #11
  br i1 %call39.i.i, label %land.lhs.true40.i.i, label %if.else.i.i.if.end51.i.i_crit_edge

if.else.i.i.if.end51.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

land.lhs.true40.i.i:                              ; preds = %if.else.i.i
  %31 = ptrtoint ptr %seeded.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seeded.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp42.i.i = icmp eq i32 %32, 1
  br i1 %cmp42.i.i, label %land.lhs.true40.i.i.if.then45.i.i_crit_edge, label %lor.lhs.false43.i.i

land.lhs.true40.i.i.if.then45.i.i_crit_edge:      ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i.i

lor.lhs.false43.i.i:                              ; preds = %land.lhs.true40.i.i
  %33 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %34, %list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %lor.lhs.false43.i.i.if.end51.i.i_crit_edge, label %drbg_nopr_reseed_interval_elapsed.exit.i.i

lor.lhs.false43.i.i.if.end51.i.i_crit_edge:       ; preds = %lor.lhs.false43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

drbg_nopr_reseed_interval_elapsed.exit.i.i:       ; preds = %lor.lhs.false43.i.i
  %35 = ptrtoint ptr %last_seed_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_seed_time.i.i.i, align 4
  %add.i.i.i = add i32 %36, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %drbg_nopr_reseed_interval_elapsed.exit.i.i.if.then45.i.i_crit_edge, label %drbg_nopr_reseed_interval_elapsed.exit.i.i.if.end51.i.i_crit_edge

drbg_nopr_reseed_interval_elapsed.exit.i.i.if.end51.i.i_crit_edge: ; preds = %drbg_nopr_reseed_interval_elapsed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

drbg_nopr_reseed_interval_elapsed.exit.i.i.if.then45.i.i_crit_edge: ; preds = %drbg_nopr_reseed_interval_elapsed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i.i

if.then45.i.i:                                    ; preds = %drbg_nopr_reseed_interval_elapsed.exit.i.i.if.then45.i.i_crit_edge, %land.lhs.true40.i.i.if.then45.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seedlist.i.i) #11
  %38 = ptrtoint ptr %seedlist.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %seedlist.i.i, ptr %seedlist.i.i, align 4
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %seedlist.i.i, ptr %12, align 4
  %40 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %and.i.i.i = and i32 %43, 56
  %44 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 8, label %if.then45.i.i.drbg_sec_strength.exit.i.i_crit_edge
    i32 16, label %sw.bb1.i.i.i
    i32 32, label %sw.bb2.i.i.i
  ]

if.then45.i.i.drbg_sec_strength.exit.i.i_crit_edge: ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit.i.i

drbg_sec_strength.exit.i.i:                       ; preds = %sw.default.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then45.i.i.drbg_sec_strength.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 32, %sw.default.i.i.i ], [ 32, %sw.bb2.i.i.i ], [ 24, %sw.bb1.i.i.i ], [ 16, %if.then45.i.i.drbg_sec_strength.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entropy.i.i) #11
  %45 = call ptr @memset(ptr %entropy.i.i, i32 255, i32 32)
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entropy.i.i, ptr %data.i.i, align 4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i.i.i, ptr %9, align 4
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %10, ptr %10, align 4
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %10, ptr %11, align 4
  %call.i.i.i26.i = call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef nonnull %seedlist.i.i, ptr noundef nonnull %seedlist.i.i) #11
  br i1 %call.i.i.i26.i, label %if.end.i.i.i27.i, label %drbg_sec_strength.exit.i.i.list_add_tail.exit.i.i_crit_edge

drbg_sec_strength.exit.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %drbg_sec_strength.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i

if.end.i.i.i27.i:                                 ; preds = %drbg_sec_strength.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %10, ptr %12, align 4
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %seedlist.i.i, ptr %10, align 4
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %seedlist.i.i, ptr %11, align 4
  %53 = ptrtoint ptr %seedlist.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %10, ptr %seedlist.i.i, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i27.i, %drbg_sec_strength.exit.i.i.list_add_tail.exit.i.i_crit_edge
  call void @get_random_bytes(ptr noundef nonnull %entropy.i.i, i32 noundef %retval.0.i.i.i) #11
  %54 = ptrtoint ptr %d_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_ops.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call.i.i.i = call i32 %57(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %seedlist.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %drbg_seed_from_random.exit.thread.i, label %drbg_seed_from_random.exit.i

drbg_seed_from_random.exit.thread.i:              ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %seeded.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %seeded.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %last_seed_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %last_seed_time.i.i.i, align 4
  %61 = ptrtoint ptr %reseed_ctr.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %reseed_ctr.i.i, align 4
  %62 = ptrtoint ptr %reseed_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1048576, ptr %reseed_threshold.i.i, align 4
  %63 = call ptr @memset(ptr %entropy.i.i, i32 0, i32 %retval.0.i.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %entropy.i.i) #11, !srcloc !146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entropy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seedlist.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i.i) #11
  br label %if.end51.i.i

drbg_seed_from_random.exit.i:                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = call ptr @memset(ptr %entropy.i.i, i32 0, i32 %retval.0.i.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %entropy.i.i) #11, !srcloc !146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entropy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seedlist.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i.i) #11
  br label %drbg_generate.exit.i

if.end51.i.i:                                     ; preds = %drbg_seed_from_random.exit.thread.i, %drbg_nopr_reseed_interval_elapsed.exit.i.i.if.end51.i.i_crit_edge, %lor.lhs.false43.i.i.if.end51.i.i_crit_edge, %if.else.i.i.if.end51.i.i_crit_edge
  br i1 %tobool5.not.i.i, label %if.end51.i.i.if.end57.i.i_crit_edge, label %land.lhs.true53.i.i

if.end51.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

land.lhs.true53.i.i:                              ; preds = %if.end51.i.i
  %65 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp55.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp55.not.i.i, label %land.lhs.true53.i.i.if.end57.i.i_crit_edge, label %if.then56.i.i

land.lhs.true53.i.i.if.end57.i.i_crit_edge:       ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

if.then56.i.i:                                    ; preds = %land.lhs.true53.i.i
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %8, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %68, ptr noundef nonnull %addtllist.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then56.i.i.if.end57.i.i_crit_edge

if.then56.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

if.end.i.i.i.i:                                   ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list.i.i, ptr %8, align 4
  %70 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %addtllist.i.i, ptr %list.i.i, align 4
  %71 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %list.i.i, ptr %68, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.end.i.i.i.i, %if.then56.i.i.if.end57.i.i_crit_edge, %land.lhs.true53.i.i.if.end57.i.i_crit_edge, %if.end51.i.i.if.end57.i.i_crit_edge, %if.then33.i.i.if.end57.i.i_crit_edge
  %73 = ptrtoint ptr %d_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d_ops.i.i.i, align 4
  %generate.i.i = getelementptr inbounds %struct.drbg_state_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %generate.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %generate.i.i, align 4
  %call58.i.i = call i32 %76(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef %13, ptr noundef nonnull %addtllist.i.i) #11
  %77 = ptrtoint ptr %reseed_ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reseed_ctr.i.i, align 4
  %inc.i.i = add i32 %78, 1
  store i32 %inc.i.i, ptr %reseed_ctr.i.i, align 4
  %79 = call i32 @llvm.smin.i32(i32 %call58.i.i, i32 0) #11
  br label %drbg_generate.exit.i

drbg_generate.exit.thread.i:                      ; preds = %land.lhs.true19.i.i.drbg_generate.exit.thread.i_crit_edge, %land.lhs.true8.i.i.drbg_generate.exit.thread.i_crit_edge, %if.end.i.i.drbg_generate.exit.thread.i_crit_edge, %do.body.i.drbg_generate.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addtllist.i.i) #11
  call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  br label %drbg_generate_long.exit

drbg_generate.exit.i:                             ; preds = %if.end57.i.i, %drbg_seed_from_random.exit.i, %if.then33.i.i.drbg_generate.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call35.i.i, %if.then33.i.i.drbg_generate.exit.i_crit_edge ], [ %79, %if.end57.i.i ], [ %call.i.i.i, %drbg_seed_from_random.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addtllist.i.i) #11
  call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %drbg_generate.exit.i.drbg_generate_long.exit_crit_edge, label %do.cond.i

drbg_generate.exit.i.drbg_generate_long.exit_crit_edge: ; preds = %drbg_generate.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate_long.exit

do.cond.i:                                        ; preds = %drbg_generate.exit.i
  %add.i = add i32 %13, %len.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i)
  %cmp6.not.i = icmp ugt i32 %sub.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %dlen)
  %cmp7.i = icmp ult i32 %add.i, %dlen
  %or.cond.i = select i1 %cmp6.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.drbg_generate_long.exit_crit_edge

do.cond.i.drbg_generate_long.exit_crit_edge:      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_generate_long.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

drbg_generate_long.exit:                          ; preds = %do.cond.i.drbg_generate_long.exit_crit_edge, %drbg_generate.exit.i.drbg_generate_long.exit_crit_edge, %drbg_generate.exit.thread.i
  %retval.2.i = phi i32 [ -22, %drbg_generate.exit.thread.i ], [ %retval.0.i.i, %drbg_generate.exit.i.drbg_generate_long.exit_crit_edge ], [ 0, %do.cond.i.drbg_generate_long.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %string) #11
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_seed(ptr noundef %tfm, ptr noundef %seed, i32 noundef %slen) #5 align 64 {
entry:
  %string = alloca %struct.drbg_string, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %string) #11
  %0 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drbg_string, ptr %string, i32 0, i32 2, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %3 = call ptr @memset(ptr %string, i32 255, i32 16)
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 9
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(10) %cra_driver_name.i, ptr noundef nonnull dereferenceable(10) @.str.2, i32 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.else.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.else.i:                                        ; preds = %entry
  %bcmp22.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %cra_driver_name.i, ptr noundef nonnull dereferenceable(8) @.str.1, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22.i)
  %tobool2.not.i = icmp eq i32 %bcmp22.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.else.i.drbg_convert_tfm_core.exit_crit_edge

if.else.i.drbg_convert_tfm_core.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_convert_tfm_core.exit

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %pr.0 = phi i8 [ 1, %if.else.i.if.end5.i_crit_edge ], [ 0, %entry.if.end5.i_crit_edge ]
  %start.0.i = phi i32 [ 8, %if.else.i.if.end5.i_crit_edge ], [ 10, %entry.if.end5.i_crit_edge ]
  %call6.i = tail call i32 @strlen(ptr noundef %cra_driver_name.i) #16
  %sub.i = sub i32 %call6.i, %start.0.i
  %add.ptr.i = getelementptr i8, ptr %cra_driver_name.i, i32 %start.0.i
  %bcmp21.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 0, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.i)
  %tobool8.not.i = icmp eq i32 %bcmp21.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.then9.i_crit_edge, label %for.inc.i

if.end5.i.if.then9.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %for.inc.9.i.if.then9.i_crit_edge, %for.inc.8.i.if.then9.i_crit_edge, %for.inc.7.i.if.then9.i_crit_edge, %for.inc.6.i.if.then9.i_crit_edge, %for.inc.5.i.if.then9.i_crit_edge, %for.inc.4.i.if.then9.i_crit_edge, %for.inc.3.i.if.then9.i_crit_edge, %for.inc.2.i.if.then9.i_crit_edge, %for.inc.1.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge, %if.end5.i.if.then9.i_crit_edge
  %i.024.lcssa.i = phi i32 [ 0, %if.end5.i.if.then9.i_crit_edge ], [ 1, %for.inc.i.if.then9.i_crit_edge ], [ 2, %for.inc.1.i.if.then9.i_crit_edge ], [ 3, %for.inc.2.i.if.then9.i_crit_edge ], [ 4, %for.inc.3.i.if.then9.i_crit_edge ], [ 5, %for.inc.4.i.if.then9.i_crit_edge ], [ 6, %for.inc.5.i.if.then9.i_crit_edge ], [ 7, %for.inc.6.i.if.then9.i_crit_edge ], [ 8, %for.inc.7.i.if.then9.i_crit_edge ], [ 9, %for.inc.8.i.if.then9.i_crit_edge ], [ 10, %for.inc.9.i.if.then9.i_crit_edge ]
  br label %drbg_convert_tfm_core.exit

for.inc.i:                                        ; preds = %if.end5.i
  %bcmp21.1.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 1, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.1.i)
  %tobool8.not.1.i = icmp eq i32 %bcmp21.1.i, 0
  br i1 %tobool8.not.1.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %bcmp21.2.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 2, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.2.i)
  %tobool8.not.2.i = icmp eq i32 %bcmp21.2.i, 0
  br i1 %tobool8.not.2.i, label %for.inc.1.i.if.then9.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then9.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %bcmp21.3.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 3, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.3.i)
  %tobool8.not.3.i = icmp eq i32 %bcmp21.3.i, 0
  br i1 %tobool8.not.3.i, label %for.inc.2.i.if.then9.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then9.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %bcmp21.4.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 4, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.4.i)
  %tobool8.not.4.i = icmp eq i32 %bcmp21.4.i, 0
  br i1 %tobool8.not.4.i, label %for.inc.3.i.if.then9.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then9.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %bcmp21.5.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 5, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.5.i)
  %tobool8.not.5.i = icmp eq i32 %bcmp21.5.i, 0
  br i1 %tobool8.not.5.i, label %for.inc.4.i.if.then9.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then9.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %bcmp21.6.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 6, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.6.i)
  %tobool8.not.6.i = icmp eq i32 %bcmp21.6.i, 0
  br i1 %tobool8.not.6.i, label %for.inc.5.i.if.then9.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then9.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %bcmp21.7.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 7, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.7.i)
  %tobool8.not.7.i = icmp eq i32 %bcmp21.7.i, 0
  br i1 %tobool8.not.7.i, label %for.inc.6.i.if.then9.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then9.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %bcmp21.8.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 8, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.8.i)
  %tobool8.not.8.i = icmp eq i32 %bcmp21.8.i, 0
  br i1 %tobool8.not.8.i, label %for.inc.7.i.if.then9.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then9.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %bcmp21.9.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 9, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.9.i)
  %tobool8.not.9.i = icmp eq i32 %bcmp21.9.i, 0
  br i1 %tobool8.not.9.i, label %for.inc.8.i.if.then9.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then9.i_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %bcmp21.10.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr getelementptr inbounds ([11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 10, i32 3), i32 %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.10.i)
  %tobool8.not.10.i = icmp eq i32 %bcmp21.10.i, 0
  br i1 %tobool8.not.10.i, label %for.inc.9.i.if.then9.i_crit_edge, label %for.inc.9.i.drbg_convert_tfm_core.exit_crit_edge

for.inc.9.i.drbg_convert_tfm_core.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_convert_tfm_core.exit

for.inc.9.i.if.then9.i_crit_edge:                 ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

drbg_convert_tfm_core.exit:                       ; preds = %for.inc.9.i.drbg_convert_tfm_core.exit_crit_edge, %if.then9.i, %if.else.i.drbg_convert_tfm_core.exit_crit_edge
  %pr.1 = phi i8 [ %pr.0, %if.then9.i ], [ %pr.0, %for.inc.9.i.drbg_convert_tfm_core.exit_crit_edge ], [ 1, %if.else.i.drbg_convert_tfm_core.exit_crit_edge ]
  %coreref.0 = phi i32 [ %i.024.lcssa.i, %if.then9.i ], [ 0, %for.inc.9.i.drbg_convert_tfm_core.exit_crit_edge ], [ 0, %if.else.i.drbg_convert_tfm_core.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %cmp.not = icmp eq i32 %slen, 0
  br i1 %cmp.not, label %drbg_convert_tfm_core.exit.if.end_crit_edge, label %if.then

drbg_convert_tfm_core.exit.if.end_crit_edge:      ; preds = %drbg_convert_tfm_core.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %drbg_convert_tfm_core.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %seed, ptr %string, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slen, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %drbg_convert_tfm_core.exit.if.end_crit_edge
  %seed_string.0 = phi ptr [ %string, %if.then ], [ null, %drbg_convert_tfm_core.exit.if.end_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %__crt_ctx.i.i, i32 noundef 0) #11
  %core.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 3
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %tobool.not.i6 = icmp eq ptr %11, null
  br i1 %tobool.not.i6, label %if.then.i7, label %if.end.if.end12.i_crit_edge

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pr.1)
  %tobool = icmp ne i8 %pr.1, 0
  %frombool.i = zext i1 %tobool to i8
  %arrayidx.i = getelementptr [11 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %coreref.0
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %core.i, align 4
  %pr3.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 108
  %13 = ptrtoint ptr %pr3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %pr3.i, align 4
  %seeded.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 100
  %14 = ptrtoint ptr %seeded.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %seeded.i, align 4
  %last_seed_time.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 104
  %15 = ptrtoint ptr %last_seed_time.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %last_seed_time.i, align 4
  %reseed_threshold.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %16 = ptrtoint ptr %reseed_threshold.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1048576, ptr %reseed_threshold.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %18, 7
  %19 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i.i, label %if.then.i7.err.i.i_crit_edge [
    i32 2, label %if.then.i7.sw.epilog.i.i_crit_edge
    i32 4, label %sw.bb1.i.i
    i32 1, label %sw.bb3.i.i
  ]

if.then.i7.sw.epilog.i.i_crit_edge:               ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then.i7.err.i.i_crit_edge:                     ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb1.i.i, %if.then.i7.sw.epilog.i.i_crit_edge
  %drbg_ctr_ops.sink.i.i = phi ptr [ @drbg_ctr_ops, %sw.bb3.i.i ], [ @drbg_hash_ops, %sw.bb1.i.i ], [ @drbg_hmac_ops, %if.then.i7.sw.epilog.i.i_crit_edge ]
  %d_ops4.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 2
  %20 = ptrtoint ptr %d_ops4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %drbg_ctr_ops.sink.i.i, ptr %d_ops4.i.i, align 4
  %crypto_init.i.i = getelementptr inbounds %struct.drbg_state_ops, ptr %drbg_ctr_ops.sink.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %crypto_init.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crypto_init.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %__crt_ctx.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.i.err.i.i_crit_edge, label %if.end.i.i

sw.epilog.i.i.err.i.i_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  %tobool.not.i.i.i = icmp eq ptr %__crt_ctx.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end8.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %23 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.end8.i.i.i_crit_edge, label %if.then.i165.i.i

land.lhs.true.i.i.i.if.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then.i165.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i.i = getelementptr inbounds %struct.drbg_core, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %statelen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %statelen.i.i.i, align 4
  %phi.cast8 = zext i8 %26 to i32
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then.i165.i.i, %land.lhs.true.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.if.end8.i.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.cast8, %if.then.i165.i.i ], [ 0, %land.lhs.true.i.i.i.if.end8.i.i.i_crit_edge ], [ 0, %if.end.i.i.if.end8.i.i.i_crit_edge ]
  %add.i.i = add nuw i32 %call.i.i, %retval.0.i.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #17
  %Vbuf.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %27 = ptrtoint ptr %Vbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i, ptr %Vbuf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.fini.i.i_crit_edge, label %if.end10.i.i

if.end8.i.i.i.fini.i.i_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fini.i.i

if.end10.i.i:                                     ; preds = %if.end8.i.i.i
  %28 = ptrtoint ptr %call9.i.i.i to i32
  %add13.i.i = add i32 %call.i.i, %28
  %neg.i.i = xor i32 %call.i.i, -1
  %and16.i.i = and i32 %add13.i.i, %neg.i.i
  %29 = inttoptr i32 %and16.i.i to ptr
  %V.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %30 = ptrtoint ptr %V.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %V.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.if.end8.i162.i.i_crit_edge, label %land.lhs.true.i169.i.i

if.end10.i.i.if.end8.i162.i.i_crit_edge:          ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i162.i.i

land.lhs.true.i169.i.i:                           ; preds = %if.end10.i.i
  %31 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core.i, align 4
  %tobool1.not.i168.i.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i168.i.i, label %land.lhs.true.i169.i.i.if.end8.i162.i.i_crit_edge, label %if.then.i171.i.i

land.lhs.true.i169.i.i.if.end8.i162.i.i_crit_edge: ; preds = %land.lhs.true.i169.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i162.i.i

if.then.i171.i.i:                                 ; preds = %land.lhs.true.i169.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i170.i.i = getelementptr inbounds %struct.drbg_core, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %statelen.i170.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %statelen.i170.i.i, align 4
  %phi.cast = zext i8 %34 to i32
  br label %if.end8.i162.i.i

if.end8.i162.i.i:                                 ; preds = %if.then.i171.i.i, %land.lhs.true.i169.i.i.if.end8.i162.i.i_crit_edge, %if.end10.i.i.if.end8.i162.i.i_crit_edge
  %retval.0.i172.i.i = phi i32 [ %phi.cast, %if.then.i171.i.i ], [ 0, %land.lhs.true.i169.i.i.if.end8.i162.i.i_crit_edge ], [ 0, %if.end10.i.i.if.end8.i162.i.i_crit_edge ]
  %add19.i.i = add nuw i32 %call.i.i, %retval.0.i172.i.i
  %call9.i161.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add19.i.i, i32 noundef 3264) #17
  %Cbuf.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %35 = ptrtoint ptr %Cbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i161.i.i, ptr %Cbuf.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call9.i161.i.i, null
  br i1 %tobool22.not.i.i, label %if.end8.i162.i.i.fini.i.i_crit_edge, label %if.end24.i.i

if.end8.i162.i.i.fini.i.i_crit_edge:              ; preds = %if.end8.i162.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fini.i.i

if.end24.i.i:                                     ; preds = %if.end8.i162.i.i
  %36 = ptrtoint ptr %call9.i161.i.i to i32
  %add28.i.i = add i32 %call.i.i, %36
  %and32.i.i = and i32 %add28.i.i, %neg.i.i
  %37 = inttoptr i32 %and32.i.i to ptr
  %C.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %38 = ptrtoint ptr %C.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %C.i.i, align 4
  %39 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and35.i.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.else.i.i, label %if.end24.i.i.if.end.i_crit_edge

if.end24.i.i.if.end.i_crit_edge:                  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.end24.i.i
  %and40.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  %tobool1.not.i230.i.i = icmp eq ptr %40, null
  %or.cond330.i.i = or i1 %tobool.not.i.i.i, %tobool1.not.i230.i.i
  br i1 %tobool41.not.i.i, label %if.else63.i.i, label %if.then42.i.i

if.then42.i.i:                                    ; preds = %if.else.i.i
  br i1 %or.cond330.i.i, label %if.then42.i.i.if.end.i_crit_edge, label %if.then.i225.i.i

if.then42.i.i.if.end.i_crit_edge:                 ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i225.i.i:                                 ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i178.i.i = getelementptr inbounds %struct.drbg_core, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %statelen.i178.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %statelen.i178.i.i, align 4
  %conv44259.i.i = zext i8 %44 to i32
  %blocklen_bytes.i.i.i = getelementptr inbounds %struct.drbg_core, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %blocklen_bytes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %blocklen_bytes.i.i.i, align 1
  %conv46267.i.i = zext i8 %46 to i32
  %factor.i = shl nuw nsw i32 %conv46267.i.i, 1
  %reass.add.i = add nuw nsw i32 %factor.i, %conv44259.i.i
  %reass.mul.i = shl nuw nsw i32 %reass.add.i, 1
  %47 = add nuw nsw i32 %reass.mul.i, %conv44259.i.i
  br label %if.end70.i.i

if.else63.i.i:                                    ; preds = %if.else.i.i
  br i1 %or.cond330.i.i, label %if.else63.i.i.if.end.i_crit_edge, label %if.then.i241.i.i

if.else63.i.i.if.end.i_crit_edge:                 ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i241.i.i:                                 ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i232.i.i = getelementptr inbounds %struct.drbg_core, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %statelen.i232.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %statelen.i232.i.i, align 4
  %conv65321.i.i = zext i8 %49 to i32
  %blocklen_bytes.i240.i.i = getelementptr inbounds %struct.drbg_core, ptr %40, i32 0, i32 2
  %50 = ptrtoint ptr %blocklen_bytes.i240.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %blocklen_bytes.i240.i.i, align 1
  %phi.cast329.i.i = zext i8 %51 to i32
  %52 = add nuw nsw i32 %phi.cast329.i.i, %conv65321.i.i
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then.i241.i.i, %if.then.i225.i.i
  %sb_size.0.i.i = phi i32 [ %47, %if.then.i225.i.i ], [ %52, %if.then.i241.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sb_size.0.i.i)
  %cmp71.not.i.i = icmp eq i32 %sb_size.0.i.i, 0
  br i1 %cmp71.not.i.i, label %if.end70.i.i.if.end.i_crit_edge, label %if.end8.i.i.i.i

if.end70.i.i.if.end.i_crit_edge:                  ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end8.i.i.i.i:                                  ; preds = %if.end70.i.i
  %add74.i.i = add nuw i32 %sb_size.0.i.i, %call.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add74.i.i, i32 noundef 3520) #17
  %scratchpadbuf.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %53 = ptrtoint ptr %scratchpadbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i.i.i.i, ptr %scratchpadbuf.i.i, align 4
  %tobool77.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool77.not.i.i, label %if.end8.i.i.i.i.fini.i.i_crit_edge, label %if.end79.i.i

if.end8.i.i.i.i.fini.i.i_crit_edge:               ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fini.i.i

if.end79.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %call9.i.i.i.i to i32
  %add83.i.i = add i32 %call.i.i, %54
  %and87.i.i = and i32 %add83.i.i, %neg.i.i
  %55 = inttoptr i32 %and87.i.i to ptr
  %scratchpad.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 100
  %56 = ptrtoint ptr %scratchpad.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %scratchpad.i.i, align 4
  br label %if.end.i

fini.i.i:                                         ; preds = %if.end8.i.i.i.i.fini.i.i_crit_edge, %if.end8.i162.i.i.fini.i.i_crit_edge, %if.end8.i.i.i.fini.i.i_crit_edge
  %57 = ptrtoint ptr %d_ops4.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %d_ops4.i.i, align 4
  %crypto_fini.i.i = getelementptr inbounds %struct.drbg_state_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %crypto_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %crypto_fini.i.i, align 4
  %call90.i.i = call i32 %60(ptr noundef %__crt_ctx.i.i) #11
  br label %err.i.i

err.i.i:                                          ; preds = %fini.i.i, %sw.epilog.i.i.err.i.i_crit_edge, %if.then.i7.err.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call.i.i, %sw.epilog.i.i.err.i.i_crit_edge ], [ -12, %fini.i.i ], [ -95, %if.then.i7.err.i.i_crit_edge ]
  %tobool.not.i247.i.i = icmp eq ptr %__crt_ctx.i.i, null
  br i1 %tobool.not.i247.i.i, label %err.i.i.unlock.i_crit_edge, label %if.end.i249.i.i

err.i.i.unlock.i_crit_edge:                       ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end.i249.i.i:                                  ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %Vbuf.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 80
  %61 = ptrtoint ptr %Vbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %Vbuf.i.i.i, align 4
  call void @kfree_sensitive(ptr noundef %62) #11
  %63 = ptrtoint ptr %Vbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %Vbuf.i.i.i, align 4
  %V.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 76
  %64 = ptrtoint ptr %V.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %V.i.i.i, align 4
  %Cbuf.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 88
  %65 = ptrtoint ptr %Cbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %Cbuf.i.i.i, align 4
  call void @kfree_sensitive(ptr noundef %66) #11
  %67 = ptrtoint ptr %Cbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %Cbuf.i.i.i, align 4
  %C.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 84
  %68 = ptrtoint ptr %C.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %C.i.i.i, align 4
  %scratchpadbuf.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 104
  %69 = ptrtoint ptr %scratchpadbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %scratchpadbuf.i.i.i, align 4
  call void @kfree_sensitive(ptr noundef %70) #11
  %71 = ptrtoint ptr %scratchpadbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %scratchpadbuf.i.i.i, align 4
  %reseed_ctr.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %72 = ptrtoint ptr %reseed_ctr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %reseed_ctr.i.i.i, align 4
  %d_ops.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 2
  %73 = ptrtoint ptr %d_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %d_ops.i.i.i, align 4
  %74 = ptrtoint ptr %core.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %core.i, align 4
  br label %unlock.i

if.end.i:                                         ; preds = %if.end79.i.i, %if.end70.i.i.if.end.i_crit_edge, %if.else63.i.i.if.end.i_crit_edge, %if.then42.i.i.if.end.i_crit_edge, %if.end24.i.i.if.end.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %75 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %76, %list.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end12.i_crit_edge, label %if.end.i44.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end.i44.i:                                     ; preds = %if.end.i
  %call1.i.i = call ptr @crypto_alloc_rng(ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0) #11
  %jent.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 1
  %77 = ptrtoint ptr %jent.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call1.i.i, ptr %jent.i.i, align 4
  %cmp.i17.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i.i, label %if.then4.i.i, label %if.end.i44.i.if.end12.i_crit_edge

if.end.i44.i.if.end12.i_crit_edge:                ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then4.i.i:                                     ; preds = %if.end.i44.i
  %78 = ptrtoint ptr %jent.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %jent.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %call1.i.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i.i, label %cleanup.thread.i.i, label %drbg_prepare_hrng.exit.i

cleanup.thread.i.i:                               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #18
  br label %if.end12.i

drbg_prepare_hrng.exit.i:                         ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %call1.i.i to i32
  br label %free_everything.i

if.end12.i:                                       ; preds = %cleanup.thread.i.i, %if.end.i44.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge, %if.end.if.end12.i_crit_edge
  %80 = xor i1 %tobool.not.i6, true
  %call14.i = call fastcc i32 @drbg_seed(ptr noundef %__crt_ctx.i.i, ptr noundef %seed_string.0, i1 noundef zeroext %80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp ne i32 %call14.i, 0
  %81 = and i1 %tobool.not.i6, %tobool15.not.i
  br i1 %81, label %if.end12.i.free_everything.i_crit_edge, label %if.end18.i

if.end12.i.free_everything.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_everything.i

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  br label %drbg_instantiate.exit

unlock.i:                                         ; preds = %if.end.i249.i.i, %err.i.i.unlock.i_crit_edge
  call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  br label %drbg_instantiate.exit

free_everything.i:                                ; preds = %if.end12.i.free_everything.i_crit_edge, %drbg_prepare_hrng.exit.i
  %ret.0.i = phi i32 [ %79, %drbg_prepare_hrng.exit.i ], [ %call14.i, %if.end12.i.free_everything.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  call fastcc void @drbg_uninstantiate(ptr noundef %__crt_ctx.i.i) #11
  br label %drbg_instantiate.exit

drbg_instantiate.exit:                            ; preds = %free_everything.i, %unlock.i, %if.end18.i
  %retval.0.i = phi i32 [ %call14.i, %if.end18.i ], [ %ret.0.i, %free_everything.i ], [ %ret.1.i.i, %unlock.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %string) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drbg_kcapi_set_entropy(ptr noundef %tfm, ptr noundef %data, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %__crt_ctx.i.i, i32 noundef 0) #11
  %test_data = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %0 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %test_data, align 4
  %len2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %1 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %len2.i, align 4
  %list.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list.i, ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %__crt_ctx.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drbg_uninstantiate(ptr noundef %drbg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %jent = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 22
  %0 = ptrtoint ptr %jent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jent, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %jent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %jent, align 4
  %d_ops = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 23
  %3 = ptrtoint ptr %d_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_ops, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %crypto_fini = getelementptr inbounds %struct.drbg_state_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %crypto_fini to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crypto_fini, align 4
  %call5 = tail call i32 %6(ptr noundef %drbg) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tobool.not.i1 = icmp eq ptr %drbg, null
  br i1 %tobool.not.i1, label %if.end6.drbg_dealloc_state.exit_crit_edge, label %if.end.i

if.end6.drbg_dealloc_state.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_dealloc_state.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %Vbuf.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 2
  %7 = ptrtoint ptr %Vbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %Vbuf.i, align 4
  tail call void @kfree_sensitive(ptr noundef %8) #11
  %9 = ptrtoint ptr %Vbuf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %Vbuf.i, align 4
  %V.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %10 = ptrtoint ptr %V.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %V.i, align 4
  %Cbuf.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 4
  %11 = ptrtoint ptr %Cbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %Cbuf.i, align 4
  tail call void @kfree_sensitive(ptr noundef %12) #11
  %13 = ptrtoint ptr %Cbuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %Cbuf.i, align 4
  %C.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %14 = ptrtoint ptr %C.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %C.i, align 4
  %scratchpadbuf.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 8
  %15 = ptrtoint ptr %scratchpadbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scratchpadbuf.i, align 4
  tail call void @kfree_sensitive(ptr noundef %16) #11
  %17 = ptrtoint ptr %scratchpadbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %scratchpadbuf.i, align 4
  %reseed_ctr.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 5
  %18 = ptrtoint ptr %reseed_ctr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reseed_ctr.i, align 4
  %19 = ptrtoint ptr %d_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %d_ops, align 4
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %20 = ptrtoint ptr %core.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %core.i, align 4
  br label %drbg_dealloc_state.exit

drbg_dealloc_state.exit:                          ; preds = %if.end.i, %if.end6.drbg_dealloc_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbg_seed(ptr noundef %drbg, ptr noundef %pers, i1 noundef zeroext %reseed) unnamed_addr #5 align 64 {
entry:
  %entropy = alloca [96 x i8], align 1
  %data1 = alloca %struct.drbg_string, align 4
  %seedlist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %entropy) #11
  %0 = call ptr @memset(ptr %entropy, i32 255, i32 96)
  %core = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i = and i32 %4, 56
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and.i, label %sw.default.i [
    i32 8, label %entry.drbg_sec_strength.exit_crit_edge
    i32 16, label %sw.bb1.i
    i32 32, label %sw.bb2.i
  ]

entry.drbg_sec_strength.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_sec_strength.exit

drbg_sec_strength.exit:                           ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.drbg_sec_strength.exit_crit_edge
  %retval.0.i = phi i32 [ 32, %sw.default.i ], [ 32, %sw.bb2.i ], [ 24, %sw.bb1.i ], [ 16, %entry.drbg_sec_strength.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data1) #11
  %6 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2, i32 1
  %9 = call ptr @memset(ptr %data1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seedlist) #11
  %10 = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 1
  %11 = ptrtoint ptr %seedlist to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %seedlist, ptr %seedlist, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %seedlist, ptr %10, align 4
  %tobool.not = icmp eq ptr %pers, null
  br i1 %tobool.not, label %drbg_sec_strength.exit.if.end_crit_edge, label %land.lhs.true

drbg_sec_strength.exit.if.end_crit_edge:          ; preds = %drbg_sec_strength.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %drbg_sec_strength.exit
  %len = getelementptr inbounds %struct.drbg_string, ptr %pers, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %drbg_sec_strength.exit.if.end_crit_edge
  %list = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 25, i32 2
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %16, %list
  br i1 %cmp.i.not, label %if.then5, label %do.end21

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %test_data = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 25
  %17 = ptrtoint ptr %test_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %test_data, align 4
  %len8 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 25, i32 1
  %19 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len8, align 4
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %data1, align 4
  br label %if.end64

do.end21:                                         ; preds = %if.end
  %div123 = lshr exact i32 %retval.0.i, 1
  %mul = mul nuw nsw i32 %div123, 3
  %entropylen.0 = select i1 %reseed, i32 %retval.0.i, i32 %mul
  %call45 = call zeroext i1 @rng_is_initialized() #11
  %new_seed_state.0 = select i1 %call45, i32 2, i32 1
  call void @get_random_bytes(ptr noundef nonnull %entropy, i32 noundef %entropylen.0) #11
  %jent = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 22
  %22 = ptrtoint ptr %jent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jent, align 4
  %tobool52.not = icmp eq ptr %23, null
  br i1 %tobool52.not, label %if.then53, label %if.else56

if.then53:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entropy, ptr %data1, align 4
  br label %if.end64

if.else56:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %mul26 = shl nuw nsw i32 %entropylen.0, 1
  %add.ptr = getelementptr i8, ptr %entropy, i32 %entropylen.0
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %23, i32 0, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i, align 4
  call void @crypto_stats_get(ptr noundef %26) #11
  %27 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 -128
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i.i = call i32 %30(ptr noundef nonnull %23, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i32 noundef %entropylen.0) #11
  call void @crypto_stats_rng_generate(ptr noundef %26, i32 noundef %entropylen.0, i32 noundef %call1.i.i) #11
  %31 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entropy, ptr %data1, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else56, %if.then53, %if.then5
  %entropylen.0.sink = phi i32 [ %entropylen.0, %if.then53 ], [ %mul26, %if.else56 ], [ %20, %if.then5 ]
  %new_seed_state.1 = phi i32 [ %new_seed_state.0, %if.then53 ], [ %new_seed_state.0, %if.else56 ], [ 2, %if.then5 ]
  %entropylen.1 = phi i32 [ %entropylen.0, %if.then53 ], [ %entropylen.0, %if.else56 ], [ %retval.0.i, %if.then5 ]
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %entropylen.0.sink, ptr %6, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %7, ptr %7, align 4
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %7, ptr %8, align 4
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %10, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %36, ptr noundef nonnull %seedlist) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.list_add_tail.exit_crit_edge

if.end64.list_add_tail.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %7, ptr %10, align 4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %seedlist, ptr %7, align 4
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %8, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %7, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end64.list_add_tail.exit_crit_edge
  br i1 %tobool.not, label %list_add_tail.exit.if.end77_crit_edge, label %land.lhs.true67

list_add_tail.exit.if.end77_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true67:                                  ; preds = %list_add_tail.exit
  %41 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pers, align 4
  %tobool69.not = icmp eq ptr %42, null
  br i1 %tobool69.not, label %land.lhs.true67.if.end77_crit_edge, label %land.lhs.true70

land.lhs.true67.if.end77_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %len71 = getelementptr inbounds %struct.drbg_string, ptr %pers, i32 0, i32 1
  %43 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp72.not = icmp eq i32 %44, 0
  br i1 %cmp72.not, label %land.lhs.true70.if.end77_crit_edge, label %if.then74

land.lhs.true70.if.end77_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then74:                                        ; preds = %land.lhs.true70
  %list75 = getelementptr inbounds %struct.drbg_string, ptr %pers, i32 0, i32 2
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %call.i.i131 = call zeroext i1 @__list_add_valid(ptr noundef %list75, ptr noundef %46, ptr noundef nonnull %seedlist) #11
  br i1 %call.i.i131, label %if.end.i.i133, label %if.then74.if.end77_crit_edge

if.then74.if.end77_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end.i.i133:                                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list75, ptr %10, align 4
  %48 = ptrtoint ptr %list75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %seedlist, ptr %list75, align 4
  %prev3.i.i132 = getelementptr inbounds %struct.drbg_string, ptr %pers, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev3.i.i132 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i132, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list75, ptr %46, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end.i.i133, %if.then74.if.end77_crit_edge, %land.lhs.true70.if.end77_crit_edge, %land.lhs.true67.if.end77_crit_edge, %list_add_tail.exit.if.end77_crit_edge
  br i1 %reseed, label %if.end77.if.end84_crit_edge, label %if.then79

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then79:                                        ; preds = %if.end77
  %V = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %51 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %V, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %drbg_statelen.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then79
  %53 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core, align 4
  %tobool1.not.i = icmp eq ptr %54, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true.i139_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i139_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i139

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %statelen.i, align 4
  %phi.cast = zext i8 %56 to i32
  br label %land.lhs.true.i139

drbg_statelen.exit:                               ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 100)
  %57 = load ptr, ptr inttoptr (i32 100 to ptr), align 4
  br label %drbg_statelen.exit143

land.lhs.true.i139:                               ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i139_crit_edge
  %retval.0.i135.ph = phi i32 [ 0, %land.lhs.true.i.land.lhs.true.i139_crit_edge ], [ %phi.cast, %if.then.i ]
  %58 = call ptr @memset(ptr %52, i32 0, i32 %retval.0.i135.ph)
  %C147 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %59 = ptrtoint ptr %C147 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %C147, align 4
  %61 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core, align 4
  %tobool1.not.i138 = icmp eq ptr %62, null
  br i1 %tobool1.not.i138, label %land.lhs.true.i139.drbg_statelen.exit143_crit_edge, label %if.then.i141

land.lhs.true.i139.drbg_statelen.exit143_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit143

if.then.i141:                                     ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i140 = getelementptr inbounds %struct.drbg_core, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %statelen.i140 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %statelen.i140, align 4
  %phi.cast148 = zext i8 %64 to i32
  br label %drbg_statelen.exit143

drbg_statelen.exit143:                            ; preds = %if.then.i141, %land.lhs.true.i139.drbg_statelen.exit143_crit_edge, %drbg_statelen.exit
  %65 = phi ptr [ %60, %if.then.i141 ], [ %60, %land.lhs.true.i139.drbg_statelen.exit143_crit_edge ], [ %57, %drbg_statelen.exit ]
  %retval.0.i142 = phi i32 [ %phi.cast148, %if.then.i141 ], [ 0, %land.lhs.true.i139.drbg_statelen.exit143_crit_edge ], [ 0, %drbg_statelen.exit ]
  %66 = call ptr @memset(ptr %65, i32 0, i32 %retval.0.i142)
  br label %if.end84

if.end84:                                         ; preds = %drbg_statelen.exit143, %if.end77.if.end84_crit_edge
  %conv86 = zext i1 %reseed to i32
  %d_ops.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 23
  %67 = ptrtoint ptr %d_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_ops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i = call i32 %70(ptr noundef %drbg, ptr noundef nonnull %seedlist, i32 noundef %conv86) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i144 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i144, label %if.end.i, label %if.end84.__drbg_seed.exit_crit_edge

if.end84.__drbg_seed.exit_crit_edge:              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %__drbg_seed.exit

if.end.i:                                         ; preds = %if.end84
  %seeded.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 17
  %71 = ptrtoint ptr %seeded.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %new_seed_state.1, ptr %seeded.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %last_seed_time.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 18
  %73 = ptrtoint ptr %last_seed_time.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %last_seed_time.i, align 4
  %reseed_ctr.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 5
  %74 = ptrtoint ptr %reseed_ctr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %reseed_ctr.i, align 4
  %75 = zext i32 %new_seed_state.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %new_seed_state.1, label %if.end.i.__drbg_seed.exit_crit_edge [
    i32 2, label %sw.bb3.i
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i.__drbg_seed.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__drbg_seed.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb3.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1048576, %sw.bb3.i ], [ 50, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %reseed_threshold.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 6
  %76 = ptrtoint ptr %reseed_threshold.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink.i, ptr %reseed_threshold.i, align 4
  br label %__drbg_seed.exit

__drbg_seed.exit:                                 ; preds = %cleanup.sink.split.i, %if.end.i.__drbg_seed.exit_crit_edge, %if.end84.__drbg_seed.exit_crit_edge
  %mul89 = shl nuw nsw i32 %entropylen.1, 1
  %77 = call ptr @memset(ptr %entropy, i32 0, i32 %mul89)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %entropy) #11, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %__drbg_seed.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %__drbg_seed.exit ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seedlist) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %entropy) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rng_is_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_hmac_update(ptr noundef readonly %drbg, ptr noundef %seed, i32 noundef %reseed) #5 align 64 {
entry:
  %seed1 = alloca %struct.drbg_string, align 4
  %seed2 = alloca %struct.drbg_string, align 4
  %vdata = alloca %struct.drbg_string, align 4
  %seedlist = alloca %struct.list_head, align 4
  %vdatalist = alloca %struct.list_head, align 4
  %prefix = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seed1) #11
  %0 = getelementptr inbounds %struct.drbg_string, ptr %seed1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drbg_string, ptr %seed1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drbg_string, ptr %seed1, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seed2) #11
  %3 = getelementptr inbounds %struct.drbg_string, ptr %seed2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drbg_string, ptr %seed2, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drbg_string, ptr %seed2, i32 0, i32 2, i32 1
  %6 = call ptr @memset(ptr %seed2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdata) #11
  %7 = getelementptr inbounds %struct.drbg_string, ptr %vdata, i32 0, i32 1
  %8 = getelementptr inbounds %struct.drbg_string, ptr %vdata, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drbg_string, ptr %vdata, i32 0, i32 2, i32 1
  %10 = call ptr @memset(ptr %vdata, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seedlist) #11
  %11 = getelementptr inbounds %struct.list_head, ptr %seedlist, i32 0, i32 1
  %12 = ptrtoint ptr %seedlist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %seedlist, ptr %seedlist, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %seedlist, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vdatalist) #11
  %14 = getelementptr inbounds %struct.list_head, ptr %vdatalist, i32 0, i32 1
  %15 = ptrtoint ptr %vdatalist to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vdatalist, ptr %vdatalist, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vdatalist, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reseed)
  %tobool.not = icmp eq i32 %reseed, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %V = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %17 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %V, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %drbg_statelen.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true.i.i_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %statelen.i, align 4
  %phi.cast139 = zext i8 %22 to i32
  br label %land.lhs.true.i.i

drbg_statelen.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 100)
  %23 = load ptr, ptr inttoptr (i32 100 to ptr), align 4
  call void @__asan_load4_noabort(i32 124)
  %24 = load ptr, ptr inttoptr (i32 124 to ptr), align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  br label %drbg_kcapi_hmacsetkey.exit

land.lhs.true.i.i:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i.i_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %phi.cast139, %if.then.i ]
  %27 = call ptr @memset(ptr %18, i32 1, i32 %retval.0.i.ph)
  %C132 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %28 = ptrtoint ptr %C132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %C132, align 4
  %priv_data.i133 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %30 = ptrtoint ptr %priv_data.i133 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_data.i133, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core.i, align 4
  %tobool1.not.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hmacsetkey.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i = getelementptr inbounds %struct.drbg_core, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %statelen.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %statelen.i.i, align 4
  %phi.cast.i = zext i8 %37 to i32
  br label %drbg_kcapi_hmacsetkey.exit

drbg_kcapi_hmacsetkey.exit:                       ; preds = %if.then.i.i, %land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge, %drbg_statelen.exit
  %38 = phi ptr [ %33, %if.then.i.i ], [ %33, %land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge ], [ %26, %drbg_statelen.exit ]
  %39 = phi ptr [ %29, %if.then.i.i ], [ %29, %land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge ], [ %23, %drbg_statelen.exit ]
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.drbg_kcapi_hmacsetkey.exit_crit_edge ], [ 0, %drbg_statelen.exit ]
  %call1.i = call i32 @crypto_shash_setkey(ptr noundef %38, ptr noundef %39, i32 noundef %retval.0.i.i) #11
  br label %if.end

if.end:                                           ; preds = %drbg_kcapi_hmacsetkey.exit, %entry.if.end_crit_edge
  %V3 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %40 = ptrtoint ptr %V3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %V3, align 4
  %tobool.not.i61 = icmp eq ptr %drbg, null
  br i1 %tobool.not.i61, label %if.end.drbg_statelen.exit68_crit_edge, label %land.lhs.true.i64

if.end.drbg_statelen.exit68_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit68

land.lhs.true.i64:                                ; preds = %if.end
  %core.i62 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %42 = ptrtoint ptr %core.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core.i62, align 4
  %tobool1.not.i63 = icmp eq ptr %43, null
  br i1 %tobool1.not.i63, label %land.lhs.true.i64.drbg_statelen.exit68_crit_edge, label %if.then.i66

land.lhs.true.i64.drbg_statelen.exit68_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit68

if.then.i66:                                      ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i65 = getelementptr inbounds %struct.drbg_core, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %statelen.i65 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %statelen.i65, align 4
  %phi.cast = zext i8 %45 to i32
  br label %drbg_statelen.exit68

drbg_statelen.exit68:                             ; preds = %if.then.i66, %land.lhs.true.i64.drbg_statelen.exit68_crit_edge, %if.end.drbg_statelen.exit68_crit_edge
  %retval.0.i67 = phi i32 [ %phi.cast, %if.then.i66 ], [ 0, %land.lhs.true.i64.drbg_statelen.exit68_crit_edge ], [ 0, %if.end.drbg_statelen.exit68_crit_edge ]
  %46 = ptrtoint ptr %seed1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %seed1, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i67, ptr %0, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %1, ptr %1, align 4
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %2, align 4
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %11, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %51, ptr noundef nonnull %seedlist) #11
  br i1 %call.i.i, label %if.end.i.i, label %drbg_statelen.exit68.list_add_tail.exit_crit_edge

drbg_statelen.exit68.list_add_tail.exit_crit_edge: ; preds = %drbg_statelen.exit68
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %drbg_statelen.exit68
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %11, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %seedlist, ptr %1, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %2, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %1, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %drbg_statelen.exit68.list_add_tail.exit_crit_edge
  %56 = ptrtoint ptr %seed2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %seed2, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %3, align 4
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %4, ptr %4, align 4
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %4, ptr %5, align 4
  %60 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %11, align 4
  %call.i.i73 = call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %61, ptr noundef nonnull %seedlist) #11
  br i1 %call.i.i73, label %if.end.i.i75, label %list_add_tail.exit.list_add_tail.exit76_crit_edge

list_add_tail.exit.list_add_tail.exit76_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit76

if.end.i.i75:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %4, ptr %11, align 4
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %seedlist, ptr %4, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %5, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %4, ptr %61, align 4
  br label %list_add_tail.exit76

list_add_tail.exit76:                             ; preds = %if.end.i.i75, %list_add_tail.exit.list_add_tail.exit76_crit_edge
  %tobool7.not = icmp eq ptr %seed, null
  br i1 %tobool7.not, label %list_add_tail.exit76.if.end9_crit_edge, label %if.then8

list_add_tail.exit76.if.end9_crit_edge:           ; preds = %list_add_tail.exit76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %list_add_tail.exit76
  %66 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %seed, align 4
  %cmp.i.not.i = icmp eq ptr %67, %seed
  br i1 %cmp.i.not.i, label %if.then8.if.end9_crit_edge, label %if.then.i79

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then.i79:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %11, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %seed, i32 0, i32 1
  %70 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i78 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i78, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %67, ptr %69, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %seedlist, ptr %71, align 4
  store ptr %71, ptr %11, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then.i79, %if.then8.if.end9_crit_edge, %list_add_tail.exit76.if.end9_crit_edge
  %75 = ptrtoint ptr %V3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %V3, align 4
  br i1 %tobool.not.i61, label %if.end9.drbg_statelen.exit87_crit_edge, label %land.lhs.true.i83

if.end9.drbg_statelen.exit87_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit87

land.lhs.true.i83:                                ; preds = %if.end9
  %core.i81 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %77 = ptrtoint ptr %core.i81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %core.i81, align 4
  %tobool1.not.i82 = icmp eq ptr %78, null
  br i1 %tobool1.not.i82, label %land.lhs.true.i83.drbg_statelen.exit87_crit_edge, label %if.then.i85

land.lhs.true.i83.drbg_statelen.exit87_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit87

if.then.i85:                                      ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i84 = getelementptr inbounds %struct.drbg_core, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %statelen.i84 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %statelen.i84, align 4
  %phi.cast136 = zext i8 %80 to i32
  br label %drbg_statelen.exit87

drbg_statelen.exit87:                             ; preds = %if.then.i85, %land.lhs.true.i83.drbg_statelen.exit87_crit_edge, %if.end9.drbg_statelen.exit87_crit_edge
  %retval.0.i86 = phi i32 [ %phi.cast136, %if.then.i85 ], [ 0, %land.lhs.true.i83.drbg_statelen.exit87_crit_edge ], [ 0, %if.end9.drbg_statelen.exit87_crit_edge ]
  %81 = ptrtoint ptr %vdata to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %76, ptr %vdata, align 4
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i86, ptr %7, align 4
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %8, ptr %8, align 4
  %84 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %8, ptr %9, align 4
  %85 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %14, align 4
  %call.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %86, ptr noundef nonnull %vdatalist) #11
  br i1 %call.i.i92, label %if.end.i.i94, label %drbg_statelen.exit87.list_add_tail.exit95_crit_edge

drbg_statelen.exit87.list_add_tail.exit95_crit_edge: ; preds = %drbg_statelen.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit95

if.end.i.i94:                                     ; preds = %drbg_statelen.exit87
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %8, ptr %14, align 4
  %88 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %vdatalist, ptr %8, align 4
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %9, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %8, ptr %86, align 4
  br label %list_add_tail.exit95

list_add_tail.exit95:                             ; preds = %if.end.i.i94, %drbg_statelen.exit87.list_add_tail.exit95_crit_edge
  %C19 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %priv_data.i96 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %core.i.i101 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %list_add_tail.exit95
  %i.0138 = phi i32 [ 2, %list_add_tail.exit95 ], [ %dec, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefix) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0138)
  %cmp15 = icmp eq i32 %i.0138, 1
  %spec.store.select = zext i1 %cmp15 to i8
  %91 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.store.select, ptr %prefix, align 1
  %92 = ptrtoint ptr %seed2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %prefix, ptr %seed2, align 4
  %93 = ptrtoint ptr %C19 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %C19, align 4
  %95 = ptrtoint ptr %priv_data.i96 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv_data.i96, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i97 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i97, label %if.end.i.i98, label %for.body.crypto_shash_init.exit.i_crit_edge

for.body.crypto_shash_init.exit.i_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i

if.end.i.i98:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %98, i32 0, i32 2, i32 3
  %101 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 -256
  %103 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %104(ptr noundef %96) #11
  br label %crypto_shash_init.exit.i

crypto_shash_init.exit.i:                         ; preds = %if.end.i.i98, %for.body.crypto_shash_init.exit.i_crit_edge
  %105 = ptrtoint ptr %seedlist to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn16.i = load ptr, ptr %seedlist, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %seedlist
  br i1 %cmp.not17.i, label %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge, label %crypto_shash_init.exit.i.for.body.i_crit_edge

crypto_shash_init.exit.i.for.body.i_crit_edge:    ; preds = %crypto_shash_init.exit.i
  br label %for.body.i

crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %crypto_shash_init.exit.i.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn16.i, %crypto_shash_init.exit.i.for.body.i_crit_edge ]
  %input.0.i = getelementptr i8, ptr %.pn18.i, i32 -8
  %106 = ptrtoint ptr %input.0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %input.0.i, align 4
  %len.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %108 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len.i, align 4
  %call2.i = call i32 @crypto_shash_update(ptr noundef %96, ptr noundef %107, i32 noundef %109) #11
  %110 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %seedlist
  br i1 %cmp.not.i, label %for.body.i.drbg_kcapi_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.drbg_kcapi_hash.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

drbg_kcapi_hash.exit:                             ; preds = %for.body.i.drbg_kcapi_hash.exit_crit_edge, %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge
  %call9.i = call i32 @crypto_shash_final(ptr noundef %96, ptr noundef %94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool21.not = icmp eq i32 %call9.i, 0
  br i1 %tobool21.not, label %if.end23, label %drbg_kcapi_hash.exit.cleanup.thread_crit_edge

drbg_kcapi_hash.exit.cleanup.thread_crit_edge:    ; preds = %drbg_kcapi_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end23:                                         ; preds = %drbg_kcapi_hash.exit
  %111 = ptrtoint ptr %C19 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %C19, align 4
  %113 = ptrtoint ptr %priv_data.i96 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv_data.i96, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  br i1 %tobool.not.i61, label %if.end23.drbg_kcapi_hmacsetkey.exit109_crit_edge, label %land.lhs.true.i.i103

if.end23.drbg_kcapi_hmacsetkey.exit109_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hmacsetkey.exit109

land.lhs.true.i.i103:                             ; preds = %if.end23
  %117 = ptrtoint ptr %core.i.i101 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core.i.i101, align 4
  %tobool1.not.i.i102 = icmp eq ptr %118, null
  br i1 %tobool1.not.i.i102, label %land.lhs.true.i.i103.drbg_kcapi_hmacsetkey.exit109_crit_edge, label %if.then.i.i106

land.lhs.true.i.i103.drbg_kcapi_hmacsetkey.exit109_crit_edge: ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hmacsetkey.exit109

if.then.i.i106:                                   ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i104 = getelementptr inbounds %struct.drbg_core, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %statelen.i.i104 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %statelen.i.i104, align 4
  %phi.cast.i105 = zext i8 %120 to i32
  br label %drbg_kcapi_hmacsetkey.exit109

drbg_kcapi_hmacsetkey.exit109:                    ; preds = %if.then.i.i106, %land.lhs.true.i.i103.drbg_kcapi_hmacsetkey.exit109_crit_edge, %if.end23.drbg_kcapi_hmacsetkey.exit109_crit_edge
  %retval.0.i.i107 = phi i32 [ %phi.cast.i105, %if.then.i.i106 ], [ 0, %land.lhs.true.i.i103.drbg_kcapi_hmacsetkey.exit109_crit_edge ], [ 0, %if.end23.drbg_kcapi_hmacsetkey.exit109_crit_edge ]
  %call1.i108 = call i32 @crypto_shash_setkey(ptr noundef %116, ptr noundef %112, i32 noundef %retval.0.i.i107) #11
  %121 = ptrtoint ptr %V3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %V3, align 4
  %123 = ptrtoint ptr %priv_data.i96 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv_data.i96, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  %base.i.i.i.i111 = getelementptr inbounds %struct.crypto_shash, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %base.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %base.i.i.i.i111, align 128
  %and.i.i112 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %if.end.i.i117, label %drbg_kcapi_hmacsetkey.exit109.crypto_shash_init.exit.i120_crit_edge

drbg_kcapi_hmacsetkey.exit109.crypto_shash_init.exit.i120_crit_edge: ; preds = %drbg_kcapi_hmacsetkey.exit109
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i120

if.end.i.i117:                                    ; preds = %drbg_kcapi_hmacsetkey.exit109
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i114 = getelementptr inbounds %struct.crypto_shash, ptr %126, i32 0, i32 2, i32 3
  %129 = ptrtoint ptr %__crt_alg.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %__crt_alg.i.i.i114, align 4
  %add.ptr.i.i.i.i115 = getelementptr i8, ptr %130, i32 -256
  %131 = ptrtoint ptr %add.ptr.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i.i.i.i115, align 128
  %call3.i.i116 = call i32 %132(ptr noundef %124) #11
  br label %crypto_shash_init.exit.i120

crypto_shash_init.exit.i120:                      ; preds = %if.end.i.i117, %drbg_kcapi_hmacsetkey.exit109.crypto_shash_init.exit.i120_crit_edge
  %133 = ptrtoint ptr %vdatalist to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn16.i118 = load ptr, ptr %vdatalist, align 4
  %cmp.not17.i119 = icmp eq ptr %.pn16.i118, %vdatalist
  br i1 %cmp.not17.i119, label %crypto_shash_init.exit.i120.drbg_kcapi_hash.exit129_crit_edge, label %crypto_shash_init.exit.i120.for.body.i127_crit_edge

crypto_shash_init.exit.i120.for.body.i127_crit_edge: ; preds = %crypto_shash_init.exit.i120
  br label %for.body.i127

crypto_shash_init.exit.i120.drbg_kcapi_hash.exit129_crit_edge: ; preds = %crypto_shash_init.exit.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit129

for.body.i127:                                    ; preds = %for.body.i127.for.body.i127_crit_edge, %crypto_shash_init.exit.i120.for.body.i127_crit_edge
  %.pn18.i121 = phi ptr [ %.pn.i125, %for.body.i127.for.body.i127_crit_edge ], [ %.pn16.i118, %crypto_shash_init.exit.i120.for.body.i127_crit_edge ]
  %input.0.i122 = getelementptr i8, ptr %.pn18.i121, i32 -8
  %134 = ptrtoint ptr %input.0.i122 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %input.0.i122, align 4
  %len.i123 = getelementptr i8, ptr %.pn18.i121, i32 -4
  %136 = ptrtoint ptr %len.i123 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len.i123, align 4
  %call2.i124 = call i32 @crypto_shash_update(ptr noundef %124, ptr noundef %135, i32 noundef %137) #11
  %138 = ptrtoint ptr %.pn18.i121 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i125 = load ptr, ptr %.pn18.i121, align 4
  %cmp.not.i126 = icmp eq ptr %.pn.i125, %vdatalist
  br i1 %cmp.not.i126, label %for.body.i127.drbg_kcapi_hash.exit129_crit_edge, label %for.body.i127.for.body.i127_crit_edge

for.body.i127.for.body.i127_crit_edge:            ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i127

for.body.i127.drbg_kcapi_hash.exit129_crit_edge:  ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit129

drbg_kcapi_hash.exit129:                          ; preds = %for.body.i127.drbg_kcapi_hash.exit129_crit_edge, %crypto_shash_init.exit.i120.drbg_kcapi_hash.exit129_crit_edge
  %call9.i128 = call i32 @crypto_shash_final(ptr noundef %124, ptr noundef %122) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i128)
  %tobool27.not = icmp eq i32 %call9.i128, 0
  br i1 %tobool27.not, label %cleanup, label %drbg_kcapi_hash.exit129.cleanup.thread_crit_edge

drbg_kcapi_hash.exit129.cleanup.thread_crit_edge: ; preds = %drbg_kcapi_hash.exit129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %drbg_kcapi_hash.exit129.cleanup.thread_crit_edge, %drbg_kcapi_hash.exit.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call9.i128, %drbg_kcapi_hash.exit129.cleanup.thread_crit_edge ], [ %call9.i, %drbg_kcapi_hash.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix) #11
  br label %cleanup33

cleanup:                                          ; preds = %drbg_kcapi_hash.exit129
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix) #11
  %dec = add nsw i32 %i.0138, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %cleanup.cleanup33_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.cleanup33_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup.cleanup33_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %cleanup.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vdatalist) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seedlist) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdata) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seed2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seed1) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_hmac_generate(ptr noundef %drbg, ptr nocapture noundef writeonly %buf, i32 noundef %buflen, ptr noundef %addtl) #5 align 64 {
entry:
  %data = alloca %struct.drbg_string, align 4
  %datalist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #11
  %0 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist) #11
  %3 = getelementptr inbounds %struct.list_head, ptr %datalist, i32 0, i32 1
  %4 = ptrtoint ptr %datalist to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %datalist, ptr %datalist, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %datalist, ptr %3, align 4
  %tobool.not = icmp eq ptr %addtl, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %addtl, align 4
  %cmp.i.not = icmp eq ptr %7, %addtl
  br i1 %cmp.i.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @drbg_hmac_update(ptr noundef %drbg, ptr noundef nonnull %addtl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup32_crit_edge

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %V = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %8 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %V, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %if.end5.drbg_statelen.exit_crit_edge, label %land.lhs.true.i

if.end5.drbg_statelen.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_statelen.exit_crit_edge, label %if.then.i

land.lhs.true.i.drbg_statelen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %statelen.i, align 4
  %phi.cast = zext i8 %13 to i32
  br label %drbg_statelen.exit

drbg_statelen.exit:                               ; preds = %if.then.i, %land.lhs.true.i.drbg_statelen.exit_crit_edge, %if.end5.drbg_statelen.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 0, %land.lhs.true.i.drbg_statelen.exit_crit_edge ], [ 0, %if.end5.drbg_statelen.exit_crit_edge ]
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %data, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %0, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %datalist) #11
  br i1 %call.i.i, label %if.end.i.i, label %drbg_statelen.exit.list_add_tail.exit_crit_edge

drbg_statelen.exit.list_add_tail.exit_crit_edge:  ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %3, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %datalist, ptr %1, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %2, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %1, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %drbg_statelen.exit.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp88.not = icmp eq i32 %buflen, 0
  br i1 %cmp88.not, label %list_add_tail.exit.while.end_crit_edge, label %while.body.lr.ph

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_add_tail.exit
  %priv_data.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %core.i66 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %len.089 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %24 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %V, align 4
  %26 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv_data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i64, label %while.body.crypto_shash_init.exit.i_crit_edge

while.body.crypto_shash_init.exit.i_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i

if.end.i.i64:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %29, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 -256
  %34 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %35(ptr noundef %27) #11
  br label %crypto_shash_init.exit.i

crypto_shash_init.exit.i:                         ; preds = %if.end.i.i64, %while.body.crypto_shash_init.exit.i_crit_edge
  %36 = ptrtoint ptr %datalist to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn16.i = load ptr, ptr %datalist, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %datalist
  br i1 %cmp.not17.i, label %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge, label %crypto_shash_init.exit.i.for.body.i_crit_edge

crypto_shash_init.exit.i.for.body.i_crit_edge:    ; preds = %crypto_shash_init.exit.i
  br label %for.body.i

crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %crypto_shash_init.exit.i.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn16.i, %crypto_shash_init.exit.i.for.body.i_crit_edge ]
  %input.0.i = getelementptr i8, ptr %.pn18.i, i32 -8
  %37 = ptrtoint ptr %input.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input.0.i, align 4
  %len.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %call2.i = call i32 @crypto_shash_update(ptr noundef %27, ptr noundef %38, i32 noundef %40) #11
  %41 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %datalist
  br i1 %cmp.not.i, label %for.body.i.drbg_kcapi_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.drbg_kcapi_hash.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

drbg_kcapi_hash.exit:                             ; preds = %for.body.i.drbg_kcapi_hash.exit_crit_edge, %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge
  %call9.i = call i32 @crypto_shash_final(ptr noundef %27, ptr noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not, label %if.end12, label %drbg_kcapi_hash.exit.cleanup32_crit_edge

drbg_kcapi_hash.exit.cleanup32_crit_edge:         ; preds = %drbg_kcapi_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.end12:                                         ; preds = %drbg_kcapi_hash.exit
  br i1 %tobool.not.i, label %drbg_blocklen.exit.thread, label %land.lhs.true.i68

land.lhs.true.i68:                                ; preds = %if.end12
  %42 = ptrtoint ptr %core.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core.i66, align 4
  %tobool1.not.i67 = icmp eq ptr %43, null
  br i1 %tobool1.not.i67, label %land.lhs.true.i68.drbg_blocklen.exit_crit_edge, label %if.then.i69

land.lhs.true.i68.drbg_blocklen.exit_crit_edge:   ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

if.then.i69:                                      ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %blocklen_bytes.i, align 1
  br label %drbg_blocklen.exit

drbg_blocklen.exit:                               ; preds = %if.then.i69, %land.lhs.true.i68.drbg_blocklen.exit_crit_edge
  %retval.0.i70 = phi i8 [ %45, %if.then.i69 ], [ 0, %land.lhs.true.i68.drbg_blocklen.exit_crit_edge ]
  %conv14 = zext i8 %retval.0.i70 to i32
  %sub = sub i32 %buflen, %len.089
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv14)
  %cmp15 = icmp ugt i32 %sub, %conv14
  br i1 %cmp15, label %land.lhs.true.i74.critedge, label %drbg_blocklen.exit.cleanup_crit_edge

drbg_blocklen.exit.cleanup_crit_edge:             ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

drbg_blocklen.exit.thread:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %len.089, i32 %buflen)
  %cmp1584.not = icmp eq i32 %len.089, %buflen
  br i1 %cmp1584.not, label %drbg_blocklen.exit.thread.cleanup_crit_edge, label %drbg_blocklen.exit.thread.drbg_blocklen.exit78_crit_edge

drbg_blocklen.exit.thread.drbg_blocklen.exit78_crit_edge: ; preds = %drbg_blocklen.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit78

drbg_blocklen.exit.thread.cleanup_crit_edge:      ; preds = %drbg_blocklen.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i74.critedge:                       ; preds = %drbg_blocklen.exit
  %46 = ptrtoint ptr %core.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core.i66, align 4
  %tobool1.not.i73 = icmp eq ptr %47, null
  br i1 %tobool1.not.i73, label %land.lhs.true.i74.critedge.drbg_blocklen.exit78_crit_edge, label %if.then.i76

land.lhs.true.i74.critedge.drbg_blocklen.exit78_crit_edge: ; preds = %land.lhs.true.i74.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit78

if.then.i76:                                      ; preds = %land.lhs.true.i74.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i75 = getelementptr inbounds %struct.drbg_core, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %blocklen_bytes.i75 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %blocklen_bytes.i75, align 1
  br label %drbg_blocklen.exit78

drbg_blocklen.exit78:                             ; preds = %if.then.i76, %land.lhs.true.i74.critedge.drbg_blocklen.exit78_crit_edge, %drbg_blocklen.exit.thread.drbg_blocklen.exit78_crit_edge
  %retval.0.i77 = phi i8 [ %49, %if.then.i76 ], [ 0, %land.lhs.true.i74.critedge.drbg_blocklen.exit78_crit_edge ], [ 0, %drbg_blocklen.exit.thread.drbg_blocklen.exit78_crit_edge ]
  %conv18 = zext i8 %retval.0.i77 to i32
  br label %cleanup

cleanup:                                          ; preds = %drbg_blocklen.exit78, %drbg_blocklen.exit.thread.cleanup_crit_edge, %drbg_blocklen.exit.cleanup_crit_edge
  %cond = phi i32 [ %conv18, %drbg_blocklen.exit78 ], [ %sub, %drbg_blocklen.exit.cleanup_crit_edge ], [ 0, %drbg_blocklen.exit.thread.cleanup_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.089
  %50 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %V, align 4
  %52 = call ptr @memcpy(ptr %add.ptr, ptr %51, i32 %cond)
  %add = add i32 %cond, %len.089
  %cmp = icmp ult i32 %add, %buflen
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %list_add_tail.exit.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  br i1 %tobool.not, label %while.end.if.else_crit_edge, label %land.lhs.true22

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true22:                                  ; preds = %while.end
  %53 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %addtl, align 4
  %cmp.i79.not = icmp eq ptr %54, %addtl
  br i1 %cmp.i79.not, label %land.lhs.true22.if.else_crit_edge, label %if.then25

land.lhs.true22.if.else_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 @drbg_hmac_update(ptr noundef %drbg, ptr noundef nonnull %addtl, i32 noundef 1)
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true22.if.else_crit_edge, %while.end.if.else_crit_edge
  %call27 = call i32 @drbg_hmac_update(ptr noundef %drbg, ptr noundef null, i32 noundef 1)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %ret.0 = phi i32 [ %call27, %if.else ], [ %call26, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  %len.0.ret.0 = select i1 %tobool29.not, i32 %len.0.lcssa, i32 %ret.0
  br label %cleanup32

cleanup32:                                        ; preds = %if.end28, %drbg_kcapi_hash.exit.cleanup32_crit_edge, %if.then.cleanup32_crit_edge
  %retval.2 = phi i32 [ %call2, %if.then.cleanup32_crit_edge ], [ %len.0.ret.0, %if.end28 ], [ %call9.i, %drbg_kcapi_hash.exit.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_init_hash_kernel(ptr noundef %drbg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %backend_cra_name = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 4
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %backend_cra_name, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %backend_cra_name3 = getelementptr inbounds %struct.drbg_core, ptr %3, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %backend_cra_name3) #18
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

do.body7:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %do.body7.drbg_blocklen.exit_crit_edge, label %land.lhs.true.i

do.body7.drbg_blocklen.exit_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

land.lhs.true.i:                                  ; preds = %do.body7
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_blocklen.exit_crit_edge, label %if.then.i

land.lhs.true.i.drbg_blocklen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blocklen_bytes.i, align 1
  %phi.cast = zext i8 %8 to i32
  br label %drbg_blocklen.exit

drbg_blocklen.exit:                               ; preds = %if.then.i, %land.lhs.true.i.drbg_blocklen.exit_crit_edge, %do.body7.drbg_blocklen.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 0, %land.lhs.true.i.drbg_blocklen.exit_crit_edge ], [ 0, %do.body7.drbg_blocklen.exit_crit_edge ]
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %10, i32 -128
  %11 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digestsize.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %12, %retval.0.i
  br i1 %cmp.not, label %if.end8.i.i, label %do.body13, !prof !147

do.body13:                                        ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1690, 0\0A.popsection", ""() #11, !srcloc !148
  unreachable

if.end8.i.i:                                      ; preds = %drbg_blocklen.exit
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 128
  %add = add i32 %14, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %call9.i.i, align 128
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %16 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %priv_data, align 4
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_alignmask.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ %20, %if.end26 ], [ -12, %if.then25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_fini_hash_kernel(ptr nocapture noundef %drbg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_hash_update(ptr noundef %drbg, ptr noundef %seed, i32 noundef %reseed) #5 align 64 {
entry:
  %data1 = alloca %struct.drbg_string, align 4
  %data2 = alloca %struct.drbg_string, align 4
  %datalist = alloca %struct.list_head, align 4
  %datalist2 = alloca %struct.list_head, align 4
  %prefix = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data1) #11
  %0 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2, i32 1
  %3 = call ptr @memset(ptr %data1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data2) #11
  %4 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 2, i32 1
  %7 = call ptr @memset(ptr %data2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist) #11
  %8 = getelementptr inbounds %struct.list_head, ptr %datalist, i32 0, i32 1
  %9 = ptrtoint ptr %datalist to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %datalist, ptr %datalist, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %datalist, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist2) #11
  %11 = getelementptr inbounds %struct.list_head, ptr %datalist2, i32 0, i32 1
  %12 = ptrtoint ptr %datalist2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %datalist2, ptr %datalist2, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %datalist2, ptr %11, align 4
  %scratchpad = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 7
  %14 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scratchpad, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefix) #11
  %16 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %prefix, align 1
  %tobool.not = icmp eq ptr %seed, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reseed)
  %tobool3.not = icmp eq i32 %reseed, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %V5 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %17 = ptrtoint ptr %V5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %V5, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %if.then4.drbg_statelen.exit_crit_edge, label %land.lhs.true.i

if.then4.drbg_statelen.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_statelen.exit_crit_edge, label %if.then.i

land.lhs.true.i.drbg_statelen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %statelen.i, align 4
  %phi.cast = zext i8 %22 to i32
  br label %drbg_statelen.exit

drbg_statelen.exit:                               ; preds = %if.then.i, %land.lhs.true.i.drbg_statelen.exit_crit_edge, %if.then4.drbg_statelen.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 0, %land.lhs.true.i.drbg_statelen.exit_crit_edge ], [ 0, %if.then4.drbg_statelen.exit_crit_edge ]
  %23 = call ptr @memcpy(ptr %15, ptr %18, i32 %retval.0.i)
  %24 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %prefix, ptr %data1, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %1, ptr %1, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %2, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %8, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %29, ptr noundef nonnull %datalist) #11
  br i1 %call.i.i, label %if.end.i.i, label %drbg_statelen.exit.list_add_tail.exit_crit_edge

drbg_statelen.exit.list_add_tail.exit_crit_edge:  ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %8, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %datalist, ptr %1, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %2, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %1, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %drbg_statelen.exit.list_add_tail.exit_crit_edge
  br i1 %tobool.not.i, label %list_add_tail.exit.drbg_statelen.exit57_crit_edge, label %land.lhs.true.i53

list_add_tail.exit.drbg_statelen.exit57_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit57

land.lhs.true.i53:                                ; preds = %list_add_tail.exit
  %core.i51 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %34 = ptrtoint ptr %core.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core.i51, align 4
  %tobool1.not.i52 = icmp eq ptr %35, null
  br i1 %tobool1.not.i52, label %land.lhs.true.i53.drbg_statelen.exit57_crit_edge, label %if.then.i55

land.lhs.true.i53.drbg_statelen.exit57_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit57

if.then.i55:                                      ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i54 = getelementptr inbounds %struct.drbg_core, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %statelen.i54 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %statelen.i54, align 4
  %phi.cast117 = zext i8 %37 to i32
  br label %drbg_statelen.exit57

drbg_statelen.exit57:                             ; preds = %if.then.i55, %land.lhs.true.i53.drbg_statelen.exit57_crit_edge, %list_add_tail.exit.drbg_statelen.exit57_crit_edge
  %retval.0.i56 = phi i32 [ %phi.cast117, %if.then.i55 ], [ 0, %land.lhs.true.i53.drbg_statelen.exit57_crit_edge ], [ 0, %list_add_tail.exit.drbg_statelen.exit57_crit_edge ]
  %38 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %15, ptr %data2, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i56, ptr %4, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %5, ptr %5, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %5, ptr %6, align 4
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %8, align 4
  %call.i.i62 = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %43, ptr noundef nonnull %datalist) #11
  br i1 %call.i.i62, label %if.end.i.i64, label %drbg_statelen.exit57.if.end9_crit_edge

drbg_statelen.exit57.if.end9_crit_edge:           ; preds = %drbg_statelen.exit57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i.i64:                                     ; preds = %drbg_statelen.exit57
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %5, ptr %8, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %datalist, ptr %5, align 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %6, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %5, ptr %43, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i64, %drbg_statelen.exit57.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %48 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %seed, align 4
  %cmp.i.not.i = icmp eq ptr %49, %seed
  br i1 %cmp.i.not.i, label %if.end9.list_splice_tail.exit_crit_edge, label %if.then.i68

if.end9.list_splice_tail.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit

if.then.i68:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %8, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %seed, i32 0, i32 1
  %52 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i67 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i67, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %datalist, ptr %53, align 4
  store ptr %53, ptr %8, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i68, %if.end9.list_splice_tail.exit_crit_edge
  %V10 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %57 = ptrtoint ptr %V10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %V10, align 4
  %tobool.not.i69 = icmp eq ptr %drbg, null
  br i1 %tobool.not.i69, label %list_splice_tail.exit.drbg_statelen.exit76_crit_edge, label %land.lhs.true.i72

list_splice_tail.exit.drbg_statelen.exit76_crit_edge: ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit76

land.lhs.true.i72:                                ; preds = %list_splice_tail.exit
  %core.i70 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %59 = ptrtoint ptr %core.i70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %core.i70, align 4
  %tobool1.not.i71 = icmp eq ptr %60, null
  br i1 %tobool1.not.i71, label %land.lhs.true.i72.drbg_statelen.exit76_crit_edge, label %if.then.i74

land.lhs.true.i72.drbg_statelen.exit76_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit76

if.then.i74:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i73 = getelementptr inbounds %struct.drbg_core, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %statelen.i73 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %statelen.i73, align 4
  %phi.cast118 = zext i8 %62 to i32
  br label %drbg_statelen.exit76

drbg_statelen.exit76:                             ; preds = %if.then.i74, %land.lhs.true.i72.drbg_statelen.exit76_crit_edge, %list_splice_tail.exit.drbg_statelen.exit76_crit_edge
  %retval.0.i75 = phi i32 [ %phi.cast118, %if.then.i74 ], [ 0, %land.lhs.true.i72.drbg_statelen.exit76_crit_edge ], [ 0, %list_splice_tail.exit.drbg_statelen.exit76_crit_edge ]
  %call13 = call fastcc i32 @drbg_hash_df(ptr noundef %drbg, ptr noundef %58, i32 noundef %retval.0.i75, ptr noundef nonnull %datalist)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %drbg_statelen.exit76.out_crit_edge

drbg_statelen.exit76.out_crit_edge:               ; preds = %drbg_statelen.exit76
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %drbg_statelen.exit76
  %63 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %prefix, align 1
  %64 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %prefix, ptr %data1, align 4
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %0, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %1, ptr %1, align 4
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %1, ptr %2, align 4
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %11, align 4
  %call.i.i81 = call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %69, ptr noundef nonnull %datalist2) #11
  br i1 %call.i.i81, label %if.end.i.i83, label %if.end16.list_add_tail.exit84_crit_edge

if.end16.list_add_tail.exit84_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit84

if.end.i.i83:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %1, ptr %11, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %datalist2, ptr %1, align 4
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %2, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %1, ptr %69, align 4
  br label %list_add_tail.exit84

list_add_tail.exit84:                             ; preds = %if.end.i.i83, %if.end16.list_add_tail.exit84_crit_edge
  %74 = ptrtoint ptr %V10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %V10, align 4
  br i1 %tobool.not.i69, label %list_add_tail.exit84.drbg_statelen.exit92_crit_edge, label %land.lhs.true.i88

list_add_tail.exit84.drbg_statelen.exit92_crit_edge: ; preds = %list_add_tail.exit84
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit92

land.lhs.true.i88:                                ; preds = %list_add_tail.exit84
  %core.i86 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %76 = ptrtoint ptr %core.i86 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %core.i86, align 4
  %tobool1.not.i87 = icmp eq ptr %77, null
  br i1 %tobool1.not.i87, label %land.lhs.true.i88.drbg_statelen.exit92_crit_edge, label %if.then.i90

land.lhs.true.i88.drbg_statelen.exit92_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit92

if.then.i90:                                      ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i89 = getelementptr inbounds %struct.drbg_core, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %statelen.i89 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %statelen.i89, align 4
  %phi.cast120 = zext i8 %79 to i32
  br label %drbg_statelen.exit92

drbg_statelen.exit92:                             ; preds = %if.then.i90, %land.lhs.true.i88.drbg_statelen.exit92_crit_edge, %list_add_tail.exit84.drbg_statelen.exit92_crit_edge
  %retval.0.i91 = phi i32 [ %phi.cast120, %if.then.i90 ], [ 0, %land.lhs.true.i88.drbg_statelen.exit92_crit_edge ], [ 0, %list_add_tail.exit84.drbg_statelen.exit92_crit_edge ]
  %80 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %75, ptr %data2, align 4
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i91, ptr %4, align 4
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %5, ptr %5, align 4
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %5, ptr %6, align 4
  %84 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %11, align 4
  %call.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %85, ptr noundef nonnull %datalist2) #11
  br i1 %call.i.i97, label %if.end.i.i99, label %drbg_statelen.exit92.list_add_tail.exit100_crit_edge

drbg_statelen.exit92.list_add_tail.exit100_crit_edge: ; preds = %drbg_statelen.exit92
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit100

if.end.i.i99:                                     ; preds = %drbg_statelen.exit92
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %5, ptr %11, align 4
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %datalist2, ptr %5, align 4
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %6, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %5, ptr %85, align 4
  br label %list_add_tail.exit100

list_add_tail.exit100:                            ; preds = %if.end.i.i99, %drbg_statelen.exit92.list_add_tail.exit100_crit_edge
  %C = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %90 = ptrtoint ptr %C to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %C, align 4
  br i1 %tobool.not.i69, label %list_add_tail.exit100.drbg_statelen.exit108_crit_edge, label %land.lhs.true.i104

list_add_tail.exit100.drbg_statelen.exit108_crit_edge: ; preds = %list_add_tail.exit100
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit108

land.lhs.true.i104:                               ; preds = %list_add_tail.exit100
  %core.i102 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %92 = ptrtoint ptr %core.i102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %core.i102, align 4
  %tobool1.not.i103 = icmp eq ptr %93, null
  br i1 %tobool1.not.i103, label %land.lhs.true.i104.drbg_statelen.exit108_crit_edge, label %if.then.i106

land.lhs.true.i104.drbg_statelen.exit108_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit108

if.then.i106:                                     ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i105 = getelementptr inbounds %struct.drbg_core, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %statelen.i105 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %statelen.i105, align 4
  %phi.cast121 = zext i8 %95 to i32
  br label %drbg_statelen.exit108

drbg_statelen.exit108:                            ; preds = %if.then.i106, %land.lhs.true.i104.drbg_statelen.exit108_crit_edge, %list_add_tail.exit100.drbg_statelen.exit108_crit_edge
  %retval.0.i107 = phi i32 [ %phi.cast121, %if.then.i106 ], [ 0, %land.lhs.true.i104.drbg_statelen.exit108_crit_edge ], [ 0, %list_add_tail.exit100.drbg_statelen.exit108_crit_edge ]
  %call24 = call fastcc i32 @drbg_hash_df(ptr noundef %drbg, ptr noundef %91, i32 noundef %retval.0.i107, ptr noundef nonnull %datalist2)
  br label %out

out:                                              ; preds = %drbg_statelen.exit108, %drbg_statelen.exit76.out_crit_edge
  %ret.0 = phi i32 [ %call13, %drbg_statelen.exit76.out_crit_edge ], [ %call24, %drbg_statelen.exit108 ]
  %96 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %scratchpad, align 4
  br i1 %tobool.not.i69, label %out.drbg_statelen.exit116_crit_edge, label %land.lhs.true.i112

out.drbg_statelen.exit116_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit116

land.lhs.true.i112:                               ; preds = %out
  %core.i110 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %98 = ptrtoint ptr %core.i110 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %core.i110, align 4
  %tobool1.not.i111 = icmp eq ptr %99, null
  br i1 %tobool1.not.i111, label %land.lhs.true.i112.drbg_statelen.exit116_crit_edge, label %if.then.i114

land.lhs.true.i112.drbg_statelen.exit116_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit116

if.then.i114:                                     ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i113 = getelementptr inbounds %struct.drbg_core, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %statelen.i113 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %statelen.i113, align 4
  %phi.cast119 = zext i8 %101 to i32
  br label %drbg_statelen.exit116

drbg_statelen.exit116:                            ; preds = %if.then.i114, %land.lhs.true.i112.drbg_statelen.exit116_crit_edge, %out.drbg_statelen.exit116_crit_edge
  %retval.0.i115 = phi i32 [ %phi.cast119, %if.then.i114 ], [ 0, %land.lhs.true.i112.drbg_statelen.exit116_crit_edge ], [ 0, %out.drbg_statelen.exit116_crit_edge ]
  %102 = call ptr @memset(ptr %97, i32 0, i32 %retval.0.i115)
  br label %cleanup

cleanup:                                          ; preds = %drbg_statelen.exit116, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %drbg_statelen.exit116 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_hash_generate(ptr noundef readonly %drbg, ptr nocapture noundef writeonly %buf, i32 noundef %buflen, ptr noundef %addtl) #5 align 64 {
entry:
  %data.i = alloca %struct.drbg_string, align 4
  %datalist.i53 = alloca %struct.list_head, align 4
  %data1.i = alloca %struct.drbg_string, align 4
  %data2.i = alloca %struct.drbg_string, align 4
  %datalist.i = alloca %struct.list_head, align 4
  %prefix.i = alloca i8, align 1
  %prefix = alloca i8, align 1
  %data1 = alloca %struct.drbg_string, align 4
  %data2 = alloca %struct.drbg_string, align 4
  %datalist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefix) #11
  %0 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %prefix, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data1) #11
  %1 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drbg_string, ptr %data1, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %data1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data2) #11
  %5 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drbg_string, ptr %data2, i32 0, i32 2, i32 1
  %8 = call ptr @memset(ptr %data2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist) #11
  %9 = getelementptr inbounds %struct.list_head, ptr %datalist, i32 0, i32 1
  %10 = ptrtoint ptr %datalist to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %datalist, ptr %datalist, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %datalist, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data1.i) #11
  %12 = getelementptr inbounds %struct.drbg_string, ptr %data1.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drbg_string, ptr %data1.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drbg_string, ptr %data1.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data2.i) #11
  %15 = getelementptr inbounds %struct.drbg_string, ptr %data2.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.drbg_string, ptr %data2.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.drbg_string, ptr %data2.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist.i) #11
  %18 = getelementptr inbounds %struct.list_head, ptr %datalist.i, i32 0, i32 1
  %19 = ptrtoint ptr %datalist.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %datalist.i, ptr %datalist.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %datalist.i, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefix.i) #11
  %21 = ptrtoint ptr %prefix.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %prefix.i, align 1
  %tobool.not.i = icmp eq ptr %addtl, null
  br i1 %tobool.not.i, label %entry.drbg_hash_process_addtl.exit.thread_crit_edge, label %lor.lhs.false.i

entry.drbg_hash_process_addtl.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_process_addtl.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %22 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %addtl, align 4
  %cmp.i.not.i = icmp eq ptr %23, %addtl
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.drbg_hash_process_addtl.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.drbg_hash_process_addtl.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_process_addtl.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %prefix.i, ptr %data1.i, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %12, align 4
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %13, ptr %13, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %13, ptr %14, align 4
  %V.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %28 = ptrtoint ptr %V.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %V.i, align 4
  %tobool.not.i.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i.i, label %if.end.i.drbg_statelen.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.drbg_statelen.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %core.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %30 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.drbg_statelen.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.drbg_statelen.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i = getelementptr inbounds %struct.drbg_core, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %statelen.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %statelen.i.i, align 4
  %phi.cast.i = zext i8 %33 to i32
  br label %drbg_statelen.exit.i

drbg_statelen.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.drbg_statelen.exit.i_crit_edge, %if.end.i.drbg_statelen.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.drbg_statelen.exit.i_crit_edge ], [ 0, %if.end.i.drbg_statelen.exit.i_crit_edge ]
  %34 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %data2.i, align 4
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %15, align 4
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %16, ptr %16, align 4
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %16, ptr %17, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef nonnull %datalist.i, ptr noundef nonnull %datalist.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %drbg_statelen.exit.i.list_add_tail.exit.i_crit_edge

drbg_statelen.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %drbg_statelen.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %drbg_statelen.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %13, ptr %18, align 4
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %datalist.i, ptr %13, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %datalist.i, ptr %14, align 4
  %41 = ptrtoint ptr %datalist.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %13, ptr %datalist.i, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %drbg_statelen.exit.i.list_add_tail.exit.i_crit_edge
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %18, align 4
  %call.i.i37.i = call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %43, ptr noundef nonnull %datalist.i) #11
  br i1 %call.i.i37.i, label %if.end.i.i39.i, label %list_add_tail.exit.i.list_add_tail.exit40.i_crit_edge

list_add_tail.exit.i.list_add_tail.exit40.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit40.i

if.end.i.i39.i:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %16, ptr %18, align 4
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %datalist.i, ptr %16, align 4
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %17, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %16, ptr %43, align 4
  br label %list_add_tail.exit40.i

list_add_tail.exit40.i:                           ; preds = %if.end.i.i39.i, %list_add_tail.exit.i.list_add_tail.exit40.i_crit_edge
  %48 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %addtl, align 4
  %cmp.i.not.i.i = icmp eq ptr %49, %addtl
  br i1 %cmp.i.not.i.i, label %list_add_tail.exit40.i.list_splice_tail.exit.i_crit_edge, label %if.then.i43.i

list_add_tail.exit40.i.list_splice_tail.exit.i_crit_edge: ; preds = %list_add_tail.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit.i

if.then.i43.i:                                    ; preds = %list_add_tail.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %18, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %addtl, i32 0, i32 1
  %52 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i42.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i42.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %datalist.i, ptr %53, align 4
  store ptr %53, ptr %18, align 4
  br label %list_splice_tail.exit.i

list_splice_tail.exit.i:                          ; preds = %if.then.i43.i, %list_add_tail.exit40.i.list_splice_tail.exit.i_crit_edge
  %scratchpad.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 7
  %57 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scratchpad.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %59 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv_data.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base.i.i.i.i.i, align 128
  %and.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i44.i, label %list_splice_tail.exit.i.crypto_shash_init.exit.i.i_crit_edge

list_splice_tail.exit.i.crypto_shash_init.exit.i.i_crit_edge: ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i.i

if.end.i.i44.i:                                   ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %62, i32 0, i32 2, i32 3
  %65 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %66, i32 -256
  %67 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i.i.i.i.i, align 128
  %call3.i.i.i = call i32 %68(ptr noundef %60) #11
  br label %crypto_shash_init.exit.i.i

crypto_shash_init.exit.i.i:                       ; preds = %if.end.i.i44.i, %list_splice_tail.exit.i.crypto_shash_init.exit.i.i_crit_edge
  %69 = ptrtoint ptr %datalist.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn16.i.i = load ptr, ptr %datalist.i, align 4
  %cmp.not17.i.i = icmp eq ptr %.pn16.i.i, %datalist.i
  br i1 %cmp.not17.i.i, label %crypto_shash_init.exit.i.i.drbg_kcapi_hash.exit.i_crit_edge, label %crypto_shash_init.exit.i.i.for.body.i.i_crit_edge

crypto_shash_init.exit.i.i.for.body.i.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i
  br label %for.body.i.i

crypto_shash_init.exit.i.i.drbg_kcapi_hash.exit.i_crit_edge: ; preds = %crypto_shash_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %crypto_shash_init.exit.i.i.for.body.i.i_crit_edge
  %.pn18.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn16.i.i, %crypto_shash_init.exit.i.i.for.body.i.i_crit_edge ]
  %input.0.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -8
  %70 = ptrtoint ptr %input.0.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %input.0.i.i, align 4
  %len.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -4
  %72 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i.i, align 4
  %call2.i.i = call i32 @crypto_shash_update(ptr noundef %60, ptr noundef %71, i32 noundef %73) #11
  %74 = ptrtoint ptr %.pn18.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i.i = load ptr, ptr %.pn18.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %datalist.i
  br i1 %cmp.not.i.i, label %for.body.i.i.drbg_kcapi_hash.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.drbg_kcapi_hash.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit.i

drbg_kcapi_hash.exit.i:                           ; preds = %for.body.i.i.drbg_kcapi_hash.exit.i_crit_edge, %crypto_shash_init.exit.i.i.drbg_kcapi_hash.exit.i_crit_edge
  %call9.i.i = call i32 @crypto_shash_final(ptr noundef %60, ptr noundef %58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool5.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %drbg_kcapi_hash.exit.i.out.i_crit_edge

drbg_kcapi_hash.exit.i.out.i_crit_edge:           ; preds = %drbg_kcapi_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end7.i:                                        ; preds = %drbg_kcapi_hash.exit.i
  %75 = ptrtoint ptr %V.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %V.i, align 4
  br i1 %tobool.not.i.i, label %drbg_statelen.exit.i63, label %land.lhs.true.i48.i

land.lhs.true.i48.i:                              ; preds = %if.end7.i
  %core.i46.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %77 = ptrtoint ptr %core.i46.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %core.i46.i, align 4
  %tobool1.not.i47.i = icmp eq ptr %78, null
  br i1 %tobool1.not.i47.i, label %land.lhs.true.i48.i.land.lhs.true.i65.sink.split.i_crit_edge, label %drbg_blocklen.exit.i

land.lhs.true.i48.i.land.lhs.true.i65.sink.split.i_crit_edge: ; preds = %land.lhs.true.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i65.sink.split.i

drbg_blocklen.exit.i:                             ; preds = %land.lhs.true.i48.i
  %statelen.i49.i = getelementptr inbounds %struct.drbg_core, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %statelen.i49.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %statelen.i49.i, align 4
  %phi.cast81.i = zext i8 %80 to i32
  %blocklen_bytes.i.i = getelementptr inbounds %struct.drbg_core, ptr %78, i32 0, i32 2
  %81 = ptrtoint ptr %blocklen_bytes.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %blocklen_bytes.i.i, align 1
  %conv13.i = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not38.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not38.i.i, label %drbg_blocklen.exit.i.land.lhs.true.i65.sink.split.i_crit_edge, label %while.body.preheader.i.i

drbg_blocklen.exit.i.land.lhs.true.i65.sink.split.i_crit_edge: ; preds = %drbg_blocklen.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i65.sink.split.i

while.body.preheader.i.i:                         ; preds = %drbg_blocklen.exit.i
  %83 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %scratchpad.i, align 4
  %sub.i.i = add nsw i32 %phi.cast81.i, -1
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %sub.i.i
  %sub1.i.i = add nsw i32 %conv13.i, -1
  %add.ptr2.i.i = getelementptr i8, ptr %84, i32 %sub1.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %len.042.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv13.i, %while.body.preheader.i.i ]
  %remainder.041.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %addptr.040.i.i = phi ptr [ %incdec.ptr7.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr2.i.i, %while.body.preheader.i.i ]
  %dstptr.039.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i ]
  %85 = ptrtoint ptr %dstptr.039.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dstptr.039.i.i, align 1
  %conv.i59.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %addptr.040.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %addptr.040.i.i, align 1
  %conv3.i.i = zext i8 %88 to i32
  %add4.i.i = add nuw nsw i32 %remainder.041.i.i, %conv.i59.i
  %add5.i.i = add nuw nsw i32 %add4.i.i, %conv3.i.i
  %conv6.i.i = trunc i32 %add5.i.i to i8
  store i8 %conv6.i.i, ptr %dstptr.039.i.i, align 1
  %shr.i.i = lshr i32 %add5.i.i, 8
  %dec.i.i = add nsw i32 %len.042.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %dstptr.039.i.i, i32 -1
  %incdec.ptr7.i.i = getelementptr i8, ptr %addptr.040.i.i, i32 -1
  %tobool.not.i60.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i60.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add5.i.i)
  %phi.cmp.i.i = icmp ult i32 %add5.i.i, 256
  %sub8.i.i = sub nsw i32 %phi.cast81.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %tobool10.not44.i.i = icmp eq i32 %sub8.i.i, 0
  %or.cond46.i.i = select i1 %tobool10.not44.i.i, i1 true, i1 %phi.cmp.i.i
  br i1 %or.cond46.i.i, label %while.end.i.i.out.i_crit_edge, label %while.end.i.i.while.body12.i.i_crit_edge

while.end.i.i.while.body12.i.i_crit_edge:         ; preds = %while.end.i.i
  br label %while.body12.i.i

while.end.i.i.out.i_crit_edge:                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.body12.i.i:                                 ; preds = %while.body12.i.i.while.body12.i.i_crit_edge, %while.end.i.i.while.body12.i.i_crit_edge
  %len.148.i.i = phi i32 [ %dec18.i.i, %while.body12.i.i.while.body12.i.i_crit_edge ], [ %sub8.i.i, %while.end.i.i.while.body12.i.i_crit_edge ]
  %dstptr.147.i.i = phi ptr [ %incdec.ptr19.i.i, %while.body12.i.i.while.body12.i.i_crit_edge ], [ %incdec.ptr.i.i, %while.end.i.i.while.body12.i.i_crit_edge ]
  %89 = ptrtoint ptr %dstptr.147.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dstptr.147.i.i, align 1
  %add14.i.i = add i8 %90, 1
  store i8 %add14.i.i, ptr %dstptr.147.i.i, align 1
  %dec18.i.i = add i32 %len.148.i.i, -1
  %incdec.ptr19.i.i = getelementptr i8, ptr %dstptr.147.i.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i.i)
  %tobool10.not.i.i = icmp eq i32 %dec18.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp.not.i61.i = icmp ne i8 %90, -1
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %cmp.not.i61.i
  br i1 %or.cond.i.i, label %while.body12.i.i.out.i_crit_edge, label %while.body12.i.i.while.body12.i.i_crit_edge

while.body12.i.i.while.body12.i.i_crit_edge:      ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12.i.i

while.body12.i.i.out.i_crit_edge:                 ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

out.i:                                            ; preds = %while.body12.i.i.out.i_crit_edge, %while.end.i.i.out.i_crit_edge, %drbg_kcapi_hash.exit.i.out.i_crit_edge
  %91 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %scratchpad.i, align 4
  br i1 %tobool.not.i.i, label %out.i.drbg_hash_process_addtl.exit_crit_edge, label %out.i.land.lhs.true.i65.i_crit_edge

out.i.land.lhs.true.i65.i_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i65.i

out.i.drbg_hash_process_addtl.exit_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_process_addtl.exit

land.lhs.true.i65.sink.split.i:                   ; preds = %drbg_blocklen.exit.i.land.lhs.true.i65.sink.split.i_crit_edge, %land.lhs.true.i48.i.land.lhs.true.i65.sink.split.i_crit_edge
  %93 = ptrtoint ptr %scratchpad.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %scratchpad.i, align 4
  br label %land.lhs.true.i65.i

land.lhs.true.i65.i:                              ; preds = %land.lhs.true.i65.sink.split.i, %out.i.land.lhs.true.i65.i_crit_edge
  %95 = phi ptr [ %92, %out.i.land.lhs.true.i65.i_crit_edge ], [ %94, %land.lhs.true.i65.sink.split.i ]
  %core.i63.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %96 = ptrtoint ptr %core.i63.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %core.i63.i, align 4
  %tobool1.not.i64.i = icmp eq ptr %97, null
  br i1 %tobool1.not.i64.i, label %land.lhs.true.i65.i.drbg_hash_process_addtl.exit_crit_edge, label %if.then.i67.i

land.lhs.true.i65.i.drbg_hash_process_addtl.exit_crit_edge: ; preds = %land.lhs.true.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_process_addtl.exit

if.then.i67.i:                                    ; preds = %land.lhs.true.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i66.i = getelementptr inbounds %struct.drbg_core, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %blocklen_bytes.i66.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %blocklen_bytes.i66.i, align 1
  %phi.cast80.i = zext i8 %99 to i32
  br label %drbg_hash_process_addtl.exit

drbg_hash_process_addtl.exit.thread:              ; preds = %lor.lhs.false.i.drbg_hash_process_addtl.exit.thread_crit_edge, %entry.drbg_hash_process_addtl.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data2.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1.i) #11
  br label %if.end

drbg_hash_process_addtl.exit:                     ; preds = %if.then.i67.i, %land.lhs.true.i65.i.drbg_hash_process_addtl.exit_crit_edge, %out.i.drbg_hash_process_addtl.exit_crit_edge
  %100 = phi ptr [ %95, %if.then.i67.i ], [ %95, %land.lhs.true.i65.i.drbg_hash_process_addtl.exit_crit_edge ], [ %92, %out.i.drbg_hash_process_addtl.exit_crit_edge ]
  %retval.0.i68.i = phi i32 [ %phi.cast80.i, %if.then.i67.i ], [ 0, %land.lhs.true.i65.i.drbg_hash_process_addtl.exit_crit_edge ], [ 0, %out.i.drbg_hash_process_addtl.exit_crit_edge ]
  %101 = call ptr @memset(ptr %100, i32 0, i32 %retval.0.i68.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data2.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1.i) #11
  br i1 %tobool5.not.i, label %drbg_hash_process_addtl.exit.if.end_crit_edge, label %drbg_hash_process_addtl.exit.cleanup_crit_edge

drbg_hash_process_addtl.exit.cleanup_crit_edge:   ; preds = %drbg_hash_process_addtl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

drbg_hash_process_addtl.exit.if.end_crit_edge:    ; preds = %drbg_hash_process_addtl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %drbg_hash_process_addtl.exit.if.end_crit_edge, %drbg_hash_process_addtl.exit.thread
  %scratchpad.i54 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 7
  %102 = ptrtoint ptr %scratchpad.i54 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %scratchpad.i54, align 4
  %tobool.not.i.i55 = icmp eq ptr %drbg, null
  br i1 %tobool.not.i.i55, label %drbg_statelen.exit.i63.thread256, label %land.lhs.true.i.i58

drbg_statelen.exit.i63.thread256:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #11
  %104 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 1
  %105 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2
  %106 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist.i53) #11
  %107 = getelementptr inbounds %struct.list_head, ptr %datalist.i53, i32 0, i32 1
  %108 = ptrtoint ptr %datalist.i53 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %datalist.i53, ptr %datalist.i53, align 4
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %datalist.i53, ptr %107, align 4
  br label %drbg_statelen.exit76.i

land.lhs.true.i.i58:                              ; preds = %if.end
  %core.i.i56 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %110 = ptrtoint ptr %core.i.i56 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %core.i.i56, align 4
  %tobool1.not.i.i57 = icmp eq ptr %111, null
  br i1 %tobool1.not.i.i57, label %land.lhs.true.i.i58.land.lhs.true.i64.i_crit_edge, label %if.then.i.i60

land.lhs.true.i.i58.land.lhs.true.i64.i_crit_edge: ; preds = %land.lhs.true.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i64.i

if.then.i.i60:                                    ; preds = %land.lhs.true.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i59 = getelementptr inbounds %struct.drbg_core, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %statelen.i.i59 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %statelen.i.i59, align 4
  %phi.cast143.i = zext i8 %113 to i32
  br label %land.lhs.true.i64.i

drbg_statelen.exit.i63:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data2.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1.i) #11
  call void @__asan_load4_noabort(i32 116)
  %114 = load ptr, ptr inttoptr (i32 116 to ptr), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #11
  %115 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 1
  %116 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2
  %117 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist.i53) #11
  %118 = getelementptr inbounds %struct.list_head, ptr %datalist.i53, i32 0, i32 1
  %119 = ptrtoint ptr %datalist.i53 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %datalist.i53, ptr %datalist.i53, align 4
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %datalist.i53, ptr %118, align 4
  br label %drbg_statelen.exit76.i

land.lhs.true.i64.i:                              ; preds = %if.then.i.i60, %land.lhs.true.i.i58.land.lhs.true.i64.i_crit_edge
  %retval.0.i.i61.ph = phi i32 [ 0, %land.lhs.true.i.i58.land.lhs.true.i64.i_crit_edge ], [ %phi.cast143.i, %if.then.i.i60 ]
  %add.ptr.i246 = getelementptr i8, ptr %103, i32 %retval.0.i.i61.ph
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #11
  %121 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 1
  %122 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2
  %123 = getelementptr inbounds %struct.drbg_string, ptr %data.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datalist.i53) #11
  %124 = getelementptr inbounds %struct.list_head, ptr %datalist.i53, i32 0, i32 1
  %125 = ptrtoint ptr %datalist.i53 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %datalist.i53, ptr %datalist.i53, align 4
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %datalist.i53, ptr %124, align 4
  %V.i62247 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %127 = ptrtoint ptr %V.i62247 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %V.i62247, align 4
  %129 = ptrtoint ptr %core.i.i56 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %core.i.i56, align 4
  %tobool1.not.i63.i = icmp eq ptr %130, null
  br i1 %tobool1.not.i63.i, label %land.lhs.true.i64.i.land.lhs.true.i72.i_crit_edge, label %if.then.i66.i

land.lhs.true.i64.i.land.lhs.true.i72.i_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i72.i

if.then.i66.i:                                    ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i65.i = getelementptr inbounds %struct.drbg_core, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %statelen.i65.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %statelen.i65.i, align 4
  %phi.cast144.i = zext i8 %132 to i32
  br label %land.lhs.true.i72.i

land.lhs.true.i72.i:                              ; preds = %if.then.i66.i, %land.lhs.true.i64.i.land.lhs.true.i72.i_crit_edge
  %retval.0.i67.ph.i = phi i32 [ 0, %land.lhs.true.i64.i.land.lhs.true.i72.i_crit_edge ], [ %phi.cast144.i, %if.then.i66.i ]
  %133 = call ptr @memcpy(ptr %103, ptr %128, i32 %retval.0.i67.ph.i)
  %134 = ptrtoint ptr %core.i.i56 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %core.i.i56, align 4
  %tobool1.not.i71.i = icmp eq ptr %135, null
  br i1 %tobool1.not.i71.i, label %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge, label %if.then.i74.i

land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge: ; preds = %land.lhs.true.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit76.i

if.then.i74.i:                                    ; preds = %land.lhs.true.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i73.i = getelementptr inbounds %struct.drbg_core, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %statelen.i73.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %statelen.i73.i, align 4
  %phi.cast.i64 = zext i8 %137 to i32
  br label %drbg_statelen.exit76.i

drbg_statelen.exit76.i:                           ; preds = %if.then.i74.i, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge, %drbg_statelen.exit.i63, %drbg_statelen.exit.i63.thread256
  %V.i62255 = phi ptr [ %V.i62247, %if.then.i74.i ], [ %V.i62247, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ inttoptr (i32 92 to ptr), %drbg_statelen.exit.i63 ], [ inttoptr (i32 92 to ptr), %drbg_statelen.exit.i63.thread256 ]
  %138 = phi ptr [ %124, %if.then.i74.i ], [ %124, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %118, %drbg_statelen.exit.i63 ], [ %107, %drbg_statelen.exit.i63.thread256 ]
  %139 = phi ptr [ %123, %if.then.i74.i ], [ %123, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %117, %drbg_statelen.exit.i63 ], [ %106, %drbg_statelen.exit.i63.thread256 ]
  %140 = phi ptr [ %122, %if.then.i74.i ], [ %122, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %116, %drbg_statelen.exit.i63 ], [ %105, %drbg_statelen.exit.i63.thread256 ]
  %141 = phi ptr [ %121, %if.then.i74.i ], [ %121, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %115, %drbg_statelen.exit.i63 ], [ %104, %drbg_statelen.exit.i63.thread256 ]
  %add.ptr.i253 = phi ptr [ %add.ptr.i246, %if.then.i74.i ], [ %add.ptr.i246, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %114, %drbg_statelen.exit.i63 ], [ %103, %drbg_statelen.exit.i63.thread256 ]
  %scratchpad.i54234251 = phi ptr [ %scratchpad.i54, %if.then.i74.i ], [ %scratchpad.i54, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ inttoptr (i32 116 to ptr), %drbg_statelen.exit.i63 ], [ %scratchpad.i54, %drbg_statelen.exit.i63.thread256 ]
  %tobool.not.i.i55238249 = phi i1 [ false, %if.then.i74.i ], [ false, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ true, %drbg_statelen.exit.i63 ], [ true, %drbg_statelen.exit.i63.thread256 ]
  %142 = phi ptr [ %103, %if.then.i74.i ], [ %103, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ %114, %drbg_statelen.exit.i63 ], [ %103, %drbg_statelen.exit.i63.thread256 ]
  %retval.0.i75.i = phi i32 [ %phi.cast.i64, %if.then.i74.i ], [ 0, %land.lhs.true.i72.i.drbg_statelen.exit76.i_crit_edge ], [ 0, %drbg_statelen.exit.i63 ], [ 0, %drbg_statelen.exit.i63.thread256 ]
  %143 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %data.i, align 4
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %retval.0.i75.i, ptr %141, align 4
  %145 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %140, ptr %140, align 4
  %146 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %140, ptr %139, align 4
  %147 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %138, align 4
  %call.i.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %140, ptr noundef %148, ptr noundef nonnull %datalist.i53) #11
  br i1 %call.i.i.i65, label %if.end.i.i.i66, label %drbg_statelen.exit76.i.list_add_tail.exit.i67_crit_edge

drbg_statelen.exit76.i.list_add_tail.exit.i67_crit_edge: ; preds = %drbg_statelen.exit76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i67

if.end.i.i.i66:                                   ; preds = %drbg_statelen.exit76.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %140, ptr %138, align 4
  %150 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %datalist.i53, ptr %140, align 4
  %151 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %139, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %140, ptr %148, align 4
  br label %list_add_tail.exit.i67

list_add_tail.exit.i67:                           ; preds = %if.end.i.i.i66, %drbg_statelen.exit76.i.list_add_tail.exit.i67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp138.not.i = icmp eq i32 %buflen, 0
  br i1 %cmp138.not.i, label %list_add_tail.exit.i67.out.i92_crit_edge, label %while.body.lr.ph.i

list_add_tail.exit.i67.out.i92_crit_edge:         ; preds = %list_add_tail.exit.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i92

while.body.lr.ph.i:                               ; preds = %list_add_tail.exit.i67
  %priv_data.i.i68 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %core.i79.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.0139.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %len.1.i, %cleanup.i.while.body.i_crit_edge ]
  %153 = ptrtoint ptr %priv_data.i.i68 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %priv_data.i.i68, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %base.i.i.i.i.i69 = getelementptr inbounds %struct.crypto_shash, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %base.i.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %base.i.i.i.i.i69, align 128
  %and.i.i.i70 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70)
  %tobool.not.i.i.i71 = icmp eq i32 %and.i.i.i70, 0
  br i1 %tobool.not.i.i.i71, label %if.end.i.i77.i, label %while.body.i.crypto_shash_init.exit.i.i77_crit_edge

while.body.i.crypto_shash_init.exit.i.i77_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i.i77

if.end.i.i77.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i.i72 = getelementptr inbounds %struct.crypto_shash, ptr %156, i32 0, i32 2, i32 3
  %159 = ptrtoint ptr %__crt_alg.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %__crt_alg.i.i.i.i72, align 4
  %add.ptr.i.i.i.i.i73 = getelementptr i8, ptr %160, i32 -256
  %161 = ptrtoint ptr %add.ptr.i.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i.i.i.i.i73, align 128
  %call3.i.i.i74 = call i32 %162(ptr noundef %154) #11
  br label %crypto_shash_init.exit.i.i77

crypto_shash_init.exit.i.i77:                     ; preds = %if.end.i.i77.i, %while.body.i.crypto_shash_init.exit.i.i77_crit_edge
  %163 = ptrtoint ptr %datalist.i53 to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pn16.i.i75 = load ptr, ptr %datalist.i53, align 4
  %cmp.not17.i.i76 = icmp eq ptr %.pn16.i.i75, %datalist.i53
  br i1 %cmp.not17.i.i76, label %crypto_shash_init.exit.i.i77.drbg_kcapi_hash.exit.i87_crit_edge, label %crypto_shash_init.exit.i.i77.for.body.i.i84_crit_edge

crypto_shash_init.exit.i.i77.for.body.i.i84_crit_edge: ; preds = %crypto_shash_init.exit.i.i77
  br label %for.body.i.i84

crypto_shash_init.exit.i.i77.drbg_kcapi_hash.exit.i87_crit_edge: ; preds = %crypto_shash_init.exit.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit.i87

for.body.i.i84:                                   ; preds = %for.body.i.i84.for.body.i.i84_crit_edge, %crypto_shash_init.exit.i.i77.for.body.i.i84_crit_edge
  %.pn18.i.i78 = phi ptr [ %.pn.i.i82, %for.body.i.i84.for.body.i.i84_crit_edge ], [ %.pn16.i.i75, %crypto_shash_init.exit.i.i77.for.body.i.i84_crit_edge ]
  %input.0.i.i79 = getelementptr i8, ptr %.pn18.i.i78, i32 -8
  %164 = ptrtoint ptr %input.0.i.i79 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %input.0.i.i79, align 4
  %len.i.i80 = getelementptr i8, ptr %.pn18.i.i78, i32 -4
  %166 = ptrtoint ptr %len.i.i80 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len.i.i80, align 4
  %call2.i.i81 = call i32 @crypto_shash_update(ptr noundef %154, ptr noundef %165, i32 noundef %167) #11
  %168 = ptrtoint ptr %.pn18.i.i78 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pn.i.i82 = load ptr, ptr %.pn18.i.i78, align 4
  %cmp.not.i.i83 = icmp eq ptr %.pn.i.i82, %datalist.i53
  br i1 %cmp.not.i.i83, label %for.body.i.i84.drbg_kcapi_hash.exit.i87_crit_edge, label %for.body.i.i84.for.body.i.i84_crit_edge

for.body.i.i84.for.body.i.i84_crit_edge:          ; preds = %for.body.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i84

for.body.i.i84.drbg_kcapi_hash.exit.i87_crit_edge: ; preds = %for.body.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit.i87

drbg_kcapi_hash.exit.i87:                         ; preds = %for.body.i.i84.drbg_kcapi_hash.exit.i87_crit_edge, %crypto_shash_init.exit.i.i77.drbg_kcapi_hash.exit.i87_crit_edge
  %call9.i.i85 = call i32 @crypto_shash_final(ptr noundef %154, ptr noundef %add.ptr.i253) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i85)
  %tobool.not.i86 = icmp eq i32 %call9.i.i85, 0
  br i1 %tobool.not.i86, label %if.end.i88, label %drbg_kcapi_hash.exit.i87.out.i92_crit_edge

drbg_kcapi_hash.exit.i87.out.i92_crit_edge:       ; preds = %drbg_kcapi_hash.exit.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i92

if.end.i88:                                       ; preds = %drbg_kcapi_hash.exit.i87
  br i1 %tobool.not.i.i55238249, label %drbg_blocklen.exit.thread.i, label %land.lhs.true.i81.i

land.lhs.true.i81.i:                              ; preds = %if.end.i88
  %169 = ptrtoint ptr %core.i79.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %core.i79.i, align 4
  %tobool1.not.i80.i = icmp eq ptr %170, null
  br i1 %tobool1.not.i80.i, label %drbg_blocklen.exit.i90, label %drbg_blocklen.exit.i90.thread

drbg_blocklen.exit.i90:                           ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0139.i, i32 %buflen)
  %cmp10.i.not = icmp eq i32 %len.0139.i, %buflen
  br i1 %cmp10.i.not, label %drbg_blocklen.exit.i90.out.thread168.i_crit_edge, label %drbg_blocklen.exit.i90.cond.end.i_crit_edge

drbg_blocklen.exit.i90.cond.end.i_crit_edge:      ; preds = %drbg_blocklen.exit.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

drbg_blocklen.exit.i90.out.thread168.i_crit_edge: ; preds = %drbg_blocklen.exit.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread168.i

drbg_blocklen.exit.i90.thread:                    ; preds = %land.lhs.true.i81.i
  %blocklen_bytes.i.i89 = getelementptr inbounds %struct.drbg_core, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %blocklen_bytes.i.i89 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %blocklen_bytes.i.i89, align 1
  %conv9.i263 = zext i8 %172 to i32
  %sub.i264 = sub i32 %buflen, %len.0139.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i264, i32 %conv9.i263)
  %cmp10.i265 = icmp ugt i32 %sub.i264, %conv9.i263
  br i1 %cmp10.i265, label %if.then.i89.i, label %drbg_blocklen.exit.i90.thread.out.thread168.i_crit_edge

drbg_blocklen.exit.i90.thread.out.thread168.i_crit_edge: ; preds = %drbg_blocklen.exit.i90.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread168.i

drbg_blocklen.exit.thread.i:                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0139.i, i32 %buflen)
  %cmp10121.not.i = icmp eq i32 %len.0139.i, %buflen
  br i1 %cmp10121.not.i, label %out.thread.i, label %cond.end.thread158.i

out.thread.i:                                     ; preds = %drbg_blocklen.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %scratchpad.i54234251, align 4
  br label %drbg_hash_hashgen.exit

if.then.i89.i:                                    ; preds = %drbg_blocklen.exit.i90.thread
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %blocklen_bytes.i.i89 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %blocklen_bytes.i.i89, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then.i89.i, %drbg_blocklen.exit.i90.cond.end.i_crit_edge
  %retval.0.i90.i = phi i8 [ %176, %if.then.i89.i ], [ 0, %drbg_blocklen.exit.i90.cond.end.i_crit_edge ]
  %conv13.i91 = zext i8 %retval.0.i90.i to i32
  %add.ptr15.i = getelementptr i8, ptr %buf, i32 %len.0139.i
  %177 = call ptr @memcpy(ptr %add.ptr15.i, ptr %add.ptr.i253, i32 %conv13.i91)
  %add.i = add i32 %len.0139.i, %conv13.i91
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %buflen)
  %cmp16.i = icmp ult i32 %add.i, %buflen
  br i1 %cmp16.i, label %land.lhs.true.i95.i, label %cond.end.i.cleanup.i_crit_edge

cond.end.i.cleanup.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cond.end.thread158.i:                             ; preds = %drbg_blocklen.exit.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0139.i, i32 %buflen)
  %cmp16163.i = icmp ult i32 %len.0139.i, %buflen
  br i1 %cmp16163.i, label %cond.end.thread158.i.drbg_statelen.exit99.i_crit_edge, label %cond.end.thread158.i.cleanup.i_crit_edge

cond.end.thread158.i.cleanup.i_crit_edge:         ; preds = %cond.end.thread158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cond.end.thread158.i.drbg_statelen.exit99.i_crit_edge: ; preds = %cond.end.thread158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit99.i

out.thread168.i:                                  ; preds = %drbg_blocklen.exit.i90.thread.out.thread168.i_crit_edge, %drbg_blocklen.exit.i90.out.thread168.i_crit_edge
  %len.0139.i.lcssa300 = phi i32 [ %len.0139.i, %drbg_blocklen.exit.i90.thread.out.thread168.i_crit_edge ], [ %buflen, %drbg_blocklen.exit.i90.out.thread168.i_crit_edge ]
  %sub.i266 = phi i32 [ %sub.i264, %drbg_blocklen.exit.i90.thread.out.thread168.i_crit_edge ], [ 0, %drbg_blocklen.exit.i90.out.thread168.i_crit_edge ]
  %add.ptr15147.i = getelementptr i8, ptr %buf, i32 %len.0139.i.lcssa300
  %178 = call ptr @memcpy(ptr %add.ptr15147.i, ptr %add.ptr.i253, i32 %sub.i266)
  %179 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %scratchpad.i54234251, align 4
  br label %land.lhs.true.i103.i

land.lhs.true.i95.i:                              ; preds = %cond.end.i
  %181 = ptrtoint ptr %core.i79.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %core.i79.i, align 4
  %tobool1.not.i94.i = icmp eq ptr %182, null
  br i1 %tobool1.not.i94.i, label %land.lhs.true.i95.i.drbg_statelen.exit99.i_crit_edge, label %if.then.i97.i

land.lhs.true.i95.i.drbg_statelen.exit99.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit99.i

if.then.i97.i:                                    ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i96.i = getelementptr inbounds %struct.drbg_core, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %statelen.i96.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %statelen.i96.i, align 4
  br label %drbg_statelen.exit99.i

drbg_statelen.exit99.i:                           ; preds = %if.then.i97.i, %land.lhs.true.i95.i.drbg_statelen.exit99.i_crit_edge, %cond.end.thread158.i.drbg_statelen.exit99.i_crit_edge
  %add150153.i = phi i32 [ %add.i, %if.then.i97.i ], [ %add.i, %land.lhs.true.i95.i.drbg_statelen.exit99.i_crit_edge ], [ %len.0139.i, %cond.end.thread158.i.drbg_statelen.exit99.i_crit_edge ]
  %retval.0.i98.i = phi i8 [ %184, %if.then.i97.i ], [ 0, %land.lhs.true.i95.i.drbg_statelen.exit99.i_crit_edge ], [ 0, %cond.end.thread158.i.drbg_statelen.exit99.i_crit_edge ]
  %conv20.i = zext i8 %retval.0.i98.i to i32
  call void @crypto_inc(ptr noundef %142, i32 noundef %conv20.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %drbg_statelen.exit99.i, %cond.end.thread158.i.cleanup.i_crit_edge, %cond.end.i.cleanup.i_crit_edge
  %len.1.i = phi i32 [ %add150153.i, %drbg_statelen.exit99.i ], [ %add.i, %cond.end.i.cleanup.i_crit_edge ], [ %len.0139.i, %cond.end.thread158.i.cleanup.i_crit_edge ]
  %cmp.i = icmp ult i32 %len.1.i, %buflen
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.out.i92_crit_edge

cleanup.i.out.i92_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i92

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

out.i92:                                          ; preds = %cleanup.i.out.i92_crit_edge, %drbg_kcapi_hash.exit.i87.out.i92_crit_edge, %list_add_tail.exit.i67.out.i92_crit_edge
  %len.2.i = phi i32 [ 0, %list_add_tail.exit.i67.out.i92_crit_edge ], [ %len.1.i, %cleanup.i.out.i92_crit_edge ], [ %call9.i.i85, %drbg_kcapi_hash.exit.i87.out.i92_crit_edge ]
  %185 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %scratchpad.i54234251, align 4
  br i1 %tobool.not.i.i55238249, label %out.i92.drbg_hash_hashgen.exit_crit_edge, label %out.i92.land.lhs.true.i103.i_crit_edge

out.i92.land.lhs.true.i103.i_crit_edge:           ; preds = %out.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i103.i

out.i92.drbg_hash_hashgen.exit_crit_edge:         ; preds = %out.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_hashgen.exit

land.lhs.true.i103.i:                             ; preds = %out.i92.land.lhs.true.i103.i_crit_edge, %out.thread168.i
  %187 = phi ptr [ %180, %out.thread168.i ], [ %186, %out.i92.land.lhs.true.i103.i_crit_edge ]
  %len.2170.i = phi i32 [ %buflen, %out.thread168.i ], [ %len.2.i, %out.i92.land.lhs.true.i103.i_crit_edge ]
  %core.i101.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %188 = ptrtoint ptr %core.i101.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %core.i101.i, align 4
  %tobool1.not.i102.i = icmp eq ptr %189, null
  br i1 %tobool1.not.i102.i, label %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge, label %if.then.i113.i

land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge: ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_hash_hashgen.exit

if.then.i113.i:                                   ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i104.i = getelementptr inbounds %struct.drbg_core, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %statelen.i104.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %statelen.i104.i, align 4
  %blocklen_bytes.i112.i = getelementptr inbounds %struct.drbg_core, ptr %189, i32 0, i32 2
  %192 = ptrtoint ptr %blocklen_bytes.i112.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %blocklen_bytes.i112.i, align 1
  %phi.cast137.i = zext i8 %193 to i32
  br label %drbg_hash_hashgen.exit

drbg_hash_hashgen.exit:                           ; preds = %if.then.i113.i, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge, %out.i92.drbg_hash_hashgen.exit_crit_edge, %out.thread.i
  %tobool.not.i.i55241 = phi i1 [ false, %if.then.i113.i ], [ true, %out.i92.drbg_hash_hashgen.exit_crit_edge ], [ true, %out.thread.i ], [ false, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge ]
  %194 = phi ptr [ %187, %if.then.i113.i ], [ %186, %out.i92.drbg_hash_hashgen.exit_crit_edge ], [ %174, %out.thread.i ], [ %187, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge ]
  %len.2167.i = phi i32 [ %len.2170.i, %if.then.i113.i ], [ %len.2.i, %out.i92.drbg_hash_hashgen.exit_crit_edge ], [ %buflen, %out.thread.i ], [ %len.2170.i, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge ]
  %conv24135.shrunk.i = phi i8 [ %191, %if.then.i113.i ], [ 0, %out.i92.drbg_hash_hashgen.exit_crit_edge ], [ 0, %out.thread.i ], [ 0, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge ]
  %retval.0.i114.i = phi i32 [ %phi.cast137.i, %if.then.i113.i ], [ 0, %out.i92.drbg_hash_hashgen.exit_crit_edge ], [ 0, %out.thread.i ], [ 0, %land.lhs.true.i103.i.drbg_hash_hashgen.exit_crit_edge ]
  %conv24135.i = zext i8 %conv24135.shrunk.i to i32
  %add27.i = add nuw nsw i32 %retval.0.i114.i, %conv24135.i
  %195 = call ptr @memset(ptr %194, i32 0, i32 %add27.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist.i53) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #11
  %196 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %prefix, ptr %data1, align 4
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %1, align 4
  %198 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %2, ptr %2, align 4
  %199 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %2, ptr %3, align 4
  %200 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %201, ptr noundef nonnull %datalist) #11
  br i1 %call.i.i, label %if.end.i.i, label %drbg_hash_hashgen.exit.list_add_tail.exit_crit_edge

drbg_hash_hashgen.exit.list_add_tail.exit_crit_edge: ; preds = %drbg_hash_hashgen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %drbg_hash_hashgen.exit
  call void @__sanitizer_cov_trace_pc() #13
  %202 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %2, ptr %9, align 4
  %203 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %datalist, ptr %2, align 4
  %204 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %3, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %2, ptr %201, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %drbg_hash_hashgen.exit.list_add_tail.exit_crit_edge
  %206 = ptrtoint ptr %V.i62255 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %V.i62255, align 4
  br i1 %tobool.not.i.i55241, label %list_add_tail.exit.drbg_statelen.exit_crit_edge, label %land.lhs.true.i

list_add_tail.exit.drbg_statelen.exit_crit_edge:  ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

land.lhs.true.i:                                  ; preds = %list_add_tail.exit
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %208 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %209, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_statelen.exit_crit_edge, label %if.then.i

land.lhs.true.i.drbg_statelen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %statelen.i, align 4
  br label %drbg_statelen.exit

drbg_statelen.exit:                               ; preds = %if.then.i, %land.lhs.true.i.drbg_statelen.exit_crit_edge, %list_add_tail.exit.drbg_statelen.exit_crit_edge
  %retval.0.i95 = phi i8 [ %211, %if.then.i ], [ 0, %land.lhs.true.i.drbg_statelen.exit_crit_edge ], [ 0, %list_add_tail.exit.drbg_statelen.exit_crit_edge ]
  %conv = zext i8 %retval.0.i95 to i32
  %212 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %207, ptr %data2, align 4
  %213 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv, ptr %5, align 4
  %214 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %6, ptr %6, align 4
  %215 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %6, ptr %7, align 4
  %216 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %9, align 4
  %call.i.i100 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %217, ptr noundef nonnull %datalist) #11
  br i1 %call.i.i100, label %if.end.i.i102, label %drbg_statelen.exit.list_add_tail.exit103_crit_edge

drbg_statelen.exit.list_add_tail.exit103_crit_edge: ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit103

if.end.i.i102:                                    ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %6, ptr %9, align 4
  %219 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %datalist, ptr %6, align 4
  %220 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %217, ptr %7, align 4
  %221 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %6, ptr %217, align 4
  br label %list_add_tail.exit103

list_add_tail.exit103:                            ; preds = %if.end.i.i102, %drbg_statelen.exit.list_add_tail.exit103_crit_edge
  %222 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %scratchpad.i54234251, align 4
  %priv_data.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %224 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %priv_data.i, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i104, label %if.end.i.i105, label %list_add_tail.exit103.crypto_shash_init.exit.i_crit_edge

list_add_tail.exit103.crypto_shash_init.exit.i_crit_edge: ; preds = %list_add_tail.exit103
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i

if.end.i.i105:                                    ; preds = %list_add_tail.exit103
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %227, i32 0, i32 2, i32 3
  %230 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %231, i32 -256
  %232 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %233(ptr noundef %225) #11
  br label %crypto_shash_init.exit.i

crypto_shash_init.exit.i:                         ; preds = %if.end.i.i105, %list_add_tail.exit103.crypto_shash_init.exit.i_crit_edge
  %234 = ptrtoint ptr %datalist to i32
  call void @__asan_load4_noabort(i32 %234)
  %.pn16.i = load ptr, ptr %datalist, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %datalist
  br i1 %cmp.not17.i, label %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge, label %crypto_shash_init.exit.i.for.body.i_crit_edge

crypto_shash_init.exit.i.for.body.i_crit_edge:    ; preds = %crypto_shash_init.exit.i
  br label %for.body.i

crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %crypto_shash_init.exit.i.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn16.i, %crypto_shash_init.exit.i.for.body.i_crit_edge ]
  %input.0.i = getelementptr i8, ptr %.pn18.i, i32 -8
  %235 = ptrtoint ptr %input.0.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %input.0.i, align 4
  %len.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %237 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len.i, align 4
  %call2.i = call i32 @crypto_shash_update(ptr noundef %225, ptr noundef %236, i32 noundef %238) #11
  %239 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %datalist
  br i1 %cmp.not.i, label %for.body.i.drbg_kcapi_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.drbg_kcapi_hash.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

drbg_kcapi_hash.exit:                             ; preds = %for.body.i.drbg_kcapi_hash.exit_crit_edge, %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge
  %call9.i = call i32 @crypto_shash_final(ptr noundef %225, ptr noundef %223) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool5.not = icmp eq i32 %call9.i, 0
  br i1 %tobool5.not, label %if.end7, label %drbg_kcapi_hash.exit.out_crit_edge

drbg_kcapi_hash.exit.out_crit_edge:               ; preds = %drbg_kcapi_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %drbg_kcapi_hash.exit
  %240 = ptrtoint ptr %V.i62255 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %V.i62255, align 4
  br i1 %tobool.not.i.i55241, label %drbg_add_buf.exit176.thread289, label %land.lhs.true.i109

land.lhs.true.i109:                               ; preds = %if.end7
  %core.i107 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %242 = ptrtoint ptr %core.i107 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %core.i107, align 4
  %tobool1.not.i108 = icmp eq ptr %243, null
  br i1 %tobool1.not.i108, label %land.lhs.true.i109.land.lhs.true.i136_crit_edge, label %land.lhs.true.i117

land.lhs.true.i109.land.lhs.true.i136_crit_edge:  ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i136

land.lhs.true.i117:                               ; preds = %land.lhs.true.i109
  %statelen.i110 = getelementptr inbounds %struct.drbg_core, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %statelen.i110 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %statelen.i110, align 4
  %phi.cast299 = zext i8 %245 to i32
  %246 = ptrtoint ptr %core.i107 to i32
  call void @__asan_load4_noabort(i32 %246)
  %.pr = load ptr, ptr %core.i107, align 4
  %247 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %scratchpad.i54234251, align 4
  %tobool1.not.i116 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i116, label %land.lhs.true.i117.land.lhs.true.i136_crit_edge, label %drbg_blocklen.exit

land.lhs.true.i117.land.lhs.true.i136_crit_edge:  ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i136

drbg_blocklen.exit:                               ; preds = %land.lhs.true.i117
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %.pr, i32 0, i32 2
  %249 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %blocklen_bytes.i, align 1
  %conv13 = zext i8 %250 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool.not38.i = icmp eq i8 %250, 0
  br i1 %tobool.not38.i, label %drbg_blocklen.exit.land.lhs.true.i128_crit_edge, label %while.body.preheader.i

drbg_blocklen.exit.land.lhs.true.i128_crit_edge:  ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i128

while.body.preheader.i:                           ; preds = %drbg_blocklen.exit
  %sub.i120 = add nsw i32 %phi.cast299, -1
  %add.ptr.i121 = getelementptr i8, ptr %241, i32 %sub.i120
  %sub1.i = add nsw i32 %conv13, -1
  %add.ptr2.i = getelementptr i8, ptr %248, i32 %sub1.i
  br label %while.body.i123

while.body.i123:                                  ; preds = %while.body.i123.while.body.i123_crit_edge, %while.body.preheader.i
  %len.042.i = phi i32 [ %dec.i, %while.body.i123.while.body.i123_crit_edge ], [ %conv13, %while.body.preheader.i ]
  %remainder.041.i = phi i32 [ %shr.i, %while.body.i123.while.body.i123_crit_edge ], [ 0, %while.body.preheader.i ]
  %addptr.040.i = phi ptr [ %incdec.ptr7.i, %while.body.i123.while.body.i123_crit_edge ], [ %add.ptr2.i, %while.body.preheader.i ]
  %dstptr.039.i = phi ptr [ %incdec.ptr.i, %while.body.i123.while.body.i123_crit_edge ], [ %add.ptr.i121, %while.body.preheader.i ]
  %251 = ptrtoint ptr %dstptr.039.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %dstptr.039.i, align 1
  %conv.i = zext i8 %252 to i32
  %253 = ptrtoint ptr %addptr.040.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %addptr.040.i, align 1
  %conv3.i = zext i8 %254 to i32
  %add4.i = add nuw nsw i32 %remainder.041.i, %conv.i
  %add5.i = add nuw nsw i32 %add4.i, %conv3.i
  %conv6.i = trunc i32 %add5.i to i8
  store i8 %conv6.i, ptr %dstptr.039.i, align 1
  %shr.i = lshr i32 %add5.i, 8
  %dec.i = add nsw i32 %len.042.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %dstptr.039.i, i32 -1
  %incdec.ptr7.i = getelementptr i8, ptr %addptr.040.i, i32 -1
  %tobool.not.i122 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i122, label %while.end.i, label %while.body.i123.while.body.i123_crit_edge

while.body.i123.while.body.i123_crit_edge:        ; preds = %while.body.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i123

while.end.i:                                      ; preds = %while.body.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add5.i)
  %phi.cmp.i = icmp ult i32 %add5.i, 256
  %sub8.i = sub nsw i32 %phi.cast299, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i)
  %tobool10.not44.i = icmp eq i32 %sub8.i, 0
  %or.cond46.i = select i1 %tobool10.not44.i, i1 true, i1 %phi.cmp.i
  br i1 %or.cond46.i, label %while.end.i.land.lhs.true.i128_crit_edge, label %while.end.i.while.body12.i_crit_edge

while.end.i.while.body12.i_crit_edge:             ; preds = %while.end.i
  br label %while.body12.i

while.end.i.land.lhs.true.i128_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i128

while.body12.i:                                   ; preds = %while.body12.i.while.body12.i_crit_edge, %while.end.i.while.body12.i_crit_edge
  %len.148.i = phi i32 [ %dec18.i, %while.body12.i.while.body12.i_crit_edge ], [ %sub8.i, %while.end.i.while.body12.i_crit_edge ]
  %dstptr.147.i = phi ptr [ %incdec.ptr19.i, %while.body12.i.while.body12.i_crit_edge ], [ %incdec.ptr.i, %while.end.i.while.body12.i_crit_edge ]
  %255 = ptrtoint ptr %dstptr.147.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %dstptr.147.i, align 1
  %add14.i = add i8 %256, 1
  store i8 %add14.i, ptr %dstptr.147.i, align 1
  %dec18.i = add i32 %len.148.i, -1
  %incdec.ptr19.i = getelementptr i8, ptr %dstptr.147.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %tobool10.not.i = icmp eq i32 %dec18.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %256)
  %cmp.not.i124 = icmp ne i8 %256, -1
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %cmp.not.i124
  br i1 %or.cond.i, label %while.body12.i.land.lhs.true.i128_crit_edge, label %while.body12.i.while.body12.i_crit_edge

while.body12.i.while.body12.i_crit_edge:          ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12.i

while.body12.i.land.lhs.true.i128_crit_edge:      ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i128

land.lhs.true.i128:                               ; preds = %while.body12.i.land.lhs.true.i128_crit_edge, %while.end.i.land.lhs.true.i128_crit_edge, %drbg_blocklen.exit.land.lhs.true.i128_crit_edge
  %257 = ptrtoint ptr %core.i107 to i32
  call void @__asan_load4_noabort(i32 %257)
  %.pr349 = load ptr, ptr %core.i107, align 4
  %tobool1.not.i127 = icmp eq ptr %.pr349, null
  br i1 %tobool1.not.i127, label %land.lhs.true.i128.land.lhs.true.i180_crit_edge, label %if.then.i130

land.lhs.true.i128.land.lhs.true.i180_crit_edge:  ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i180

if.then.i130:                                     ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i129 = getelementptr inbounds %struct.drbg_core, ptr %.pr349, i32 0, i32 1
  %258 = ptrtoint ptr %statelen.i129 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %statelen.i129, align 4
  %phi.cast295 = zext i8 %259 to i32
  br label %land.lhs.true.i136

land.lhs.true.i136:                               ; preds = %if.then.i130, %land.lhs.true.i117.land.lhs.true.i136_crit_edge, %land.lhs.true.i109.land.lhs.true.i136_crit_edge
  %retval.0.i131.ph.ph = phi i32 [ %phi.cast295, %if.then.i130 ], [ 0, %land.lhs.true.i117.land.lhs.true.i136_crit_edge ], [ 0, %land.lhs.true.i109.land.lhs.true.i136_crit_edge ]
  %260 = ptrtoint ptr %V.i62255 to i32
  call void @__asan_load4_noabort(i32 %260)
  %.ph = load ptr, ptr %V.i62255, align 4
  %261 = ptrtoint ptr %core.i107 to i32
  call void @__asan_load4_noabort(i32 %261)
  %.pr351 = load ptr, ptr %core.i107, align 4
  %C277 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %262 = ptrtoint ptr %C277 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %C277, align 4
  %tobool1.not.i135 = icmp eq ptr %.pr351, null
  br i1 %tobool1.not.i135, label %land.lhs.true.i136.land.lhs.true.i180_crit_edge, label %drbg_statelen.exit140

land.lhs.true.i136.land.lhs.true.i180_crit_edge:  ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i180

drbg_statelen.exit140:                            ; preds = %land.lhs.true.i136
  %statelen.i137 = getelementptr inbounds %struct.drbg_core, ptr %.pr351, i32 0, i32 1
  %264 = ptrtoint ptr %statelen.i137 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %statelen.i137, align 4
  %conv18 = zext i8 %265 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.not38.i141 = icmp eq i8 %265, 0
  br i1 %tobool.not38.i141, label %drbg_statelen.exit140.land.lhs.true.i180_crit_edge, label %while.body.preheader.i146

drbg_statelen.exit140.land.lhs.true.i180_crit_edge: ; preds = %drbg_statelen.exit140
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i180

while.body.preheader.i146:                        ; preds = %drbg_statelen.exit140
  %sub.i142 = add nsw i32 %retval.0.i131.ph.ph, -1
  %add.ptr.i143 = getelementptr i8, ptr %.ph, i32 %sub.i142
  %sub1.i144 = add nsw i32 %conv18, -1
  %add.ptr2.i145 = getelementptr i8, ptr %263, i32 %sub1.i144
  br label %while.body.i161

while.body.i161:                                  ; preds = %while.body.i161.while.body.i161_crit_edge, %while.body.preheader.i146
  %len.042.i147 = phi i32 [ %dec.i157, %while.body.i161.while.body.i161_crit_edge ], [ %conv18, %while.body.preheader.i146 ]
  %remainder.041.i148 = phi i32 [ %shr.i156, %while.body.i161.while.body.i161_crit_edge ], [ 0, %while.body.preheader.i146 ]
  %addptr.040.i149 = phi ptr [ %incdec.ptr7.i159, %while.body.i161.while.body.i161_crit_edge ], [ %add.ptr2.i145, %while.body.preheader.i146 ]
  %dstptr.039.i150 = phi ptr [ %incdec.ptr.i158, %while.body.i161.while.body.i161_crit_edge ], [ %add.ptr.i143, %while.body.preheader.i146 ]
  %266 = ptrtoint ptr %dstptr.039.i150 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %dstptr.039.i150, align 1
  %conv.i151 = zext i8 %267 to i32
  %268 = ptrtoint ptr %addptr.040.i149 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %addptr.040.i149, align 1
  %conv3.i152 = zext i8 %269 to i32
  %add4.i153 = add nuw nsw i32 %remainder.041.i148, %conv.i151
  %add5.i154 = add nuw nsw i32 %add4.i153, %conv3.i152
  %conv6.i155 = trunc i32 %add5.i154 to i8
  store i8 %conv6.i155, ptr %dstptr.039.i150, align 1
  %shr.i156 = lshr i32 %add5.i154, 8
  %dec.i157 = add nsw i32 %len.042.i147, -1
  %incdec.ptr.i158 = getelementptr i8, ptr %dstptr.039.i150, i32 -1
  %incdec.ptr7.i159 = getelementptr i8, ptr %addptr.040.i149, i32 -1
  %tobool.not.i160 = icmp eq i32 %dec.i157, 0
  br i1 %tobool.not.i160, label %while.end.i166, label %while.body.i161.while.body.i161_crit_edge

while.body.i161.while.body.i161_crit_edge:        ; preds = %while.body.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i161

while.end.i166:                                   ; preds = %while.body.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add5.i154)
  %phi.cmp.i162 = icmp ult i32 %add5.i154, 256
  %sub8.i163 = sub nsw i32 %retval.0.i131.ph.ph, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i163)
  %tobool10.not44.i164 = icmp eq i32 %sub8.i163, 0
  %or.cond46.i165 = select i1 %tobool10.not44.i164, i1 true, i1 %phi.cmp.i162
  br i1 %or.cond46.i165, label %while.end.i166.land.lhs.true.i180_crit_edge, label %while.end.i166.while.body12.i175_crit_edge

while.end.i166.while.body12.i175_crit_edge:       ; preds = %while.end.i166
  br label %while.body12.i175

while.end.i166.land.lhs.true.i180_crit_edge:      ; preds = %while.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i180

while.body12.i175:                                ; preds = %while.body12.i175.while.body12.i175_crit_edge, %while.end.i166.while.body12.i175_crit_edge
  %len.148.i167 = phi i32 [ %dec18.i170, %while.body12.i175.while.body12.i175_crit_edge ], [ %sub8.i163, %while.end.i166.while.body12.i175_crit_edge ]
  %dstptr.147.i168 = phi ptr [ %incdec.ptr19.i171, %while.body12.i175.while.body12.i175_crit_edge ], [ %incdec.ptr.i158, %while.end.i166.while.body12.i175_crit_edge ]
  %270 = ptrtoint ptr %dstptr.147.i168 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %dstptr.147.i168, align 1
  %add14.i169 = add i8 %271, 1
  store i8 %add14.i169, ptr %dstptr.147.i168, align 1
  %dec18.i170 = add i32 %len.148.i167, -1
  %incdec.ptr19.i171 = getelementptr i8, ptr %dstptr.147.i168, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i170)
  %tobool10.not.i172 = icmp eq i32 %dec18.i170, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %271)
  %cmp.not.i173 = icmp ne i8 %271, -1
  %or.cond.i174 = select i1 %tobool10.not.i172, i1 true, i1 %cmp.not.i173
  br i1 %or.cond.i174, label %while.body12.i175.land.lhs.true.i180_crit_edge, label %while.body12.i175.while.body12.i175_crit_edge

while.body12.i175.while.body12.i175_crit_edge:    ; preds = %while.body12.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12.i175

while.body12.i175.land.lhs.true.i180_crit_edge:   ; preds = %while.body12.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i180

drbg_add_buf.exit176.thread289:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %reseed_ctr290 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 5
  %272 = ptrtoint ptr %reseed_ctr290 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %reseed_ctr290, align 4
  %conv19291 = zext i32 %273 to i64
  %u.sroa.11.0.extract.shift328 = lshr i64 %conv19291, 24
  %u.sroa.11.0.extract.trunc329 = trunc i64 %u.sroa.11.0.extract.shift328 to i8
  %u.sroa.12.0.extract.shift334 = lshr i64 %conv19291, 16
  %u.sroa.12.0.extract.trunc335 = trunc i64 %u.sroa.12.0.extract.shift334 to i8
  %u.sroa.13.0.extract.shift340 = lshr i64 %conv19291, 8
  %u.sroa.13.0.extract.trunc341 = trunc i64 %u.sroa.13.0.extract.shift340 to i8
  %274 = ptrtoint ptr %V.i62255 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %V.i62255, align 4
  br label %drbg_statelen.exit184

land.lhs.true.i180:                               ; preds = %while.body12.i175.land.lhs.true.i180_crit_edge, %while.end.i166.land.lhs.true.i180_crit_edge, %drbg_statelen.exit140.land.lhs.true.i180_crit_edge, %land.lhs.true.i136.land.lhs.true.i180_crit_edge, %land.lhs.true.i128.land.lhs.true.i180_crit_edge
  %.sink.in = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 5
  %276 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %276)
  %.sink = load i32, ptr %.sink.in, align 4
  %conv19 = zext i32 %.sink to i64
  %u.sroa.11.0.extract.shift = lshr i64 %conv19, 24
  %u.sroa.11.0.extract.trunc = trunc i64 %u.sroa.11.0.extract.shift to i8
  %u.sroa.12.0.extract.shift = lshr i64 %conv19, 16
  %u.sroa.12.0.extract.trunc = trunc i64 %u.sroa.12.0.extract.shift to i8
  %u.sroa.13.0.extract.shift = lshr i64 %conv19, 8
  %u.sroa.13.0.extract.trunc = trunc i64 %u.sroa.13.0.extract.shift to i8
  %277 = ptrtoint ptr %V.i62255 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %V.i62255, align 4
  %279 = ptrtoint ptr %core.i107 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %core.i107, align 4
  %tobool1.not.i179 = icmp eq ptr %280, null
  br i1 %tobool1.not.i179, label %land.lhs.true.i180.drbg_statelen.exit184_crit_edge, label %if.then.i182

land.lhs.true.i180.drbg_statelen.exit184_crit_edge: ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit184

if.then.i182:                                     ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i181 = getelementptr inbounds %struct.drbg_core, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %statelen.i181 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %statelen.i181, align 4
  %phi.cast296 = zext i8 %282 to i32
  br label %drbg_statelen.exit184

drbg_statelen.exit184:                            ; preds = %if.then.i182, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge, %drbg_add_buf.exit176.thread289
  %u.sroa.14.1 = phi i32 [ %273, %drbg_add_buf.exit176.thread289 ], [ %.sink, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %.sink, %if.then.i182 ]
  %u.sroa.13.1 = phi i8 [ %u.sroa.13.0.extract.trunc341, %drbg_add_buf.exit176.thread289 ], [ %u.sroa.13.0.extract.trunc, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %u.sroa.13.0.extract.trunc, %if.then.i182 ]
  %u.sroa.12.1 = phi i8 [ %u.sroa.12.0.extract.trunc335, %drbg_add_buf.exit176.thread289 ], [ %u.sroa.12.0.extract.trunc, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %u.sroa.12.0.extract.trunc, %if.then.i182 ]
  %u.sroa.11.1 = phi i8 [ %u.sroa.11.0.extract.trunc329, %drbg_add_buf.exit176.thread289 ], [ %u.sroa.11.0.extract.trunc, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %u.sroa.11.0.extract.trunc, %if.then.i182 ]
  %283 = phi ptr [ %275, %drbg_add_buf.exit176.thread289 ], [ %278, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %278, %if.then.i182 ]
  %retval.0.i183 = phi i32 [ 0, %drbg_add_buf.exit176.thread289 ], [ 0, %land.lhs.true.i180.drbg_statelen.exit184_crit_edge ], [ %phi.cast296, %if.then.i182 ]
  %sub.i185 = add nsw i32 %retval.0.i183, -1
  %add.ptr.i186 = getelementptr i8, ptr %283, i32 %sub.i185
  %284 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %add.ptr.i186, align 1
  %conv.i193 = zext i8 %285 to i32
  %conv3.i194 = and i32 %u.sroa.14.1, 255
  %add5.i196 = add nuw nsw i32 %conv3.i194, %conv.i193
  %conv6.i197 = trunc i32 %add5.i196 to i8
  store i8 %conv6.i197, ptr %add.ptr.i186, align 1
  %shr.i198 = lshr i32 %add5.i196, 8
  %incdec.ptr.i200 = getelementptr i8, ptr %add.ptr.i186, i32 -1
  %286 = ptrtoint ptr %incdec.ptr.i200 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %incdec.ptr.i200, align 1
  %conv.i193.1 = zext i8 %287 to i32
  %conv3.i194.1 = zext i8 %u.sroa.13.1 to i32
  %add4.i195.1 = add nuw nsw i32 %shr.i198, %conv.i193.1
  %add5.i196.1 = add nuw nsw i32 %add4.i195.1, %conv3.i194.1
  %conv6.i197.1 = trunc i32 %add5.i196.1 to i8
  store i8 %conv6.i197.1, ptr %incdec.ptr.i200, align 1
  %shr.i198.1 = lshr i32 %add5.i196.1, 8
  %incdec.ptr.i200.1 = getelementptr i8, ptr %incdec.ptr.i200, i32 -1
  %288 = ptrtoint ptr %incdec.ptr.i200.1 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %incdec.ptr.i200.1, align 1
  %conv.i193.2 = zext i8 %289 to i32
  %conv3.i194.2 = zext i8 %u.sroa.12.1 to i32
  %add4.i195.2 = add nuw nsw i32 %shr.i198.1, %conv.i193.2
  %add5.i196.2 = add nuw nsw i32 %add4.i195.2, %conv3.i194.2
  %conv6.i197.2 = trunc i32 %add5.i196.2 to i8
  store i8 %conv6.i197.2, ptr %incdec.ptr.i200.1, align 1
  %shr.i198.2 = lshr i32 %add5.i196.2, 8
  %incdec.ptr.i200.2 = getelementptr i8, ptr %incdec.ptr.i200.1, i32 -1
  %290 = ptrtoint ptr %incdec.ptr.i200.2 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %incdec.ptr.i200.2, align 1
  %conv.i193.3 = zext i8 %291 to i32
  %conv3.i194.3 = zext i8 %u.sroa.11.1 to i32
  %add4.i195.3 = add nuw nsw i32 %shr.i198.2, %conv.i193.3
  %add5.i196.3 = add nuw nsw i32 %add4.i195.3, %conv3.i194.3
  %conv6.i197.3 = trunc i32 %add5.i196.3 to i8
  store i8 %conv6.i197.3, ptr %incdec.ptr.i200.2, align 1
  %shr.i198.3 = lshr i32 %add5.i196.3, 8
  %incdec.ptr.i200.3 = getelementptr i8, ptr %incdec.ptr.i200.2, i32 -1
  %292 = ptrtoint ptr %incdec.ptr.i200.3 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %incdec.ptr.i200.3, align 1
  %conv.i193.4 = zext i8 %293 to i32
  %add4.i195.4 = add nuw nsw i32 %shr.i198.3, %conv.i193.4
  %conv6.i197.4 = trunc i32 %add4.i195.4 to i8
  store i8 %conv6.i197.4, ptr %incdec.ptr.i200.3, align 1
  %shr.i198.4 = lshr i32 %add4.i195.4, 8
  %incdec.ptr.i200.4 = getelementptr i8, ptr %incdec.ptr.i200.3, i32 -1
  %294 = ptrtoint ptr %incdec.ptr.i200.4 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %incdec.ptr.i200.4, align 1
  %conv.i193.5 = zext i8 %295 to i32
  %add4.i195.5 = add nuw nsw i32 %shr.i198.4, %conv.i193.5
  %conv6.i197.5 = trunc i32 %add4.i195.5 to i8
  store i8 %conv6.i197.5, ptr %incdec.ptr.i200.4, align 1
  %shr.i198.5 = lshr i32 %add4.i195.5, 8
  %incdec.ptr.i200.5 = getelementptr i8, ptr %incdec.ptr.i200.4, i32 -1
  %296 = ptrtoint ptr %incdec.ptr.i200.5 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %incdec.ptr.i200.5, align 1
  %conv.i193.6 = zext i8 %297 to i32
  %add4.i195.6 = add nuw nsw i32 %shr.i198.5, %conv.i193.6
  %conv6.i197.6 = trunc i32 %add4.i195.6 to i8
  store i8 %conv6.i197.6, ptr %incdec.ptr.i200.5, align 1
  %shr.i198.6 = lshr i32 %add4.i195.6, 8
  %incdec.ptr.i200.6 = getelementptr i8, ptr %incdec.ptr.i200.5, i32 -1
  %298 = ptrtoint ptr %incdec.ptr.i200.6 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %incdec.ptr.i200.6, align 1
  %conv.i193.7 = zext i8 %299 to i32
  %add4.i195.7 = add nuw nsw i32 %shr.i198.6, %conv.i193.7
  %conv6.i197.7 = trunc i32 %add4.i195.7 to i8
  store i8 %conv6.i197.7, ptr %incdec.ptr.i200.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add4.i195.7)
  %phi.cmp.i204 = icmp ult i32 %add4.i195.7, 256
  %sub8.i205 = add nsw i32 %retval.0.i183, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i205)
  %tobool10.not44.i206 = icmp eq i32 %sub8.i205, 0
  %or.cond46.i207 = select i1 %tobool10.not44.i206, i1 true, i1 %phi.cmp.i204
  br i1 %or.cond46.i207, label %drbg_statelen.exit184.out_crit_edge, label %drbg_statelen.exit184.while.body12.i217_crit_edge

drbg_statelen.exit184.while.body12.i217_crit_edge: ; preds = %drbg_statelen.exit184
  br label %while.body12.i217

drbg_statelen.exit184.out_crit_edge:              ; preds = %drbg_statelen.exit184
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body12.i217:                                ; preds = %while.body12.i217.while.body12.i217_crit_edge, %drbg_statelen.exit184.while.body12.i217_crit_edge
  %len.148.i209 = phi i32 [ %dec18.i212, %while.body12.i217.while.body12.i217_crit_edge ], [ %sub8.i205, %drbg_statelen.exit184.while.body12.i217_crit_edge ]
  %dstptr.147.i210.pn = phi ptr [ %dstptr.147.i210, %while.body12.i217.while.body12.i217_crit_edge ], [ %incdec.ptr.i200.6, %drbg_statelen.exit184.while.body12.i217_crit_edge ]
  %dstptr.147.i210 = getelementptr i8, ptr %dstptr.147.i210.pn, i32 -1
  %300 = ptrtoint ptr %dstptr.147.i210 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %dstptr.147.i210, align 1
  %add14.i211 = add i8 %301, 1
  store i8 %add14.i211, ptr %dstptr.147.i210, align 1
  %dec18.i212 = add i32 %len.148.i209, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i212)
  %tobool10.not.i214 = icmp eq i32 %dec18.i212, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %301)
  %cmp.not.i215 = icmp ne i8 %301, -1
  %or.cond.i216 = select i1 %tobool10.not.i214, i1 true, i1 %cmp.not.i215
  br i1 %or.cond.i216, label %while.body12.i217.out_crit_edge, label %while.body12.i217.while.body12.i217_crit_edge

while.body12.i217.while.body12.i217_crit_edge:    ; preds = %while.body12.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12.i217

while.body12.i217.out_crit_edge:                  ; preds = %while.body12.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %while.body12.i217.out_crit_edge, %drbg_statelen.exit184.out_crit_edge, %drbg_kcapi_hash.exit.out_crit_edge
  %len.0 = phi i32 [ %call9.i, %drbg_kcapi_hash.exit.out_crit_edge ], [ %len.2167.i, %drbg_statelen.exit184.out_crit_edge ], [ %len.2167.i, %while.body12.i217.out_crit_edge ]
  %302 = ptrtoint ptr %scratchpad.i54234251 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %scratchpad.i54234251, align 4
  br i1 %tobool.not.i.i55241, label %out.drbg_blocklen.exit226_crit_edge, label %land.lhs.true.i222

out.drbg_blocklen.exit226_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit226

land.lhs.true.i222:                               ; preds = %out
  %core.i220 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %304 = ptrtoint ptr %core.i220 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %core.i220, align 4
  %tobool1.not.i221 = icmp eq ptr %305, null
  br i1 %tobool1.not.i221, label %land.lhs.true.i222.drbg_blocklen.exit226_crit_edge, label %if.then.i224

land.lhs.true.i222.drbg_blocklen.exit226_crit_edge: ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit226

if.then.i224:                                     ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i223 = getelementptr inbounds %struct.drbg_core, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %blocklen_bytes.i223 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %blocklen_bytes.i223, align 1
  %phi.cast = zext i8 %307 to i32
  br label %drbg_blocklen.exit226

drbg_blocklen.exit226:                            ; preds = %if.then.i224, %land.lhs.true.i222.drbg_blocklen.exit226_crit_edge, %out.drbg_blocklen.exit226_crit_edge
  %retval.0.i225 = phi i32 [ %phi.cast, %if.then.i224 ], [ 0, %land.lhs.true.i222.drbg_blocklen.exit226_crit_edge ], [ 0, %out.drbg_blocklen.exit226_crit_edge ]
  %308 = call ptr @memset(ptr %303, i32 0, i32 %retval.0.i225)
  br label %cleanup

cleanup:                                          ; preds = %drbg_blocklen.exit226, %drbg_hash_process_addtl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %drbg_blocklen.exit226 ], [ %call9.i.i, %drbg_hash_process_addtl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datalist) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbg_hash_df(ptr noundef readonly %drbg, ptr nocapture noundef writeonly %outval, i32 noundef %outlen, ptr noundef %entropylist) unnamed_addr #5 align 64 {
entry:
  %input = alloca [5 x i8], align 1
  %data = alloca %struct.drbg_string, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %input) #11
  %0 = getelementptr inbounds [5 x i8], ptr %input, i32 0, i32 1
  %scratchpad = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 7
  %1 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scratchpad, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %entry.drbg_statelen.exit_crit_edge, label %land.lhs.true.i

entry.drbg_statelen.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

land.lhs.true.i:                                  ; preds = %entry
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %3 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_statelen.exit_crit_edge, label %if.then.i

land.lhs.true.i.drbg_statelen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %statelen.i, align 4
  %phi.cast = zext i8 %6 to i32
  br label %drbg_statelen.exit

drbg_statelen.exit:                               ; preds = %if.then.i, %land.lhs.true.i.drbg_statelen.exit_crit_edge, %entry.drbg_statelen.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 0, %land.lhs.true.i.drbg_statelen.exit_crit_edge ], [ 0, %entry.drbg_statelen.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 %retval.0.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #11
  %7 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 1
  %8 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drbg_string, ptr %data, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %input, align 1
  %mul = shl i32 %outlen, 3
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %0, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %input, ptr %data, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %8, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %8, ptr %9, align 4
  %16 = ptrtoint ptr %entropylist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entropylist, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %entropylist, ptr noundef %17) #11
  br i1 %call.i.i, label %if.end.i.i, label %drbg_statelen.exit.list_add.exit_crit_edge

drbg_statelen.exit.list_add.exit_crit_edge:       ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %drbg_statelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %8, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entropylist, ptr %9, align 4
  %21 = ptrtoint ptr %entropylist to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %8, ptr %entropylist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %drbg_statelen.exit.list_add.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outlen)
  %cmp72.not = icmp eq i32 %outlen, 0
  br i1 %cmp72.not, label %list_add.exit.out_crit_edge, label %while.body.lr.ph

list_add.exit.out_crit_edge:                      ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %list_add.exit
  %priv_data.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %core.i43 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %len.073 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %22 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv_data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i41, label %while.body.crypto_shash_init.exit.i_crit_edge

while.body.crypto_shash_init.exit.i_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_shash_init.exit.i

if.end.i.i41:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %25, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 -256
  %30 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %31(ptr noundef %23) #11
  br label %crypto_shash_init.exit.i

crypto_shash_init.exit.i:                         ; preds = %if.end.i.i41, %while.body.crypto_shash_init.exit.i_crit_edge
  %32 = ptrtoint ptr %entropylist to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn16.i = load ptr, ptr %entropylist, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %entropylist
  br i1 %cmp.not17.i, label %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge, label %crypto_shash_init.exit.i.for.body.i_crit_edge

crypto_shash_init.exit.i.for.body.i_crit_edge:    ; preds = %crypto_shash_init.exit.i
  br label %for.body.i

crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %crypto_shash_init.exit.i.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn16.i, %crypto_shash_init.exit.i.for.body.i_crit_edge ]
  %input.0.i = getelementptr i8, ptr %.pn18.i, i32 -8
  %33 = ptrtoint ptr %input.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input.0.i, align 4
  %len.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %call2.i = call i32 @crypto_shash_update(ptr noundef %23, ptr noundef %34, i32 noundef %36) #11
  %37 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entropylist
  br i1 %cmp.not.i, label %for.body.i.drbg_kcapi_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.drbg_kcapi_hash.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_hash.exit

drbg_kcapi_hash.exit:                             ; preds = %for.body.i.drbg_kcapi_hash.exit_crit_edge, %crypto_shash_init.exit.i.drbg_kcapi_hash.exit_crit_edge
  %call9.i = call i32 @crypto_shash_final(ptr noundef %23, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %if.end, label %drbg_kcapi_hash.exit.out_crit_edge

drbg_kcapi_hash.exit.out_crit_edge:               ; preds = %drbg_kcapi_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %drbg_kcapi_hash.exit
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %input, align 1
  %inc = add i8 %39, 1
  store i8 %inc, ptr %input, align 1
  br i1 %tobool.not.i, label %drbg_blocklen.exit.thread, label %land.lhs.true.i45

land.lhs.true.i45:                                ; preds = %if.end
  %40 = ptrtoint ptr %core.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core.i43, align 4
  %tobool1.not.i44 = icmp eq ptr %41, null
  br i1 %tobool1.not.i44, label %land.lhs.true.i45.drbg_blocklen.exit_crit_edge, label %if.then.i46

land.lhs.true.i45.drbg_blocklen.exit_crit_edge:   ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

if.then.i46:                                      ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %blocklen_bytes.i, align 1
  br label %drbg_blocklen.exit

drbg_blocklen.exit:                               ; preds = %if.then.i46, %land.lhs.true.i45.drbg_blocklen.exit_crit_edge
  %retval.0.i47 = phi i8 [ %43, %if.then.i46 ], [ 0, %land.lhs.true.i45.drbg_blocklen.exit_crit_edge ]
  %conv6 = zext i8 %retval.0.i47 to i32
  %sub = sub i32 %outlen, %len.073
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv6)
  %cmp7 = icmp ugt i32 %sub, %conv6
  br i1 %cmp7, label %land.lhs.true.i51.critedge, label %drbg_blocklen.exit.cleanup_crit_edge

drbg_blocklen.exit.cleanup_crit_edge:             ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

drbg_blocklen.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %len.073, i32 %outlen)
  %cmp767.not = icmp eq i32 %len.073, %outlen
  br i1 %cmp767.not, label %drbg_blocklen.exit.thread.cleanup_crit_edge, label %drbg_blocklen.exit.thread.drbg_blocklen.exit55_crit_edge

drbg_blocklen.exit.thread.drbg_blocklen.exit55_crit_edge: ; preds = %drbg_blocklen.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit55

drbg_blocklen.exit.thread.cleanup_crit_edge:      ; preds = %drbg_blocklen.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i51.critedge:                       ; preds = %drbg_blocklen.exit
  %44 = ptrtoint ptr %core.i43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core.i43, align 4
  %tobool1.not.i50 = icmp eq ptr %45, null
  br i1 %tobool1.not.i50, label %land.lhs.true.i51.critedge.drbg_blocklen.exit55_crit_edge, label %if.then.i53

land.lhs.true.i51.critedge.drbg_blocklen.exit55_crit_edge: ; preds = %land.lhs.true.i51.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit55

if.then.i53:                                      ; preds = %land.lhs.true.i51.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i52 = getelementptr inbounds %struct.drbg_core, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %blocklen_bytes.i52 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %blocklen_bytes.i52, align 1
  br label %drbg_blocklen.exit55

drbg_blocklen.exit55:                             ; preds = %if.then.i53, %land.lhs.true.i51.critedge.drbg_blocklen.exit55_crit_edge, %drbg_blocklen.exit.thread.drbg_blocklen.exit55_crit_edge
  %retval.0.i54 = phi i8 [ %47, %if.then.i53 ], [ 0, %land.lhs.true.i51.critedge.drbg_blocklen.exit55_crit_edge ], [ 0, %drbg_blocklen.exit.thread.drbg_blocklen.exit55_crit_edge ]
  %conv10 = zext i8 %retval.0.i54 to i32
  br label %cleanup

cleanup:                                          ; preds = %drbg_blocklen.exit55, %drbg_blocklen.exit.thread.cleanup_crit_edge, %drbg_blocklen.exit.cleanup_crit_edge
  %cond = phi i32 [ %conv10, %drbg_blocklen.exit55 ], [ %sub, %drbg_blocklen.exit.cleanup_crit_edge ], [ 0, %drbg_blocklen.exit.thread.cleanup_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %outval, i32 %len.073
  %48 = and i32 %cond, 65535
  %49 = call ptr @memcpy(ptr %add.ptr13, ptr %add.ptr, i32 %48)
  %add = add i32 %48, %len.073
  %cmp = icmp ult i32 %add, %outlen
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %cleanup.out_crit_edge, %drbg_kcapi_hash.exit.out_crit_edge, %list_add.exit.out_crit_edge
  %ret.1 = phi i32 [ 0, %list_add.exit.out_crit_edge ], [ %call9.i, %drbg_kcapi_hash.exit.out_crit_edge ], [ 0, %cleanup.out_crit_edge ]
  br i1 %tobool.not.i, label %out.drbg_blocklen.exit63_crit_edge, label %land.lhs.true.i59

out.drbg_blocklen.exit63_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit63

land.lhs.true.i59:                                ; preds = %out
  %core.i57 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %50 = ptrtoint ptr %core.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core.i57, align 4
  %tobool1.not.i58 = icmp eq ptr %51, null
  br i1 %tobool1.not.i58, label %land.lhs.true.i59.drbg_blocklen.exit63_crit_edge, label %if.then.i61

land.lhs.true.i59.drbg_blocklen.exit63_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit63

if.then.i61:                                      ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i60 = getelementptr inbounds %struct.drbg_core, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %blocklen_bytes.i60 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %blocklen_bytes.i60, align 1
  %phi.cast71 = zext i8 %53 to i32
  br label %drbg_blocklen.exit63

drbg_blocklen.exit63:                             ; preds = %if.then.i61, %land.lhs.true.i59.drbg_blocklen.exit63_crit_edge, %out.drbg_blocklen.exit63_crit_edge
  %retval.0.i62 = phi i32 [ %phi.cast71, %if.then.i61 ], [ 0, %land.lhs.true.i59.drbg_blocklen.exit63_crit_edge ], [ 0, %out.drbg_blocklen.exit63_crit_edge ]
  %54 = call ptr @memset(ptr %add.ptr, i32 0, i32 %retval.0.i62)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %input) #11
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_ctr_update(ptr noundef %drbg, ptr noundef %seed, i32 noundef %reseed) #5 align 64 {
entry:
  %data.i.i = alloca %struct.drbg_string, align 4
  %L_N.i = alloca [8 x i8], align 4
  %S1.i = alloca %struct.drbg_string, align 4
  %S2.i = alloca %struct.drbg_string, align 4
  %S4.i = alloca %struct.drbg_string, align 4
  %cipherin.i = alloca %struct.drbg_string, align 4
  %bcc_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scratchpad = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 7
  %0 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scratchpad, align 4
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %drbg_blocklen.exit.thread, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %core.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %2 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_blocklen.exit_crit_edge, label %if.then.i105

land.lhs.true.i.drbg_blocklen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

if.then.i105:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i = getelementptr inbounds %struct.drbg_core, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %statelen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %statelen.i, align 4
  %conv219 = zext i8 %5 to i32
  %add.ptr220 = getelementptr i8, ptr %1, i32 %conv219
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blocklen_bytes.i, align 1
  br label %drbg_blocklen.exit

drbg_blocklen.exit:                               ; preds = %if.then.i105, %land.lhs.true.i.drbg_blocklen.exit_crit_edge
  %add.ptr220339 = phi ptr [ %add.ptr220, %if.then.i105 ], [ %1, %land.lhs.true.i.drbg_blocklen.exit_crit_edge ]
  %retval.0.i106 = phi i8 [ %7, %if.then.i105 ], [ 0, %land.lhs.true.i.drbg_blocklen.exit_crit_edge ]
  %conv3 = zext i8 %retval.0.i106 to i32
  %add.ptr4 = getelementptr i8, ptr %add.ptr220339, i32 %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reseed)
  %cmp = icmp slt i32 %reseed, 3
  br i1 %cmp, label %land.lhs.true.i110.critedge, label %drbg_blocklen.exit.if.end17_crit_edge

drbg_blocklen.exit.if.end17_crit_edge:            ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

drbg_blocklen.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reseed)
  %cmp227 = icmp slt i32 %reseed, 3
  br i1 %cmp227, label %if.end.thread, label %if.end17.thread

land.lhs.true.i110.critedge:                      ; preds = %drbg_blocklen.exit
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %tobool1.not.i109 = icmp eq ptr %9, null
  br i1 %tobool1.not.i109, label %land.lhs.true.i110.critedge.if.end_crit_edge, label %if.then.i112

land.lhs.true.i110.critedge.if.end_crit_edge:     ; preds = %land.lhs.true.i110.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i112:                                     ; preds = %land.lhs.true.i110.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i111 = getelementptr inbounds %struct.drbg_core, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %statelen.i111 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %statelen.i111, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i112, %land.lhs.true.i110.critedge.if.end_crit_edge
  %retval.0.i113 = phi i8 [ %11, %if.then.i112 ], [ 0, %land.lhs.true.i110.critedge.if.end_crit_edge ]
  %conv7 = zext i8 %retval.0.i113 to i32
  %12 = call ptr @memset(ptr %add.ptr4, i32 0, i32 %conv7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reseed)
  %tobool.not = icmp eq i32 %reseed, 0
  br i1 %tobool.not, label %if.then8, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.thread:                                    ; preds = %drbg_blocklen.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reseed)
  %tobool.not343 = icmp eq i32 %reseed, 0
  br i1 %tobool.not343, label %if.then8.thread, label %if.end17.thread348

if.then8.thread:                                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %V346 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %13 = ptrtoint ptr %V346 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %V346, align 4
  br label %drbg_blocklen.exit122

if.then8:                                         ; preds = %if.end
  %V = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %15 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %V, align 4
  br i1 %tobool.not.i, label %if.then8.drbg_blocklen.exit122_crit_edge, label %land.lhs.true.i118

if.then8.drbg_blocklen.exit122_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit122

land.lhs.true.i118:                               ; preds = %if.then8
  %core.i116 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %17 = ptrtoint ptr %core.i116 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i116, align 4
  %tobool1.not.i117 = icmp eq ptr %18, null
  br i1 %tobool1.not.i117, label %land.lhs.true.i118.drbg_blocklen.exit122_crit_edge, label %if.then.i120

land.lhs.true.i118.drbg_blocklen.exit122_crit_edge: ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit122

if.then.i120:                                     ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i119 = getelementptr inbounds %struct.drbg_core, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %blocklen_bytes.i119 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %blocklen_bytes.i119, align 1
  br label %drbg_blocklen.exit122

drbg_blocklen.exit122:                            ; preds = %if.then.i120, %land.lhs.true.i118.drbg_blocklen.exit122_crit_edge, %if.then8.drbg_blocklen.exit122_crit_edge, %if.then8.thread
  %21 = phi ptr [ %16, %if.then.i120 ], [ %16, %land.lhs.true.i118.drbg_blocklen.exit122_crit_edge ], [ %16, %if.then8.drbg_blocklen.exit122_crit_edge ], [ %14, %if.then8.thread ]
  %add.ptr4228231344347 = phi ptr [ %add.ptr4, %if.then.i120 ], [ %add.ptr4, %land.lhs.true.i118.drbg_blocklen.exit122_crit_edge ], [ %add.ptr4, %if.then8.drbg_blocklen.exit122_crit_edge ], [ %1, %if.then8.thread ]
  %retval.0.i121 = phi i8 [ %20, %if.then.i120 ], [ 0, %land.lhs.true.i118.drbg_blocklen.exit122_crit_edge ], [ 0, %if.then8.drbg_blocklen.exit122_crit_edge ], [ 0, %if.then8.thread ]
  %conv10 = zext i8 %retval.0.i121 to i32
  tail call void @crypto_inc(ptr noundef %21, i32 noundef %conv10) #11
  %ctr_handle = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %22 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctr_handle, align 4
  %C = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 3
  %24 = ptrtoint ptr %C to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %C, align 4
  br i1 %tobool.not.i, label %drbg_keylen.exit.thread, label %land.lhs.true.i126

land.lhs.true.i126:                               ; preds = %drbg_blocklen.exit122
  %core.i124 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %26 = ptrtoint ptr %core.i124 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i124, align 4
  %tobool1.not.i125 = icmp eq ptr %27, null
  br i1 %tobool1.not.i125, label %land.lhs.true.i126.drbg_keylen.exit_crit_edge, label %if.then.i129

land.lhs.true.i126.drbg_keylen.exit_crit_edge:    ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_keylen.exit

if.then.i129:                                     ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i127 = getelementptr inbounds %struct.drbg_core, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %statelen.i127 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %statelen.i127, align 4
  %blocklen_bytes.i128 = getelementptr inbounds %struct.drbg_core, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %blocklen_bytes.i128 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %blocklen_bytes.i128, align 1
  %sub.i = sub i8 %29, %31
  br label %drbg_keylen.exit

drbg_keylen.exit:                                 ; preds = %if.then.i129, %land.lhs.true.i126.drbg_keylen.exit_crit_edge
  %retval.0.i130 = phi i8 [ %sub.i, %if.then.i129 ], [ 0, %land.lhs.true.i126.drbg_keylen.exit_crit_edge ]
  %conv12 = zext i8 %retval.0.i130 to i32
  %call13 = tail call i32 @crypto_skcipher_setkey(ptr noundef %23, ptr noundef %25, i32 noundef %conv12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %drbg_keylen.exit.if.end17_crit_edge, label %drbg_keylen.exit.land.lhs.true.i197_crit_edge

drbg_keylen.exit.land.lhs.true.i197_crit_edge:    ; preds = %drbg_keylen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i197

drbg_keylen.exit.if.end17_crit_edge:              ; preds = %drbg_keylen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

drbg_keylen.exit.thread:                          ; preds = %drbg_blocklen.exit122
  %call13306 = tail call i32 @crypto_skcipher_setkey(ptr noundef %23, ptr noundef %25, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13306)
  %tobool14.not307 = icmp eq i32 %call13306, 0
  br i1 %tobool14.not307, label %if.end17.thread311, label %drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge

drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge: ; preds = %drbg_keylen.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit217

if.end17:                                         ; preds = %drbg_keylen.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge, %drbg_blocklen.exit.if.end17_crit_edge
  %add.ptr4229235 = phi ptr [ %add.ptr4228231344347, %drbg_keylen.exit.if.end17_crit_edge ], [ %add.ptr4, %if.end.if.end17_crit_edge ], [ %add.ptr4, %drbg_blocklen.exit.if.end17_crit_edge ]
  %tobool18.not = icmp eq ptr %seed, null
  br i1 %tobool18.not, label %if.end17.if.end26_crit_edge, label %if.then19

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end17.thread348:                               ; preds = %if.end.thread
  %tobool18.not350 = icmp eq ptr %seed, null
  br i1 %tobool18.not350, label %if.end17.thread348.drbg_statelen.exit157_crit_edge, label %if.end17.thread348.drbg_statelen.exit138_crit_edge

if.end17.thread348.drbg_statelen.exit138_crit_edge: ; preds = %if.end17.thread348
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit138

if.end17.thread348.drbg_statelen.exit157_crit_edge: ; preds = %if.end17.thread348
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

if.end17.thread311:                               ; preds = %drbg_keylen.exit.thread
  %tobool18.not313 = icmp eq ptr %seed, null
  br i1 %tobool18.not313, label %if.end17.thread311.drbg_statelen.exit157_crit_edge, label %if.end17.thread311.drbg_statelen.exit138_crit_edge

if.end17.thread311.drbg_statelen.exit138_crit_edge: ; preds = %if.end17.thread311
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit138

if.end17.thread311.drbg_statelen.exit157_crit_edge: ; preds = %if.end17.thread311
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

if.end17.thread:                                  ; preds = %drbg_blocklen.exit.thread
  %tobool18.not281 = icmp eq ptr %seed, null
  br i1 %tobool18.not281, label %if.end17.thread.drbg_statelen.exit157_crit_edge, label %if.end17.thread.drbg_statelen.exit138_crit_edge

if.end17.thread.drbg_statelen.exit138_crit_edge:  ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit138

if.end17.thread.drbg_statelen.exit157_crit_edge:  ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

if.then19:                                        ; preds = %if.end17
  br i1 %tobool.not.i, label %if.then19.drbg_statelen.exit138_crit_edge, label %land.lhs.true.i134

if.then19.drbg_statelen.exit138_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit138

land.lhs.true.i134:                               ; preds = %if.then19
  %core.i132 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %32 = ptrtoint ptr %core.i132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i132, align 4
  %tobool1.not.i133 = icmp eq ptr %33, null
  br i1 %tobool1.not.i133, label %land.lhs.true.i134.drbg_statelen.exit138_crit_edge, label %if.then.i136

land.lhs.true.i134.drbg_statelen.exit138_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit138

if.then.i136:                                     ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i135 = getelementptr inbounds %struct.drbg_core, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %statelen.i135 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %statelen.i135, align 4
  br label %drbg_statelen.exit138

drbg_statelen.exit138:                            ; preds = %if.then.i136, %land.lhs.true.i134.drbg_statelen.exit138_crit_edge, %if.then19.drbg_statelen.exit138_crit_edge, %if.end17.thread.drbg_statelen.exit138_crit_edge, %if.end17.thread311.drbg_statelen.exit138_crit_edge, %if.end17.thread348.drbg_statelen.exit138_crit_edge
  %add.ptr4229235282285 = phi ptr [ %add.ptr4229235, %if.then.i136 ], [ %add.ptr4229235, %land.lhs.true.i134.drbg_statelen.exit138_crit_edge ], [ %add.ptr4229235, %if.then19.drbg_statelen.exit138_crit_edge ], [ %1, %if.end17.thread.drbg_statelen.exit138_crit_edge ], [ %add.ptr4228231344347, %if.end17.thread311.drbg_statelen.exit138_crit_edge ], [ %1, %if.end17.thread348.drbg_statelen.exit138_crit_edge ]
  %retval.0.i137 = phi i8 [ %35, %if.then.i136 ], [ 0, %land.lhs.true.i134.drbg_statelen.exit138_crit_edge ], [ 0, %if.then19.drbg_statelen.exit138_crit_edge ], [ 0, %if.end17.thread.drbg_statelen.exit138_crit_edge ], [ 0, %if.end17.thread311.drbg_statelen.exit138_crit_edge ], [ 0, %if.end17.thread348.drbg_statelen.exit138_crit_edge ]
  %conv21 = zext i8 %retval.0.i137 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %L_N.i) #11
  %36 = getelementptr inbounds [8 x i8], ptr %L_N.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S1.i) #11
  %37 = getelementptr inbounds %struct.drbg_string, ptr %S1.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.drbg_string, ptr %S1.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.drbg_string, ptr %S1.i, i32 0, i32 2, i32 1
  %40 = call ptr @memset(ptr %S1.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S2.i) #11
  %41 = getelementptr inbounds %struct.drbg_string, ptr %S2.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.drbg_string, ptr %S2.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.drbg_string, ptr %S2.i, i32 0, i32 2, i32 1
  %44 = call ptr @memset(ptr %S2.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S4.i) #11
  %45 = getelementptr inbounds %struct.drbg_string, ptr %S4.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.drbg_string, ptr %S4.i, i32 0, i32 2
  %47 = getelementptr inbounds %struct.drbg_string, ptr %S4.i, i32 0, i32 2, i32 1
  %48 = call ptr @memset(ptr %S4.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cipherin.i) #11
  %49 = getelementptr inbounds %struct.drbg_string, ptr %cipherin.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.drbg_string, ptr %cipherin.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.drbg_string, ptr %cipherin.i, i32 0, i32 2, i32 1
  %52 = call ptr @memset(ptr %cipherin.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bcc_list.i) #11
  %53 = getelementptr inbounds %struct.list_head, ptr %bcc_list.i, i32 0, i32 1
  %54 = ptrtoint ptr %bcc_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %bcc_list.i, ptr %bcc_list.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bcc_list.i, ptr %53, align 4
  br i1 %tobool.not.i, label %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge, label %land.lhs.true.i.i

drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge: ; preds = %drbg_statelen.exit138
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit193.i

land.lhs.true.i.i:                                ; preds = %drbg_statelen.exit138
  %core.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %56 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge, label %if.then.i183.i

land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i189.i

if.then.i183.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i.i = getelementptr inbounds %struct.drbg_core, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %statelen.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %statelen.i.i, align 4
  %conv348.i = zext i8 %59 to i32
  %add.ptr349.i = getelementptr i8, ptr %add.ptr4229235282285, i32 %conv348.i
  %blocklen_bytes.i.i = getelementptr inbounds %struct.drbg_core, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %blocklen_bytes.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %blocklen_bytes.i.i, align 1
  %conv2354.i = zext i8 %61 to i32
  %add.ptr3355.i = getelementptr i8, ptr %add.ptr349.i, i32 %conv2354.i
  %add.ptr6364.i = getelementptr i8, ptr %add.ptr3355.i, i32 %conv2354.i
  br label %land.lhs.true.i189.i

land.lhs.true.i189.i:                             ; preds = %if.then.i183.i, %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge
  %add.ptr6364471.i = phi ptr [ %add.ptr6364.i, %if.then.i183.i ], [ %add.ptr4229235282285, %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge ]
  %add.ptr349454460470.i = phi ptr [ %add.ptr349.i, %if.then.i183.i ], [ %add.ptr4229235282285, %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge ]
  %add.ptr3355461469.i = phi ptr [ %add.ptr3355.i, %if.then.i183.i ], [ %add.ptr4229235282285, %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge ]
  %retval.0.i184.ph.i = phi i8 [ %61, %if.then.i183.i ], [ 0, %land.lhs.true.i.i.land.lhs.true.i189.i_crit_edge ]
  %conv8375.i = zext i8 %retval.0.i184.ph.i to i32
  %62 = call ptr @memset(ptr %add.ptr349454460470.i, i32 0, i32 %conv8375.i)
  %63 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core.i.i, align 4
  %tobool1.not.i188.i = icmp eq ptr %64, null
  br i1 %tobool1.not.i188.i, label %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge, label %if.then.i191.i

land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge: ; preds = %land.lhs.true.i189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit193.i

if.then.i191.i:                                   ; preds = %land.lhs.true.i189.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i190.i = getelementptr inbounds %struct.drbg_core, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %blocklen_bytes.i190.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %blocklen_bytes.i190.i, align 1
  br label %drbg_blocklen.exit193.i

drbg_blocklen.exit193.i:                          ; preds = %if.then.i191.i, %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge, %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge
  %add.ptr3359366381.i = phi ptr [ %add.ptr3355461469.i, %if.then.i191.i ], [ %add.ptr3355461469.i, %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge ], [ %add.ptr4229235282285, %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge ]
  %add.ptr351357368379.i = phi ptr [ %add.ptr349454460470.i, %if.then.i191.i ], [ %add.ptr349454460470.i, %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge ], [ %add.ptr4229235282285, %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge ]
  %add.ptr6370377.i = phi ptr [ %add.ptr6364471.i, %if.then.i191.i ], [ %add.ptr6364471.i, %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge ], [ %add.ptr4229235282285, %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge ]
  %retval.0.i192.i = phi i8 [ %66, %if.then.i191.i ], [ 0, %land.lhs.true.i189.i.drbg_blocklen.exit193.i_crit_edge ], [ 0, %drbg_statelen.exit138.drbg_blocklen.exit193.i_crit_edge ]
  %conv10.i = zext i8 %retval.0.i192.i to i32
  %67 = call ptr @memset(ptr %add.ptr3359366381.i, i32 0, i32 %conv10.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %retval.0.i137)
  %cmp.i = icmp ugt i8 %retval.0.i137, 64
  br i1 %cmp.i, label %drbg_ctr_df.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %drbg_blocklen.exit193.i
  %68 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn440.i = load ptr, ptr %seed, align 4
  %cmp14.not441.i = icmp eq ptr %.pn440.i, %seed
  br i1 %cmp14.not441.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn443.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn440.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inputlen.0442.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len.i = getelementptr i8, ptr %.pn443.i, i32 -4
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  %add.i = add i32 %70, %inputlen.0442.i
  %71 = ptrtoint ptr %.pn443.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i = load ptr, ptr %.pn443.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %seed
  br i1 %cmp14.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %inputlen.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %72 = ptrtoint ptr %L_N.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inputlen.0.lcssa.i, ptr %L_N.i, align 4
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv21, ptr %36, align 4
  %add23.i = add i32 %inputlen.0.lcssa.i, 9
  br i1 %tobool.not.i, label %if.end29.thread.i, label %land.lhs.true.i197.i

land.lhs.true.i197.i:                             ; preds = %for.end.i
  %core.i195.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %74 = ptrtoint ptr %core.i195.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core.i195.i, align 4
  %tobool1.not.i196.i = icmp eq ptr %75, null
  br i1 %tobool1.not.i196.i, label %land.lhs.true.i197.i.drbg_blocklen.exit209.i_crit_edge, label %drbg_blocklen.exit201.i.thread

land.lhs.true.i197.i.drbg_blocklen.exit209.i_crit_edge: ; preds = %land.lhs.true.i197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit209.i

drbg_blocklen.exit201.i.thread:                   ; preds = %land.lhs.true.i197.i
  %blocklen_bytes.i198.i = getelementptr inbounds %struct.drbg_core, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %blocklen_bytes.i198.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %blocklen_bytes.i198.i, align 1
  %conv25.i237 = zext i8 %77 to i32
  %rem.i238 = urem i32 %add23.i, %conv25.i237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i238)
  %tobool.not.i139239 = icmp eq i32 %rem.i238, 0
  br i1 %tobool.not.i139239, label %drbg_blocklen.exit201.i.thread.land.lhs.true.i213.i_crit_edge, label %if.then.i207.i

drbg_blocklen.exit201.i.thread.land.lhs.true.i213.i_crit_edge: ; preds = %drbg_blocklen.exit201.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i213.i

if.end29.thread.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %add.ptr351357368379.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -128, ptr %add.ptr351357368379.i, align 1
  br label %drbg_blocklen.exit217.i

if.then.i207.i:                                   ; preds = %drbg_blocklen.exit201.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %blocklen_bytes.i198.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %blocklen_bytes.i198.i, align 1
  br label %drbg_blocklen.exit209.i

drbg_blocklen.exit209.i:                          ; preds = %if.then.i207.i, %land.lhs.true.i197.i.drbg_blocklen.exit209.i_crit_edge
  %rem.i240243 = phi i32 [ %rem.i238, %if.then.i207.i ], [ poison, %land.lhs.true.i197.i.drbg_blocklen.exit209.i_crit_edge ]
  %retval.0.i208.i = phi i8 [ %80, %if.then.i207.i ], [ 0, %land.lhs.true.i197.i.drbg_blocklen.exit209.i_crit_edge ]
  %conv28.i = zext i8 %retval.0.i208.i to i32
  %sub.i140 = sub nsw i32 1, %rem.i240243
  %phi.bo.i = add nsw i32 %sub.i140, %conv28.i
  br label %land.lhs.true.i213.i

land.lhs.true.i213.i:                             ; preds = %drbg_blocklen.exit209.i, %drbg_blocklen.exit201.i.thread.land.lhs.true.i213.i_crit_edge
  %padlen.0.i = phi i32 [ %phi.bo.i, %drbg_blocklen.exit209.i ], [ 1, %drbg_blocklen.exit201.i.thread.land.lhs.true.i213.i_crit_edge ]
  %81 = ptrtoint ptr %add.ptr351357368379.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -128, ptr %add.ptr351357368379.i, align 1
  %82 = ptrtoint ptr %core.i195.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %core.i195.i, align 4
  %tobool1.not.i212.i = icmp eq ptr %83, null
  br i1 %tobool1.not.i212.i, label %land.lhs.true.i213.i.drbg_blocklen.exit217.i_crit_edge, label %if.then.i215.i

land.lhs.true.i213.i.drbg_blocklen.exit217.i_crit_edge: ; preds = %land.lhs.true.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit217.i

if.then.i215.i:                                   ; preds = %land.lhs.true.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i214.i = getelementptr inbounds %struct.drbg_core, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %blocklen_bytes.i214.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %blocklen_bytes.i214.i, align 1
  br label %drbg_blocklen.exit217.i

drbg_blocklen.exit217.i:                          ; preds = %if.then.i215.i, %land.lhs.true.i213.i.drbg_blocklen.exit217.i_crit_edge, %if.end29.thread.i
  %padlen.0390.i = phi i32 [ %padlen.0.i, %if.then.i215.i ], [ %padlen.0.i, %land.lhs.true.i213.i.drbg_blocklen.exit217.i_crit_edge ], [ 1, %if.end29.thread.i ]
  %retval.0.i216.i = phi i8 [ %85, %if.then.i215.i ], [ 0, %land.lhs.true.i213.i.drbg_blocklen.exit217.i_crit_edge ], [ 0, %if.end29.thread.i ]
  %conv32.i = zext i8 %retval.0.i216.i to i32
  %86 = ptrtoint ptr %S1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr3359366381.i, ptr %S1.i, align 4
  %87 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv32.i, ptr %37, align 4
  %88 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %38, ptr %38, align 4
  %89 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %38, ptr %39, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef nonnull %bcc_list.i, ptr noundef nonnull %bcc_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %drbg_blocklen.exit217.i.list_add_tail.exit.i_crit_edge

drbg_blocklen.exit217.i.list_add_tail.exit.i_crit_edge: ; preds = %drbg_blocklen.exit217.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %drbg_blocklen.exit217.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %38, ptr %53, align 4
  %91 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %bcc_list.i, ptr %38, align 4
  %92 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %bcc_list.i, ptr %39, align 4
  %93 = ptrtoint ptr %bcc_list.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %38, ptr %bcc_list.i, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %drbg_blocklen.exit217.i.list_add_tail.exit.i_crit_edge
  %94 = ptrtoint ptr %S2.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %L_N.i, ptr %S2.i, align 4
  %95 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %41, align 4
  %96 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %42, ptr %42, align 4
  %97 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %42, ptr %43, align 4
  %98 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %53, align 4
  %call.i.i222.i = call zeroext i1 @__list_add_valid(ptr noundef %42, ptr noundef %99, ptr noundef nonnull %bcc_list.i) #11
  br i1 %call.i.i222.i, label %if.end.i.i224.i, label %list_add_tail.exit.i.list_add_tail.exit225.i_crit_edge

list_add_tail.exit.i.list_add_tail.exit225.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit225.i

if.end.i.i224.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %42, ptr %53, align 4
  %101 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %bcc_list.i, ptr %42, align 4
  %102 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %43, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %42, ptr %99, align 4
  br label %list_add_tail.exit225.i

list_add_tail.exit225.i:                          ; preds = %if.end.i.i224.i, %list_add_tail.exit.i.list_add_tail.exit225.i_crit_edge
  %104 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %seed, align 4
  %cmp.i.not.i.i = icmp eq ptr %105, %seed
  br i1 %cmp.i.not.i.i, label %list_add_tail.exit225.i.list_splice_tail.exit.i_crit_edge, label %if.then.i228.i

list_add_tail.exit225.i.list_splice_tail.exit.i_crit_edge: ; preds = %list_add_tail.exit225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit.i

if.then.i228.i:                                   ; preds = %list_add_tail.exit225.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %53, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %seed, i32 0, i32 1
  %108 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i227.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %110 = ptrtoint ptr %prev3.i.i227.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i227.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %105, ptr %107, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %bcc_list.i, ptr %109, align 4
  store ptr %109, ptr %53, align 4
  br label %list_splice_tail.exit.i

list_splice_tail.exit.i:                          ; preds = %if.then.i228.i, %list_add_tail.exit225.i.list_splice_tail.exit.i_crit_edge
  %113 = ptrtoint ptr %S4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr351357368379.i, ptr %S4.i, align 4
  %114 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %padlen.0390.i, ptr %45, align 4
  %115 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %46, ptr %46, align 4
  %116 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %46, ptr %47, align 4
  %117 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %53, align 4
  %call.i.i233.i = call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %118, ptr noundef nonnull %bcc_list.i) #11
  br i1 %call.i.i233.i, label %if.end.i.i235.i, label %list_splice_tail.exit.i.list_add_tail.exit236.i_crit_edge

list_splice_tail.exit.i.list_add_tail.exit236.i_crit_edge: ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit236.i

if.end.i.i235.i:                                  ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %46, ptr %53, align 4
  %120 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %bcc_list.i, ptr %46, align 4
  %121 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %47, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %46, ptr %118, align 4
  br label %list_add_tail.exit236.i

list_add_tail.exit236.i:                          ; preds = %if.end.i.i235.i, %list_splice_tail.exit.i.list_add_tail.exit236.i_crit_edge
  br i1 %tobool.not.i, label %drbg_blocklen.exit280.i, label %land.lhs.true.i240.lr.ph.i

land.lhs.true.i240.lr.ph.i:                       ; preds = %list_add_tail.exit236.i
  %core.i238.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %123 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 1
  %124 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 2
  %125 = getelementptr inbounds %struct.drbg_string, ptr %data.i.i, i32 0, i32 2, i32 1
  %priv_data.i31.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %126 = ptrtoint ptr %core.i238.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %core.i238.i, align 4
  %tobool1.not.i239.i329 = icmp eq ptr %127, null
  br i1 %tobool1.not.i239.i329, label %land.lhs.true.i240.lr.ph.i.land.lhs.true.i.i287.i_crit_edge, label %drbg_blocklen.exit252.i.thread.preheader

land.lhs.true.i240.lr.ph.i.land.lhs.true.i.i287.i_crit_edge: ; preds = %land.lhs.true.i240.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i287.i

drbg_blocklen.exit252.i.thread.preheader:         ; preds = %land.lhs.true.i240.lr.ph.i
  %statelen.i241.i388 = getelementptr inbounds %struct.drbg_core, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %statelen.i241.i388 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %statelen.i241.i388, align 4
  %blocklen_bytes.i242.i389 = getelementptr inbounds %struct.drbg_core, ptr %127, i32 0, i32 2
  %130 = ptrtoint ptr %blocklen_bytes.i242.i389 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %blocklen_bytes.i242.i389, align 1
  %sub.i.i390 = sub i8 %129, %131
  %conv37392476.i246391 = zext i8 %sub.i.i390 to i32
  %conv39.i247392 = zext i8 %131 to i32
  %add40.i248393 = sub nsw i32 0, %conv39.i247392
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37392476.i246391, i32 %add40.i248393)
  %cmp41.i249394.not = icmp eq i32 %conv37392476.i246391, %add40.i248393
  br i1 %cmp41.i249394.not, label %drbg_blocklen.exit252.i.thread.preheader.if.then.i.i290.i_crit_edge, label %drbg_blocklen.exit252.i.thread.preheader.land.lhs.true.i.i.i_crit_edge

drbg_blocklen.exit252.i.thread.preheader.land.lhs.true.i.i.i_crit_edge: ; preds = %drbg_blocklen.exit252.i.thread.preheader
  br label %land.lhs.true.i.i.i

drbg_blocklen.exit252.i.thread.preheader.if.then.i.i290.i_crit_edge: ; preds = %drbg_blocklen.exit252.i.thread.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i290.i

land.lhs.true.i.i.i:                              ; preds = %drbg_blocklen.exit262.i.land.lhs.true.i.i.i_crit_edge, %drbg_blocklen.exit252.i.thread.preheader.land.lhs.true.i.i.i_crit_edge
  %i.0445.i330396 = phi i32 [ %inc48.i, %drbg_blocklen.exit262.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %drbg_blocklen.exit252.i.thread.preheader.land.lhs.true.i.i.i_crit_edge ]
  %templen.0444.i331395 = phi i32 [ %add51.i, %drbg_blocklen.exit262.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %drbg_blocklen.exit252.i.thread.preheader.land.lhs.true.i.i.i_crit_edge ]
  %132 = ptrtoint ptr %add.ptr3359366381.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %i.0445.i330396, ptr %add.ptr3359366381.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %add.ptr6370377.i, i32 %templen.0444.i331395
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i.i) #11
  %133 = call ptr @memset(ptr %data.i.i, i32 255, i32 16)
  %134 = ptrtoint ptr %core.i238.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %core.i238.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %135, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.thread.i, label %if.then.i.i.i.i

land.lhs.true.i.i.i.thread.i:                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr43.i, ptr %data.i.i, align 4
  %137 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %123, align 4
  %138 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %124, ptr %124, align 4
  %139 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %124, ptr %125, align 4
  br label %drbg_kcapi_symsetkey.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i.i.i = getelementptr inbounds %struct.drbg_core, ptr %135, i32 0, i32 2
  %140 = ptrtoint ptr %blocklen_bytes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %blocklen_bytes.i.i.i, align 1
  %phi.cast.i.i = zext i8 %141 to i32
  %142 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr43.i, ptr %data.i.i, align 4
  %143 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %phi.cast.i.i, ptr %123, align 4
  %144 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %124, ptr %124, align 4
  %145 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %124, ptr %125, align 4
  %statelen.i.i.i.i = getelementptr inbounds %struct.drbg_core, ptr %135, i32 0, i32 1
  %146 = ptrtoint ptr %statelen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %statelen.i.i.i.i, align 4
  %148 = load i8, ptr %blocklen_bytes.i.i.i, align 1
  %sub.i.i.i.i = sub i8 %147, %148
  %phi.cast.i.i.i = zext i8 %sub.i.i.i.i to i32
  br label %drbg_kcapi_symsetkey.exit.i.i

drbg_kcapi_symsetkey.exit.i.i:                    ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.thread.i
  %retval.0.i.i.i.i = phi i32 [ %phi.cast.i.i.i, %if.then.i.i.i.i ], [ 0, %land.lhs.true.i.i.i.thread.i ]
  %149 = ptrtoint ptr %priv_data.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv_data.i31.i.i, align 4
  %call1.i.i.i = call i32 @crypto_cipher_setkey(ptr noundef %150, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.i.i.i) #11
  %151 = ptrtoint ptr %bcc_list.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pn44.i.i = load ptr, ptr %bcc_list.i, align 4
  %cmp.not45.i.i = icmp eq ptr %.pn44.i.i, %bcc_list.i
  br i1 %cmp.not45.i.i, label %drbg_kcapi_symsetkey.exit.i.i.land.lhs.true.i258.i_crit_edge, label %drbg_kcapi_symsetkey.exit.i.i.for.body.i.i_crit_edge

drbg_kcapi_symsetkey.exit.i.i.for.body.i.i_crit_edge: ; preds = %drbg_kcapi_symsetkey.exit.i.i
  br label %for.body.i.i

drbg_kcapi_symsetkey.exit.i.i.land.lhs.true.i258.i_crit_edge: ; preds = %drbg_kcapi_symsetkey.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i258.i

for.cond.loopexit.i.i:                            ; preds = %if.end11.i.i.for.cond.loopexit.i.i_crit_edge, %for.body.i.i.for.cond.loopexit.i.i_crit_edge
  %cnt.1.lcssa.i.i = phi i16 [ %cnt.046.i.i, %for.body.i.i.for.cond.loopexit.i.i_crit_edge ], [ %inc.i.i, %if.end11.i.i.for.cond.loopexit.i.i_crit_edge ]
  %152 = ptrtoint ptr %.pn47.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pn.i.i = load ptr, ptr %.pn47.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bcc_list.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %drbg_kcapi_symsetkey.exit.i.i.for.body.i.i_crit_edge
  %.pn47.i.i = phi ptr [ %.pn.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ], [ %.pn44.i.i, %drbg_kcapi_symsetkey.exit.i.i.for.body.i.i_crit_edge ]
  %cnt.046.i.i = phi i16 [ %cnt.1.lcssa.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ], [ 0, %drbg_kcapi_symsetkey.exit.i.i.for.body.i.i_crit_edge ]
  %len2.i253.i = getelementptr i8, ptr %.pn47.i.i, i32 -4
  %153 = ptrtoint ptr %len2.i253.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len2.i253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not40.i.i = icmp eq i32 %154, 0
  br i1 %tobool.not40.i.i, label %for.body.i.i.for.cond.loopexit.i.i_crit_edge, label %while.body.preheader.i.i

for.body.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

while.body.preheader.i.i:                         ; preds = %for.body.i.i
  %curr.0.i.i = getelementptr i8, ptr %.pn47.i.i, i32 -8
  %155 = ptrtoint ptr %curr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %curr.0.i.i, align 4
  br label %land.lhs.true.i5.i.i

land.lhs.true.i5.i.i:                             ; preds = %if.end11.i.i.land.lhs.true.i5.i.i_crit_edge, %while.body.preheader.i.i
  %len.043.i.i = phi i32 [ %dec.i.i, %if.end11.i.i.land.lhs.true.i5.i.i_crit_edge ], [ %154, %while.body.preheader.i.i ]
  %pos.042.i.i = phi ptr [ %incdec.ptr.i.i, %if.end11.i.i.land.lhs.true.i5.i.i_crit_edge ], [ %156, %while.body.preheader.i.i ]
  %cnt.141.i.i = phi i16 [ %inc.i.i, %if.end11.i.i.land.lhs.true.i5.i.i_crit_edge ], [ %cnt.046.i.i, %while.body.preheader.i.i ]
  %157 = ptrtoint ptr %core.i238.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %core.i238.i, align 4
  %tobool1.not.i4.i.i = icmp eq ptr %158, null
  br i1 %tobool1.not.i4.i.i, label %drbg_blocklen.exit9.i.i, label %drbg_blocklen.exit9.i.thread.i

drbg_blocklen.exit9.i.i:                          ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cnt.141.i.i)
  %cmp6.i.i = icmp eq i16 %cnt.141.i.i, 0
  br i1 %cmp6.i.i, label %drbg_blocklen.exit9.i.i.drbg_kcapi_sym.exit.i.i_crit_edge, label %drbg_blocklen.exit9.i.i.if.end11.i.i_crit_edge

drbg_blocklen.exit9.i.i.if.end11.i.i_crit_edge:   ; preds = %drbg_blocklen.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

drbg_blocklen.exit9.i.i.drbg_kcapi_sym.exit.i.i_crit_edge: ; preds = %drbg_blocklen.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_sym.exit.i.i

drbg_blocklen.exit9.i.thread.i:                   ; preds = %land.lhs.true.i5.i.i
  %blocklen_bytes.i6.i.i = getelementptr inbounds %struct.drbg_core, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %blocklen_bytes.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %blocklen_bytes.i6.i.i, align 1
  %conv4.i398.i = zext i8 %160 to i32
  %conv5.i399.i = sext i16 %cnt.141.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i398.i, i32 %conv5.i399.i)
  %cmp6.i400.i = icmp eq i32 %conv4.i398.i, %conv5.i399.i
  br i1 %cmp6.i400.i, label %drbg_blocklen.exit.i.i.i, label %drbg_blocklen.exit9.i.thread.i.if.end11.i.i_crit_edge

drbg_blocklen.exit9.i.thread.i.if.end11.i.i_crit_edge: ; preds = %drbg_blocklen.exit9.i.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

drbg_blocklen.exit.i.i.i:                         ; preds = %drbg_blocklen.exit9.i.thread.i
  %161 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %conv4.i398.i)
  %cmp.i.i.i = icmp ult i32 %162, %conv4.i398.i
  br i1 %cmp.i.i.i, label %do.body3.i.i.i, label %drbg_blocklen.exit.i.i.i.drbg_kcapi_sym.exit.i.i_crit_edge, !prof !149

drbg_blocklen.exit.i.i.i.drbg_kcapi_sym.exit.i.i_crit_edge: ; preds = %drbg_blocklen.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_sym.exit.i.i

do.body3.i.i.i:                                   ; preds = %drbg_blocklen.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1834, 0\0A.popsection", ""() #11, !srcloc !150
  unreachable

drbg_kcapi_sym.exit.i.i:                          ; preds = %drbg_blocklen.exit.i.i.i.drbg_kcapi_sym.exit.i.i_crit_edge, %drbg_blocklen.exit9.i.i.drbg_kcapi_sym.exit.i.i_crit_edge
  %163 = ptrtoint ptr %priv_data.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %priv_data.i31.i.i, align 4
  %165 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %164, ptr noundef %add.ptr43.i, ptr noundef %166) #11
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %drbg_kcapi_sym.exit.i.i, %drbg_blocklen.exit9.i.thread.i.if.end11.i.i_crit_edge, %drbg_blocklen.exit9.i.i.if.end11.i.i_crit_edge
  %cnt.2.i.i = phi i16 [ 0, %drbg_kcapi_sym.exit.i.i ], [ %cnt.141.i.i, %drbg_blocklen.exit9.i.i.if.end11.i.i_crit_edge ], [ %cnt.141.i.i, %drbg_blocklen.exit9.i.thread.i.if.end11.i.i_crit_edge ]
  %167 = ptrtoint ptr %pos.042.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %pos.042.i.i, align 1
  %idxprom.i.i = sext i16 %cnt.2.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr43.i, i32 %idxprom.i.i
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i.i, align 1
  %xor1.i.i = xor i8 %170, %168
  store i8 %xor1.i.i, ptr %arrayidx.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %pos.042.i.i, i32 1
  %inc.i.i = add i16 %cnt.2.i.i, 1
  %dec.i.i = add i32 %len.043.i.i, -1
  %tobool.not.i254.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i254.i, label %if.end11.i.i.for.cond.loopexit.i.i_crit_edge, label %if.end11.i.i.land.lhs.true.i5.i.i_crit_edge

if.end11.i.i.land.lhs.true.i5.i.i_crit_edge:      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i5.i.i

if.end11.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

for.end.i.i:                                      ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cnt.1.lcssa.i.i)
  %tobool21.not.i.i = icmp eq i16 %cnt.1.lcssa.i.i, 0
  br i1 %tobool21.not.i.i, label %for.end.i.i.land.lhs.true.i258.i_crit_edge, label %land.lhs.true.i.i22.i.i

for.end.i.i.land.lhs.true.i258.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i258.i

land.lhs.true.i.i22.i.i:                          ; preds = %for.end.i.i
  %171 = ptrtoint ptr %priv_data.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %priv_data.i31.i.i, align 4
  %173 = ptrtoint ptr %core.i238.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %core.i238.i, align 4
  %tobool1.not.i.i21.i.i = icmp eq ptr %174, null
  br i1 %tobool1.not.i.i21.i.i, label %land.lhs.true.i.i22.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge, label %drbg_blocklen.exit.i26.i.i

land.lhs.true.i.i22.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge: ; preds = %land.lhs.true.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_sym.exit28.i.i

drbg_blocklen.exit.i26.i.i:                       ; preds = %land.lhs.true.i.i22.i.i
  %175 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %123, align 4
  %blocklen_bytes.i.i23.i.i = getelementptr inbounds %struct.drbg_core, ptr %174, i32 0, i32 2
  %177 = ptrtoint ptr %blocklen_bytes.i.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %blocklen_bytes.i.i23.i.i, align 1
  %phi.cast.i24.i.i = zext i8 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %phi.cast.i24.i.i)
  %cmp.i25.i.i = icmp ult i32 %176, %phi.cast.i24.i.i
  br i1 %cmp.i25.i.i, label %do.body3.i27.i.i, label %drbg_blocklen.exit.i26.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge, !prof !149

drbg_blocklen.exit.i26.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge: ; preds = %drbg_blocklen.exit.i26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_kcapi_sym.exit28.i.i

do.body3.i27.i.i:                                 ; preds = %drbg_blocklen.exit.i26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1834, 0\0A.popsection", ""() #11, !srcloc !150
  unreachable

drbg_kcapi_sym.exit28.i.i:                        ; preds = %drbg_blocklen.exit.i26.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge, %land.lhs.true.i.i22.i.i.drbg_kcapi_sym.exit28.i.i_crit_edge
  %179 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %data.i.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %172, ptr noundef %add.ptr43.i, ptr noundef %180) #11
  br label %land.lhs.true.i258.i

land.lhs.true.i258.i:                             ; preds = %drbg_kcapi_sym.exit28.i.i, %for.end.i.i.land.lhs.true.i258.i_crit_edge, %drbg_kcapi_symsetkey.exit.i.i.land.lhs.true.i258.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i.i) #11
  %181 = ptrtoint ptr %core.i238.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %core.i238.i, align 4
  %tobool1.not.i257.i = icmp eq ptr %182, null
  br i1 %tobool1.not.i257.i, label %land.lhs.true.i258.i.land.lhs.true.i.i287.i_crit_edge, label %drbg_blocklen.exit262.i

land.lhs.true.i258.i.land.lhs.true.i.i287.i_crit_edge: ; preds = %land.lhs.true.i258.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i287.i

drbg_blocklen.exit262.i:                          ; preds = %land.lhs.true.i258.i
  %inc48.i = add i32 %i.0445.i330396, 1
  %blocklen_bytes.i259.i = getelementptr inbounds %struct.drbg_core, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %blocklen_bytes.i259.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %blocklen_bytes.i259.i, align 1
  %conv50.i = zext i8 %184 to i32
  %add51.i = add i32 %templen.0444.i331395, %conv50.i
  %statelen.i241.i = getelementptr inbounds %struct.drbg_core, ptr %182, i32 0, i32 1
  %185 = ptrtoint ptr %statelen.i241.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %statelen.i241.i, align 4
  %sub.i.i = sub i8 %186, %184
  %conv37392476.i246 = zext i8 %sub.i.i to i32
  %conv39.i247 = zext i8 %184 to i32
  %add40.i248 = add nuw nsw i32 %conv37392476.i246, %conv39.i247
  %cmp41.i249 = icmp ult i32 %add51.i, %add40.i248
  br i1 %cmp41.i249, label %drbg_blocklen.exit262.i.land.lhs.true.i.i.i_crit_edge, label %drbg_blocklen.exit262.i.if.then.i.i290.i_crit_edge

drbg_blocklen.exit262.i.if.then.i.i290.i_crit_edge: ; preds = %drbg_blocklen.exit262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i290.i

drbg_blocklen.exit262.i.land.lhs.true.i.i.i_crit_edge: ; preds = %drbg_blocklen.exit262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i.i

drbg_blocklen.exit280.i:                          ; preds = %list_add_tail.exit236.i
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %cipherin.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %add.ptr6370377.i, ptr %cipherin.i, align 4
  %188 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %49, align 4
  %189 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %50, ptr %50, align 4
  %190 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %50, ptr %51, align 4
  br label %drbg_kcapi_symsetkey.exit.i

land.lhs.true.i.i287.i:                           ; preds = %land.lhs.true.i258.i.land.lhs.true.i.i287.i_crit_edge, %land.lhs.true.i240.lr.ph.i.land.lhs.true.i.i287.i_crit_edge
  %191 = ptrtoint ptr %cipherin.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %add.ptr6370377.i, ptr %cipherin.i, align 4
  %192 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %49, align 4
  %193 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %50, ptr %50, align 4
  %194 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %50, ptr %51, align 4
  br label %drbg_kcapi_symsetkey.exit.i

if.then.i.i290.i:                                 ; preds = %drbg_blocklen.exit262.i.if.then.i.i290.i_crit_edge, %drbg_blocklen.exit252.i.thread.preheader.if.then.i.i290.i_crit_edge
  %.lcssa = phi ptr [ %127, %drbg_blocklen.exit252.i.thread.preheader.if.then.i.i290.i_crit_edge ], [ %182, %drbg_blocklen.exit262.i.if.then.i.i290.i_crit_edge ]
  %statelen.i241.i.le = getelementptr inbounds %struct.drbg_core, ptr %.lcssa, i32 0, i32 1
  %blocklen_bytes.i242.i.le = getelementptr inbounds %struct.drbg_core, ptr %.lcssa, i32 0, i32 2
  %195 = ptrtoint ptr %statelen.i241.i.le to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %statelen.i241.i.le, align 4
  %197 = ptrtoint ptr %blocklen_bytes.i242.i.le to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %blocklen_bytes.i242.i.le, align 1
  %sub.i269.i = sub i8 %196, %198
  %phi.cast.i = zext i8 %sub.i269.i to i32
  %add.ptr54.i = getelementptr i8, ptr %add.ptr6370377.i, i32 %phi.cast.i
  %phi.cast435.i = zext i8 %198 to i32
  %199 = ptrtoint ptr %cipherin.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %add.ptr54.i, ptr %cipherin.i, align 4
  %200 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %phi.cast435.i, ptr %49, align 4
  %201 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %50, ptr %50, align 4
  %202 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %50, ptr %51, align 4
  %203 = load i8, ptr %statelen.i241.i.le, align 4
  %204 = load i8, ptr %blocklen_bytes.i242.i.le, align 1
  %sub.i.i.i = sub i8 %203, %204
  %phi.cast.i289.i = zext i8 %sub.i.i.i to i32
  br label %drbg_kcapi_symsetkey.exit.i

drbg_kcapi_symsetkey.exit.i:                      ; preds = %if.then.i.i290.i, %land.lhs.true.i.i287.i, %drbg_blocklen.exit280.i
  %priv_data.i417.i = phi ptr [ %priv_data.i31.i.i, %if.then.i.i290.i ], [ %priv_data.i31.i.i, %land.lhs.true.i.i287.i ], [ inttoptr (i32 124 to ptr), %drbg_blocklen.exit280.i ]
  %add.ptr54409415.i = phi ptr [ %add.ptr54.i, %if.then.i.i290.i ], [ %add.ptr6370377.i, %land.lhs.true.i.i287.i ], [ %add.ptr6370377.i, %drbg_blocklen.exit280.i ]
  %retval.0.i.i.i = phi i32 [ %phi.cast.i289.i, %if.then.i.i290.i ], [ 0, %land.lhs.true.i.i287.i ], [ 0, %drbg_blocklen.exit280.i ]
  %205 = ptrtoint ptr %priv_data.i417.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv_data.i417.i, align 4
  %call1.i.i = call i32 @crypto_cipher_setkey(ptr noundef %206, ptr noundef %add.ptr6370377.i, i32 noundef %retval.0.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i137)
  %cmp58446.not.i = icmp eq i8 %retval.0.i137, 0
  br i1 %cmp58446.not.i, label %drbg_kcapi_symsetkey.exit.i.out.i_crit_edge, label %while.body60.lr.ph.i

drbg_kcapi_symsetkey.exit.i.out.i_crit_edge:      ; preds = %drbg_kcapi_symsetkey.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.body60.lr.ph.i:                             ; preds = %drbg_kcapi_symsetkey.exit.i
  %core.i.i293.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  br label %while.body60.i

while.body60.i:                                   ; preds = %cond.end.i.while.body60.i_crit_edge, %while.body60.lr.ph.i
  %generated_len.0447.i = phi i32 [ 0, %while.body60.lr.ph.i ], [ %add77.i, %cond.end.i.while.body60.i_crit_edge ]
  %207 = ptrtoint ptr %priv_data.i417.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv_data.i417.i, align 4
  %209 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %49, align 4
  br i1 %tobool.not.i, label %drbg_blocklen.exit306.thread.i, label %land.lhs.true.i.i295.i

land.lhs.true.i.i295.i:                           ; preds = %while.body60.i
  %211 = ptrtoint ptr %core.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %core.i.i293.i, align 4
  %tobool1.not.i.i294.i = icmp eq ptr %212, null
  br i1 %tobool1.not.i.i294.i, label %land.lhs.true.i.i295.i.land.lhs.true.i302.i_crit_edge, label %drbg_blocklen.exit.i298.i

land.lhs.true.i.i295.i.land.lhs.true.i302.i_crit_edge: ; preds = %land.lhs.true.i.i295.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i302.i

drbg_blocklen.exit.i298.i:                        ; preds = %land.lhs.true.i.i295.i
  %blocklen_bytes.i.i296.i = getelementptr inbounds %struct.drbg_core, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %blocklen_bytes.i.i296.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %blocklen_bytes.i.i296.i, align 1
  %phi.cast.i297.i = zext i8 %214 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %phi.cast.i297.i)
  %cmp.i.i = icmp ult i32 %210, %phi.cast.i297.i
  br i1 %cmp.i.i, label %do.body3.i.i, label %drbg_blocklen.exit.i298.i.land.lhs.true.i302.i_crit_edge, !prof !149

drbg_blocklen.exit.i298.i.land.lhs.true.i302.i_crit_edge: ; preds = %drbg_blocklen.exit.i298.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i302.i

do.body3.i.i:                                     ; preds = %drbg_blocklen.exit.i298.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1834, 0\0A.popsection", ""() #11, !srcloc !150
  unreachable

land.lhs.true.i302.i:                             ; preds = %drbg_blocklen.exit.i298.i.land.lhs.true.i302.i_crit_edge, %land.lhs.true.i.i295.i.land.lhs.true.i302.i_crit_edge
  %215 = ptrtoint ptr %cipherin.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cipherin.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %208, ptr noundef %add.ptr54409415.i, ptr noundef %216) #11
  %217 = ptrtoint ptr %core.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %core.i.i293.i, align 4
  %tobool1.not.i301.i = icmp eq ptr %218, null
  br i1 %tobool1.not.i301.i, label %drbg_blocklen.exit306.i, label %drbg_blocklen.exit306.i.thread

drbg_blocklen.exit306.i:                          ; preds = %land.lhs.true.i302.i
  call void @__sanitizer_cov_trace_cmp4(i32 %generated_len.0447.i, i32 %conv21)
  %cmp68.i.not = icmp eq i32 %generated_len.0447.i, %conv21
  br i1 %cmp68.i.not, label %drbg_blocklen.exit306.i.cond.end.i_crit_edge, label %drbg_blocklen.exit306.i.drbg_blocklen.exit314.i_crit_edge

drbg_blocklen.exit306.i.drbg_blocklen.exit314.i_crit_edge: ; preds = %drbg_blocklen.exit306.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit314.i

drbg_blocklen.exit306.i.cond.end.i_crit_edge:     ; preds = %drbg_blocklen.exit306.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

drbg_blocklen.exit306.i.thread:                   ; preds = %land.lhs.true.i302.i
  %blocklen_bytes.i303.i = getelementptr inbounds %struct.drbg_core, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %blocklen_bytes.i303.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %blocklen_bytes.i303.i, align 1
  %conv66.i254 = zext i8 %220 to i32
  %sub67.i255 = sub i32 %conv21, %generated_len.0447.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub67.i255, i32 %conv66.i254)
  %cmp68.i256 = icmp ugt i32 %sub67.i255, %conv66.i254
  br i1 %cmp68.i256, label %if.then.i312.i, label %drbg_blocklen.exit306.i.thread.cond.end.i_crit_edge

drbg_blocklen.exit306.i.thread.cond.end.i_crit_edge: ; preds = %drbg_blocklen.exit306.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

drbg_blocklen.exit306.thread.i:                   ; preds = %while.body60.i
  %221 = ptrtoint ptr %cipherin.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cipherin.i, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %208, ptr noundef %add.ptr54409415.i, ptr noundef %222) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %generated_len.0447.i, i32 %conv21)
  %cmp68421.not.i = icmp eq i32 %generated_len.0447.i, %conv21
  br i1 %cmp68421.not.i, label %drbg_blocklen.exit306.thread.i.cond.end.i_crit_edge, label %drbg_blocklen.exit306.thread.i.drbg_blocklen.exit314.i_crit_edge

drbg_blocklen.exit306.thread.i.drbg_blocklen.exit314.i_crit_edge: ; preds = %drbg_blocklen.exit306.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit314.i

drbg_blocklen.exit306.thread.i.cond.end.i_crit_edge: ; preds = %drbg_blocklen.exit306.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

if.then.i312.i:                                   ; preds = %drbg_blocklen.exit306.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %blocklen_bytes.i303.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %blocklen_bytes.i303.i, align 1
  br label %drbg_blocklen.exit314.i

drbg_blocklen.exit314.i:                          ; preds = %if.then.i312.i, %drbg_blocklen.exit306.thread.i.drbg_blocklen.exit314.i_crit_edge, %drbg_blocklen.exit306.i.drbg_blocklen.exit314.i_crit_edge
  %retval.0.i313.i = phi i8 [ %224, %if.then.i312.i ], [ 0, %drbg_blocklen.exit306.thread.i.drbg_blocklen.exit314.i_crit_edge ], [ 0, %drbg_blocklen.exit306.i.drbg_blocklen.exit314.i_crit_edge ]
  %conv71.i = zext i8 %retval.0.i313.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %drbg_blocklen.exit314.i, %drbg_blocklen.exit306.thread.i.cond.end.i_crit_edge, %drbg_blocklen.exit306.i.thread.cond.end.i_crit_edge, %drbg_blocklen.exit306.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv71.i, %drbg_blocklen.exit314.i ], [ 0, %drbg_blocklen.exit306.i.cond.end.i_crit_edge ], [ 0, %drbg_blocklen.exit306.thread.i.cond.end.i_crit_edge ], [ %sub67.i255, %drbg_blocklen.exit306.i.thread.cond.end.i_crit_edge ]
  %add.ptr74.i = getelementptr i8, ptr %add.ptr4229235282285, i32 %generated_len.0447.i
  %225 = and i32 %cond.i, 65535
  %226 = call ptr @memcpy(ptr %add.ptr74.i, ptr %add.ptr54409415.i, i32 %225)
  %add77.i = add i32 %225, %generated_len.0447.i
  %cmp58.i = icmp ult i32 %add77.i, %conv21
  br i1 %cmp58.i, label %cond.end.i.while.body60.i_crit_edge, label %cond.end.i.out.i_crit_edge

cond.end.i.out.i_crit_edge:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

cond.end.i.while.body60.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body60.i

out.i:                                            ; preds = %cond.end.i.out.i_crit_edge, %drbg_kcapi_symsetkey.exit.i.out.i_crit_edge
  br i1 %tobool.not.i, label %out.i.drbg_ctr_df.exit.thread_crit_edge, label %land.lhs.true.i318.i

out.i.drbg_ctr_df.exit.thread_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_ctr_df.exit.thread

land.lhs.true.i318.i:                             ; preds = %out.i
  %core.i316.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %227 = ptrtoint ptr %core.i316.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %core.i316.i, align 4
  %tobool1.not.i317.i = icmp eq ptr %228, null
  br i1 %tobool1.not.i317.i, label %land.lhs.true.i318.i.land.lhs.true.i326.i_crit_edge, label %if.then.i320.i

land.lhs.true.i318.i.land.lhs.true.i326.i_crit_edge: ; preds = %land.lhs.true.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i326.i

if.then.i320.i:                                   ; preds = %land.lhs.true.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i319.i = getelementptr inbounds %struct.drbg_core, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %blocklen_bytes.i319.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %blocklen_bytes.i319.i, align 1
  %phi.cast436.i = zext i8 %230 to i32
  br label %land.lhs.true.i326.i

land.lhs.true.i326.i:                             ; preds = %if.then.i320.i, %land.lhs.true.i318.i.land.lhs.true.i326.i_crit_edge
  %retval.0.i321.ph.i = phi i32 [ 0, %land.lhs.true.i318.i.land.lhs.true.i326.i_crit_edge ], [ %phi.cast436.i, %if.then.i320.i ]
  %231 = call ptr @memset(ptr %add.ptr3359366381.i, i32 0, i32 %retval.0.i321.ph.i)
  %232 = ptrtoint ptr %core.i316.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %core.i316.i, align 4
  %tobool1.not.i325.i = icmp eq ptr %233, null
  br i1 %tobool1.not.i325.i, label %land.lhs.true.i326.i.land.lhs.true.i342.i_crit_edge, label %if.then.i336.i

land.lhs.true.i326.i.land.lhs.true.i342.i_crit_edge: ; preds = %land.lhs.true.i326.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i342.i

if.then.i336.i:                                   ; preds = %land.lhs.true.i326.i
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i327.i = getelementptr inbounds %struct.drbg_core, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %statelen.i327.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %statelen.i327.i, align 4
  %blocklen_bytes.i335.i = getelementptr inbounds %struct.drbg_core, ptr %233, i32 0, i32 2
  %236 = ptrtoint ptr %blocklen_bytes.i335.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %blocklen_bytes.i335.i, align 1
  %phi.cast438.i = zext i8 %237 to i32
  br label %land.lhs.true.i342.i

land.lhs.true.i342.i:                             ; preds = %if.then.i336.i, %land.lhs.true.i326.i.land.lhs.true.i342.i_crit_edge
  %retval.0.i329.ph485.shrunk.i = phi i8 [ %235, %if.then.i336.i ], [ 0, %land.lhs.true.i326.i.land.lhs.true.i342.i_crit_edge ]
  %retval.0.i337.ph.i = phi i32 [ %phi.cast438.i, %if.then.i336.i ], [ 0, %land.lhs.true.i326.i.land.lhs.true.i342.i_crit_edge ]
  %retval.0.i329.ph485.i = zext i8 %retval.0.i329.ph485.shrunk.i to i32
  %add85431.i = add nuw nsw i32 %retval.0.i337.ph.i, %retval.0.i329.ph485.i
  %238 = call ptr @memset(ptr %add.ptr6370377.i, i32 0, i32 %add85431.i)
  %239 = ptrtoint ptr %core.i316.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %core.i316.i, align 4
  %tobool1.not.i341.i = icmp eq ptr %240, null
  br i1 %tobool1.not.i341.i, label %land.lhs.true.i342.i.drbg_ctr_df.exit.thread_crit_edge, label %if.then.i344.i

land.lhs.true.i342.i.drbg_ctr_df.exit.thread_crit_edge: ; preds = %land.lhs.true.i342.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_ctr_df.exit.thread

if.then.i344.i:                                   ; preds = %land.lhs.true.i342.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i343.i = getelementptr inbounds %struct.drbg_core, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %blocklen_bytes.i343.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %blocklen_bytes.i343.i, align 1
  %phi.cast439.i = zext i8 %242 to i32
  br label %drbg_ctr_df.exit.thread

drbg_ctr_df.exit.thread:                          ; preds = %if.then.i344.i, %land.lhs.true.i342.i.drbg_ctr_df.exit.thread_crit_edge, %out.i.drbg_ctr_df.exit.thread_crit_edge
  %retval.0.i345.i = phi i32 [ %phi.cast439.i, %if.then.i344.i ], [ 0, %land.lhs.true.i342.i.drbg_ctr_df.exit.thread_crit_edge ], [ 0, %out.i.drbg_ctr_df.exit.thread_crit_edge ]
  %243 = call ptr @memset(ptr %add.ptr351357368379.i, i32 0, i32 %retval.0.i345.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bcc_list.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cipherin.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S4.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S2.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %L_N.i) #11
  br label %if.end26

drbg_ctr_df.exit:                                 ; preds = %drbg_blocklen.exit193.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bcc_list.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cipherin.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S4.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S2.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %L_N.i) #11
  br label %out

if.end26:                                         ; preds = %drbg_ctr_df.exit.thread, %if.end17.if.end26_crit_edge
  %add.ptr4229235283 = phi ptr [ %add.ptr4229235282285, %drbg_ctr_df.exit.thread ], [ %add.ptr4229235, %if.end17.if.end26_crit_edge ]
  br i1 %tobool.not.i, label %if.end26.drbg_statelen.exit157_crit_edge, label %land.lhs.true.i145

if.end26.drbg_statelen.exit157_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

land.lhs.true.i145:                               ; preds = %if.end26
  %core.i143 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %244 = ptrtoint ptr %core.i143 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %core.i143, align 4
  %tobool1.not.i144 = icmp eq ptr %245, null
  br i1 %tobool1.not.i144, label %land.lhs.true.i145.drbg_statelen.exit157_crit_edge, label %land.lhs.true.i153

land.lhs.true.i145.drbg_statelen.exit157_crit_edge: ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

land.lhs.true.i153:                               ; preds = %land.lhs.true.i145
  %statelen.i146 = getelementptr inbounds %struct.drbg_core, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %statelen.i146 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %statelen.i146, align 4
  %248 = ptrtoint ptr %core.i143 to i32
  call void @__asan_load4_noabort(i32 %248)
  %.pr = load ptr, ptr %core.i143, align 4
  %tobool1.not.i152 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i152, label %land.lhs.true.i153.drbg_statelen.exit157_crit_edge, label %if.then.i155

land.lhs.true.i153.drbg_statelen.exit157_crit_edge: ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit157

if.then.i155:                                     ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i154 = getelementptr inbounds %struct.drbg_core, ptr %.pr, i32 0, i32 1
  %249 = ptrtoint ptr %statelen.i154 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %statelen.i154, align 4
  %phi.cast318 = zext i8 %250 to i32
  br label %drbg_statelen.exit157

drbg_statelen.exit157:                            ; preds = %if.then.i155, %land.lhs.true.i153.drbg_statelen.exit157_crit_edge, %land.lhs.true.i145.drbg_statelen.exit157_crit_edge, %if.end26.drbg_statelen.exit157_crit_edge, %if.end17.thread.drbg_statelen.exit157_crit_edge, %if.end17.thread311.drbg_statelen.exit157_crit_edge, %if.end17.thread348.drbg_statelen.exit157_crit_edge
  %add.ptr4229235283287 = phi ptr [ %add.ptr4229235283, %if.then.i155 ], [ %add.ptr4229235283, %land.lhs.true.i153.drbg_statelen.exit157_crit_edge ], [ %add.ptr4229235283, %if.end26.drbg_statelen.exit157_crit_edge ], [ %1, %if.end17.thread.drbg_statelen.exit157_crit_edge ], [ %add.ptr4228231344347, %if.end17.thread311.drbg_statelen.exit157_crit_edge ], [ %1, %if.end17.thread348.drbg_statelen.exit157_crit_edge ], [ %add.ptr4229235283, %land.lhs.true.i145.drbg_statelen.exit157_crit_edge ]
  %conv28262.shrunk = phi i8 [ %247, %if.then.i155 ], [ %247, %land.lhs.true.i153.drbg_statelen.exit157_crit_edge ], [ 0, %if.end26.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread311.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread348.drbg_statelen.exit157_crit_edge ], [ 0, %land.lhs.true.i145.drbg_statelen.exit157_crit_edge ]
  %retval.0.i156 = phi i32 [ %phi.cast318, %if.then.i155 ], [ 0, %land.lhs.true.i153.drbg_statelen.exit157_crit_edge ], [ 0, %if.end26.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread311.drbg_statelen.exit157_crit_edge ], [ 0, %if.end17.thread348.drbg_statelen.exit157_crit_edge ], [ 0, %land.lhs.true.i145.drbg_statelen.exit157_crit_edge ]
  %conv28262 = zext i8 %conv28262.shrunk to i32
  %call31 = call fastcc i32 @drbg_kcapi_sym_ctr(ptr noundef %drbg, ptr noundef %add.ptr4229235283287, i32 noundef %conv28262, ptr noundef %1, i32 noundef %retval.0.i156)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %drbg_statelen.exit157.cleanup_crit_edge

drbg_statelen.exit157.cleanup_crit_edge:          ; preds = %drbg_statelen.exit157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %drbg_statelen.exit157
  %ctr_handle35 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %251 = ptrtoint ptr %ctr_handle35 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ctr_handle35, align 4
  br i1 %tobool.not.i, label %drbg_keylen.exit167.thread, label %land.lhs.true.i161

land.lhs.true.i161:                               ; preds = %if.end34
  %core.i159 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %253 = ptrtoint ptr %core.i159 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %core.i159, align 4
  %tobool1.not.i160 = icmp eq ptr %254, null
  br i1 %tobool1.not.i160, label %land.lhs.true.i161.drbg_keylen.exit167_crit_edge, label %if.then.i165

land.lhs.true.i161.drbg_keylen.exit167_crit_edge: ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_keylen.exit167

if.then.i165:                                     ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i162 = getelementptr inbounds %struct.drbg_core, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %statelen.i162 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %statelen.i162, align 4
  %blocklen_bytes.i163 = getelementptr inbounds %struct.drbg_core, ptr %254, i32 0, i32 2
  %257 = ptrtoint ptr %blocklen_bytes.i163 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %blocklen_bytes.i163, align 1
  %sub.i164 = sub i8 %256, %258
  %phi.cast319 = zext i8 %sub.i164 to i32
  br label %drbg_keylen.exit167

drbg_keylen.exit167:                              ; preds = %if.then.i165, %land.lhs.true.i161.drbg_keylen.exit167_crit_edge
  %retval.0.i166 = phi i32 [ %phi.cast319, %if.then.i165 ], [ 0, %land.lhs.true.i161.drbg_keylen.exit167_crit_edge ]
  %call38 = call i32 @crypto_skcipher_setkey(ptr noundef %252, ptr noundef %1, i32 noundef %retval.0.i166) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %drbg_keylen.exit167.out_crit_edge

drbg_keylen.exit167.out_crit_edge:                ; preds = %drbg_keylen.exit167
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

drbg_keylen.exit167.thread:                       ; preds = %if.end34
  %call38361 = call i32 @crypto_skcipher_setkey(ptr noundef %252, ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38361)
  %tobool39.not362 = icmp eq i32 %call38361, 0
  br i1 %tobool39.not362, label %if.end41.thread, label %drbg_keylen.exit167.thread.drbg_blocklen.exit209.thread_crit_edge

drbg_keylen.exit167.thread.drbg_blocklen.exit209.thread_crit_edge: ; preds = %drbg_keylen.exit167.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit209.thread

if.end41.thread:                                  ; preds = %drbg_keylen.exit167.thread
  call void @__sanitizer_cov_trace_pc() #13
  %V42363 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  br label %drbg_blocklen.exit185

if.end41:                                         ; preds = %drbg_keylen.exit167
  %V42 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %259 = ptrtoint ptr %V42 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %V42, align 4
  br i1 %tobool.not.i, label %if.end41.drbg_blocklen.exit185_crit_edge, label %land.lhs.true.i171

if.end41.drbg_blocklen.exit185_crit_edge:         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit185

land.lhs.true.i171:                               ; preds = %if.end41
  %core.i169 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %261 = ptrtoint ptr %core.i169 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %core.i169, align 4
  %tobool1.not.i170 = icmp eq ptr %262, null
  br i1 %tobool1.not.i170, label %land.lhs.true.i171.land.lhs.true.i189_crit_edge, label %land.lhs.true.i181

land.lhs.true.i171.land.lhs.true.i189_crit_edge:  ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i189

land.lhs.true.i181:                               ; preds = %land.lhs.true.i171
  %statelen.i172 = getelementptr inbounds %struct.drbg_core, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %statelen.i172 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %statelen.i172, align 4
  %blocklen_bytes.i173 = getelementptr inbounds %struct.drbg_core, ptr %262, i32 0, i32 2
  %265 = ptrtoint ptr %blocklen_bytes.i173 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %blocklen_bytes.i173, align 1
  %sub.i174 = sub i8 %264, %266
  %phi.cast323 = zext i8 %sub.i174 to i32
  %267 = ptrtoint ptr %core.i169 to i32
  call void @__asan_load4_noabort(i32 %267)
  %.pr365 = load ptr, ptr %core.i169, align 4
  %add.ptr45265 = getelementptr i8, ptr %1, i32 %phi.cast323
  %tobool1.not.i180 = icmp eq ptr %.pr365, null
  br i1 %tobool1.not.i180, label %land.lhs.true.i181.land.lhs.true.i189_crit_edge, label %if.then.i183

land.lhs.true.i181.land.lhs.true.i189_crit_edge:  ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i189

if.then.i183:                                     ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i182 = getelementptr inbounds %struct.drbg_core, ptr %.pr365, i32 0, i32 2
  %268 = ptrtoint ptr %blocklen_bytes.i182 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %blocklen_bytes.i182, align 1
  %phi.cast324 = zext i8 %269 to i32
  br label %land.lhs.true.i189

drbg_blocklen.exit185:                            ; preds = %if.end41.drbg_blocklen.exit185_crit_edge, %if.end41.thread
  %V42364 = phi ptr [ %V42363, %if.end41.thread ], [ %V42, %if.end41.drbg_blocklen.exit185_crit_edge ]
  %270 = ptrtoint ptr %V42364 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %V42364, align 4
  br label %drbg_blocklen.exit193

land.lhs.true.i189:                               ; preds = %if.then.i183, %land.lhs.true.i181.land.lhs.true.i189_crit_edge, %land.lhs.true.i171.land.lhs.true.i189_crit_edge
  %add.ptr45265369 = phi ptr [ %add.ptr45265, %land.lhs.true.i181.land.lhs.true.i189_crit_edge ], [ %add.ptr45265, %if.then.i183 ], [ %1, %land.lhs.true.i171.land.lhs.true.i189_crit_edge ]
  %retval.0.i184.ph = phi i32 [ 0, %land.lhs.true.i181.land.lhs.true.i189_crit_edge ], [ %phi.cast324, %if.then.i183 ], [ 0, %land.lhs.true.i171.land.lhs.true.i189_crit_edge ]
  %272 = call ptr @memcpy(ptr %260, ptr %add.ptr45265369, i32 %retval.0.i184.ph)
  %273 = ptrtoint ptr %V42 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %V42, align 4
  %275 = ptrtoint ptr %core.i169 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %core.i169, align 4
  %tobool1.not.i188 = icmp eq ptr %276, null
  br i1 %tobool1.not.i188, label %land.lhs.true.i189.drbg_blocklen.exit193_crit_edge, label %if.then.i191

land.lhs.true.i189.drbg_blocklen.exit193_crit_edge: ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit193

if.then.i191:                                     ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i190 = getelementptr inbounds %struct.drbg_core, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %blocklen_bytes.i190 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %blocklen_bytes.i190, align 1
  %phi.cast325 = zext i8 %278 to i32
  br label %drbg_blocklen.exit193

drbg_blocklen.exit193:                            ; preds = %if.then.i191, %land.lhs.true.i189.drbg_blocklen.exit193_crit_edge, %drbg_blocklen.exit185
  %279 = phi ptr [ %274, %if.then.i191 ], [ %274, %land.lhs.true.i189.drbg_blocklen.exit193_crit_edge ], [ %271, %drbg_blocklen.exit185 ]
  %retval.0.i192 = phi i32 [ %phi.cast325, %if.then.i191 ], [ 0, %land.lhs.true.i189.drbg_blocklen.exit193_crit_edge ], [ 0, %drbg_blocklen.exit185 ]
  call void @crypto_inc(ptr noundef %279, i32 noundef %retval.0.i192) #11
  br label %out

out:                                              ; preds = %drbg_blocklen.exit193, %drbg_keylen.exit167.out_crit_edge, %drbg_ctr_df.exit
  %add.ptr4229234 = phi ptr [ %add.ptr4229235282285, %drbg_ctr_df.exit ], [ %add.ptr4229235283287, %drbg_keylen.exit167.out_crit_edge ], [ %add.ptr4229235283287, %drbg_blocklen.exit193 ]
  %ret.0 = phi i32 [ -22, %drbg_ctr_df.exit ], [ %call38, %drbg_keylen.exit167.out_crit_edge ], [ 0, %drbg_blocklen.exit193 ]
  br i1 %tobool.not.i, label %out.drbg_blocklen.exit209.thread_crit_edge, label %out.land.lhs.true.i197_crit_edge

out.land.lhs.true.i197_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i197

out.drbg_blocklen.exit209.thread_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit209.thread

land.lhs.true.i197:                               ; preds = %out.land.lhs.true.i197_crit_edge, %drbg_keylen.exit.land.lhs.true.i197_crit_edge
  %ret.0295 = phi i32 [ %ret.0, %out.land.lhs.true.i197_crit_edge ], [ %call13, %drbg_keylen.exit.land.lhs.true.i197_crit_edge ]
  %add.ptr4229234292 = phi ptr [ %add.ptr4229234, %out.land.lhs.true.i197_crit_edge ], [ %add.ptr4228231344347, %drbg_keylen.exit.land.lhs.true.i197_crit_edge ]
  %core.i195 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %280 = ptrtoint ptr %core.i195 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %core.i195, align 4
  %tobool1.not.i196 = icmp eq ptr %281, null
  br i1 %tobool1.not.i196, label %land.lhs.true.i197.drbg_blocklen.exit209_crit_edge, label %land.lhs.true.i205

land.lhs.true.i197.drbg_blocklen.exit209_crit_edge: ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit209

land.lhs.true.i205:                               ; preds = %land.lhs.true.i197
  %statelen.i198 = getelementptr inbounds %struct.drbg_core, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %statelen.i198 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %statelen.i198, align 4
  %284 = ptrtoint ptr %core.i195 to i32
  call void @__asan_load4_noabort(i32 %284)
  %.pr374 = load ptr, ptr %core.i195, align 4
  %tobool1.not.i204 = icmp eq ptr %.pr374, null
  br i1 %tobool1.not.i204, label %land.lhs.true.i205.drbg_blocklen.exit209_crit_edge, label %if.then.i207

land.lhs.true.i205.drbg_blocklen.exit209_crit_edge: ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit209

if.then.i207:                                     ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i206 = getelementptr inbounds %struct.drbg_core, ptr %.pr374, i32 0, i32 2
  %285 = ptrtoint ptr %blocklen_bytes.i206 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %blocklen_bytes.i206, align 1
  %phi.cast321 = zext i8 %286 to i32
  br label %drbg_blocklen.exit209

drbg_blocklen.exit209:                            ; preds = %if.then.i207, %land.lhs.true.i205.drbg_blocklen.exit209_crit_edge, %land.lhs.true.i197.drbg_blocklen.exit209_crit_edge
  %retval.0.i200.ph377.shrunk = phi i8 [ %283, %if.then.i207 ], [ %283, %land.lhs.true.i205.drbg_blocklen.exit209_crit_edge ], [ 0, %land.lhs.true.i197.drbg_blocklen.exit209_crit_edge ]
  %retval.0.i208 = phi i32 [ %phi.cast321, %if.then.i207 ], [ 0, %land.lhs.true.i205.drbg_blocklen.exit209_crit_edge ], [ 0, %land.lhs.true.i197.drbg_blocklen.exit209_crit_edge ]
  %retval.0.i200.ph377 = zext i8 %retval.0.i200.ph377.shrunk to i32
  %add = add nuw nsw i32 %retval.0.i208, %retval.0.i200.ph377
  %287 = call ptr @memset(ptr %1, i32 0, i32 %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reseed)
  %cmp55.not = icmp eq i32 %reseed, 2
  br i1 %cmp55.not, label %drbg_blocklen.exit209.cleanup_crit_edge, label %land.lhs.true.i213

drbg_blocklen.exit209.cleanup_crit_edge:          ; preds = %drbg_blocklen.exit209
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

drbg_blocklen.exit209.thread:                     ; preds = %out.drbg_blocklen.exit209.thread_crit_edge, %drbg_keylen.exit167.thread.drbg_blocklen.exit209.thread_crit_edge
  %ret.0373 = phi i32 [ %ret.0, %out.drbg_blocklen.exit209.thread_crit_edge ], [ %call38361, %drbg_keylen.exit167.thread.drbg_blocklen.exit209.thread_crit_edge ]
  %add.ptr4229234372 = phi ptr [ %add.ptr4229234, %out.drbg_blocklen.exit209.thread_crit_edge ], [ %add.ptr4229235283287, %drbg_keylen.exit167.thread.drbg_blocklen.exit209.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reseed)
  %cmp55.not279 = icmp eq i32 %reseed, 2
  br i1 %cmp55.not279, label %drbg_blocklen.exit209.thread.cleanup_crit_edge, label %drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge

drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge: ; preds = %drbg_blocklen.exit209.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit217

drbg_blocklen.exit209.thread.cleanup_crit_edge:   ; preds = %drbg_blocklen.exit209.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i213:                               ; preds = %drbg_blocklen.exit209
  %288 = ptrtoint ptr %core.i195 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %core.i195, align 4
  %tobool1.not.i212 = icmp eq ptr %289, null
  br i1 %tobool1.not.i212, label %land.lhs.true.i213.drbg_statelen.exit217_crit_edge, label %if.then.i215

land.lhs.true.i213.drbg_statelen.exit217_crit_edge: ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_statelen.exit217

if.then.i215:                                     ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #13
  %statelen.i214 = getelementptr inbounds %struct.drbg_core, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %statelen.i214 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %statelen.i214, align 4
  %phi.cast322 = zext i8 %291 to i32
  br label %drbg_statelen.exit217

drbg_statelen.exit217:                            ; preds = %if.then.i215, %land.lhs.true.i213.drbg_statelen.exit217_crit_edge, %drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge, %drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge
  %ret.0294 = phi i32 [ %ret.0295, %if.then.i215 ], [ %ret.0295, %land.lhs.true.i213.drbg_statelen.exit217_crit_edge ], [ %ret.0373, %drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge ], [ %call13306, %drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge ]
  %add.ptr4229234291 = phi ptr [ %add.ptr4229234292, %if.then.i215 ], [ %add.ptr4229234292, %land.lhs.true.i213.drbg_statelen.exit217_crit_edge ], [ %add.ptr4229234372, %drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge ], [ %add.ptr4228231344347, %drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge ]
  %retval.0.i216 = phi i32 [ %phi.cast322, %if.then.i215 ], [ 0, %land.lhs.true.i213.drbg_statelen.exit217_crit_edge ], [ 0, %drbg_blocklen.exit209.thread.drbg_statelen.exit217_crit_edge ], [ 0, %drbg_keylen.exit.thread.drbg_statelen.exit217_crit_edge ]
  %292 = call ptr @memset(ptr %add.ptr4229234291, i32 0, i32 %retval.0.i216)
  br label %cleanup

cleanup:                                          ; preds = %drbg_statelen.exit217, %drbg_blocklen.exit209.thread.cleanup_crit_edge, %drbg_blocklen.exit209.cleanup_crit_edge, %drbg_statelen.exit157.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %drbg_statelen.exit157.cleanup_crit_edge ], [ %ret.0294, %drbg_statelen.exit217 ], [ %ret.0295, %drbg_blocklen.exit209.cleanup_crit_edge ], [ %ret.0373, %drbg_blocklen.exit209.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_ctr_generate(ptr noundef %drbg, ptr nocapture noundef writeonly %buf, i32 noundef %buflen, ptr noundef %addtl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addtl, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %addtl, align 4
  %cmp.i.not = icmp eq ptr %1, %addtl
  br i1 %cmp.i.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @drbg_ctr_update(ptr noundef %drbg, ptr noundef nonnull %addtl, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc i32 @drbg_kcapi_sym_ctr(ptr noundef %drbg, ptr noundef null, i32 noundef 0, ptr noundef %buf, i32 noundef %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @drbg_ctr_update(ptr noundef %drbg, ptr noundef null, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, i32 %buflen, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end9 ], [ 0, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_init_sym_kernel(ptr noundef %drbg) #5 align 64 {
entry:
  %ctr_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ctr_name) #11
  %0 = call ptr @memset(ptr %ctr_name, i32 255, i32 128)
  %core = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 24
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %backend_cra_name = getelementptr inbounds %struct.drbg_core, ptr %2, i32 0, i32 4
  %call.i = tail call ptr @crypto_alloc_base(ptr noundef %backend_cra_name, i32 noundef 1, i32 noundef 15) #11
  %cmp.i104 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end, label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %backend_cra_name3 = getelementptr inbounds %struct.drbg_core, ptr %4, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %backend_cra_name3) #18
  %5 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body7:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %drbg, null
  br i1 %tobool.not.i, label %do.body7.drbg_blocklen.exit_crit_edge, label %land.lhs.true.i

do.body7.drbg_blocklen.exit_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

land.lhs.true.i:                                  ; preds = %do.body7
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drbg_blocklen.exit_crit_edge, label %if.then.i105

land.lhs.true.i.drbg_blocklen.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_blocklen.exit

if.then.i105:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocklen_bytes.i = getelementptr inbounds %struct.drbg_core, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %blocklen_bytes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %blocklen_bytes.i, align 1
  br label %drbg_blocklen.exit

drbg_blocklen.exit:                               ; preds = %if.then.i105, %land.lhs.true.i.drbg_blocklen.exit_crit_edge, %do.body7.drbg_blocklen.exit_crit_edge
  %retval.0.i = phi i8 [ %9, %if.then.i105 ], [ 0, %land.lhs.true.i.drbg_blocklen.exit_crit_edge ], [ 0, %do.body7.drbg_blocklen.exit_crit_edge ]
  %conv = zext i8 %retval.0.i to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp.not = icmp eq i32 %13, %conv
  br i1 %cmp.not, label %do.end21, label %do.body13, !prof !147

do.body13:                                        ; preds = %drbg_blocklen.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1773, 0\0A.popsection", ""() #11, !srcloc !151
  unreachable

do.end21:                                         ; preds = %drbg_blocklen.exit
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %14 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv_data, align 4
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %backend_cra_name24 = getelementptr inbounds %struct.drbg_core, ptr %16, i32 0, i32 4
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ctr_name, i32 noundef 128, ptr noundef nonnull @.str.11, ptr noundef %backend_cra_name24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 127
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.end21
  %17 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv_data, align 4
  %tobool.not.i106 = icmp eq ptr %18, null
  br i1 %tobool.not.i106, label %if.then29.if.end.i108_crit_edge, label %if.then.i107

if.then29.if.end.i108_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i108

if.then.i107:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %18, ptr noundef nonnull %18) #11
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.then.i107, %if.then29.if.end.i108_crit_edge
  %19 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %priv_data, align 4
  %ctr_handle.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %20 = ptrtoint ptr %ctr_handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctr_handle.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i108.if.end5.i_crit_edge, label %if.then3.i

if.end.i108.if.end5.i_crit_edge:                  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %21, ptr noundef %base.i.i.i) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i108.if.end5.i_crit_edge
  %22 = ptrtoint ptr %ctr_handle.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ctr_handle.i, align 4
  %ctr_req.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %23 = ptrtoint ptr %ctr_req.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctr_req.i, align 4
  %tobool7.not.i = icmp eq ptr %24, null
  br i1 %tobool7.not.i, label %if.end5.i.drbg_fini_sym_kernel.exit_crit_edge, label %if.then8.i

if.end5.i.drbg_fini_sym_kernel.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_fini_sym_kernel.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_sensitive(ptr noundef nonnull %24) #11
  br label %drbg_fini_sym_kernel.exit

drbg_fini_sym_kernel.exit:                        ; preds = %if.then8.i, %if.end5.i.drbg_fini_sym_kernel.exit_crit_edge
  %25 = ptrtoint ptr %ctr_req.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ctr_req.i, align 4
  %outscratchpadbuf.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 12
  %26 = ptrtoint ptr %outscratchpadbuf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %outscratchpadbuf.i, align 4
  tail call void @kfree(ptr noundef %27) #11
  %28 = ptrtoint ptr %outscratchpadbuf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %outscratchpadbuf.i, align 4
  br label %cleanup

if.end31:                                         ; preds = %do.end21
  %call33 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull %ctr_name, i32 noundef 0, i32 noundef 0) #11
  %cmp.i109 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end38, label %if.end44

do.end38:                                         ; preds = %if.end31
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %ctr_name) #18
  %29 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv_data, align 4
  %tobool.not.i111 = icmp eq ptr %30, null
  br i1 %tobool.not.i111, label %do.end38.if.end.i115_crit_edge, label %if.then.i112

do.end38.if.end.i115_crit_edge:                   ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i115

if.then.i112:                                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef nonnull %30, ptr noundef nonnull %30) #11
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i112, %do.end38.if.end.i115_crit_edge
  %31 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %priv_data, align 4
  %ctr_handle.i113 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %32 = ptrtoint ptr %ctr_handle.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctr_handle.i113, align 4
  %tobool2.not.i114 = icmp eq ptr %33, null
  br i1 %tobool2.not.i114, label %if.end.i115.if.end5.i120_crit_edge, label %if.then3.i117

if.end.i115.if.end5.i120_crit_edge:               ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i120

if.then3.i117:                                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i116 = getelementptr inbounds %struct.crypto_skcipher, ptr %33, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %33, ptr noundef %base.i.i.i116) #11
  br label %if.end5.i120

if.end5.i120:                                     ; preds = %if.then3.i117, %if.end.i115.if.end5.i120_crit_edge
  %34 = ptrtoint ptr %ctr_handle.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ctr_handle.i113, align 4
  %ctr_req.i118 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %35 = ptrtoint ptr %ctr_req.i118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctr_req.i118, align 4
  %tobool7.not.i119 = icmp eq ptr %36, null
  br i1 %tobool7.not.i119, label %if.end5.i120.drbg_fini_sym_kernel.exit123_crit_edge, label %if.then8.i121

if.end5.i120.drbg_fini_sym_kernel.exit123_crit_edge: ; preds = %if.end5.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_fini_sym_kernel.exit123

if.then8.i121:                                    ; preds = %if.end5.i120
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_sensitive(ptr noundef nonnull %36) #11
  br label %drbg_fini_sym_kernel.exit123

drbg_fini_sym_kernel.exit123:                     ; preds = %if.then8.i121, %if.end5.i120.drbg_fini_sym_kernel.exit123_crit_edge
  %37 = ptrtoint ptr %ctr_req.i118 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ctr_req.i118, align 4
  %outscratchpadbuf.i122 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 12
  %38 = ptrtoint ptr %outscratchpadbuf.i122 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %outscratchpadbuf.i122, align 4
  call void @kfree(ptr noundef %39) #11
  %40 = ptrtoint ptr %outscratchpadbuf.i122 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %outscratchpadbuf.i122, align 4
  %41 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  %ctr_handle = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %42 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call33, ptr %ctr_handle, align 4
  %ctr_wait = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 14
  %43 = ptrtoint ptr %ctr_wait to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ctr_wait, align 4
  %wait.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 14, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #11
  %44 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call33, align 128
  %add.i = add i32 %45, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %tobool.not.i127 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i127, label %do.end50, label %if.end54, !prof !149

do.end50:                                         ; preds = %if.end44
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  %46 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv_data, align 4
  %tobool.not.i132 = icmp eq ptr %47, null
  br i1 %tobool.not.i132, label %do.end50.if.end.i136_crit_edge, label %if.then.i133

do.end50.if.end.i136_crit_edge:                   ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i136

if.then.i133:                                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef nonnull %47, ptr noundef nonnull %47) #11
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.then.i133, %do.end50.if.end.i136_crit_edge
  %48 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %priv_data, align 4
  %49 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctr_handle, align 4
  %tobool2.not.i135 = icmp eq ptr %50, null
  br i1 %tobool2.not.i135, label %if.end.i136.if.end5.i141_crit_edge, label %if.then3.i138

if.end.i136.if.end5.i141_crit_edge:               ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i141

if.then3.i138:                                    ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i137 = getelementptr inbounds %struct.crypto_skcipher, ptr %50, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %50, ptr noundef %base.i.i.i137) #11
  br label %if.end5.i141

if.end5.i141:                                     ; preds = %if.then3.i138, %if.end.i136.if.end5.i141_crit_edge
  %51 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ctr_handle, align 4
  %ctr_req.i139 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %52 = ptrtoint ptr %ctr_req.i139 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctr_req.i139, align 4
  %tobool7.not.i140 = icmp eq ptr %53, null
  br i1 %tobool7.not.i140, label %if.end5.i141.drbg_fini_sym_kernel.exit144_crit_edge, label %if.then8.i142

if.end5.i141.drbg_fini_sym_kernel.exit144_crit_edge: ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_fini_sym_kernel.exit144

if.then8.i142:                                    ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_sensitive(ptr noundef nonnull %53) #11
  br label %drbg_fini_sym_kernel.exit144

drbg_fini_sym_kernel.exit144:                     ; preds = %if.then8.i142, %if.end5.i141.drbg_fini_sym_kernel.exit144_crit_edge
  %54 = ptrtoint ptr %ctr_req.i139 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %ctr_req.i139, align 4
  %outscratchpadbuf.i143 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 12
  %55 = ptrtoint ptr %outscratchpadbuf.i143 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %outscratchpadbuf.i143, align 4
  call void @kfree(ptr noundef %56) #11
  %57 = ptrtoint ptr %outscratchpadbuf.i143 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %outscratchpadbuf.i143, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %base.i.i.i128 = getelementptr inbounds %struct.crypto_skcipher, ptr %call33, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %base.i.i.i128, ptr %tfm1.i.i, align 32
  %ctr_req = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %59 = ptrtoint ptr %ctr_req to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i.i, ptr %ctr_req, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctr_wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %62 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1536, ptr %flags4.i, align 4
  %__crt_alg.i.i145 = getelementptr inbounds %struct.crypto_skcipher, ptr %call33, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %__crt_alg.i.i145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %__crt_alg.i.i145, align 4
  %cra_alignmask.i.i = getelementptr inbounds %struct.crypto_alg, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %cra_alignmask.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cra_alignmask.i.i, align 4
  %add = add i32 %66, 256
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %outscratchpadbuf = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 12
  %67 = ptrtoint ptr %outscratchpadbuf to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call9.i, ptr %outscratchpadbuf, align 4
  %tobool59.not = icmp eq ptr %call9.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end54
  %68 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv_data, align 4
  %tobool.not.i147 = icmp eq ptr %69, null
  br i1 %tobool.not.i147, label %if.then60.if.end.i151_crit_edge, label %if.then.i148

if.then60.if.end.i151_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i151

if.then.i148:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  call void @crypto_destroy_tfm(ptr noundef nonnull %69, ptr noundef nonnull %69) #11
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.then.i148, %if.then60.if.end.i151_crit_edge
  %70 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %priv_data, align 4
  %71 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctr_handle, align 4
  %tobool2.not.i150 = icmp eq ptr %72, null
  br i1 %tobool2.not.i150, label %if.end.i151.if.end5.i156_crit_edge, label %if.then3.i153

if.end.i151.if.end5.i156_crit_edge:               ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i156

if.then3.i153:                                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i152 = getelementptr inbounds %struct.crypto_skcipher, ptr %72, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %72, ptr noundef %base.i.i.i152) #11
  br label %if.end5.i156

if.end5.i156:                                     ; preds = %if.then3.i153, %if.end.i151.if.end5.i156_crit_edge
  %73 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ctr_handle, align 4
  %74 = ptrtoint ptr %ctr_req to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctr_req, align 4
  %tobool7.not.i155 = icmp eq ptr %75, null
  br i1 %tobool7.not.i155, label %if.end5.i156.drbg_fini_sym_kernel.exit159_crit_edge, label %if.then8.i157

if.end5.i156.drbg_fini_sym_kernel.exit159_crit_edge: ; preds = %if.end5.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbg_fini_sym_kernel.exit159

if.then8.i157:                                    ; preds = %if.end5.i156
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_sensitive(ptr noundef nonnull %75) #11
  br label %drbg_fini_sym_kernel.exit159

drbg_fini_sym_kernel.exit159:                     ; preds = %if.then8.i157, %if.end5.i156.drbg_fini_sym_kernel.exit159_crit_edge
  %76 = ptrtoint ptr %ctr_req to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ctr_req, align 4
  %77 = ptrtoint ptr %outscratchpadbuf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %outscratchpadbuf, align 4
  call void @kfree(ptr noundef %78) #11
  %79 = ptrtoint ptr %outscratchpadbuf to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %outscratchpadbuf, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call9.i to i32
  %add65 = add i32 %66, %80
  %neg = xor i32 %66, -1
  %and = and i32 %add65, %neg
  %81 = inttoptr i32 %and to ptr
  %outscratchpad = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 13
  %82 = ptrtoint ptr %outscratchpad to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %outscratchpad, align 4
  %sg_in = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 15
  call void @sg_init_table(ptr noundef %sg_in, i32 noundef 1) #11
  %sg_out = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 16
  %83 = ptrtoint ptr %outscratchpad to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %outscratchpad, align 4
  call void @sg_init_one(ptr noundef %sg_out, ptr noundef %84, i32 noundef 256) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %drbg_fini_sym_kernel.exit159, %drbg_fini_sym_kernel.exit144, %drbg_fini_sym_kernel.exit123, %drbg_fini_sym_kernel.exit, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ -22, %drbg_fini_sym_kernel.exit ], [ %41, %drbg_fini_sym_kernel.exit123 ], [ %66, %if.end62 ], [ -12, %drbg_fini_sym_kernel.exit159 ], [ -12, %drbg_fini_sym_kernel.exit144 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ctr_name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbg_fini_sym_kernel(ptr nocapture noundef %drbg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 9
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %priv_data, align 4
  %ctr_handle = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 10
  %3 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctr_handle, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %5 = ptrtoint ptr %ctr_handle to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ctr_handle, align 4
  %ctr_req = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %6 = ptrtoint ptr %ctr_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctr_req, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_sensitive(ptr noundef nonnull %7) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %8 = ptrtoint ptr %ctr_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ctr_req, align 4
  %outscratchpadbuf = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 12
  %9 = ptrtoint ptr %outscratchpadbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %outscratchpadbuf, align 4
  tail call void @kfree(ptr noundef %10) #11
  %11 = ptrtoint ptr %outscratchpadbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %outscratchpadbuf, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbg_kcapi_sym_ctr(ptr noundef %drbg, ptr noundef %inbuf, i32 noundef %inlen, ptr nocapture noundef writeonly %outbuf, i32 noundef %outlen) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_in1 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 15
  %sg_out2 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 16
  %0 = tail call i32 @llvm.umin.i32(i32 %outlen, i32 256)
  %tobool.not = icmp eq ptr %inbuf, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %inbuf to i32
  %cmp.i = icmp ugt ptr %inbuf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.do.body5.i_crit_edge, !prof !147

if.then.do.body5.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %2, %inbuf
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !147

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %1, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %3, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !149

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !152
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %4, i32 %shr.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !147

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !153
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %6 = ptrtoint ptr %sg_in1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_in1, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.body11.i.i.i.if.end_crit_edge, label %do.body19.i.i.i, !prof !147

do.body11.i.i.i.if.end_crit_edge:                 ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

if.else:                                          ; preds = %entry
  %outscratchpad = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 13
  %8 = ptrtoint ptr %outscratchpad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %outscratchpad, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 %0)
  %11 = load ptr, ptr %outscratchpad, align 4
  %12 = ptrtoint ptr %11 to i32
  %cmp.i61 = icmp ugt ptr %11, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i61, label %land.lhs.true.i63, label %if.else.do.body5.i70_crit_edge, !prof !147

if.else.do.body5.i70_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i70

land.lhs.true.i63:                                ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %13 = load ptr, ptr @high_memory, align 4
  %cmp1.i62 = icmp ugt ptr %13, %11
  br i1 %cmp1.i62, label %land.rhs.i69, label %land.lhs.true.i63.do.body5.i70_crit_edge, !prof !147

land.lhs.true.i63.do.body5.i70_crit_edge:         ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i70

land.rhs.i69:                                     ; preds = %land.lhs.true.i63
  %sub.i64 = add i32 %12, 1073741824
  %shr.i65 = lshr i32 %sub.i64, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i66 = add i32 %14, %shr.i65
  %call.i67 = tail call i32 @pfn_valid(i32 noundef %add.i66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.i68, label %land.rhs.i69.do.body5.i70_crit_edge, label %do.end8.i74, !prof !149

land.rhs.i69.do.body5.i70_crit_edge:              ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i70

do.body5.i70:                                     ; preds = %land.rhs.i69.do.body5.i70_crit_edge, %land.lhs.true.i63.do.body5.i70_crit_edge, %if.else.do.body5.i70_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !152
  unreachable

do.end8.i74:                                      ; preds = %land.rhs.i69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %add.ptr.i71 = getelementptr %struct.page, ptr %15, i32 %shr.i65
  %16 = ptrtoint ptr %add.ptr.i71 to i32
  %and2.i.i.i72 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i72)
  %tobool.not.i.i.i73 = icmp eq i32 %and2.i.i.i72, 0
  br i1 %tobool.not.i.i.i73, label %do.body11.i.i.i78, label %do.body5.i.i.i75, !prof !147

do.body5.i.i.i75:                                 ; preds = %do.end8.i74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !153
  unreachable

do.body11.i.i.i78:                                ; preds = %do.end8.i74
  %17 = ptrtoint ptr %sg_in1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_in1, align 4
  %and.i.i.i.i76 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i76)
  %tobool.i.not.i.i.i77 = icmp eq i32 %and.i.i.i.i76, 0
  br i1 %tobool.i.not.i.i.i77, label %do.body11.i.i.i78.if.end_crit_edge, label %do.body19.i.i.i79, !prof !147

do.body11.i.i.i78.if.end_crit_edge:               ; preds = %do.body11.i.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body19.i.i.i79:                                ; preds = %do.body11.i.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

if.end:                                           ; preds = %do.body11.i.i.i78.if.end_crit_edge, %do.body11.i.i.i.if.end_crit_edge
  %.sink96 = phi i32 [ %1, %do.body11.i.i.i.if.end_crit_edge ], [ %12, %do.body11.i.i.i78.if.end_crit_edge ]
  %.sink95 = phi i32 [ %7, %do.body11.i.i.i.if.end_crit_edge ], [ %18, %do.body11.i.i.i78.if.end_crit_edge ]
  %.sink94 = phi i32 [ %5, %do.body11.i.i.i.if.end_crit_edge ], [ %16, %do.body11.i.i.i78.if.end_crit_edge ]
  %.sink = phi i32 [ %inlen, %do.body11.i.i.i.if.end_crit_edge ], [ %0, %do.body11.i.i.i78.if.end_crit_edge ]
  %and.i80 = and i32 %.sink96, 4095
  %and.i.i.i81 = and i32 %.sink95, 3
  %or.i.i.i82 = or i32 %and.i.i.i81, %.sink94
  %19 = ptrtoint ptr %sg_in1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i82, ptr %sg_in1, align 4
  %offset1.i.i83 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %offset1.i.i83 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i80, ptr %offset1.i.i83, align 4
  %length.i.i84 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %length.i.i84 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %length.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outlen)
  %tobool4.not90 = icmp eq i32 %outlen, 0
  br i1 %tobool4.not90, label %if.end.cleanup25_crit_edge, label %while.body.lr.ph

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

while.body.lr.ph:                                 ; preds = %if.end
  %ctr_req = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 11
  %V = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 1
  %ctr_wait = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 14
  %err2.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 14, i32 1
  %wait.i.i = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 14, i32 0, i32 1
  %outscratchpad23 = getelementptr inbounds %struct.drbg_state, ptr %drbg, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %outbuf.addr.092 = phi ptr [ %outbuf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %outlen.addr.091 = phi i32 [ %outlen, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %22 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %outlen.addr.091)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 256)
  %24 = ptrtoint ptr %ctr_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctr_req, align 4
  %26 = ptrtoint ptr %V to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %V, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sg_in1, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %25, i32 0, i32 3
  %29 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sg_out2, ptr %dst2.i, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %25, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %27, ptr %iv4.i, align 4
  %32 = load ptr, ptr %ctr_req, align 4
  %call = tail call i32 @crypto_skcipher_encrypt(ptr noundef %32) #11
  %33 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call, label %while.body.crypto_wait_req.exit_crit_edge [
    i32 -115, label %while.body.sw.bb.i_crit_edge
    i32 -16, label %while.body.sw.bb.i_crit_edge97
  ]

while.body.sw.bb.i_crit_edge97:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.body.sw.bb.i_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.body.crypto_wait_req.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %while.body.sw.bb.i_crit_edge, %while.body.sw.bb.i_crit_edge97
  tail call void @wait_for_completion(ptr noundef %ctr_wait) #11
  %34 = ptrtoint ptr %ctr_wait to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ctr_wait, align 4
  %35 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %while.body.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call, %while.body.crypto_wait_req.exit_crit_edge ], [ %36, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool19.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool19.not, label %cleanup, label %crypto_wait_req.exit.cleanup25_crit_edge

crypto_wait_req.exit.cleanup25_crit_edge:         ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

cleanup:                                          ; preds = %crypto_wait_req.exit
  %37 = ptrtoint ptr %ctr_wait to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ctr_wait, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #11
  %38 = ptrtoint ptr %outscratchpad23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %outscratchpad23, align 4
  %40 = call ptr @memcpy(ptr %outbuf.addr.092, ptr %39, i32 %23)
  %41 = load ptr, ptr %outscratchpad23, align 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 %23)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %41) #11, !srcloc !146
  %sub = sub i32 %outlen.addr.091, %23
  %add.ptr = getelementptr i8, ptr %outbuf.addr.092, i32 %23
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %cleanup.cleanup25_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup.cleanup25_crit_edge, %crypto_wait_req.exit.cleanup25_crit_edge, %if.end.cleanup25_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.cleanup25_crit_edge ], [ %err.addr.0.i, %crypto_wait_req.exit.cleanup25_crit_edge ], [ 0, %cleanup.cleanup25_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_rng(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold inlinehint mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !100, !101, !102, !103, !105, !107, !109, !111, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__UNIQUE_ID_alias_userspace226, !1, !"__UNIQUE_ID_alias_userspace226", i1 false, i1 false}
!1 = !{!"../crypto/drbg.c", i32 301, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias_crypto227, !1, !"__UNIQUE_ID_alias_crypto227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias_userspace228, !4, !"__UNIQUE_ID_alias_userspace228", i1 false, i1 false}
!4 = !{!"../crypto/drbg.c", i32 302, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias_crypto229, !4, !"__UNIQUE_ID_alias_crypto229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias_userspace230, !7, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!7 = !{!"../crypto/drbg.c", i32 303, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias_crypto231, !7, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias_userspace232, !10, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!10 = !{!"../crypto/drbg.c", i32 304, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto233, !10, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace234, !13, !"__UNIQUE_ID_alias_userspace234", i1 false, i1 false}
!13 = !{!"../crypto/drbg.c", i32 305, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto235, !13, !"__UNIQUE_ID_alias_crypto235", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias_userspace236, !16, !"__UNIQUE_ID_alias_userspace236", i1 false, i1 false}
!16 = !{!"../crypto/drbg.c", i32 306, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_crypto237, !16, !"__UNIQUE_ID_alias_crypto237", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias_userspace240, !19, !"__UNIQUE_ID_alias_userspace240", i1 false, i1 false}
!19 = !{!"../crypto/drbg.c", i32 645, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias_crypto241, !19, !"__UNIQUE_ID_alias_crypto241", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias_userspace242, !22, !"__UNIQUE_ID_alias_userspace242", i1 false, i1 false}
!22 = !{!"../crypto/drbg.c", i32 646, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias_crypto243, !22, !"__UNIQUE_ID_alias_crypto243", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_alias_userspace244, !25, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!25 = !{!"../crypto/drbg.c", i32 647, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias_crypto245, !25, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias_userspace246, !28, !"__UNIQUE_ID_alias_userspace246", i1 false, i1 false}
!28 = !{!"../crypto/drbg.c", i32 648, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias_crypto247, !28, !"__UNIQUE_ID_alias_crypto247", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias_userspace248, !31, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!31 = !{!"../crypto/drbg.c", i32 649, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias_crypto249, !31, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_alias_userspace250, !34, !"__UNIQUE_ID_alias_userspace250", i1 false, i1 false}
!34 = !{!"../crypto/drbg.c", i32 650, i32 1}
!35 = !{ptr @__UNIQUE_ID_alias_crypto251, !34, !"__UNIQUE_ID_alias_crypto251", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_alias_userspace252, !37, !"__UNIQUE_ID_alias_userspace252", i1 false, i1 false}
!37 = !{!"../crypto/drbg.c", i32 651, i32 1}
!38 = !{ptr @__UNIQUE_ID_alias_crypto253, !37, !"__UNIQUE_ID_alias_crypto253", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_alias_userspace254, !40, !"__UNIQUE_ID_alias_userspace254", i1 false, i1 false}
!40 = !{!"../crypto/drbg.c", i32 652, i32 1}
!41 = !{ptr @__UNIQUE_ID_alias_crypto255, !40, !"__UNIQUE_ID_alias_crypto255", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_alias_userspace256, !43, !"__UNIQUE_ID_alias_userspace256", i1 false, i1 false}
!43 = !{!"../crypto/drbg.c", i32 765, i32 1}
!44 = !{ptr @__UNIQUE_ID_alias_crypto257, !43, !"__UNIQUE_ID_alias_crypto257", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_alias_userspace258, !46, !"__UNIQUE_ID_alias_userspace258", i1 false, i1 false}
!46 = !{!"../crypto/drbg.c", i32 766, i32 1}
!47 = !{ptr @__UNIQUE_ID_alias_crypto259, !46, !"__UNIQUE_ID_alias_crypto259", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_alias_userspace260, !49, !"__UNIQUE_ID_alias_userspace260", i1 false, i1 false}
!49 = !{!"../crypto/drbg.c", i32 767, i32 1}
!50 = !{ptr @__UNIQUE_ID_alias_crypto261, !49, !"__UNIQUE_ID_alias_crypto261", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_alias_userspace262, !52, !"__UNIQUE_ID_alias_userspace262", i1 false, i1 false}
!52 = !{!"../crypto/drbg.c", i32 768, i32 1}
!53 = !{ptr @__UNIQUE_ID_alias_crypto263, !52, !"__UNIQUE_ID_alias_crypto263", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_alias_userspace264, !55, !"__UNIQUE_ID_alias_userspace264", i1 false, i1 false}
!55 = !{!"../crypto/drbg.c", i32 769, i32 1}
!56 = !{ptr @__UNIQUE_ID_alias_crypto265, !55, !"__UNIQUE_ID_alias_crypto265", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_alias_userspace266, !58, !"__UNIQUE_ID_alias_userspace266", i1 false, i1 false}
!58 = !{!"../crypto/drbg.c", i32 770, i32 1}
!59 = !{ptr @__UNIQUE_ID_alias_crypto267, !58, !"__UNIQUE_ID_alias_crypto267", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_alias_userspace268, !61, !"__UNIQUE_ID_alias_userspace268", i1 false, i1 false}
!61 = !{!"../crypto/drbg.c", i32 771, i32 1}
!62 = !{ptr @__UNIQUE_ID_alias_crypto269, !61, !"__UNIQUE_ID_alias_crypto269", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_alias_userspace270, !64, !"__UNIQUE_ID_alias_userspace270", i1 false, i1 false}
!64 = !{!"../crypto/drbg.c", i32 772, i32 1}
!65 = !{ptr @__UNIQUE_ID_alias_crypto271, !64, !"__UNIQUE_ID_alias_crypto271", i1 false, i1 false}
!66 = !{ptr @__initcall__kmod_drbg__278_2150_drbg_init4, !67, !"__initcall__kmod_drbg__278_2150_drbg_init4", i1 false, i1 false}
!67 = !{!"../crypto/drbg.c", i32 2150, i32 1}
!68 = !{ptr @__exitcall_drbg_exit, !69, !"__exitcall_drbg_exit", i1 false, i1 false}
!69 = !{!"../crypto/drbg.c", i32 2151, i32 1}
!70 = !{ptr @__UNIQUE_ID_file279, !71, !"__UNIQUE_ID_file279", i1 false, i1 false}
!71 = !{!"../crypto/drbg.c", i32 2161, i32 1}
!72 = !{ptr @__UNIQUE_ID_license280, !71, !"__UNIQUE_ID_license280", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_author281, !74, !"__UNIQUE_ID_author281", i1 false, i1 false}
!74 = !{!"../crypto/drbg.c", i32 2162, i32 1}
!75 = !{ptr @__UNIQUE_ID_description282, !76, !"__UNIQUE_ID_description282", i1 false, i1 false}
!76 = !{!"../crypto/drbg.c", i32 2163, i32 1}
!77 = !{ptr @__UNIQUE_ID_alias_userspace283, !78, !"__UNIQUE_ID_alias_userspace283", i1 false, i1 false}
!78 = !{!"../crypto/drbg.c", i32 2168, i32 1}
!79 = !{ptr @__UNIQUE_ID_alias_crypto284, !78, !"__UNIQUE_ID_alias_crypto284", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_import_ns285, !81, !"__UNIQUE_ID_import_ns285", i1 false, i1 false}
!81 = !{!"../crypto/drbg.c", i32 2169, i32 1}
!82 = !{ptr @drbg_algs, !83, !"drbg_algs", i1 false, i1 false}
!83 = !{!"../crypto/drbg.c", i32 2068, i32 23}
!84 = !{ptr @drbg_fill_array.priority, !85, !"priority", i1 false, i1 false}
!85 = !{!"../crypto/drbg.c", i32 2079, i32 13}
!86 = !{ptr @.str, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../crypto/drbg.c", i32 2081, i32 29}
!88 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../crypto/drbg.c", i32 2083, i32 37}
!90 = !{ptr @.str.2, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../crypto/drbg.c", i32 2086, i32 37}
!92 = !{ptr @drbg_kcapi_init.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../crypto/drbg.c", i32 1931, i32 2}
!94 = !{ptr @.str.3, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @drbg_hmac_ops, !96, !"drbg_hmac_ops", i1 false, i1 false}
!96 = !{!"../crypto/drbg.c", i32 751, i32 36}
!97 = !{ptr @.str.4, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../crypto/drbg.c", i32 1686, i32 3}
!99 = !{ptr @.str.5, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.6, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @drbg_init_hash_kernel._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @drbg_init_hash_kernel._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @drbg_hash_ops, !104, !"drbg_hash_ops", i1 false, i1 false}
!104 = !{!"../crypto/drbg.c", i32 1027, i32 36}
!105 = !{ptr @drbg_ctr_ops, !106, !"drbg_ctr_ops", i1 false, i1 false}
!106 = !{!"../crypto/drbg.c", i32 622, i32 36}
!107 = !{ptr @.str.7, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../crypto/drbg.c", i32 416, i32 7}
!109 = !{ptr @init_completion.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/completion.h", i32 87, i32 2}
!111 = !{ptr @.str.8, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.9, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../crypto/drbg.c", i32 1769, i32 3}
!114 = !{ptr @.str.10, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @drbg_init_sym_kernel._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @drbg_init_sym_kernel._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.11, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../crypto/drbg.c", i32 1776, i32 46}
!119 = !{ptr @.str.13, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../crypto/drbg.c", i32 1783, i32 3}
!121 = !{ptr @drbg_init_sym_kernel._entry.12, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @drbg_init_sym_kernel._entry_ptr.14, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.16, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../crypto/drbg.c", i32 1793, i32 3}
!125 = !{ptr @drbg_init_sym_kernel._entry.15, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @drbg_init_sym_kernel._entry_ptr.17, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.18, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../crypto/drbg.c", i32 1544, i32 32}
!129 = !{ptr @.str.19, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../crypto/drbg.c", i32 1551, i32 3}
!131 = !{ptr @.str.20, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @drbg_prepare_hrng._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @drbg_prepare_hrng._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @drbg_cores, !135, !"drbg_cores", i1 false, i1 false}
!135 = !{!"../crypto/drbg.c", i32 118, i32 31}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{i64 2149116357}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2153935727, i64 2153936206, i64 2153935764, i64 2153935820, i64 2153935854, i64 2153935878, i64 2153935919, i64 2153935940, i64 2153935968, i64 2153936002}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2153948506, i64 2153948985, i64 2153948543, i64 2153948599, i64 2153948633, i64 2153948657, i64 2153948698, i64 2153948719, i64 2153948747, i64 2153948781}
!151 = !{i64 2153942522, i64 2153943001, i64 2153942559, i64 2153942615, i64 2153942649, i64 2153942673, i64 2153942714, i64 2153942735, i64 2153942763, i64 2153942797}
!152 = !{i64 2153451440, i64 2153451932, i64 2153451477, i64 2153451533, i64 2153451567, i64 2153451591, i64 2153451632, i64 2153451653, i64 2153451681, i64 2153451715}
!153 = !{i64 2153445121, i64 2153445613, i64 2153445158, i64 2153445214, i64 2153445248, i64 2153445272, i64 2153445313, i64 2153445334, i64 2153445362, i64 2153445396}
!154 = !{i64 2153446731, i64 2153447223, i64 2153446768, i64 2153446824, i64 2153446858, i64 2153446882, i64 2153446923, i64 2153446944, i64 2153446972, i64 2153447006}
