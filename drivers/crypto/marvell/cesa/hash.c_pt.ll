; ModuleID = '/llk/IR_all_yes/drivers/crypto/marvell/cesa/hash.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.md5_state = type { [4 x i32], [16 x i32], i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.mv_cesa_ahash_dma_iter = type { %struct.mv_cesa_dma_iter, %struct.mv_cesa_sg_dma_iter }
%struct.mv_cesa_dma_iter = type { i32, i32, i32 }
%struct.mv_cesa_sg_dma_iter = type { i32, ptr, i32, i32 }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mv_cesa_caps = type { i32, i8, ptr, i32, ptr, i32 }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.76, %union.anon.77, i32, i32, ptr, %union.anon.78, i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { ptr }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.75, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.75 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.mv_cesa_ahash_req = type { %struct.mv_cesa_req, %union.anon.80, %struct.mv_cesa_op_ctx, [64 x i8], i32, i64, i32, i8, i8, [8 x i32] }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%union.anon.80 = type { %struct.mv_cesa_ahash_dma_req }
%struct.mv_cesa_ahash_dma_req = type { ptr, i32, ptr, i32 }
%struct.mv_cesa_op_ctx = type { %struct.mv_cesa_sec_accel_desc, %union.anon.79 }
%union.anon.79 = type { %struct.mv_cesa_hash_op_ctx }
%struct.mv_cesa_hash_op_ctx = type { [16 x i32], [8 x i32] }
%struct.mv_cesa_ahash_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }

@mv_md5_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_md5_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_md5_digest, ptr @mv_cesa_md5_export, ptr @mv_cesa_md5_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_sha1_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_sha1_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_sha1_digest, ptr @mv_cesa_sha1_export, ptr @mv_cesa_sha1_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_sha256_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_sha256_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_sha256_digest, ptr @mv_cesa_sha256_export, ptr @mv_cesa_sha256_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_ahmac_md5_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_md5_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_md5_digest, ptr @mv_cesa_md5_export, ptr @mv_cesa_md5_import, ptr @mv_cesa_ahmac_md5_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_ahmac_sha1_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_sha1_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_sha1_digest, ptr @mv_cesa_sha1_export, ptr @mv_cesa_sha1_import, ptr @mv_cesa_ahmac_sha1_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_ahmac_sha256_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_sha256_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_sha256_digest, ptr @mv_cesa_sha256_export, ptr @mv_cesa_sha256_import, ptr @mv_cesa_ahmac_sha256_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, align 128
@mv_cesa_ahash_req_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 767, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid number of src SG\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv_cesa_ahash_req_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/marvell/cesa/hash.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_cesa_ahash_req_init._entry_ptr = internal global ptr @mv_cesa_ahash_req_init._entry, section ".printk_index", align 4
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4
@mv_cesa_ahash_req_ops = internal constant { %struct.mv_cesa_req_ops, [16 x i8] } { %struct.mv_cesa_req_ops { ptr @mv_cesa_ahash_process, ptr @mv_cesa_ahash_step, ptr @mv_cesa_ahash_req_cleanup, ptr @mv_cesa_ahash_complete }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv-md5\00", [25 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mv-sha1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv-sha256\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 767, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"mv_cesa_ahash_req_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 433, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1291, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 87, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1362, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [38 x i8] c"../drivers/crypto/marvell/cesa/hash.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1420, i32 29 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @mv_cesa_ahash_req_init._entry, ptr @mv_cesa_ahash_req_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mv_cesa_ahash_req_ops, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_ahash_req_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_ahash_req_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_md5_init(ptr nocapture noundef writeonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 272)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1073741888, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %2 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 124)
  %3 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %algo_le1.i, align 1
  %state = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1732584193, ptr %state, align 8
  %arrayidx2 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -271733879, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1732584194, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 271733878, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_update(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %1 to i64
  %len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %len, align 8
  %call1 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_final(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %len, align 8
  %conv = trunc i64 %1 to i32
  %mac_src_p.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %2 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_src_p.i, align 4
  %and.i = and i32 %3, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %5 = lshr i32 %4, 16
  %or.i = or i32 %5, %and.i
  %6 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %mac_src_p.i, align 4
  %last_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %7 = ptrtoint ptr %last_req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %last_req, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nbytes, align 8
  %call1 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_finup(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %1 to i64
  %len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %len, align 8
  %conv2 = trunc i64 %add to i32
  %mac_src_p.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_src_p.i, align 4
  %and.i = and i32 %5, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv2) #12
  %7 = lshr i32 %6, 16
  %or.i = or i32 %7, %and.i
  %8 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %mac_src_p.i, align 4
  %last_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %9 = ptrtoint ptr %last_req to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %last_req, align 4
  %call3 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_md5_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 272)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1073741888, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %algo_le1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %2 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 124)
  %3 = ptrtoint ptr %algo_le1.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %algo_le1.i.i, align 1
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1732584193, ptr %state.i, align 8
  %arrayidx2.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -271733879, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1732584194, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 271733878, ptr %arrayidx6.i, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %9 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %12 = lshr i32 %11, 16
  %13 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %14 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_md5_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_count = getelementptr inbounds %struct.md5_state, ptr %out, i32 0, i32 2
  %block = getelementptr inbounds %struct.md5_state, ptr %out, i32 0, i32 1
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %len4.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %8 = ptrtoint ptr %len4.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len4.i, align 8
  %10 = ptrtoint ptr %byte_count to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %byte_count, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %11 = call ptr @memcpy(ptr %out, ptr %state.i, i32 %5)
  %12 = call ptr @memset(ptr %block, i32 0, i32 %7)
  %cache5.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %cache_ptr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %13 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_ptr.i, align 4
  %15 = call ptr @memcpy(ptr %block, ptr %cache5.i, i32 %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_md5_import(ptr noundef %req, ptr nocapture noundef readonly %in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_count = getelementptr inbounds %struct.md5_state, ptr %in, i32 0, i32 2
  %0 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count, align 8
  %block = getelementptr inbounds %struct.md5_state, ptr %in, i32 0, i32 1
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 128
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %entry.mv_cesa_ahash_import.exit_crit_edge

entry.mv_cesa_ahash_import.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

crypto_ahash_init.exit.i:                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i.i = tail call i32 %11(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge

crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end.i:                                         ; preds = %crypto_ahash_init.exit.i
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %conv.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp ult i64 %1, %conv.i
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %16 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op_tmpl.i, align 4
  %or.i.i = or i32 %17, 192
  store i32 %or.i.i, ptr %op_tmpl.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %len8.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %18 = ptrtoint ptr %len8.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %1, ptr %len8.i, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %19 = call ptr @memcpy(ptr %state.i, ptr %in, i32 %7)
  %cache_ptr9.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %20 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cache_ptr9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp180.i = icmp ult i64 %1, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !40

if.then184.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv185.i = trunc i64 %1 to i32
  %rem186.i = urem i32 %conv185.i, %15
  br label %if.end194.i

if.else190.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %1) #15, !srcloc !41
  %asmresult.i304.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i = lshr i64 %asmresult.i304.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else190.i, %if.then184.i
  %__rem.0.i = phi i32 [ %rem186.i, %if.then184.i ], [ %conv.i.i, %if.else190.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool196.not.i = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool196.not.i, label %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, label %if.end198.i

if.end194.i.mv_cesa_ahash_import.exit_crit_edge:  ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end198.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache199.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %22 = call ptr @memcpy(ptr %cache199.i, ptr %block, i32 %__rem.0.i)
  %23 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %__rem.0.i, ptr %cache_ptr9.i, align 4
  br label %mv_cesa_ahash_import.exit

mv_cesa_ahash_import.exit:                        ; preds = %if.end198.i, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge, %entry.mv_cesa_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end198.i ], [ %call2.i.i, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge ], [ 0, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge ], [ -126, %entry.mv_cesa_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_ahash_cra_init(ptr nocapture noundef writeonly %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mv_cesa_ahash_req_ops, ptr %__crt_ctx.i, align 4
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %1 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 272, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha1_init(ptr nocapture noundef writeonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 272)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1342177344, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %2 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %algo_le1.i, align 1
  %state = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %3 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 124)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1732584193, ptr %state, align 8
  %arrayidx2 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -271733879, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1732584194, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 271733878, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.ahash_request, ptr %req, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1009589776, ptr %arrayidx8, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha1_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 272)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1342177344, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %2 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 124)
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1732584193, ptr %state.i, align 8
  %arrayidx2.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -271733879, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1732584194, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 271733878, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.ahash_request, ptr %req, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1009589776, ptr %arrayidx8.i, align 8
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %9 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %12 = lshr i32 %11, 16
  %13 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %14 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha1_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sha1_state, ptr %out, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.sha1_state, ptr %out, i32 0, i32 2
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %len4.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %8 = ptrtoint ptr %len4.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len4.i, align 8
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %count, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %11 = call ptr @memcpy(ptr %out, ptr %state.i, i32 %5)
  %12 = call ptr @memset(ptr %buffer, i32 0, i32 %7)
  %cache5.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %cache_ptr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %13 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_ptr.i, align 4
  %15 = call ptr @memcpy(ptr %buffer, ptr %cache5.i, i32 %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha1_import(ptr noundef %req, ptr nocapture noundef readonly %in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sha1_state, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  %buffer = getelementptr inbounds %struct.sha1_state, ptr %in, i32 0, i32 2
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 128
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %entry.mv_cesa_ahash_import.exit_crit_edge

entry.mv_cesa_ahash_import.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

crypto_ahash_init.exit.i:                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i.i = tail call i32 %11(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge

crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end.i:                                         ; preds = %crypto_ahash_init.exit.i
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %conv.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp ult i64 %1, %conv.i
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %16 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op_tmpl.i, align 4
  %or.i.i = or i32 %17, 192
  store i32 %or.i.i, ptr %op_tmpl.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %len8.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %18 = ptrtoint ptr %len8.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %1, ptr %len8.i, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %19 = call ptr @memcpy(ptr %state.i, ptr %in, i32 %7)
  %cache_ptr9.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %20 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cache_ptr9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp180.i = icmp ult i64 %1, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !40

if.then184.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv185.i = trunc i64 %1 to i32
  %rem186.i = urem i32 %conv185.i, %15
  br label %if.end194.i

if.else190.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %1) #15, !srcloc !41
  %asmresult.i304.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i = lshr i64 %asmresult.i304.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else190.i, %if.then184.i
  %__rem.0.i = phi i32 [ %rem186.i, %if.then184.i ], [ %conv.i.i, %if.else190.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool196.not.i = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool196.not.i, label %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, label %if.end198.i

if.end194.i.mv_cesa_ahash_import.exit_crit_edge:  ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end198.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache199.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %22 = call ptr @memcpy(ptr %cache199.i, ptr %buffer, i32 %__rem.0.i)
  %23 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %__rem.0.i, ptr %cache_ptr9.i, align 4
  br label %mv_cesa_ahash_import.exit

mv_cesa_ahash_import.exit:                        ; preds = %if.end198.i, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge, %entry.mv_cesa_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end198.i ], [ %call2.i.i, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge ], [ 0, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge ], [ -126, %entry.mv_cesa_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha256_init(ptr nocapture noundef writeonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 240)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 268435520, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %2 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %algo_le1.i, align 1
  %state = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %3 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 124)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1779033703, ptr %state, align 8
  %arrayidx2 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1150833019, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1013904242, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1521486534, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.ahash_request, ptr %req, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1359893119, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1694144372, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 528734635, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1541459225, ptr %arrayidx14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha256_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 240)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %1 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 268435520, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %2 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 124)
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1779033703, ptr %state.i, align 8
  %arrayidx2.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1150833019, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1013904242, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1521486534, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.ahash_request, ptr %req, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1359893119, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1694144372, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 528734635, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1541459225, ptr %arrayidx14.i, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %12 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %15 = lshr i32 %14, 16
  %16 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %17 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha256_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sha256_state, ptr %out, i32 0, i32 1
  %buf = getelementptr inbounds %struct.sha256_state, ptr %out, i32 0, i32 2
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %len4.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %8 = ptrtoint ptr %len4.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len4.i, align 8
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %count, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %11 = call ptr @memcpy(ptr %out, ptr %state.i, i32 %5)
  %12 = call ptr @memset(ptr %buf, i32 0, i32 %7)
  %cache5.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %cache_ptr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %13 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_ptr.i, align 4
  %15 = call ptr @memcpy(ptr %buf, ptr %cache5.i, i32 %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha256_import(ptr noundef %req, ptr nocapture noundef readonly %in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sha256_state, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  %buf = getelementptr inbounds %struct.sha256_state, ptr %in, i32 0, i32 2
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 128
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %entry.mv_cesa_ahash_import.exit_crit_edge

entry.mv_cesa_ahash_import.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

crypto_ahash_init.exit.i:                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i.i = tail call i32 %11(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge

crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge: ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end.i:                                         ; preds = %crypto_ahash_init.exit.i
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %conv.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.not.i = icmp ult i64 %1, %conv.i
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %16 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op_tmpl.i, align 4
  %or.i.i = or i32 %17, 192
  store i32 %or.i.i, ptr %op_tmpl.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %len8.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %18 = ptrtoint ptr %len8.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %1, ptr %len8.i, align 8
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %19 = call ptr @memcpy(ptr %state.i, ptr %in, i32 %7)
  %cache_ptr9.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %20 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cache_ptr9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp180.i = icmp ult i64 %1, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !40

if.then184.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv185.i = trunc i64 %1 to i32
  %rem186.i = urem i32 %conv185.i, %15
  br label %if.end194.i

if.else190.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %1) #15, !srcloc !41
  %asmresult.i304.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i = lshr i64 %asmresult.i304.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else190.i, %if.then184.i
  %__rem.0.i = phi i32 [ %rem186.i, %if.then184.i ], [ %conv.i.i, %if.else190.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool196.not.i = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool196.not.i, label %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, label %if.end198.i

if.end194.i.mv_cesa_ahash_import.exit_crit_edge:  ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_import.exit

if.end198.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache199.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %22 = call ptr @memcpy(ptr %cache199.i, ptr %buf, i32 %__rem.0.i)
  %23 = ptrtoint ptr %cache_ptr9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %__rem.0.i, ptr %cache_ptr9.i, align 4
  br label %mv_cesa_ahash_import.exit

mv_cesa_ahash_import.exit:                        ; preds = %if.end198.i, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge, %entry.mv_cesa_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end198.i ], [ %call2.i.i, %crypto_ahash_init.exit.i.mv_cesa_ahash_import.exit_crit_edge ], [ 0, %if.end194.i.mv_cesa_ahash_import.exit_crit_edge ], [ -126, %entry.mv_cesa_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  %tmpl.sroa.11 = alloca [68 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  %2 = ptrtoint ptr %tmpl.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmpl.sroa.11, align 4
  %iv2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %tmpl.sroa.11.32.ctx1.sroa_idx = getelementptr inbounds i8, ptr %tmpl.sroa.11, i32 4
  %3 = call ptr @memcpy(ptr %tmpl.sroa.11.32.ctx1.sroa_idx, ptr %iv2, i32 64)
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 272)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %5 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1610612800, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %6 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 24)
  %7 = call ptr @memcpy(ptr %tmpl.sroa.11.0.op_tmpl.i.sroa_idx, ptr %tmpl.sroa.11, i32 68)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %8 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx, i32 0, i32 32)
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %9 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %algo_le1.i, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_digest(ptr noundef %req) #1 align 64 {
entry:
  %tmpl.sroa.11.i.sroa.4 = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %iv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4, ptr %iv2.i, i32 64)
  %__ctx.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %3 = call ptr @memset(ptr %__ctx.i.i.i, i32 0, i32 272)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %4 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1610612800, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %5 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 28)
  %6 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx, ptr %tmpl.sroa.11.i.sroa.4, i32 64)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %7 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i, i32 0, i32 32)
  %algo_le1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %8 = ptrtoint ptr %algo_le1.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %algo_le1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %10 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %13 = lshr i32 %12, 16
  %14 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %15 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  %istate = alloca %struct.md5_state, align 8
  %ostate = alloca %struct.md5_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %istate) #12
  %0 = call ptr @memset(ptr %istate, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ostate) #12
  %1 = call ptr @memset(ptr %ostate, i32 255, i32 88)
  %call2 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.5, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %istate, ptr noundef nonnull %ostate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep = getelementptr i8, ptr %tfm, i32 260
  %2 = call ptr @memcpy(ptr %uglygep, ptr %istate, i32 16)
  %uglygep29 = getelementptr i8, ptr %tfm, i32 292
  %3 = call ptr @memcpy(ptr %uglygep29, ptr %ostate, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ostate) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %istate) #12
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_ahmac_cra_init(ptr nocapture noundef writeonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mv_cesa_ahash_req_ops, ptr %__crt_ctx.i, align 4
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %1 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 272, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  %tmpl.sroa.11 = alloca [68 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  %2 = ptrtoint ptr %tmpl.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmpl.sroa.11, align 4
  %iv2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %tmpl.sroa.11.32.ctx1.sroa_idx = getelementptr inbounds i8, ptr %tmpl.sroa.11, i32 4
  %3 = call ptr @memcpy(ptr %tmpl.sroa.11.32.ctx1.sroa_idx, ptr %iv2, i32 64)
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 272)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %5 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1879048256, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %6 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 24)
  %7 = call ptr @memcpy(ptr %tmpl.sroa.11.0.op_tmpl.i.sroa_idx, ptr %tmpl.sroa.11, i32 68)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %8 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx, i32 0, i32 32)
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %9 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %algo_le1.i, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_digest(ptr noundef %req) #1 align 64 {
entry:
  %tmpl.sroa.11.i.sroa.4 = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %iv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4, ptr %iv2.i, i32 64)
  %__ctx.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %3 = call ptr @memset(ptr %__ctx.i.i.i, i32 0, i32 272)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %4 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1879048256, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %5 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 28)
  %6 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx, ptr %tmpl.sroa.11.i.sroa.4, i32 64)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %7 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i, i32 0, i32 32)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %9 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %12 = lshr i32 %11, 16
  %13 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %14 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  %istate = alloca %struct.sha1_state, align 8
  %ostate = alloca %struct.sha1_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %istate) #12
  %0 = call ptr @memset(ptr %istate, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %ostate) #12
  %1 = call ptr @memset(ptr %ostate, i32 255, i32 96)
  %call2 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.7, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %istate, ptr noundef nonnull %ostate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep = getelementptr i8, ptr %tfm, i32 260
  %2 = call ptr @memcpy(ptr %uglygep, ptr %istate, i32 20)
  %uglygep29 = getelementptr i8, ptr %tfm, i32 292
  %3 = call ptr @memcpy(ptr %uglygep29, ptr %ostate, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %ostate) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %istate) #12
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  %tmpl.sroa.11 = alloca [68 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  %2 = ptrtoint ptr %tmpl.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmpl.sroa.11, align 4
  %iv2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %tmpl.sroa.11.32.ctx1.sroa_idx = getelementptr inbounds i8, ptr %tmpl.sroa.11, i32 4
  %3 = call ptr @memcpy(ptr %tmpl.sroa.11.32.ctx1.sroa_idx, ptr %iv2, i32 64)
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 272)
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %5 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 805306432, ptr %op_tmpl.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %6 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx, i32 0, i32 24)
  %7 = call ptr @memcpy(ptr %tmpl.sroa.11.0.op_tmpl.i.sroa_idx, ptr %tmpl.sroa.11, i32 68)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %8 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx, i32 0, i32 32)
  %algo_le1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %9 = ptrtoint ptr %algo_le1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %algo_le1.i, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tmpl.sroa.11)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_digest(ptr noundef %req) #1 align 64 {
entry:
  %tmpl.sroa.11.i.sroa.4 = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %iv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4, ptr %iv2.i, i32 64)
  %__ctx.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %3 = call ptr @memset(ptr %__ctx.i.i.i, i32 0, i32 272)
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %4 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 805306432, ptr %op_tmpl.i.i, align 4
  %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %5 = call ptr @memset(ptr %tmpl.sroa.7.0.op_tmpl.i.sroa_idx.i, i32 0, i32 28)
  %6 = call ptr @memcpy(ptr %tmpl.sroa.11.i.sroa.4.0.tmpl.sroa.11.0.op_tmpl.i.sroa_idx.i.sroa_idx, ptr %tmpl.sroa.11.i.sroa.4, i32 64)
  %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 84
  %7 = call ptr @memset(ptr %tmpl.sroa.12.0.op_tmpl.i.sroa_idx.i, i32 0, i32 32)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpl.sroa.11.i.sroa.4)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %9 to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %len.i, align 8
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %12 = lshr i32 %11, 16
  %13 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_src_p.i.i, align 4
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %14 = ptrtoint ptr %last_req.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %last_req.i, align 4
  %call3.i = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) #12
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  %istate = alloca %struct.sha256_state, align 8
  %ostate = alloca %struct.sha256_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %istate) #12
  %0 = call ptr @memset(ptr %istate, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %ostate) #12
  %1 = call ptr @memset(ptr %ostate, i32 255, i32 104)
  %call2 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.8, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %istate, ptr noundef nonnull %ostate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep = getelementptr i8, ptr %tfm, i32 260
  %2 = call ptr @memcpy(ptr %uglygep, ptr %istate, i32 32)
  %uglygep29 = getelementptr i8, ptr %tfm, i32 292
  %3 = call ptr @memcpy(ptr %uglygep29, ptr %ostate, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %ostate) #12
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %istate) #12
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  %iter.i.i = alloca %struct.mv_cesa_ahash_dma_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src.i, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %3 to i64
  %call1.i = tail call i32 @sg_nents_for_len(ptr noundef %1, i64 noundef %conv.i) #12
  %src_nents.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %4 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1.i, ptr %src_nents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %5 = load ptr, ptr @cesa_dev, align 4
  %dev.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #16
  %8 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_nents.i, align 8
  br label %mv_cesa_ahash_req_init.exit

if.end.i:                                         ; preds = %entry
  %cache_ptr.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %10 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_ptr.i.i, align 4
  %12 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes.i, align 8
  %add.i.i = add i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 64
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %last_req.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %14 = ptrtoint ptr %last_req.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %last_req.i.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.i, align 4
  %cache.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %cache.i.i, i32 %11
  %call7.i.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %17, i32 noundef %call1.i, ptr noundef %add.ptr.i.i, i32 noundef %13, i32 noundef 0) #12
  %18 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes.i, align 8
  %20 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cache_ptr.i.i, align 4
  %add10.i.i = add i32 %21, %19
  store i32 %add10.i.i, ptr %cache_ptr.i.i, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %22 = load ptr, ptr @cesa_dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %has_tdma.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %has_tdma.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_tdma.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not.i = icmp eq i8 %26, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end4_crit_edge, label %if.then9.i

if.end7.i.if.end4_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then9.i:                                       ; preds = %if.end7.i
  %flags1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i18.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i18.i, i32 2592, i32 3264
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %iter.i.i) #12
  %29 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %iter.i.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %iter.i.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %iter.i.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 1
  %33 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 2
  %34 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 3
  %chain.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %35 = call ptr @memset(ptr %iter.i.i, i32 255, i32 28)
  %36 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %chain.i.i, align 4
  %last.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %last.i.i, align 4
  %op_tmpl.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %38 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %op_tmpl.i.i, align 4
  %40 = and i32 %39, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %40)
  %cmp.i.i.i = icmp eq i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not.i.i = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not.i.i, label %if.then9.i.if.end12.i.i_crit_edge, label %if.then6.i.i

if.then9.i.if.end12.i.i_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then6.i.i:                                     ; preds = %if.then9.i
  %dev.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %22, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %43 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src.i, align 4
  %call8.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %42, ptr noundef %44, i32 noundef %call1.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then6.i.i.err.i.i_crit_edge, label %if.then6.i.i.if.end12.i.i_crit_edge

if.then6.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then6.i.i.err.i.i_crit_edge:                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i.i

if.end12.i.i:                                     ; preds = %if.then6.i.i.if.end12.i.i_crit_edge, %if.then9.i.if.end12.i.i_crit_edge
  %45 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %chain.i.i, align 4
  %46 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nbytes.i, align 8
  %48 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cache_ptr.i.i, align 4
  %add.i.i.i = add i32 %49, %47
  %last_req.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %50 = ptrtoint ptr %last_req.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %last_req.i.i.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i = icmp eq i8 %51, 0
  %and.i.i.i = and i32 %add.i.i.i, -64
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %and.i.i.i, i32 %add.i.i.i
  %52 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i.i.i, ptr %iter.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %53 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %sram_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sram_size.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %55, -128
  %56 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %spec.select.i.i.i) #12
  %57 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %30, align 4
  %58 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %29, align 4
  %59 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src.i, align 4
  %61 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %33, align 4
  %62 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %32, align 4
  %63 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %31, align 4
  %64 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %49, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i157.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i157.i.i, label %if.end12.i.i.if.end18.i.i_crit_edge, label %if.end.i.i.i

if.end12.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.end.i.i.i:                                     ; preds = %if.end12.i.i
  %dma.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %53, i32 0, i32 6
  %65 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma.i.i.i.i, align 4
  %cache_pool.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %cache_pool.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cache_pool.i.i.i.i, align 4
  %cache_dma.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %call.i.i.i.i = tail call ptr @dma_pool_alloc(ptr noundef %68, i32 noundef %cond.i.i, ptr noundef %cache_dma.i.i.i.i) #12
  %cache.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %69 = ptrtoint ptr %cache.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i.i.i, ptr %cache.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end.i.i.i.err_free_tdma.i.i_crit_edge, label %mv_cesa_ahash_dma_add_cache.exit.i.i

if.end.i.i.i.err_free_tdma.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tdma.i.i

mv_cesa_ahash_dma_add_cache.exit.i.i:             ; preds = %if.end.i.i.i
  %cache4.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %70 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cache_ptr.i.i, align 4
  %72 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %cache4.i.i.i, i32 %71)
  %73 = ptrtoint ptr %cache_dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cache_dma.i.i.i.i, align 4
  %75 = load i32, ptr %cache_ptr.i.i, align 4
  %call7.i.i.i = tail call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %chain.i.i, i32 noundef 128, i32 noundef %74, i32 noundef %75, i32 noundef -2147483648, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool16.not.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18thread-pre-split.i.i, label %mv_cesa_ahash_dma_add_cache.exit.i.i.err_free_tdma.i.i_crit_edge

mv_cesa_ahash_dma_add_cache.exit.i.i.err_free_tdma.i.i_crit_edge: ; preds = %mv_cesa_ahash_dma_add_cache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tdma.i.i

if.end18thread-pre-split.i.i:                     ; preds = %mv_cesa_ahash_dma_add_cache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr.i.i = load ptr, ptr %32, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end18thread-pre-split.i.i, %if.end12.i.i.if.end18.i.i_crit_edge
  %77 = phi ptr [ %.pr.i.i, %if.end18thread-pre-split.i.i ], [ %60, %if.end12.i.i.if.end18.i.i_crit_edge ]
  %tobool20.not.i.i = icmp eq ptr %77, null
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.end18.i.i.while.cond.i.i_crit_edge

if.end18.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end18.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %mv_cesa_dma_add_frag.exit.i.i.while.cond.i.i_crit_edge, %if.end18.i.i.while.cond.i.i_crit_edge
  %op.0.i.i = phi ptr [ %retval.0.i164.i.i, %mv_cesa_dma_add_frag.exit.i.i.while.cond.i.i_crit_edge ], [ null, %if.end18.i.i.while.cond.i.i_crit_edge ]
  %call25.i.i = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %chain.i.i, ptr noundef nonnull %iter.i.i, ptr noundef %31, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %while.cond.i.i.err_free_tdma.i.i_crit_edge

while.cond.i.i.err_free_tdma.i.i_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tdma.i.i

if.end28.i.i:                                     ; preds = %while.cond.i.i
  %78 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %30, align 4
  %80 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %34, align 4
  %81 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %29, align 4
  %add.i.i.i.i = add i32 %82, %79
  store i32 %add.i.i.i.i, ptr %29, align 4
  %83 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iter.i.i, align 4
  %sub.i.i160.i.i = sub i32 %84, %add.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %85 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i.i161.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %sram_size.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sram_size.i.i161.i.i, align 4
  %sub2.i.i.i.i = add i32 %87, -128
  %88 = call i32 @llvm.umin.i32(i32 %sub.i.i160.i.i, i32 %sub2.i.i.i.i) #12
  %89 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.i.i.not.i.i = icmp eq i32 %88, 0
  br i1 %tobool.i.i.not.i.i, label %if.end28.i.i.if.end42.i.i_crit_edge, label %if.end32.i.i

if.end28.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.end32.i.i:                                     ; preds = %if.end28.i.i
  %call.i.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %op_tmpl.i.i, i1 noundef zeroext false, i32 noundef %cond.i.i) #12
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end32.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge, label %if.end.i163.i.i

if.end32.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit.i.i

if.end.i163.i.i:                                  ; preds = %if.end32.i.i
  %mac_digest.i.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call.i.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %mac_digest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mac_digest.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %91, -65536
  %92 = call i32 @llvm.bswap.i32(i32 %79) #12
  %93 = lshr i32 %92, 16
  %or.i.i.i.i = or i32 %and.i.i.i.i, %93
  %94 = ptrtoint ptr %mac_digest.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or.i.i.i.i, ptr %mac_digest.i.i.i.i, align 4
  %call2.i.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i162.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i162.i.i, label %if.end5.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = inttoptr i32 %call2.i.i.i to ptr
  br label %mv_cesa_dma_add_frag.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i163.i.i
  %96 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %op_tmpl.i.i, align 4
  %98 = and i32 %97, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %98)
  %cmp.i18.i.i.i = icmp eq i32 %98, 64
  br i1 %cmp.i18.i.i.i, label %if.then7.i.i.i, label %if.end5.i.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge

if.end5.i.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i20.i.i.i = or i32 %97, 192
  %99 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i20.i.i.i, ptr %op_tmpl.i.i, align 4
  br label %mv_cesa_dma_add_frag.exit.i.i

mv_cesa_dma_add_frag.exit.i.i:                    ; preds = %if.then7.i.i.i, %if.end5.i.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge, %if.then3.i.i.i, %if.end32.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge
  %retval.0.i164.i.i = phi ptr [ %95, %if.then3.i.i.i ], [ %call.i.i.i, %if.end32.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge ], [ %call.i.i.i, %if.then7.i.i.i ], [ %call.i.i.i, %if.end5.i.i.i.mv_cesa_dma_add_frag.exit.i.i_crit_edge ]
  %cmp.i165.i.i = icmp ugt ptr %retval.0.i164.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165.i.i, label %if.then37.i.i, label %mv_cesa_dma_add_frag.exit.i.i.while.cond.i.i_crit_edge

mv_cesa_dma_add_frag.exit.i.i.while.cond.i.i_crit_edge: ; preds = %mv_cesa_dma_add_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then37.i.i:                                    ; preds = %mv_cesa_dma_add_frag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %retval.0.i164.i.i to i32
  br label %err_free_tdma.i.i

if.else.i.i:                                      ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %30, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else.i.i, %if.end28.i.i.if.end42.i.i_crit_edge
  %op.1.i.i = phi ptr [ null, %if.else.i.i ], [ %op.0.i.i, %if.end28.i.i.if.end42.i.i_crit_edge ]
  %frag_len.0.i.i = phi i32 [ %102, %if.else.i.i ], [ %79, %if.end28.i.i.if.end42.i.i_crit_edge ]
  %103 = ptrtoint ptr %last_req.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %last_req.i.i.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool43.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool43.not.i.i, label %if.else47.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %if.end42.i.i
  %req.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %len1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %105 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %len1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %106)
  %cmp.i166.i.i = icmp ugt i64 %106, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_len.0.i.i)
  %tobool.not.i167.i.i = icmp eq i32 %frag_len.0.i.i, 0
  %or.cond.i.i.i = or i1 %tobool.not.i167.i.i, %cmp.i166.i.i
  br i1 %or.cond.i.i.i, label %if.end12.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then44.i.i
  %call.i.i168.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %op_tmpl.i.i, i1 noundef zeroext false, i32 noundef %cond.i.i) #12
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i168.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  %mac_digest.i.i.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call.i.i168.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %mac_digest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mac_digest.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %108, -65536
  %109 = call i32 @llvm.bswap.i32(i32 %frag_len.0.i.i) #12
  %110 = lshr i32 %109, 16
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %110
  %111 = ptrtoint ptr %mac_digest.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.i.i.i.i.i, ptr %mac_digest.i.i.i.i.i, align 4
  %call2.i.i.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = inttoptr i32 %call2.i.i.i.i to ptr
  br label %mv_cesa_dma_add_frag.exit.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %113 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %op_tmpl.i.i, align 4
  %115 = and i32 %114, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %115)
  %cmp.i18.i.i.i.i = icmp eq i32 %115, 64
  br i1 %cmp.i18.i.i.i.i, label %if.then7.i.i.i.i, label %if.end5.i.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge

if.end5.i.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i20.i.i.i.i = or i32 %114, 192
  %116 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or.i20.i.i.i.i, ptr %op_tmpl.i.i, align 4
  br label %mv_cesa_dma_add_frag.exit.i.i.i

mv_cesa_dma_add_frag.exit.i.i.i:                  ; preds = %if.then7.i.i.i.i, %if.end5.i.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge, %if.then3.i.i.i.i, %if.then.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %112, %if.then3.i.i.i.i ], [ %call.i.i168.i.i, %if.then.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge ], [ %call.i.i168.i.i, %if.then7.i.i.i.i ], [ %call.i.i168.i.i, %if.end5.i.i.i.i.mv_cesa_dma_add_frag.exit.i.i.i_crit_edge ]
  %cmp.i.i169.i.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i169.i.i, label %mv_cesa_dma_add_frag.exit.i.i.i.if.end54.i.i_crit_edge, label %if.end.i174.i.i

mv_cesa_dma_add_frag.exit.i.i.i.if.end54.i.i_crit_edge: ; preds = %mv_cesa_dma_add_frag.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.end.i174.i.i:                                  ; preds = %mv_cesa_dma_add_frag.exit.i.i.i
  %117 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %len1.i.i.i, align 8
  %conv.i.i.i = trunc i64 %118 to i32
  %mac_src_p.i.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %retval.0.i.i.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %mac_src_p.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mac_src_p.i.i.i.i, align 4
  %and.i.i170.i.i = and i32 %120, -65536
  %121 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #12
  %122 = lshr i32 %121, 16
  %or.i.i171.i.i = or i32 %122, %and.i.i170.i.i
  %123 = ptrtoint ptr %mac_src_p.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or.i.i171.i.i, ptr %mac_src_p.i.i.i.i, align 4
  %124 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %retval.0.i.i.i.i, align 4
  %126 = and i32 %125, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %126)
  %cmp.i2.i.i.i = icmp eq i32 %126, 64
  %cond.i.i.i = select i1 %cmp.i2.i.i.i, i32 0, i32 128
  %and.i3.i.i.i = and i32 %125, -193
  %or.i4.i.i.i = or i32 %cond.i.i.i, %and.i3.i.i.i
  %127 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i4.i.i.i, ptr %retval.0.i.i.i.i, align 4
  %call7.i172.i.i = call i32 @mv_cesa_dma_add_result_op(ptr noundef %chain.i.i, i32 noundef 0, i32 noundef 128, i32 noundef 1073741824, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i172.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i172.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i174.i.i.if.end54.i.i_crit_edge, label %if.end.i174.i.i.if.then56.i.i_crit_edge

if.end.i174.i.i.if.then56.i.i_crit_edge:          ; preds = %if.end.i174.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i.i

if.end.i174.i.i.if.end54.i.i_crit_edge:           ; preds = %if.end.i174.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.end12.i.i.i:                                   ; preds = %if.then44.i.i
  %128 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %req.i.i.i, align 4
  %tobool.not.i5.i.i.i = icmp eq ptr %129, null
  br i1 %tobool.not.i5.i.i.i, label %if.end.i7.i.i.i, label %if.end12.i.i.i.if.end17.i.i.i_crit_edge

if.end12.i.i.i.if.end17.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i.i

if.end.i7.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %130 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i175.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %dma.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma.i.i175.i.i, align 4
  %padding_pool.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %padding_pool.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %padding_pool.i.i.i.i, align 4
  %padding_dma.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %call.i6.i.i.i = call ptr @dma_pool_alloc(ptr noundef %134, i32 noundef %cond.i.i, ptr noundef %padding_dma.i.i.i.i) #12
  %135 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i6.i.i.i, ptr %req.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %call.i6.i.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i7.i.i.i.if.then56.i.i_crit_edge, label %if.end.i7.i.i.i.if.end17.i.i.i_crit_edge

if.end.i7.i.i.i.if.end17.i.i.i_crit_edge:         ; preds = %if.end.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i.i

if.end.i7.i.i.i.if.then56.i.i_crit_edge:          ; preds = %if.end.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i.i

if.end17.i.i.i:                                   ; preds = %if.end.i7.i.i.i.if.end17.i.i.i_crit_edge, %if.end12.i.i.i.if.end17.i.i.i_crit_edge
  %136 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %req.i.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -128, ptr %137, align 1
  %139 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %len1.i.i.i, align 8
  %141 = trunc i64 %140 to i32
  %conv.i.i.i.i.i = and i32 %141, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv.i.i.i.i.i)
  %cmp.i.i9.i.i.i = icmp ult i32 %conv.i.i.i.i.i, 56
  %..i.i.i.i.i = select i1 %cmp.i.i9.i.i.i, i32 56, i32 120
  %cond.i.i.i.i.i = sub nsw i32 %..i.i.i.i.i, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %137, i32 1
  %sub.i.i176.i.i = add nsw i32 %cond.i.i.i.i.i, -1
  %142 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %sub.i.i176.i.i)
  %algo_le.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %143 = ptrtoint ptr %algo_le.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %algo_le.i.i.i.i, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i10.i.i.i = icmp eq i8 %144, 0
  %145 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %len1.i.i.i, align 8
  %shl4.i.i.i.i = shl i64 %146, 3
  %147 = call i64 @llvm.bswap.i64(i64 %shl4.i.i.i.i) #12
  %.sink.i.i.i.i = select i1 %tobool.not.i10.i.i.i, i64 %shl4.i.i.i.i, i64 %147
  %148 = getelementptr i8, ptr %137, i32 %cond.i.i.i.i.i
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 8)
  store i64 %.sink.i.i.i.i, ptr %148, align 1
  %add.i.i177.i.i = add nsw i32 %cond.i.i.i.i.i, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %150 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %sram_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sram_size.i.i.i, align 4
  %sub.i.i.i = sub i32 -128, %frag_len.0.i.i
  %sub19.i.i.i = add i32 %152, %sub.i.i.i
  %153 = call i32 @llvm.umin.i32(i32 %sub19.i.i.i, i32 %add.i.i177.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool23.not.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool23.not.i.i.i, label %if.end17.i.i.i.if.end41.i.i.i_crit_edge, label %if.then24.i.i.i

if.end17.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end17.i.i.i
  %add.i178.i.i = add i32 %frag_len.0.i.i, 128
  %padding_dma.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %154 = ptrtoint ptr %padding_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %padding_dma.i.i.i, align 4
  %call25.i.i.i = call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %chain.i.i, i32 noundef %add.i178.i.i, i32 noundef %155, i32 noundef %153, i32 noundef -2147483648, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %call25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end29.i.i.i, label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = inttoptr i32 %call25.i.i.i to ptr
  br label %if.end54.i.i

if.end29.i.i.i:                                   ; preds = %if.then24.i.i.i
  %call.i11.i.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %op_tmpl.i.i, i1 noundef zeroext false, i32 noundef %cond.i.i) #12
  %cmp.i.i12.i.i.i = icmp ugt ptr %call.i11.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i12.i.i.i, label %if.end29.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge, label %if.end.i18.i.i.i

if.end29.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge: ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit25.i.i.i

if.end.i18.i.i.i:                                 ; preds = %if.end29.i.i.i
  %add31.i.i.i = add i32 %153, %frag_len.0.i.i
  %mac_digest.i.i13.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call.i11.i.i.i, i32 0, i32 6
  %157 = ptrtoint ptr %mac_digest.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mac_digest.i.i13.i.i.i, align 4
  %and.i.i14.i.i.i = and i32 %158, -65536
  %159 = call i32 @llvm.bswap.i32(i32 %add31.i.i.i) #12
  %160 = lshr i32 %159, 16
  %or.i.i15.i.i.i = or i32 %and.i.i14.i.i.i, %160
  %161 = ptrtoint ptr %mac_digest.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or.i.i15.i.i.i, ptr %mac_digest.i.i13.i.i.i, align 4
  %call2.i16.i.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %call2.i16.i.i.i, 0
  br i1 %tobool.not.i17.i.i.i, label %if.end5.i21.i.i.i, label %if.then3.i19.i.i.i

if.then3.i19.i.i.i:                               ; preds = %if.end.i18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = inttoptr i32 %call2.i16.i.i.i to ptr
  br label %mv_cesa_dma_add_frag.exit25.i.i.i

if.end5.i21.i.i.i:                                ; preds = %if.end.i18.i.i.i
  %163 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %op_tmpl.i.i, align 4
  %165 = and i32 %164, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %165)
  %cmp.i18.i20.i.i.i = icmp eq i32 %165, 64
  br i1 %cmp.i18.i20.i.i.i, label %if.then7.i23.i.i.i, label %if.end5.i21.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge

if.end5.i21.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge: ; preds = %if.end5.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_dma_add_frag.exit25.i.i.i

if.then7.i23.i.i.i:                               ; preds = %if.end5.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i20.i22.i.i.i = or i32 %164, 192
  %166 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or.i20.i22.i.i.i, ptr %op_tmpl.i.i, align 4
  br label %mv_cesa_dma_add_frag.exit25.i.i.i

mv_cesa_dma_add_frag.exit25.i.i.i:                ; preds = %if.then7.i23.i.i.i, %if.end5.i21.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge, %if.then3.i19.i.i.i, %if.end29.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge
  %retval.0.i24.i.i.i = phi ptr [ %162, %if.then3.i19.i.i.i ], [ %call.i11.i.i.i, %if.end29.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge ], [ %call.i11.i.i.i, %if.then7.i23.i.i.i ], [ %call.i11.i.i.i, %if.end5.i21.i.i.i.mv_cesa_dma_add_frag.exit25.i.i.i_crit_edge ]
  %cmp.i26.i.i.i = icmp ugt ptr %retval.0.i24.i.i.i, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i177.i.i, i32 %sub19.i.i.i)
  %cmp36.i.i.i = icmp ule i32 %add.i.i177.i.i, %sub19.i.i.i
  %or.cond1.i.i.i = select i1 %cmp.i26.i.i.i, i1 true, i1 %cmp36.i.i.i
  br i1 %or.cond1.i.i.i, label %mv_cesa_dma_add_frag.exit25.i.i.i.if.end54.i.i_crit_edge, label %mv_cesa_dma_add_frag.exit25.i.i.i.if.end41.i.i.i_crit_edge

mv_cesa_dma_add_frag.exit25.i.i.i.if.end41.i.i.i_crit_edge: ; preds = %mv_cesa_dma_add_frag.exit25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i.i

mv_cesa_dma_add_frag.exit25.i.i.i.if.end54.i.i_crit_edge: ; preds = %mv_cesa_dma_add_frag.exit25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.end41.i.i.i:                                   ; preds = %mv_cesa_dma_add_frag.exit25.i.i.i.if.end41.i.i.i_crit_edge, %if.end17.i.i.i.if.end41.i.i.i_crit_edge
  %padding_dma42.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %167 = ptrtoint ptr %padding_dma42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %padding_dma42.i.i.i, align 4
  %add43.i.i.i = add i32 %168, %153
  %sub44.i.i.i = sub nsw i32 %add.i.i177.i.i, %153
  %call45.i.i.i = call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %chain.i.i, i32 noundef 128, i32 noundef %add43.i.i.i, i32 noundef %sub44.i.i.i, i32 noundef -2147483648, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %call45.i.i.i, 0
  br i1 %tobool46.not.i.i.i, label %if.end49.i.i.i, label %if.then47.i.i.i

if.then47.i.i.i:                                  ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = inttoptr i32 %call45.i.i.i to ptr
  br label %if.end54.i.i

if.end49.i.i.i:                                   ; preds = %if.end41.i.i.i
  %call.i27.i.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %op_tmpl.i.i, i1 noundef zeroext false, i32 noundef %cond.i.i) #12
  %cmp.i.i28.i.i.i = icmp ugt ptr %call.i27.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i28.i.i.i, label %if.end49.i.i.i.if.end54.i.i_crit_edge, label %if.end.i34.i.i.i

if.end49.i.i.i.if.end54.i.i_crit_edge:            ; preds = %if.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.end.i34.i.i.i:                                 ; preds = %if.end49.i.i.i
  %mac_digest.i.i29.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call.i27.i.i.i, i32 0, i32 6
  %170 = ptrtoint ptr %mac_digest.i.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mac_digest.i.i29.i.i.i, align 4
  %and.i.i30.i.i.i = and i32 %171, -65536
  %172 = call i32 @llvm.bswap.i32(i32 %sub44.i.i.i) #12
  %173 = lshr i32 %172, 16
  %or.i.i31.i.i.i = or i32 %and.i.i30.i.i.i, %173
  %174 = ptrtoint ptr %mac_digest.i.i29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or.i.i31.i.i.i, ptr %mac_digest.i.i29.i.i.i, align 4
  %call2.i32.i.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i32.i.i.i)
  %tobool.not.i33.i.i.i = icmp eq i32 %call2.i32.i.i.i, 0
  br i1 %tobool.not.i33.i.i.i, label %if.end5.i37.i.i.i, label %if.then3.i35.i.i.i

if.then3.i35.i.i.i:                               ; preds = %if.end.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = inttoptr i32 %call2.i32.i.i.i to ptr
  br label %if.end54.i.i

if.end5.i37.i.i.i:                                ; preds = %if.end.i34.i.i.i
  %176 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %op_tmpl.i.i, align 4
  %178 = and i32 %177, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %178)
  %cmp.i18.i36.i.i.i = icmp eq i32 %178, 64
  br i1 %cmp.i18.i36.i.i.i, label %if.then7.i39.i.i.i, label %if.end5.i37.i.i.i.if.end54.i.i_crit_edge

if.end5.i37.i.i.i.if.end54.i.i_crit_edge:         ; preds = %if.end5.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then7.i39.i.i.i:                               ; preds = %if.end5.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i20.i38.i.i.i = or i32 %177, 192
  %179 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i20.i38.i.i.i, ptr %op_tmpl.i.i, align 4
  br label %if.end54.i.i

if.else47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_len.0.i.i)
  %tobool48.not.i.i = icmp eq i32 %frag_len.0.i.i, 0
  br i1 %tobool48.not.i.i, label %if.else47.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

if.else47.i.i.if.end54.i.i_crit_edge:             ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.else47.i.i
  %call.i180.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %op_tmpl.i.i, i1 noundef zeroext false, i32 noundef %cond.i.i) #12
  %cmp.i.i181.i.i = icmp ugt ptr %call.i180.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i181.i.i, label %if.then49.i.i.if.end54.i.i_crit_edge, label %if.end.i187.i.i

if.then49.i.i.if.end54.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.end.i187.i.i:                                  ; preds = %if.then49.i.i
  %mac_digest.i.i182.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call.i180.i.i, i32 0, i32 6
  %180 = ptrtoint ptr %mac_digest.i.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mac_digest.i.i182.i.i, align 4
  %and.i.i183.i.i = and i32 %181, -65536
  %182 = call i32 @llvm.bswap.i32(i32 %frag_len.0.i.i) #12
  %183 = lshr i32 %182, 16
  %or.i.i184.i.i = or i32 %and.i.i183.i.i, %183
  %184 = ptrtoint ptr %mac_digest.i.i182.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i.i184.i.i, ptr %mac_digest.i.i182.i.i, align 4
  %call2.i185.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i185.i.i)
  %tobool.not.i186.i.i = icmp eq i32 %call2.i185.i.i, 0
  br i1 %tobool.not.i186.i.i, label %if.end5.i190.i.i, label %if.then3.i188.i.i

if.then3.i188.i.i:                                ; preds = %if.end.i187.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = inttoptr i32 %call2.i185.i.i to ptr
  br label %if.end54.i.i

if.end5.i190.i.i:                                 ; preds = %if.end.i187.i.i
  %186 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %op_tmpl.i.i, align 4
  %188 = and i32 %187, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %188)
  %cmp.i18.i189.i.i = icmp eq i32 %188, 64
  br i1 %cmp.i18.i189.i.i, label %if.then7.i192.i.i, label %if.end5.i190.i.i.if.end54.i.i_crit_edge

if.end5.i190.i.i.if.end54.i.i_crit_edge:          ; preds = %if.end5.i190.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then7.i192.i.i:                                ; preds = %if.end5.i190.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i20.i191.i.i = or i32 %187, 192
  %189 = ptrtoint ptr %op_tmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or.i20.i191.i.i, ptr %op_tmpl.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then7.i192.i.i, %if.end5.i190.i.i.if.end54.i.i_crit_edge, %if.then3.i188.i.i, %if.then49.i.i.if.end54.i.i_crit_edge, %if.else47.i.i.if.end54.i.i_crit_edge, %if.then7.i39.i.i.i, %if.end5.i37.i.i.i.if.end54.i.i_crit_edge, %if.then3.i35.i.i.i, %if.end49.i.i.i.if.end54.i.i_crit_edge, %if.then47.i.i.i, %mv_cesa_dma_add_frag.exit25.i.i.i.if.end54.i.i_crit_edge, %if.then27.i.i.i, %if.end.i174.i.i.if.end54.i.i_crit_edge, %mv_cesa_dma_add_frag.exit.i.i.i.if.end54.i.i_crit_edge
  %op.2.i.i = phi ptr [ %op.1.i.i, %if.else47.i.i.if.end54.i.i_crit_edge ], [ %156, %if.then27.i.i.i ], [ %169, %if.then47.i.i.i ], [ %retval.0.i.i.i.i, %mv_cesa_dma_add_frag.exit.i.i.i.if.end54.i.i_crit_edge ], [ %retval.0.i24.i.i.i, %mv_cesa_dma_add_frag.exit25.i.i.i.if.end54.i.i_crit_edge ], [ %175, %if.then3.i35.i.i.i ], [ %call.i27.i.i.i, %if.end49.i.i.i.if.end54.i.i_crit_edge ], [ %call.i27.i.i.i, %if.then7.i39.i.i.i ], [ %call.i27.i.i.i, %if.end5.i37.i.i.i.if.end54.i.i_crit_edge ], [ %185, %if.then3.i188.i.i ], [ %call.i180.i.i, %if.then49.i.i.if.end54.i.i_crit_edge ], [ %call.i180.i.i, %if.then7.i192.i.i ], [ %call.i180.i.i, %if.end5.i190.i.i.if.end54.i.i_crit_edge ], [ %retval.0.i.i.i.i, %if.end.i174.i.i.if.end54.i.i_crit_edge ]
  %cmp.i195.i.i = icmp ugt ptr %op.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195.i.i, label %if.end54.i.i.if.then56.i.i_crit_edge, label %if.end58.i.i

if.end54.i.i.if.then56.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.end54.i.i.if.then56.i.i_crit_edge, %if.end.i7.i.i.i.if.then56.i.i_crit_edge, %if.end.i174.i.i.if.then56.i.i_crit_edge
  %op.2206.i.i = phi ptr [ %op.2.i.i, %if.end54.i.i.if.then56.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i174.i.i.if.then56.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i7.i.i.i.if.then56.i.i_crit_edge ]
  %190 = ptrtoint ptr %op.2206.i.i to i32
  br label %err_free_tdma.i.i

if.end58.i.i:                                     ; preds = %if.end54.i.i
  %191 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %last.i.i, align 4
  %flags61.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %192, i32 0, i32 7
  %193 = ptrtoint ptr %flags61.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags61.i.i, align 4
  %and62.i.i = and i32 %194, 134217727
  %tobool63.not.i.i = icmp eq ptr %op.2.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and62.i.i)
  %cmp.not.i.i = icmp eq i32 %and62.i.i, 3
  %or.cond.i.i = select i1 %tobool63.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end58.i.i.if.end70.i.i_crit_edge, label %if.then64.i.i

if.end58.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i.i

if.then64.i.i:                                    ; preds = %if.end58.i.i
  %call66.i.i = call i32 @mv_cesa_dma_add_dummy_end(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.then64.i.i.if.end70.i.i_crit_edge, label %if.then64.i.i.err_free_tdma.i.i_crit_edge

if.then64.i.i.err_free_tdma.i.i_crit_edge:        ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tdma.i.i

if.then64.i.i.if.end70.i.i_crit_edge:             ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then64.i.i.if.end70.i.i_crit_edge, %if.end58.i.i.if.end70.i.i_crit_edge
  %195 = ptrtoint ptr %last_req.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %last_req.i.i.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool72.not.i.i = icmp eq i8 %196, 0
  br i1 %tobool72.not.i.i, label %if.then73.i.i, label %if.end70.i.i.if.end78.i.i_crit_edge

if.end70.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i.i

if.then73.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nbytes.i, align 8
  %199 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cache_ptr.i.i, align 4
  %add.i21.i = add i32 %200, %198
  %201 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %iter.i.i, align 4
  %sub.i.i = sub i32 %add.i21.i, %202
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then73.i.i, %if.end70.i.i.if.end78.i.i_crit_edge
  %storemerge.i.i = phi i32 [ %sub.i.i, %if.then73.i.i ], [ 0, %if.end70.i.i.if.end78.i.i_crit_edge ]
  %203 = ptrtoint ptr %cache_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %storemerge.i.i, ptr %cache_ptr.i.i, align 4
  %204 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %last.i.i, align 4
  %flags81.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %205, i32 0, i32 7
  %206 = ptrtoint ptr %flags81.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %flags81.i.i, align 4
  %or.i.i = or i32 %207, 536870912
  store i32 %or.i.i, ptr %flags81.i.i, align 4
  br i1 %cmp.not.i.i, label %if.end78.i.i.if.end88.i.i_crit_edge, label %if.then83.i.i

if.end78.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i.i

if.then83.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %last.i.i, align 4
  %flags86.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %209, i32 0, i32 7
  %210 = ptrtoint ptr %flags86.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags86.i.i, align 4
  %or87.i.i = or i32 %211, 268435456
  store i32 %or87.i.i, ptr %flags86.i.i, align 4
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then83.i.i, %if.end78.i.i.if.end88.i.i_crit_edge
  br i1 %cmp.i.i.i, label %if.end88.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge, label %if.then90.i.i

if.end88.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge: ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_req_init.exit.i

if.then90.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %chain.i.i, align 4
  %flags93.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %213, i32 0, i32 7
  %214 = ptrtoint ptr %flags93.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flags93.i.i, align 4
  %or94.i.i = or i32 %215, 134217728
  store i32 %or94.i.i, ptr %flags93.i.i, align 4
  br label %mv_cesa_ahash_dma_req_init.exit.i

err_free_tdma.i.i:                                ; preds = %if.then64.i.i.err_free_tdma.i.i_crit_edge, %if.then56.i.i, %if.then37.i.i, %while.cond.i.i.err_free_tdma.i.i_crit_edge, %mv_cesa_ahash_dma_add_cache.exit.i.i.err_free_tdma.i.i_crit_edge, %if.end.i.i.i.err_free_tdma.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call7.i.i.i, %mv_cesa_ahash_dma_add_cache.exit.i.i.err_free_tdma.i.i_crit_edge ], [ %100, %if.then37.i.i ], [ %190, %if.then56.i.i ], [ %call66.i.i, %if.then64.i.i.err_free_tdma.i.i_crit_edge ], [ -12, %if.end.i.i.i.err_free_tdma.i.i_crit_edge ], [ %call25.i.i, %while.cond.i.i.err_free_tdma.i.i_crit_edge ]
  call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %216 = load ptr, ptr @cesa_dev, align 4
  %dev96.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %dev96.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev96.i.i, align 4
  %219 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %src.i, align 4
  %221 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %src_nents.i, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %218, ptr noundef %220, i32 noundef %222, i32 noundef 1, i32 noundef 0) #12
  br label %err.i.i

err.i.i:                                          ; preds = %err_free_tdma.i.i, %if.then6.i.i.err.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %err_free_tdma.i.i ], [ -12, %if.then6.i.i.err.i.i_crit_edge ]
  %223 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %chain.i.i, align 4
  %tobool.not.i.not.i196.i.i = icmp eq ptr %224, null
  br i1 %tobool.not.i.not.i196.i.i, label %err.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge, label %if.then.i197.i.i

err.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge: ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_req_init.exit.i

if.then.i197.i.i:                                 ; preds = %err.i.i
  %req1.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %225 = ptrtoint ptr %req1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %req1.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %226, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i197.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge, label %if.end.i.i.i.i.i

if.then.i197.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge: ; preds = %if.then.i197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_req_init.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %227 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %227, i32 0, i32 6
  %228 = ptrtoint ptr %dma.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dma.i.i.i.i.i, align 4
  %padding_pool.i.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %padding_pool.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %padding_pool.i.i.i.i.i, align 4
  %padding_dma.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %232 = ptrtoint ptr %padding_dma.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %padding_dma.i.i.i.i.i, align 4
  call void @dma_pool_free(ptr noundef %231, ptr noundef nonnull %226, i32 noundef %233) #12
  %234 = ptrtoint ptr %req1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %req1.i.i.i.i, align 4
  br label %mv_cesa_ahash_dma_req_init.exit.i

mv_cesa_ahash_dma_req_init.exit.i:                ; preds = %if.end.i.i.i.i.i, %if.then.i197.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge, %err.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge, %if.then90.i.i, %if.end88.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ 0, %if.then90.i.i ], [ 0, %if.end88.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge ], [ %ret.1.i.i, %err.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge ], [ %ret.1.i.i, %if.then.i197.i.i.mv_cesa_ahash_dma_req_init.exit.i_crit_edge ], [ %ret.1.i.i, %if.end.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %iter.i.i) #12
  br label %mv_cesa_ahash_req_init.exit

mv_cesa_ahash_req_init.exit:                      ; preds = %mv_cesa_ahash_dma_req_init.exit.i, %do.end.i
  %retval.0.i = phi i32 [ %9, %do.end.i ], [ %retval.0.i22.i, %mv_cesa_ahash_dma_req_init.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mv_cesa_ahash_req_init.exit.if.end4_crit_edge, label %mv_cesa_ahash_req_init.exit.cleanup_crit_edge

mv_cesa_ahash_req_init.exit.cleanup_crit_edge:    ; preds = %mv_cesa_ahash_req_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mv_cesa_ahash_req_init.exit.if.end4_crit_edge:    ; preds = %mv_cesa_ahash_req_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %mv_cesa_ahash_req_init.exit.if.end4_crit_edge, %if.end7.i.if.end4_crit_edge
  %235 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nbytes.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %237 = load ptr, ptr @cesa_dev, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp11.i = icmp sgt i32 %241, 0
  br i1 %cmp11.i, label %if.end4.for.body.i_crit_edge, label %if.end4.mv_cesa_select_engine.exit_crit_edge

if.end4.mv_cesa_select_engine.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_select_engine.exit

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %242 = phi ptr [ %248, %for.body.i.for.body.i_crit_edge ], [ %237, %if.end4.for.body.i_crit_edge ]
  %selected.014.i = phi ptr [ %spec.select9.i, %for.body.i.for.body.i_crit_edge ], [ null, %if.end4.for.body.i_crit_edge ]
  %min_load.013.i = phi i32 [ %247, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end4.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %engines.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %242, i32 0, i32 5
  %243 = ptrtoint ptr %engines.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %engines.i, align 4
  %load1.i = getelementptr %struct.mv_cesa_engine, ptr %244, i32 %i.012.i, i32 12
  %call.i.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef %load1.i, i32 noundef 4) #12
  %245 = ptrtoint ptr %load1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %load1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %min_load.013.i)
  %cmp2.i = icmp ult i32 %246, %min_load.013.i
  %add.ptr.i = getelementptr %struct.mv_cesa_engine, ptr %244, i32 %i.012.i
  %247 = call i32 @llvm.umin.i32(i32 %246, i32 %min_load.013.i) #12
  %spec.select9.i = select i1 %cmp2.i, ptr %add.ptr.i, ptr %selected.014.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %248 = load ptr, ptr @cesa_dev, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 4
  %cmp.i27 = icmp slt i32 %inc.i, %252
  br i1 %cmp.i27, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mv_cesa_select_engine.exit_crit_edge

for.body.i.mv_cesa_select_engine.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_select_engine.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mv_cesa_select_engine.exit:                       ; preds = %for.body.i.mv_cesa_select_engine.exit_crit_edge, %if.end4.mv_cesa_select_engine.exit_crit_edge
  %selected.0.lcssa.i = phi ptr [ null, %if.end4.mv_cesa_select_engine.exit_crit_edge ], [ %spec.select9.i, %for.body.i.mv_cesa_select_engine.exit_crit_edge ]
  %load3.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %selected.0.lcssa.i, i32 0, i32 12
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %load3.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %load3.i, i32 1, i32 3, i32 1) #12
  %253 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %load3.i, ptr %load3.i, i32 %236, ptr elementtype(i32) %load3.i) #12, !srcloc !43
  %254 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %selected.0.lcssa.i, ptr %__ctx.i, align 8
  %chain.i.i29 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %255 = ptrtoint ptr %chain.i.i29 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %chain.i.i29, align 4
  %tobool.not.i.not.i = icmp eq ptr %256, null
  br i1 %tobool.not.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %mv_cesa_select_engine.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @mv_cesa_dma_prepare(ptr noundef %__ctx.i, ptr noundef %selected.0.lcssa.i) #12
  br label %mv_cesa_ahash_prepare.exit

if.else.i:                                        ; preds = %mv_cesa_select_engine.exit
  call void @__sanitizer_cov_trace_pc() #14
  %req1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %257 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %req1.i.i, align 4
  br label %mv_cesa_ahash_prepare.exit

mv_cesa_ahash_prepare.exit:                       ; preds = %if.else.i, %if.then.i
  %call8 = call i32 @mv_cesa_queue_req(ptr noundef %req, ptr noundef %__ctx.i) #12
  %258 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %if.then12 [
    i32 -16, label %mv_cesa_ahash_prepare.exit.cleanup_crit_edge
    i32 -115, label %mv_cesa_ahash_prepare.exit.cleanup_crit_edge78
  ]

mv_cesa_ahash_prepare.exit.cleanup_crit_edge78:   ; preds = %mv_cesa_ahash_prepare.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mv_cesa_ahash_prepare.exit.cleanup_crit_edge:     ; preds = %mv_cesa_ahash_prepare.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %mv_cesa_ahash_prepare.exit
  %259 = ptrtoint ptr %chain.i.i29 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %chain.i.i29, align 4
  %tobool.not.i.not.i33 = icmp eq ptr %260, null
  br i1 %tobool.not.i.not.i33, label %if.then12.cleanup_crit_edge, label %if.then.i36

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i36:                                      ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %261 = load ptr, ptr @cesa_dev, align 4
  %dev.i.i34 = getelementptr inbounds %struct.mv_cesa_dev, ptr %261, i32 0, i32 2
  %262 = ptrtoint ptr %dev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev.i.i34, align 4
  %264 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %src.i, align 4
  %266 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %src_nents.i, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %263, ptr noundef %265, i32 noundef %267, i32 noundef 1, i32 noundef 0) #12
  %cache.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %268 = ptrtoint ptr %cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cache.i.i.i, align 4
  %tobool.not.i.i.i35 = icmp eq ptr %269, null
  br i1 %tobool.not.i.i.i35, label %if.then.i36.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge, label %if.end.i.i.i37

if.then.i36.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge: ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_cleanup.exit.i

if.end.i.i.i37:                                   ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %270 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dma.i.i.i, align 4
  %cache_pool.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %cache_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %cache_pool.i.i.i, align 4
  %cache_dma.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %275 = ptrtoint ptr %cache_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %cache_dma.i.i.i, align 4
  call void @dma_pool_free(ptr noundef %274, ptr noundef nonnull %269, i32 noundef %276) #12
  br label %mv_cesa_ahash_dma_cleanup.exit.i

mv_cesa_ahash_dma_cleanup.exit.i:                 ; preds = %if.end.i.i.i37, %if.then.i36.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge
  call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mv_cesa_ahash_dma_cleanup.exit.i, %if.then12.cleanup_crit_edge, %mv_cesa_ahash_prepare.exit.cleanup_crit_edge, %mv_cesa_ahash_prepare.exit.cleanup_crit_edge78, %mv_cesa_ahash_req_init.exit.cleanup_crit_edge, %if.end.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mv_cesa_ahash_req_init.exit.cleanup_crit_edge ], [ %call8, %mv_cesa_ahash_prepare.exit.cleanup_crit_edge ], [ %call8, %if.then12.cleanup_crit_edge ], [ %call8, %mv_cesa_ahash_dma_cleanup.exit.i ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ %call8, %mv_cesa_ahash_prepare.exit.cleanup_crit_edge78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_queue_req(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_op_transfers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_end(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_cleanup(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_data_transfer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dma_add_op(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_result_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_prepare(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahash_process(ptr nocapture noundef readonly %req, i32 noundef %status) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 0, i32 -22
  %retval.0.i = select i1 %tobool.not.i10, i32 -115, i32 %..i
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %req1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req1.i, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes.i, align 8
  %cache_ptr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %6 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_ptr.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp.i = icmp ult i32 %3, %sub.i
  %..i11 = select i1 %cmp.i, i32 -115, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %..i11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_step(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %chain.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain.i, align 4
  %flags.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %if.then.mv_cesa_ahash_dma_step.exit_crit_edge, label %if.then.i

if.then.mv_cesa_ahash_dma_step.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_step.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %7, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 72
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 56576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #12, !srcloc !44
  %arrayidx.1.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 76
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %17, i32 56580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %15) #12, !srcloc !44
  %arrayidx.2.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 80
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %22, i32 56584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %20) #12, !srcloc !44
  %arrayidx.3.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 84
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %27, i32 56588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 %25) #12, !srcloc !44
  %arrayidx.4.i = getelementptr %struct.ahash_request, ptr %req, i32 3
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %32, i32 56592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 %30) #12, !srcloc !44
  %arrayidx.5.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.5.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %37, i32 56616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 %35) #12, !srcloc !44
  %arrayidx.6.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.6.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %42, i32 56620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 %40) #12, !srcloc !44
  %arrayidx.7.i = getelementptr %struct.ahash_request, ptr %req, i32 3, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.7.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %47, i32 56624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i, i32 %45) #12, !srcloc !44
  br label %mv_cesa_ahash_dma_step.exit

mv_cesa_ahash_dma_step.exit:                      ; preds = %if.then.i, %if.then.mv_cesa_ahash_dma_step.exit_crit_edge
  tail call void @mv_cesa_dma_step(ptr noundef %__ctx.i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %req1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__ctx.i, align 8
  %op_tmpl.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %sram_dma.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %sram_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sram_dma.i.i, align 4
  %and.i.i = and i32 %51, 2047
  %add.i.i = add nuw nsw i32 %and.i.i, 128
  %or.i.i = mul nuw nsw i32 %add.i.i, 65537
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %enc_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %53 = ptrtoint ptr %enc_p.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %enc_p.i.i, align 4
  %add2.i.i = add nuw nsw i32 %and.i.i, 32
  %54 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #12
  %enc_key_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %55 = ptrtoint ptr %enc_key_p.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %enc_key_p.i.i, align 4
  %add4.i.i = add nuw nsw i32 %and.i.i, 64
  %shl6.i.i = shl nuw nsw i32 %add4.i.i, 16
  %or7.i.i = or i32 %shl6.i.i, %add4.i.i
  %56 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #12
  %enc_iv.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 4
  %57 = ptrtoint ptr %enc_iv.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %enc_iv.i.i, align 4
  %mac_src_p.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %58 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mac_src_p.i.i, align 4
  %and10.i.i = and i32 %59, 65535
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #12
  %or14.i.i = or i32 %and10.i.i, %60
  %61 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or14.i.i, ptr %mac_src_p.i.i, align 4
  %mac_digest.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %62 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mac_digest.i.i, align 4
  %and16.i.i = and i32 %63, 65535
  %add17.i.i = add nuw nsw i32 %and.i.i, 96
  %64 = tail call i32 @llvm.bswap.i32(i32 %add17.i.i) #12
  %or20.i.i = or i32 %and16.i.i, %64
  %65 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or20.i.i, ptr %mac_digest.i.i, align 4
  %or24.i.i = or i32 %shl6.i.i, %add2.i.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %or24.i.i) #12
  %mac_iv.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %67 = ptrtoint ptr %mac_iv.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %mac_iv.i.i, align 4
  %pool.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 10
  %68 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pool.i, align 4
  %tobool.not.i8 = icmp eq ptr %69, null
  %70 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  br i1 %tobool.not.i8, label %if.else.i, label %if.then.i9

if.then.i9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %73 = call ptr @memcpy(ptr %72, ptr %op_tmpl.i, i32 128)
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmiocpy(ptr noundef %72, ptr noundef %op_tmpl.i, i32 noundef 128) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i9
  %74 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %req1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool5.not.i = icmp eq i32 %75, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %76 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %77, i32 12
  %78 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %79, i32 -128
  %80 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %cmp286.not.i = icmp ult i32 %81, 4
  br i1 %cmp286.not.i, label %if.then6.i.if.end11.i_crit_edge, label %for.body.lr.ph.i

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

for.body.lr.ph.i:                                 ; preds = %if.then6.i
  %div270.i = lshr i32 %81, 2
  %regs.i10 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0287.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i11 = getelementptr %struct.mv_cesa_ahash_req, ptr %__ctx.i, i32 0, i32 9, i32 %i.0287.i
  %82 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i11, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #12
  %85 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i10, align 4
  %mul.i = shl i32 %i.0287.i, 2
  %add.i = add i32 %mul.i, 56576
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0287.i)
  %cmp9.i = icmp ult i32 %i.0287.i, 5
  %cond.i12 = select i1 %cmp9.i, i32 0, i32 20
  %add10.i = add i32 %add.i, %cond.i12
  %add.ptr.i13 = getelementptr i8, ptr %86, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %84) #12, !srcloc !44
  %inc.i = add nuw nsw i32 %i.0287.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div270.i
  br i1 %exitcond.not.i, label %for.body.i.if.end11.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.body.i.if.end11.i_crit_edge, %if.then6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %cache_ptr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %87 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cache_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool12.not.i = icmp eq i32 %88, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end25.i_crit_edge, label %if.then13.i

if.end11.i.if.end25.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then13.i:                                      ; preds = %if.end11.i
  %89 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pool.i, align 4
  %tobool15.not.i = icmp eq ptr %90, null
  %91 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %70, align 4
  %add.ptr20.i = getelementptr i8, ptr %92, i32 128
  %cache21.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = call ptr @memcpy(ptr %add.ptr20.i, ptr %cache21.i, i32 %88)
  br label %if.end25.i

if.else19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmiocpy(ptr noundef %add.ptr20.i, ptr noundef %cache21.i, i32 noundef %88) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else19.i, %if.then16.i, %if.end11.i.if.end25.i_crit_edge
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %94 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nbytes.i, align 8
  %96 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cache_ptr.i, align 4
  %add27.i = add i32 %97, %95
  %98 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %req1.i, align 4
  %sub.i = sub i32 %add27.i, %99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %100 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sram_size.i, align 4
  %sub29.i = add i32 %102, -128
  %103 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub29.i) #12
  %last_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %104 = ptrtoint ptr %last_req.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %last_req.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool32.not.i = icmp eq i8 %105, 0
  %and.i14 = and i32 %103, 63
  %and34.i = and i32 %103, -64
  %len.0.i = select i1 %tobool32.not.i, i32 %and34.i, i32 %103
  %new_cache_ptr.0.i = select i1 %tobool32.not.i, i32 %and.i14, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %97)
  %tobool38.not.i = icmp eq i32 %len.0.i, %97
  br i1 %tobool38.not.i, label %if.end25.i.if.end48.i_crit_edge, label %if.then39.i

if.end25.i.if.end48.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then39.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub37.i = sub i32 %len.0.i, %97
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %106 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %src.i, align 4
  %src_nents.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %108 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %src_nents.i, align 8
  %add41.i = add i32 %97, 128
  %call.i.i = tail call i32 @mv_cesa_sg_copy(ptr noundef %49, ptr noundef %107, i32 noundef %109, i32 noundef %add41.i, i32 noundef %sub37.i, i32 noundef %99, i1 noundef zeroext true) #12
  %110 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %req1.i, align 4
  %add47.i = add i32 %111, %call.i.i
  store i32 %add47.i, ptr %req1.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then39.i, %if.end25.i.if.end48.i_crit_edge
  %112 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %op_tmpl.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  %and51.i = and i32 %114, -1073741824
  %115 = ptrtoint ptr %last_req.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %last_req.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool53.not.i = icmp eq i8 %116, 0
  br i1 %tobool53.not.i, label %if.end48.i.if.end68.i_crit_edge, label %land.lhs.true.i

if.end48.i.if.end68.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

land.lhs.true.i:                                  ; preds = %if.end48.i
  %117 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %req1.i, align 4
  %119 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp56.i = icmp eq i32 %118, %120
  br i1 %cmp56.i, label %land.lhs.true57.i, label %land.lhs.true.i.if.end68.i_crit_edge

land.lhs.true.i.if.end68.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

land.lhs.true57.i:                                ; preds = %land.lhs.true.i
  %len58.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %121 = ptrtoint ptr %len58.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %len58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %122)
  %cmp59.i = icmp ult i64 %122, 65536
  br i1 %cmp59.i, label %if.then60.i, label %land.lhs.true57.i.if.end68.i_crit_edge

land.lhs.true57.i.if.end68.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then60.i:                                      ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and51.i)
  %cmp61.i = icmp eq i32 %and51.i, 1073741824
  br i1 %cmp61.i, label %if.then60.i.if.then71.i_crit_edge, label %if.else63.i

if.then60.i.if.then71.i_crit_edge:                ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

if.else63.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %114)
  %cmp64.i = icmp ugt i32 %114, -1073741825
  br i1 %cmp64.i, label %if.else63.i.if.then71.i_crit_edge, label %if.else63.i.if.end68.i_crit_edge

if.else63.i.if.end68.i_crit_edge:                 ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.else63.i.if.then71.i_crit_edge:                ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

if.end68.i:                                       ; preds = %if.else63.i.if.end68.i_crit_edge, %land.lhs.true57.i.if.end68.i_crit_edge, %land.lhs.true.i.if.end68.i_crit_edge, %if.end48.i.if.end68.i_crit_edge
  %123 = zext i32 %and51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and51.i, label %if.end68.i.if.end127.i_crit_edge [
    i32 0, label %if.end68.i.if.then71.i_crit_edge
    i32 -2147483648, label %if.end68.i.if.then71.i_crit_edge15
  ]

if.end68.i.if.then71.i_crit_edge15:               ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

if.end68.i.if.then71.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

if.end68.i.if.end127.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then71.i:                                      ; preds = %if.end68.i.if.then71.i_crit_edge, %if.end68.i.if.then71.i_crit_edge15, %if.else63.i.if.then71.i_crit_edge, %if.then60.i.if.then71.i_crit_edge
  %frag_mode.0285.i = phi i32 [ %and51.i, %if.end68.i.if.then71.i_crit_edge ], [ %and51.i, %if.end68.i.if.then71.i_crit_edge15 ], [ 0, %if.then60.i.if.then71.i_crit_edge ], [ -2147483648, %if.else63.i.if.then71.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool72.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool72.not.i, label %if.then71.i.if.else78.i_crit_edge, label %land.lhs.true73.i

if.then71.i.if.else78.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else78.i

land.lhs.true73.i:                                ; preds = %if.then71.i
  %len74.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %124 = ptrtoint ptr %len74.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %len74.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %125)
  %cmp75.i = icmp ult i64 %125, 65536
  br i1 %cmp75.i, label %if.then76.i, label %land.lhs.true73.i.if.else78.i_crit_edge

land.lhs.true73.i.if.else78.i_crit_edge:          ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else78.i

if.then76.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = trunc i64 %125 to i32
  %126 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mac_src_p.i.i, align 4
  %and.i272.i = and i32 %127, -65536
  %128 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  %129 = lshr i32 %128, 16
  %or.i273.i = or i32 %and.i272.i, %129
  %130 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i273.i, ptr %mac_src_p.i.i, align 4
  br label %if.end127.i

if.else78.i:                                      ; preds = %land.lhs.true73.i.if.else78.i_crit_edge, %if.then71.i.if.else78.i_crit_edge
  %len.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %131 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %len.i.i, align 8
  %133 = trunc i64 %132 to i32
  %conv.i.i = and i32 %133, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %conv.i.i, 56
  %..i.i = select i1 %cmp.i.i, i32 56, i32 120
  %cond.i.i = sub nsw i32 %..i.i, %conv.i.i
  %add80.i = add nsw i32 %cond.i.i, 8
  %add81.i = add i32 %add80.i, %len.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %134 = load ptr, ptr @cesa_dev, align 4
  %sram_size82.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %sram_size82.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sram_size82.i, align 4
  %sub83.i = add i32 %136, -128
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.i, i32 %sub83.i)
  %cmp84.i = icmp ugt i32 %add81.i, %sub83.i
  br i1 %cmp84.i, label %if.then86.i, label %if.else102.i

if.then86.i:                                      ; preds = %if.else78.i
  %and87.i = and i32 %len.0.i, 63
  %sub88.i = sub nsw i32 56, %cond.i.i
  %137 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pool.i, align 4
  %tobool90.not.i = icmp eq ptr %138, null
  %cache97.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %139 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %70, align 4
  %add.ptr99.i = getelementptr i8, ptr %140, i32 128
  %add.ptr100.i = getelementptr i8, ptr %add.ptr99.i, i32 %and87.i
  br i1 %tobool90.not.i, label %if.else96.i, label %if.then91.i

if.then91.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = call ptr @memcpy(ptr %cache97.i, ptr %add.ptr100.i, i32 %sub88.i)
  br label %if.end120.i

if.else96.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmiocpy(ptr noundef %cache97.i, ptr noundef %add.ptr100.i, i32 noundef %sub88.i) #12
  br label %if.end120.i

if.else102.i:                                     ; preds = %if.else78.i
  %cache103.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %142 = ptrtoint ptr %cache103.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -128, ptr %cache103.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %cache103.i, i32 1
  %sub.i.i = add nsw i32 %cond.i.i, -1
  %143 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %algo_le.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %144 = ptrtoint ptr %algo_le.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %algo_le.i.i, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i.i = icmp eq i8 %145, 0
  %146 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %len.i.i, align 8
  %shl4.i.i = shl i64 %147, 3
  %148 = tail call i64 @llvm.bswap.i64(i64 %shl4.i.i) #12
  %.sink.i.i = select i1 %tobool.not.i.i, i64 %shl4.i.i, i64 %148
  %149 = getelementptr i8, ptr %cache103.i, i32 %cond.i.i
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 %.sink.i.i, ptr %149, align 1
  %151 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pool.i, align 4
  %tobool108.not.i = icmp eq ptr %152, null
  %153 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %70, align 4
  %add.ptr115.i = getelementptr i8, ptr %154, i32 %add81.i
  %add.ptr116.i = getelementptr i8, ptr %add.ptr115.i, i32 128
  br i1 %tobool108.not.i, label %if.else114.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = call ptr @memcpy(ptr %add.ptr116.i, ptr %cache103.i, i32 %add80.i)
  br label %if.end120.i

if.else114.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmiocpy(ptr noundef %add.ptr116.i, ptr noundef %cache103.i, i32 noundef %add80.i) #12
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else114.i, %if.then109.i, %if.else96.i, %if.then91.i
  %len.1.i = phi i32 [ %and87.i, %if.then91.i ], [ %and87.i, %if.else96.i ], [ %add81.i, %if.then109.i ], [ %add81.i, %if.else114.i ]
  %new_cache_ptr.1.i = phi i32 [ %sub88.i, %if.then91.i ], [ %sub88.i, %if.else96.i ], [ %new_cache_ptr.0.i, %if.then109.i ], [ %new_cache_ptr.0.i, %if.else114.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %frag_mode.0285.i)
  %cmp121.i = icmp eq i32 %frag_mode.0285.i, -2147483648
  %..i = select i1 %cmp121.i, i32 -1073741824, i32 1073741824
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.end120.i, %if.then76.i, %if.end68.i.if.end127.i_crit_edge
  %len.2.i = phi i32 [ %len.0.i, %if.then76.i ], [ %len.1.i, %if.end120.i ], [ %len.0.i, %if.end68.i.if.end127.i_crit_edge ]
  %frag_mode.2.i = phi i32 [ %frag_mode.0285.i, %if.then76.i ], [ %..i, %if.end120.i ], [ %and51.i, %if.end68.i.if.end127.i_crit_edge ]
  %new_cache_ptr.2.i = phi i32 [ %new_cache_ptr.0.i, %if.then76.i ], [ %new_cache_ptr.1.i, %if.end120.i ], [ %new_cache_ptr.0.i, %if.end68.i.if.end127.i_crit_edge ]
  %156 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mac_digest.i.i, align 4
  %and.i276.i = and i32 %157, -65536
  %158 = tail call i32 @llvm.bswap.i32(i32 %len.2.i) #12
  %159 = lshr i32 %158, 16
  %or.i277.i = or i32 %and.i276.i, %159
  %160 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i277.i, ptr %mac_digest.i.i, align 4
  %161 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %op_tmpl.i, align 4
  %and.i278.i = and i32 %162, -193
  %163 = tail call i32 @llvm.bswap.i32(i32 %frag_mode.2.i) #12
  %or.i279.i = or i32 %and.i278.i, %163
  %164 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or.i279.i, ptr %op_tmpl.i, align 4
  %165 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pool.i, align 4
  %tobool129.not.i = icmp eq ptr %166, null
  %167 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %70, align 4
  br i1 %tobool129.not.i, label %if.else131.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = call ptr @memcpy(ptr %168, ptr %op_tmpl.i, i32 128)
  br label %if.end132.i

if.else131.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mmiocpy(ptr noundef %168, ptr noundef %op_tmpl.i, i32 noundef 128) #12
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.else131.i, %if.then130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %frag_mode.2.i)
  %cmp133.i = icmp eq i32 %frag_mode.2.i, 1073741824
  br i1 %cmp133.i, label %if.then135.i, label %if.end132.i.if.end136.i_crit_edge

if.end132.i.if.end136.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136.i

if.then135.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %op_tmpl.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %op_tmpl.i, align 4
  %or.i281.i = or i32 %171, 192
  store i32 %or.i281.i, ptr %op_tmpl.i, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then135.i, %if.end132.i.if.end136.i_crit_edge
  %172 = ptrtoint ptr %cache_ptr.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %new_cache_ptr.2.i, ptr %cache_ptr.i, align 4
  %int_mask1.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 9
  %173 = ptrtoint ptr %int_mask1.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %int_mask1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %174)
  %cmp.i282.i = icmp eq i32 %174, 32
  br i1 %cmp.i282.i, label %if.end136.i.mv_cesa_set_int_mask.exit.i_crit_edge, label %if.end.i.i

if.end136.i.mv_cesa_set_int_mask.exit.i_crit_edge: ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_set_int_mask.exit.i

if.end.i.i:                                       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  %175 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i283.i = getelementptr i8, ptr %176, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283.i, i32 536870912) #12, !srcloc !44
  %177 = ptrtoint ptr %int_mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 32, ptr %int_mask1.i.i, align 4
  br label %mv_cesa_set_int_mask.exit.i

mv_cesa_set_int_mask.exit.i:                      ; preds = %if.end.i.i, %if.end136.i.mv_cesa_set_int_mask.exit.i_crit_edge
  %regs138.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  %178 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs138.i, align 4
  %add.ptr139.i = getelementptr i8, ptr %179, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139.i, i32 2097152) #12, !srcloc !44
  %180 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs138.i, align 4
  %add.ptr141.i = getelementptr i8, ptr %181, i32 56832
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141.i) #12, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !46
  %183 = and i32 %182, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool146.not.i = icmp eq i32 %183, 0
  br i1 %tobool146.not.i, label %mv_cesa_set_int_mask.exit.i.mv_cesa_ahash_std_step.exit_crit_edge, label %do.end.i, !prof !40

mv_cesa_set_int_mask.exit.i.mv_cesa_ahash_std_step.exit_crit_edge: ; preds = %mv_cesa_set_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_std_step.exit

do.end.i:                                         ; preds = %mv_cesa_set_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 280, i32 noundef 9, ptr noundef null) #12
  br label %mv_cesa_ahash_std_step.exit

mv_cesa_ahash_std_step.exit:                      ; preds = %do.end.i, %mv_cesa_set_int_mask.exit.i.mv_cesa_ahash_std_step.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !47
  tail call void @arm_heavy_mb() #12
  %184 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs138.i, align 4
  %add.ptr173.i = getelementptr i8, ptr %185, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173.i, i32 16777216) #12, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %mv_cesa_ahash_std_step.exit, %mv_cesa_ahash_dma_step.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_req_cleanup(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %last_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %0 = ptrtoint ptr %last_req to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_req, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %chain.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %req1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end_crit_edge, label %if.end.i.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %6 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma.i.i.i, align 4
  %padding_pool.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %padding_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %padding_pool.i.i.i, align 4
  %padding_dma.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %padding_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %padding_dma.i.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %10, ptr noundef nonnull %5, i32 noundef %12) #12
  %13 = ptrtoint ptr %req1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %req1.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %chain.i.i17 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %chain.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain.i.i17, align 4
  %tobool.not.i.not.i18 = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.i18, label %if.end.mv_cesa_ahash_cleanup.exit_crit_edge, label %if.then.i20

if.end.mv_cesa_ahash_cleanup.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_cleanup.exit

if.then.i20:                                      ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %16 = load ptr, ptr @cesa_dev, align 4
  %dev.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src.i.i, align 4
  %src_nents.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %21 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_nents.i.i, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #12
  %cache.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache.i.i.i, align 4
  %tobool.not.i.i.i19 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i19, label %if.then.i20.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge, label %if.end.i.i.i22

if.then.i20.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge: ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahash_dma_cleanup.exit.i

if.end.i.i.i22:                                   ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %25 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i.i21 = getelementptr inbounds %struct.mv_cesa_dev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %dma.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma.i.i.i21, align 4
  %cache_pool.i.i.i = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %cache_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache_pool.i.i.i, align 4
  %cache_dma.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %30 = ptrtoint ptr %cache_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cache_dma.i.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef nonnull %24, i32 noundef %31) #12
  br label %mv_cesa_ahash_dma_cleanup.exit.i

mv_cesa_ahash_dma_cleanup.exit.i:                 ; preds = %if.end.i.i.i22, %if.then.i20.mv_cesa_ahash_dma_cleanup.exit.i_crit_edge
  tail call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i) #12
  br label %mv_cesa_ahash_cleanup.exit

mv_cesa_ahash_cleanup.exit:                       ; preds = %mv_cesa_ahash_dma_cleanup.exit.i, %if.end.mv_cesa_ahash_cleanup.exit_crit_edge
  %cache_ptr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %32 = ptrtoint ptr %cache_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cache_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not = icmp eq i32 %33, 0
  br i1 %tobool2.not, label %mv_cesa_ahash_cleanup.exit.if.end7_crit_edge, label %if.then3

mv_cesa_ahash_cleanup.exit.if.end7_crit_edge:     ; preds = %mv_cesa_ahash_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %mv_cesa_ahash_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src, align 4
  %src_nents = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %36 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_nents, align 8
  %cache = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbytes, align 8
  %sub = sub i32 %39, %33
  %call6 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %35, i32 noundef %37, ptr noundef %cache, i32 noundef %33, i32 noundef %sub) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %mv_cesa_ahash_cleanup.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_complete(ptr nocapture noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 8
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 128
  %chain.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %last = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last, align 4
  %flags = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp8 = icmp eq i32 %and, 3
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %hash = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %16, i32 0, i32 1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp1295.not = icmp ult i32 %7, 4
  br i1 %cmp1295.not, label %if.then.for.end_crit_edge, label %for.body.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %div93 = lshr i32 %7, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %hash, i32 %i.096
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx13 = getelementptr %struct.mv_cesa_ahash_req, ptr %__ctx.i, i32 0, i32 9, i32 %i.096
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx13, align 4
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %div93
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %result, align 32
  %23 = call ptr @memcpy(ptr %22, ptr %hash, i32 %7)
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %div1592 = lshr i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp1697.not = icmp ult i32 %7, 4
  br i1 %cmp1697.not, label %if.else.for.end25_crit_edge, label %for.body17.lr.ph

if.else.for.end25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25

for.body17.lr.ph:                                 ; preds = %if.else
  %regs = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 1
  %umax104 = call i32 @llvm.umax.i32(i32 %div1592, i32 1)
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %i.198 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc24, %for.body17.for.body17_crit_edge ]
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %mul = shl i32 %i.198, 2
  %add = add i32 %mul, 56576
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.198)
  %cmp18 = icmp ult i32 %i.198, 5
  %cond = select i1 %cmp18, i32 0, i32 20
  %add19 = add i32 %add, %cond
  %add.ptr = getelementptr i8, ptr %25, i32 %add19
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !45
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %arrayidx22 = getelementptr %struct.mv_cesa_ahash_req, ptr %__ctx.i, i32 0, i32 9, i32 %i.198
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx22, align 4
  %inc24 = add nuw nsw i32 %i.198, 1
  %exitcond105.not = icmp eq i32 %inc24, %umax104
  br i1 %exitcond105.not, label %for.body17.for.end25_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.body17.for.end25_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25

for.end25:                                        ; preds = %for.body17.for.end25_crit_edge, %if.else.for.end25_crit_edge
  %last_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 68
  %29 = ptrtoint ptr %last_req to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %last_req, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %for.end25.if.end55_crit_edge, label %if.then26

for.end25.if.end55_crit_edge:                     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then26:                                        ; preds = %for.end25
  %algo_le = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 69
  %31 = ptrtoint ptr %algo_le to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %algo_le, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not = icmp eq i8 %32, 0
  %result43 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %33 = ptrtoint ptr %result43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %result43, align 32
  br i1 %tobool27.not, label %if.else41, label %if.then28

if.then28:                                        ; preds = %if.then26
  br i1 %cmp1697.not, label %if.then28.if.end55_crit_edge, label %for.body34.preheader

if.then28.if.end55_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

for.body34.preheader:                             ; preds = %if.then28
  %umax106 = call i32 @llvm.umax.i32(i32 %div1592, i32 1)
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.preheader
  %i.2100 = phi i32 [ %inc39, %for.body34.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %arrayidx36 = getelementptr %struct.mv_cesa_ahash_req, ptr %__ctx.i, i32 0, i32 9, i32 %i.2100
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx37 = getelementptr i32, ptr %34, i32 %i.2100
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx37, align 4
  %inc39 = add nuw nsw i32 %i.2100, 1
  %exitcond107.not = icmp eq i32 %inc39, %umax106
  br i1 %exitcond107.not, label %for.body34.if.end55_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34

for.body34.if.end55_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else41:                                        ; preds = %if.then26
  br i1 %cmp1697.not, label %if.else41.if.end55_crit_edge, label %for.body47.preheader

if.else41.if.end55_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

for.body47.preheader:                             ; preds = %if.else41
  %umax108 = call i32 @llvm.umax.i32(i32 %div1592, i32 1)
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.preheader
  %i.3102 = phi i32 [ %inc52, %for.body47.for.body47_crit_edge ], [ 0, %for.body47.preheader ]
  %arrayidx49 = getelementptr %struct.mv_cesa_ahash_req, ptr %__ctx.i, i32 0, i32 9, i32 %i.3102
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %34, i32 %i.3102
  %41 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx50, align 4
  %inc52 = add nuw nsw i32 %i.3102, 1
  %exitcond109.not = icmp eq i32 %inc52, %umax108
  br i1 %exitcond109.not, label %for.body47.if.end55_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

for.body47.if.end55_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %for.body47.if.end55_crit_edge, %if.else41.if.end55_crit_edge, %for.body34.if.end55_crit_edge, %if.then28.if.end55_crit_edge, %for.end25.if.end55_crit_edge, %for.end
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbytes, align 8
  %load = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %load, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %load, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %load, ptr %load, i32 %43, ptr elementtype(i32) %load) #12, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_step(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_sg_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef %hash_alg_name, ptr noundef %key, i32 noundef %keylen, ptr noundef %istate, ptr noundef %ostate) unnamed_addr #1 align 64 {
entry:
  %result.i = alloca %struct.mv_cesa_ahash_result, align 4
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_ahash(ptr noundef %hash_alg_name, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %2, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.free_ahash_crit_edge, label %if.end5, !prof !49

if.end8.i.i.free_ahash_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ahash

if.end5:                                          ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %base.i.i.i, align 128
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 2) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end5.free_req_crit_edge, label %if.end7.i.i, !prof !49

if.end5.free_req_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_req

if.end7.i.i:                                      ; preds = %if.end5
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #17
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.free_req_crit_edge, label %if.end11

if.end7.i.i.free_req_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_req

if.end11:                                         ; preds = %if.end7.i.i
  %add.ptr = getelementptr i8, ptr %call8.i.i, i32 %8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i) #12
  %12 = call ptr @memset(ptr %result.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %keylen)
  %cmp.not.i = icmp ult i32 %8, %keylen
  %13 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i49

if.then.i49:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memcpy(ptr %call8.i.i, ptr %key, i32 %keylen)
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end11
  %call.i = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #12
  %tobool.not.i50 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i50, label %if.else.i.mv_cesa_ahmac_pad_init.exit_crit_edge, label %if.end.i

if.else.i.mv_cesa_ahmac_pad_init.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahmac_pad_init.exit

if.end.i:                                         ; preds = %if.else.i
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mv_cesa_hmac_ahash_complete, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %result.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %flags4.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call.i, i32 noundef %keylen) #12
  %src1.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sg.i, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %keylen, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i, ptr %result3.i.i, align 32
  %21 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %result.i, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %result.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #12
  %call2.i = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, -115
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %result.i) #12
  %error.i = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %result.i, i32 0, i32 1
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %ret.0.i = phi i32 [ %23, %if.then4.i ], [ %call2.i, %if.end.i.if.end7.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool8.not.i, label %cleanup.i, label %if.end7.i.mv_cesa_ahmac_pad_init.exit_crit_edge

if.end7.i.mv_cesa_ahmac_pad_init.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mv_cesa_ahmac_pad_init.exit

cleanup.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 -128
  %28 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i.i, align 128
  br label %if.end13.i

if.end13.i:                                       ; preds = %cleanup.i, %if.then.i49
  %keylen.addr.1.i = phi i32 [ %keylen, %if.then.i49 ], [ %29, %cleanup.i ]
  %add.ptr.i = getelementptr i8, ptr %call8.i.i, i32 %keylen.addr.1.i
  %sub.i = sub i32 %8, %keylen.addr.1.i
  %30 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %call8.i.i, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1452.not.i = icmp eq i32 %8, 0
  br i1 %cmp1452.not.i, label %if.end13.i.if.end15_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  br label %for.body.i

if.end13.i.if.end15_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call8.i.i, i32 %i.053.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %34 = xor i8 %33, 54
  store i8 %34, ptr %arrayidx.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %add.ptr, i32 %i.053.i
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16.i, align 1
  %37 = xor i8 %36, 92
  store i8 %37, ptr %arrayidx16.i, align 1
  %inc.i = add nuw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.body.i.if.end15_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end15_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

mv_cesa_ahmac_pad_init.exit:                      ; preds = %if.end7.i.mv_cesa_ahmac_pad_init.exit_crit_edge, %if.else.i.mv_cesa_ahmac_pad_init.exit_crit_edge
  %retval.1.i = phi i32 [ %ret.0.i, %if.end7.i.mv_cesa_ahmac_pad_init.exit_crit_edge ], [ -12, %if.else.i.mv_cesa_ahmac_pad_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #12
  br label %free_ipad

if.end15:                                         ; preds = %for.body.i.if.end15_crit_edge, %if.end13.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #12
  %call16 = call fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call8.i.i, ptr noundef %istate, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.free_ipad_crit_edge

if.end15.free_ipad_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ipad

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = call fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr, ptr noundef %ostate, i32 noundef %8)
  br label %free_ipad

free_ipad:                                        ; preds = %if.end19, %if.end15.free_ipad_crit_edge, %mv_cesa_ahmac_pad_init.exit
  %ret.0 = phi i32 [ %retval.1.i, %mv_cesa_ahmac_pad_init.exit ], [ %call16, %if.end15.free_ipad_crit_edge ], [ %call20, %if.end19 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %free_req

free_req:                                         ; preds = %free_ipad, %if.end7.i.i.free_req_crit_edge, %if.end5.free_req_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_ipad ], [ -12, %if.end7.i.i.free_req_crit_edge ], [ -12, %if.end5.free_req_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #12
  br label %free_ahash

free_ahash:                                       ; preds = %free_req, %if.end8.i.i.free_ahash_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_req ], [ -12, %if.end8.i.i.free_ahash_crit_edge ]
  %base.i.i51 = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i51) #12
  br label %cleanup

cleanup:                                          ; preds = %free_ahash, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %free_ahash ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef %req, ptr noundef %pad, ptr noundef %state, i32 noundef %blocksize) unnamed_addr #1 align 64 {
entry:
  %result = alloca %struct.mv_cesa_ahash_result, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #12
  %0 = call ptr @memset(ptr %result, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %1 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mv_cesa_hmac_ahash_complete, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %result, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %flags4.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %pad, i32 noundef %blocksize) #12
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %blocksize, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pad, ptr %result3.i, align 32
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #12
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i.i, align 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 128
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_init.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

crypto_ahash_init.exit:                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -128
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = call i32 %14(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_ahash_init.exit.cleanup_crit_edge

crypto_ahash_init.exit.cleanup_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %crypto_ahash_init.exit
  %15 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %16, i32 12
  %17 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i, align 4
  %19 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %18) #12
  %21 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %22, i32 -124
  %23 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %24(ptr noundef %req) #12
  call void @crypto_stats_ahash_update(i32 noundef %20, i32 noundef %call3.i, ptr noundef %18) #12
  %25 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call3.i, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end4_crit_edge
    i32 -115, label %if.end.if.end4_crit_edge33
  ]

if.end.if.end4_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge33
  %call6 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %result) #12
  %error = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %result, i32 0, i32 1
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not = icmp eq i32 %27, 0
  br i1 %tobool7.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tfm.i.i, align 16
  %export.i = getelementptr i8, ptr %29, i32 -108
  %30 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %31(ptr noundef %req, ptr noundef %state) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %crypto_ahash_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %crypto_ahash_init.exit.cleanup_crit_edge ], [ %call3.i, %if.end.cleanup_crit_edge ], [ %27, %if.end4.cleanup_crit_edge ], [ %call1.i, %if.end10 ], [ -126, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_hmac_ahash_complete(ptr nocapture noundef readonly %req, i32 noundef %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %error)
  %cmp = icmp eq i32 %error, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %error1 = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %error, ptr %error1, align 4
  tail call void @complete(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @mv_md5_alg, !1, !"mv_md5_alg", i1 false, i1 false}
!1 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 936, i32 18}
!2 = !{ptr @mv_sha1_alg, !3, !"mv_sha1_alg", i1 false, i1 false}
!3 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1007, i32 18}
!4 = !{ptr @mv_sha256_alg, !5, !"mv_sha256_alg", i1 false, i1 false}
!5 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1081, i32 18}
!6 = !{ptr @mv_ahmac_md5_alg, !7, !"mv_ahmac_md5_alg", i1 false, i1 false}
!7 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1315, i32 18}
!8 = !{ptr @mv_ahmac_sha1_alg, !9, !"mv_ahmac_sha1_alg", i1 false, i1 false}
!9 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1386, i32 18}
!10 = !{ptr @mv_ahmac_sha256_alg, !11, !"mv_ahmac_sha256_alg", i1 false, i1 false}
!11 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1457, i32 18}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 767, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mv_cesa_ahash_req_init._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mv_cesa_ahash_req_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @mv_cesa_ahash_req_ops, !21, !"mv_cesa_ahash_req_ops", i1 false, i1 false}
!21 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 433, i32 37}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1291, i32 29}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1362, i32 29}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/marvell/cesa/hash.c", i32 1420, i32 29}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148344300, i64 2148344580, i64 2148344914, i64 2148345248}
!42 = !{i8 0, i8 2}
!43 = !{i64 2148505720, i64 2148505746, i64 2148505775, i64 2148505809, i64 2148505840, i64 2148505863}
!44 = !{i64 6258385}
!45 = !{i64 6258803}
!46 = !{i64 2154103884}
!47 = !{i64 2154104611}
!48 = !{i64 2148508185, i64 2148508211, i64 2148508240, i64 2148508274, i64 2148508305, i64 2148508328}
!49 = !{!"branch_weights", i32 1, i32 2000}
