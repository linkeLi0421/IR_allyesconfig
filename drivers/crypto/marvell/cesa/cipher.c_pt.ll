; ModuleID = '/llk/IR_all_yes/drivers/crypto/marvell/cesa/cipher.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
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
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.mv_cesa_op_ctx = type { %struct.mv_cesa_sec_accel_desc, %union.anon.75 }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.75 = type { %struct.mv_cesa_hash_op_ctx }
%struct.mv_cesa_hash_op_ctx = type { [16 x i32], [8 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.mv_cesa_aes_ctx = type { %struct.mv_cesa_ctx, %struct.crypto_aes_ctx }
%struct.mv_cesa_ctx = type { ptr }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.mv_cesa_skcipher_dma_iter = type { %struct.mv_cesa_dma_iter, %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter }
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
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.77, %union.anon.78, i32, i32, ptr, %union.anon.79, i32 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { ptr }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.76, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.76 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }

@mv_cesa_ecb_des_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des_setkey, ptr @mv_cesa_ecb_des_encrypt, ptr @mv_cesa_ecb_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_cbc_des_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des_setkey, ptr @mv_cesa_cbc_des_encrypt, ptr @mv_cesa_cbc_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_ecb_des3_ede_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des3_ede_setkey, ptr @mv_cesa_ecb_des3_ede_encrypt, ptr @mv_cesa_ecb_des3_ede_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-des3-ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_cbc_des3_ede_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des3_ede_setkey, ptr @mv_cesa_cbc_des3_ede_encrypt, ptr @mv_cesa_cbc_des3_ede_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-des3-ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_ecb_aes_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_aes_setkey, ptr @mv_cesa_ecb_aes_encrypt, ptr @mv_cesa_ecb_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 488, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_cbc_aes_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_aes_setkey, ptr @mv_cesa_cbc_aes_encrypt, ptr @mv_cesa_cbc_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 488, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@mv_cesa_skcipher_req_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid number of src SG\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv_cesa_skcipher_req_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/crypto/marvell/cesa/cipher.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_cesa_skcipher_req_init._entry_ptr = internal global ptr @mv_cesa_skcipher_req_init._entry, section ".printk_index", align 4
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4
@mv_cesa_skcipher_req_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 440, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid number of dst SG\00", [39 x i8] zeroinitializer }, align 32
@mv_cesa_skcipher_req_init._entry_ptr.7 = internal global ptr @mv_cesa_skcipher_req_init._entry.5, section ".printk_index", align 4
@mv_cesa_skcipher_req_ops = internal constant { %struct.mv_cesa_req_ops, [16 x i8] } { %struct.mv_cesa_req_ops { ptr @mv_cesa_skcipher_process, ptr @mv_cesa_skcipher_step, ptr @mv_cesa_skcipher_req_cleanup, ptr @mv_cesa_skcipher_complete }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 435, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 440, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"mv_cesa_skcipher_req_ops\00", align 1
@___asan_gen_.33 = private constant [40 x i8] c"../drivers/crypto/marvell/cesa/cipher.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 234, i32 37 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mv_cesa_skcipher_req_init._entry, ptr @mv_cesa_skcipher_req_init._entry.5, ptr @mv_cesa_skcipher_req_init._entry_ptr, ptr @mv_cesa_skcipher_req_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mv_cesa_skcipher_req_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_skcipher_req_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_skcipher_req_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_cesa_skcipher_req_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_des_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #8
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #8, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %4 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %key, align 1
  %6 = ptrtoint ptr %key2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %key2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %4 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %tmpl, align 4
  %ctx1.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %5 = ptrtoint ptr %key2.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %key2.i, align 4
  %7 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %ctx1.i, align 4
  %call4.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %4 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1114112, ptr %tmpl, align 4
  %ctx1.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %5 = ptrtoint ptr %key2.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %key2.i, align 4
  %7 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %ctx1.i, align 4
  %call4.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_skcipher_cra_init(ptr nocapture noundef writeonly %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mv_cesa_skcipher_req_ops, ptr %__crt_ctx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 160, ptr %add.ptr.i, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %cra_ctxsize = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_ctxsize, align 8
  %4 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 %3)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #8, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %3, align 1
  %6 = ptrtoint ptr %iv.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %iv.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %9 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65792, ptr %tmpl, align 4
  %ctx1.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 1
  %10 = ptrtoint ptr %key2.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %key2.i.i, align 4
  %12 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %ctx1.i.i, align 4
  %call4.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %3, align 1
  %6 = ptrtoint ptr %iv.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %iv.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %9 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1114368, ptr %tmpl, align 4
  %ctx1.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 1
  %10 = ptrtoint ptr %key2.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %key2.i.i, align 4
  %12 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %ctx1.i.i, align 4
  %call4.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_des3_ede_setkey(ptr nocapture noundef %cipher, ptr nocapture noundef readonly %key, i32 noundef %len) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #8
  %2 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %6 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %14 = icmp eq i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %15 = icmp eq i32 %11, %13
  %tobool.not.i.i.i = and i1 %14, %15
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %entry
  %16 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %17 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %19)
  %22 = icmp ne i32 %9, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %23 = icmp ne i32 %13, %21
  %tobool12.not.not.i.i.i = or i1 %22, %23
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %26 = call ptr @memcpy(ptr %key2, ptr %key, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i9 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end ]
  ret i32 %ret.0.i.i.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des3_ede_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %4 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 135168, ptr %tmpl, align 4
  %ctx1.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %5 = call ptr @memcpy(ptr %ctx1.i, ptr %key2.i, i32 24)
  %call4.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des3_ede_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %4 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1183744, ptr %tmpl, align 4
  %ctx1.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %5 = call ptr @memcpy(ptr %ctx1.i, ptr %key2.i, i32 24)
  %call4.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des3_ede_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %3, align 1
  %6 = ptrtoint ptr %iv.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %iv.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %9 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 135424, ptr %tmpl, align 4
  %ctx1.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 1
  %10 = call ptr @memcpy(ptr %ctx1.i.i, ptr %key2.i.i, i32 24)
  %call4.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des3_ede_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %3, align 1
  %6 = ptrtoint ptr %iv.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %iv.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %9 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1184000, ptr %tmpl, align 4
  %ctx1.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  %key2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 1
  %10 = call ptr @memcpy(ptr %ctx1.i.i, ptr %key2.i.i, i32 24)
  %call4.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_aes_setkey(ptr noundef %cipher, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %aes = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %call2 = tail call i32 @aes_expandkey(ptr noundef %aes, ptr noundef %key, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_length = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 2, i32 2, i32 4, i32 84
  %0 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_length, align 4
  %sub = add i32 %1, -16
  %div26 = lshr i32 %sub, 2
  %add = add i32 %1, 24
  %sub6 = sub i32 %add, %div26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp27.not = icmp ult i32 %sub, 4
  br i1 %cmp27.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %div26, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add8 = add i32 %sub6, %i.028
  %arrayidx = getelementptr [60 x i32], ptr %aes, i32 0, i32 %add8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add10 = add nuw nsw i32 %i.028, 4
  %arrayidx11 = getelementptr %struct.mv_cesa_aes_ctx, ptr %__crt_ctx.i, i32 0, i32 1, i32 1, i32 %add10
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_aes_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %2 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmpl, align 4
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %aes2.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %key_length.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 4, i32 4, i32 84
  %5 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp38.not.i = icmp ult i32 %6, 4
  br i1 %cmp38.not.i, label %entry.mv_cesa_aes_op.exit_crit_edge, label %for.body.lr.ph.i

entry.mv_cesa_aes_op.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_aes_op.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ctx5.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %aes2.i, i32 %i.039.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %arrayidx7.i = getelementptr [8 x i32], ptr %ctx5.i, i32 0, i32 %i.039.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx7.i, align 4
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %11 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_length.i, align 4
  %div34.i = lshr i32 %12, 2
  %cmp.i = icmp ult i32 %inc.i, %div34.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mv_cesa_aes_op.exit_crit_edge

for.body.i.mv_cesa_aes_op.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_aes_op.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mv_cesa_aes_op.exit:                              ; preds = %for.body.i.mv_cesa_aes_op.exit_crit_edge, %entry.mv_cesa_aes_op.exit_crit_edge
  %.lcssa.i = phi i32 [ %6, %entry.mv_cesa_aes_op.exit_crit_edge ], [ %12, %for.body.i.mv_cesa_aes_op.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.lcssa.i)
  %switch.selectcmp.i = icmp eq i32 %.lcssa.i, 32
  %switch.select.i = select i1 %switch.selectcmp.i, i32 33555200, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.lcssa.i)
  %switch.selectcmp35.i = icmp eq i32 %.lcssa.i, 24
  %switch.select36.i = select i1 %switch.selectcmp35.i, i32 16777984, i32 %switch.select.i
  %13 = ptrtoint ptr %tmpl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmpl, align 4
  %and.i.i = and i32 %14, -196612
  %15 = tail call i32 @llvm.bswap.i32(i32 %switch.select36.i) #8
  %or.i.i = or i32 %15, %and.i.i
  %16 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %tmpl, align 4
  %call20.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call20.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_aes_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %2 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1048576, ptr %tmpl, align 4
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %key_dec.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 2, i32 4, i32 100
  %key_length.i = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 4, i32 4, i32 84
  %5 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp38.not.i = icmp ult i32 %6, 4
  br i1 %cmp38.not.i, label %entry.mv_cesa_aes_op.exit_crit_edge, label %for.body.lr.ph.i

entry.mv_cesa_aes_op.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_aes_op.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ctx5.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %key_dec.i, i32 %i.039.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %arrayidx7.i = getelementptr [8 x i32], ptr %ctx5.i, i32 0, i32 %i.039.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx7.i, align 4
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %11 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_length.i, align 4
  %div34.i = lshr i32 %12, 2
  %cmp.i = icmp ult i32 %inc.i, %div34.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mv_cesa_aes_op.exit_crit_edge

for.body.i.mv_cesa_aes_op.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_aes_op.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mv_cesa_aes_op.exit:                              ; preds = %for.body.i.mv_cesa_aes_op.exit_crit_edge, %entry.mv_cesa_aes_op.exit_crit_edge
  %.lcssa.i = phi i32 [ %6, %entry.mv_cesa_aes_op.exit_crit_edge ], [ %12, %for.body.i.mv_cesa_aes_op.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.lcssa.i)
  %switch.selectcmp.i = icmp eq i32 %.lcssa.i, 32
  %switch.select.i = select i1 %switch.selectcmp.i, i32 33555200, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.lcssa.i)
  %switch.selectcmp35.i = icmp eq i32 %.lcssa.i, 24
  %switch.select36.i = select i1 %switch.selectcmp35.i, i32 16777984, i32 %switch.select.i
  %13 = ptrtoint ptr %tmpl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmpl, align 4
  %and.i.i = and i32 %14, -196612
  %15 = tail call i32 @llvm.bswap.i32(i32 %switch.select36.i) #8
  %or.i.i = or i32 %15, %and.i.i
  %16 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %tmpl, align 4
  %call20.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call20.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_aes_encrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %2 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %tmpl, align 4
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iv1.i, align 4
  %5 = call ptr @memcpy(ptr %iv.i, ptr %4, i32 16)
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %aes2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 1, i32 1
  %key_length.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 4, i32 4, i32 84
  %8 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp38.not.i.i = icmp ult i32 %9, 4
  br i1 %cmp38.not.i.i, label %entry.mv_cesa_cbc_aes_op.exit_crit_edge, label %for.body.lr.ph.i.i

entry.mv_cesa_cbc_aes_op.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_cbc_aes_op.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %ctx5.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %aes2.i.i, i32 %i.039.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %arrayidx7.i.i = getelementptr [8 x i32], ptr %ctx5.i.i, i32 0, i32 %i.039.i.i
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx7.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %14 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_length.i.i, align 4
  %div34.i.i = lshr i32 %15, 2
  %cmp.i.i = icmp ult i32 %inc.i.i, %div34.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge

for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_cbc_aes_op.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

mv_cesa_cbc_aes_op.exit:                          ; preds = %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge, %entry.mv_cesa_cbc_aes_op.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %entry.mv_cesa_cbc_aes_op.exit_crit_edge ], [ %15, %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.lcssa.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %.lcssa.i.i, 32
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 33555200, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.lcssa.i.i)
  %switch.selectcmp35.i.i = icmp eq i32 %.lcssa.i.i, 24
  %switch.select36.i.i = select i1 %switch.selectcmp35.i.i, i32 16777984, i32 %switch.select.i.i
  %16 = ptrtoint ptr %tmpl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmpl, align 4
  %and.i.i.i = and i32 %17, -196612
  %18 = tail call i32 @llvm.bswap.i32(i32 %switch.select36.i.i) #8
  %or.i.i.i = or i32 %18, %and.i.i.i
  %19 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i, ptr %tmpl, align 4
  %call20.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call20.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_aes_decrypt(ptr noundef %req) #0 align 64 {
entry:
  %tmpl = alloca %struct.mv_cesa_op_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpl) #8
  %0 = getelementptr inbounds i8, ptr %tmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 124)
  %2 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1048832, ptr %tmpl, align 4
  %iv.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1, i32 0, i32 0, i32 8
  %iv1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iv1.i, align 4
  %5 = call ptr @memcpy(ptr %iv.i, ptr %4, i32 16)
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %key_dec.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 2, i32 4, i32 100
  %key_length.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 4, i32 4, i32 84
  %8 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp38.not.i.i = icmp ult i32 %9, 4
  br i1 %cmp38.not.i.i, label %entry.mv_cesa_cbc_aes_op.exit_crit_edge, label %for.body.lr.ph.i.i

entry.mv_cesa_cbc_aes_op.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_cbc_aes_op.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %ctx5.i.i = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %tmpl, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %key_dec.i.i, i32 %i.039.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %arrayidx7.i.i = getelementptr [8 x i32], ptr %ctx5.i.i, i32 0, i32 %i.039.i.i
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx7.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %14 = ptrtoint ptr %key_length.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_length.i.i, align 4
  %div34.i.i = lshr i32 %15, 2
  %cmp.i.i = icmp ult i32 %inc.i.i, %div34.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge

for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_cbc_aes_op.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

mv_cesa_cbc_aes_op.exit:                          ; preds = %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge, %entry.mv_cesa_cbc_aes_op.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %entry.mv_cesa_cbc_aes_op.exit_crit_edge ], [ %15, %for.body.i.i.mv_cesa_cbc_aes_op.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.lcssa.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %.lcssa.i.i, 32
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 33555200, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.lcssa.i.i)
  %switch.selectcmp35.i.i = icmp eq i32 %.lcssa.i.i, 24
  %switch.select36.i.i = select i1 %switch.selectcmp35.i.i, i32 16777984, i32 %switch.select.i.i
  %16 = ptrtoint ptr %tmpl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmpl, align 4
  %and.i.i.i = and i32 %17, -196612
  %18 = tail call i32 @llvm.bswap.i32(i32 %switch.select36.i.i) #8
  %or.i.i.i = or i32 %18, %and.i.i.i
  %19 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i, ptr %tmpl, align 4
  %call20.i.i = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef nonnull %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpl) #8
  ret i32 %call20.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %req, ptr noundef %tmpl) unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca %struct.mv_cesa_skcipher_dma_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  %sub.i = add i32 %5, -1
  %and.i = and i32 %7, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src.i, align 8
  %conv.i = zext i32 %7 to i64
  %call4.i = tail call i32 @sg_nents_for_len(ptr noundef %9, i64 noundef %conv.i) #8
  %src_nents.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i, ptr %src_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp6.i = icmp slt i32 %call4.i, 0
  br i1 %cmp6.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %11 = load ptr, ptr @cesa_dev, align 4
  %dev.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #11
  %14 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_nents.i, align 4
  br label %mv_cesa_skcipher_req_init.exit

if.end10.i:                                       ; preds = %if.end.i
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst.i, align 4
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req, align 128
  %conv12.i = zext i32 %19 to i64
  %call13.i = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %conv12.i) #8
  %dst_nents.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %20 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call13.i, ptr %dst_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp15.i = icmp slt i32 %call13.i, 0
  br i1 %cmp15.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %21 = load ptr, ptr @cesa_dev, align 4
  %dev21.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6) #11
  %24 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_nents.i, align 4
  br label %mv_cesa_skcipher_req_init.exit

if.end23.i:                                       ; preds = %if.end10.i
  %26 = ptrtoint ptr %tmpl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmpl, align 4
  %and.i.i = and i32 %27, -50331649
  %or.i.i = or i32 %and.i.i, 16777216
  store i32 %or.i.i, ptr %tmpl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %28 = load ptr, ptr @cesa_dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %has_tdma.i = getelementptr inbounds %struct.mv_cesa_caps, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %has_tdma.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_tdma.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %mv_cesa_skcipher_req_init.exit.thread, label %if.then24.i

if.then24.i:                                      ; preds = %if.end23.i
  %flags1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags1.i.i, align 4
  %and.i46.i = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool.not.i.i = icmp eq i32 %and.i46.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2592, i32 3264
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter.i.i) #8
  %35 = call ptr @memset(ptr %iter.i.i, i32 255, i32 44)
  %chain.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %36 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %chain.i.i, align 4
  %last.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %37 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %last.i.i, align 4
  %38 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src.i, align 8
  %40 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %41
  %dev14.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %28, i32 0, i32 2
  %42 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev14.i.i, align 4
  %44 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_nents.i, align 4
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then24.i
  %call5.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %43, ptr noundef %39, i32 noundef %45, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge, label %if.end.i.i

if.then.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_skcipher_dma_req_init.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %46 = load ptr, ptr @cesa_dev, align 4
  %dev8.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev8.i.i, align 4
  %49 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst.i, align 4
  %51 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dst_nents.i, align 4
  %call10.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i.err_unmap_src.i.i_crit_edge, label %if.end.i.i.if.end21.i.i_crit_edge

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.end.i.i.err_unmap_src.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_src.i.i

if.else.i.i:                                      ; preds = %if.then24.i
  %call17.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %43, ptr noundef %39, i32 noundef %45, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.else.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge, label %if.else.i.i.if.end21.i.i_crit_edge

if.else.i.i.if.end21.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.else.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_skcipher_dma_req_init.exit.i

if.end21.i.i:                                     ; preds = %if.else.i.i.if.end21.i.i_crit_edge, %if.end.i.i.if.end21.i.i_crit_edge
  %53 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 0, ptr %chain.i.i, align 4
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %req, align 128
  %56 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %iter.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %57 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %sram_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sram_size.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %59, -128
  %60 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %55) #8
  %op_len.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %iter.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %op_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %op_len.i.i.i.i, align 4
  %offset.i.i.i.i = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %iter.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offset.i.i.i.i, align 4
  %src.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %src.i, align 8
  %op_offset.i.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %op_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %op_offset.i.i.i.i, align 4
  %offset.i7.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %offset.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %offset.i7.i.i.i, align 4
  %sg1.i.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %sg1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %sg1.i.i.i.i, align 4
  %68 = ptrtoint ptr %src.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %src.i.i.i, align 4
  %dst.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dst.i, align 4
  %op_offset.i8.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %op_offset.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %op_offset.i8.i.i.i, align 4
  %offset.i9.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %offset.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %offset.i9.i.i.i, align 4
  %sg1.i10.i.i.i = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %iter.i.i, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %sg1.i10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %sg1.i10.i.i.i, align 4
  %74 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %dst.i.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end21.i.i
  %skip_ctx.0.off0.i.i = phi i1 [ false, %if.end21.i.i ], [ true, %do.cond.i.i.do.body.i.i_crit_edge ]
  %call25.i.i = call ptr @mv_cesa_dma_add_op(ptr noundef %chain.i.i, ptr noundef %tmpl, i1 noundef zeroext %skip_ctx.0.off0.i.i, i32 noundef %cond.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call25.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then27.i.i, label %if.end29.i.i

if.then27.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %call25.i.i to i32
  br label %err_free_tdma.i.i

if.end29.i.i:                                     ; preds = %do.body.i.i
  %76 = ptrtoint ptr %op_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %op_len.i.i.i.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #8
  %enc_len.i.i.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %call25.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %enc_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %enc_len.i.i.i, align 4
  %call34.i.i = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %chain.i.i, ptr noundef nonnull %iter.i.i, ptr noundef %src.i.i.i, i32 noundef %cond.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %if.end29.i.i.err_free_tdma.i.i_crit_edge

if.end29.i.i.err_free_tdma.i.i_crit_edge:         ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tdma.i.i

if.end37.i.i:                                     ; preds = %if.end29.i.i
  %call39.i.i = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %chain.i.i, i32 noundef %cond.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end42.i.i, label %if.end37.i.i.err_free_tdma.i.i_crit_edge

if.end37.i.i.err_free_tdma.i.i_crit_edge:         ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tdma.i.i

if.end42.i.i:                                     ; preds = %if.end37.i.i
  %call46.i.i = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %chain.i.i, ptr noundef nonnull %iter.i.i, ptr noundef %dst.i.i.i, i32 noundef %cond.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %do.cond.i.i, label %if.end42.i.i.err_free_tdma.i.i_crit_edge

if.end42.i.i.err_free_tdma.i.i_crit_edge:         ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tdma.i.i

do.cond.i.i:                                      ; preds = %if.end42.i.i
  %80 = ptrtoint ptr %op_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %op_offset.i.i.i.i, align 4
  %81 = ptrtoint ptr %op_offset.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %op_offset.i8.i.i.i, align 4
  %82 = ptrtoint ptr %op_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %op_len.i.i.i.i, align 4
  %84 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %85, %83
  store i32 %add.i.i.i.i, ptr %offset.i.i.i.i, align 4
  %86 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iter.i.i, align 4
  %sub.i.i124.i.i = sub i32 %87, %add.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %88 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i.i125.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %sram_size.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sram_size.i.i125.i.i, align 4
  %sub2.i.i.i.i = add i32 %90, -128
  %91 = call i32 @llvm.umin.i32(i32 %sub.i.i124.i.i, i32 %sub2.i.i.i.i) #8
  %92 = ptrtoint ptr %op_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %op_len.i.i.i.i, align 4
  %tobool.i.i.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool.i.i.not.i.i, label %do.end.i.i, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i
  %call52.i.i = call i32 @mv_cesa_dma_add_result_op(ptr noundef %chain.i.i, i32 noundef 0, i32 noundef 128, i32 noundef 1073741824, i32 noundef %cond.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end55.i.i, label %do.end.i.i.err_free_tdma.i.i_crit_edge

do.end.i.i.err_free_tdma.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_tdma.i.i

if.end55.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %last.i.i, align 4
  %flags58.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %flags58.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags58.i.i, align 4
  %or.i47.i = or i32 %96, 536870912
  store i32 %or.i47.i, ptr %flags58.i.i, align 4
  br label %mv_cesa_skcipher_dma_req_init.exit.i

err_free_tdma.i.i:                                ; preds = %do.end.i.i.err_free_tdma.i.i_crit_edge, %if.end42.i.i.err_free_tdma.i.i_crit_edge, %if.end37.i.i.err_free_tdma.i.i_crit_edge, %if.end29.i.i.err_free_tdma.i.i_crit_edge, %if.then27.i.i
  %ret.1.i.i = phi i32 [ %call52.i.i, %do.end.i.i.err_free_tdma.i.i_crit_edge ], [ %75, %if.then27.i.i ], [ %call34.i.i, %if.end29.i.i.err_free_tdma.i.i_crit_edge ], [ %call39.i.i, %if.end37.i.i.err_free_tdma.i.i_crit_edge ], [ %call46.i.i, %if.end42.i.i.err_free_tdma.i.i_crit_edge ]
  call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i) #8
  %97 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dst.i, align 4
  %99 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %src.i, align 8
  %cmp61.not.i.i = icmp eq ptr %98, %100
  br i1 %cmp61.not.i.i, label %err_free_tdma.i.i.err_unmap_src.i.i_crit_edge, label %if.then62.i.i

err_free_tdma.i.i.err_unmap_src.i.i_crit_edge:    ; preds = %err_free_tdma.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_src.i.i

if.then62.i.i:                                    ; preds = %err_free_tdma.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %101 = load ptr, ptr @cesa_dev, align 4
  %dev63.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %dev63.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev63.i.i, align 4
  %104 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dst_nents.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %103, ptr noundef %98, i32 noundef %105, i32 noundef 2, i32 noundef 0) #8
  br label %err_unmap_src.i.i

err_unmap_src.i.i:                                ; preds = %if.then62.i.i, %err_free_tdma.i.i.err_unmap_src.i.i_crit_edge, %if.end.i.i.err_unmap_src.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %if.then62.i.i ], [ %ret.1.i.i, %err_free_tdma.i.i.err_unmap_src.i.i_crit_edge ], [ -12, %if.end.i.i.err_unmap_src.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %106 = load ptr, ptr @cesa_dev, align 4
  %dev67.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %dev67.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev67.i.i, align 4
  %109 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %src.i, align 8
  %111 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %src_nents.i, align 4
  %113 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dst.i, align 4
  %cmp72.not.i.i = icmp ne ptr %114, %110
  %cond73.i.i = zext i1 %cmp72.not.i.i to i32
  call void @dma_unmap_sg_attrs(ptr noundef %108, ptr noundef %110, i32 noundef %112, i32 noundef %cond73.i.i, i32 noundef 0) #8
  br label %mv_cesa_skcipher_dma_req_init.exit.i

mv_cesa_skcipher_dma_req_init.exit.i:             ; preds = %err_unmap_src.i.i, %if.end55.i.i, %if.else.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge, %if.then.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.2.i.i, %err_unmap_src.i.i ], [ 0, %if.end55.i.i ], [ -12, %if.then.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge ], [ -12, %if.else.i.i.mv_cesa_skcipher_dma_req_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter.i.i) #8
  br label %mv_cesa_skcipher_req_init.exit

mv_cesa_skcipher_req_init.exit.thread:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %std.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %115 = call ptr @memcpy(ptr %std.i.i, ptr %tmpl, i32 128)
  %skip_ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 0, i32 1
  %116 = ptrtoint ptr %skip_ctx.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %skip_ctx.i.i, align 4
  %chain.i48.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %117 = ptrtoint ptr %chain.i48.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %chain.i48.i, align 4
  %last.i49.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %118 = ptrtoint ptr %last.i49.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %last.i49.i, align 4
  br label %if.end

mv_cesa_skcipher_req_init.exit:                   ; preds = %mv_cesa_skcipher_dma_req_init.exit.i, %do.end20.i, %do.end.i
  %retval.0.i = phi i32 [ %15, %do.end.i ], [ %25, %do.end20.i ], [ %retval.0.i.i, %mv_cesa_skcipher_dma_req_init.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mv_cesa_skcipher_req_init.exit.if.end_crit_edge, label %mv_cesa_skcipher_req_init.exit.cleanup_crit_edge

mv_cesa_skcipher_req_init.exit.cleanup_crit_edge: ; preds = %mv_cesa_skcipher_req_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mv_cesa_skcipher_req_init.exit.if.end_crit_edge:  ; preds = %mv_cesa_skcipher_req_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %mv_cesa_skcipher_req_init.exit.if.end_crit_edge, %mv_cesa_skcipher_req_init.exit.thread
  %119 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %req, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %121 = load ptr, ptr @cesa_dev, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp11.i = icmp sgt i32 %125, 0
  br i1 %cmp11.i, label %if.end.for.body.i_crit_edge, label %if.end.mv_cesa_select_engine.exit_crit_edge

if.end.mv_cesa_select_engine.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_select_engine.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %126 = phi ptr [ %132, %for.body.i.for.body.i_crit_edge ], [ %121, %if.end.for.body.i_crit_edge ]
  %selected.014.i = phi ptr [ %spec.select9.i, %for.body.i.for.body.i_crit_edge ], [ null, %if.end.for.body.i_crit_edge ]
  %min_load.013.i = phi i32 [ %131, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %engines.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %engines.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %engines.i, align 4
  %load1.i = getelementptr %struct.mv_cesa_engine, ptr %128, i32 %i.012.i, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %load1.i, i32 noundef 4) #8
  %129 = ptrtoint ptr %load1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %load1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %min_load.013.i)
  %cmp2.i = icmp ult i32 %130, %min_load.013.i
  %add.ptr.i = getelementptr %struct.mv_cesa_engine, ptr %128, i32 %i.012.i
  %131 = call i32 @llvm.umin.i32(i32 %130, i32 %min_load.013.i) #8
  %spec.select9.i = select i1 %cmp2.i, ptr %add.ptr.i, ptr %selected.014.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %132 = load ptr, ptr @cesa_dev, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %cmp.i22 = icmp slt i32 %inc.i, %136
  br i1 %cmp.i22, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mv_cesa_select_engine.exit_crit_edge

for.body.i.mv_cesa_select_engine.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_select_engine.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mv_cesa_select_engine.exit:                       ; preds = %for.body.i.mv_cesa_select_engine.exit_crit_edge, %if.end.mv_cesa_select_engine.exit_crit_edge
  %selected.0.lcssa.i = phi ptr [ null, %if.end.mv_cesa_select_engine.exit_crit_edge ], [ %spec.select9.i, %for.body.i.mv_cesa_select_engine.exit_crit_edge ]
  %load3.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %selected.0.lcssa.i, i32 0, i32 12
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %load3.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %load3.i, i32 1, i32 3, i32 1) #8
  %137 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %load3.i, ptr %load3.i, i32 %120, ptr elementtype(i32) %load3.i) #8, !srcloc !37
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %138 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %selected.0.lcssa.i, ptr %__ctx.i, align 4
  %chain.i.i24 = getelementptr %struct.skcipher_request, ptr %req, i32 1, i32 1
  %139 = ptrtoint ptr %chain.i.i24 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chain.i.i24, align 4
  %tobool.not.i.not.i = icmp eq ptr %140, null
  br i1 %tobool.not.i.not.i, label %if.else.i25, label %if.then.i

if.then.i:                                        ; preds = %mv_cesa_select_engine.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @mv_cesa_dma_prepare(ptr noundef %__ctx.i, ptr noundef %selected.0.lcssa.i) #8
  br label %mv_cesa_skcipher_prepare.exit

if.else.i25:                                      ; preds = %mv_cesa_select_engine.exit
  call void @__sanitizer_cov_trace_pc() #10
  %size.i.i = getelementptr %struct.skcipher_request, ptr %req, i32 2, i32 4
  %141 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %size.i.i, align 4
  %offset.i.i = getelementptr %struct.skcipher_request, ptr %req, i32 2, i32 3
  %142 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %offset.i.i, align 4
  br label %mv_cesa_skcipher_prepare.exit

mv_cesa_skcipher_prepare.exit:                    ; preds = %if.else.i25, %if.then.i
  %call5 = call i32 @mv_cesa_queue_req(ptr noundef %base, ptr noundef %__ctx.i) #8
  %143 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.then9 [
    i32 -16, label %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge
    i32 -115, label %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge52
  ]

mv_cesa_skcipher_prepare.exit.cleanup_crit_edge52: ; preds = %mv_cesa_skcipher_prepare.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mv_cesa_skcipher_prepare.exit.cleanup_crit_edge:  ; preds = %mv_cesa_skcipher_prepare.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %mv_cesa_skcipher_prepare.exit
  %144 = ptrtoint ptr %chain.i.i24 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %chain.i.i24, align 4
  %tobool.not.i.not.i29 = icmp eq ptr %145, null
  br i1 %tobool.not.i.not.i29, label %if.then9.cleanup_crit_edge, label %if.then.i31

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i31:                                      ; preds = %if.then9
  %dst.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %146 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dst.i.i, align 4
  %148 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %src.i, align 8
  %cmp.not.i.i30 = icmp eq ptr %147, %149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %150 = load ptr, ptr @cesa_dev, align 4
  %dev4.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev4.i.i, align 4
  br i1 %cmp.not.i.i30, label %if.else.i.i33, label %if.then.i.i32

if.then.i.i32:                                    ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %dst_nents.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %153 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dst_nents.i.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %152, ptr noundef %147, i32 noundef %154, i32 noundef 2, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %155 = load ptr, ptr @cesa_dev, align 4
  %dev2.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev2.i.i, align 4
  %158 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %src.i, align 8
  %160 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %src_nents.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %157, ptr noundef %159, i32 noundef %161, i32 noundef 1, i32 noundef 0) #8
  br label %mv_cesa_skcipher_dma_cleanup.exit.i

if.else.i.i33:                                    ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %src_nents.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %152, ptr noundef %147, i32 noundef %163, i32 noundef 0, i32 noundef 0) #8
  br label %mv_cesa_skcipher_dma_cleanup.exit.i

mv_cesa_skcipher_dma_cleanup.exit.i:              ; preds = %if.else.i.i33, %if.then.i.i32
  call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mv_cesa_skcipher_dma_cleanup.exit.i, %if.then9.cleanup_crit_edge, %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge, %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge52, %mv_cesa_skcipher_req_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mv_cesa_skcipher_req_init.exit.cleanup_crit_edge ], [ %call5, %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge ], [ %call5, %if.then9.cleanup_crit_edge ], [ %call5, %mv_cesa_skcipher_dma_cleanup.exit.i ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %mv_cesa_skcipher_prepare.exit.cleanup_crit_edge52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_queue_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dma_add_op(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_op_transfers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_result_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_cesa_skcipher_process(ptr nocapture noundef %req, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chain.i = getelementptr i8, ptr %req, i32 116
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %__ctx.i = getelementptr i8, ptr %req, i32 112
  %add.ptr.i = getelementptr i8, ptr %req, i32 -16
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 4
  %dst.i = getelementptr i8, ptr %req, i32 -4
  %4 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst.i, align 4
  %dst_nents.i = getelementptr i8, ptr %req, i32 268
  %6 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_nents.i, align 4
  %size.i = getelementptr i8, ptr %req, i32 256
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %offset.i = getelementptr i8, ptr %req, i32 252
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %call.i.i = tail call i32 @mv_cesa_sg_copy(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 128, i32 noundef %9, i32 noundef %11, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %13, %call.i.i
  store i32 %add.i, ptr %offset.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %15)
  %cmp.i = icmp ult i32 %add.i, %15
  %..i = select i1 %cmp.i, i32 -115, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i11 = select i1 %tobool2.not.i, i32 0, i32 -22
  %retval.0.i = select i1 %tobool.not.i10, i32 -115, i32 %..i11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %..i, %if.then ], [ %retval.0.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_step(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr i8, ptr %req, i32 112
  %chain.i = getelementptr i8, ptr %req, i32 116
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mv_cesa_dma_step(ptr noundef %__ctx.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 -16
  %std.i = getelementptr i8, ptr %req, i32 124
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 128
  %offset.i = getelementptr i8, ptr %req, i32 252
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %8 = load ptr, ptr @cesa_dev, align 4
  %sram_size.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sram_size.i, align 4
  %sub2.i = add i32 %10, -128
  %11 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub2.i) #8
  %sram_dma.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %sram_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sram_dma.i.i, align 4
  %and.i.i = and i32 %13, 2047
  %add.i.i = add nuw nsw i32 %and.i.i, 128
  %or.i.i = mul nuw nsw i32 %add.i.i, 65537
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %enc_p.i.i = getelementptr i8, ptr %req, i32 128
  %15 = ptrtoint ptr %enc_p.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %enc_p.i.i, align 4
  %add2.i.i = add nuw nsw i32 %and.i.i, 32
  %16 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #8
  %enc_key_p.i.i = getelementptr i8, ptr %req, i32 136
  %17 = ptrtoint ptr %enc_key_p.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %enc_key_p.i.i, align 4
  %add4.i.i = add nuw nsw i32 %and.i.i, 64
  %shl6.i.i = shl nuw nsw i32 %add4.i.i, 16
  %or7.i.i = or i32 %shl6.i.i, %add4.i.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #8
  %enc_iv.i.i = getelementptr i8, ptr %req, i32 140
  %19 = ptrtoint ptr %enc_iv.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %enc_iv.i.i, align 4
  %mac_src_p.i.i = getelementptr i8, ptr %req, i32 144
  %20 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_src_p.i.i, align 4
  %and10.i.i = and i32 %21, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #8
  %or14.i.i = or i32 %and10.i.i, %22
  %23 = ptrtoint ptr %mac_src_p.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or14.i.i, ptr %mac_src_p.i.i, align 4
  %mac_digest.i.i = getelementptr i8, ptr %req, i32 148
  %24 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_digest.i.i, align 4
  %and16.i.i = and i32 %25, 65535
  %add17.i.i = add nuw nsw i32 %and.i.i, 96
  %26 = tail call i32 @llvm.bswap.i32(i32 %add17.i.i) #8
  %or20.i.i = or i32 %and16.i.i, %26
  %27 = ptrtoint ptr %mac_digest.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or20.i.i, ptr %mac_digest.i.i, align 4
  %or24.i.i = or i32 %shl6.i.i, %add2.i.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or24.i.i) #8
  %mac_iv.i.i = getelementptr i8, ptr %req, i32 152
  %29 = ptrtoint ptr %mac_iv.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mac_iv.i.i, align 4
  %pool.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pool.i, align 4
  %tobool.not.i6 = icmp eq ptr %31, null
  %32 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br i1 %tobool.not.i6, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call ptr @memcpy(ptr %34, ptr %std.i, i32 128)
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmiocpy(ptr noundef %34, ptr noundef %std.i, i32 noundef 128) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %src.i = getelementptr i8, ptr %req, i32 -8
  %36 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src.i, align 8
  %src_nents.i = getelementptr i8, ptr %req, i32 264
  %38 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_nents.i, align 4
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i, align 4
  %call.i.i = tail call i32 @mv_cesa_sg_copy(ptr noundef %3, ptr noundef %37, i32 noundef %39, i32 noundef 128, i32 noundef %11, i32 noundef %41, i1 noundef zeroext true) #8
  %size.i = getelementptr i8, ptr %req, i32 256
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i.i, ptr %size.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %enc_len.i.i = getelementptr i8, ptr %req, i32 132
  %44 = ptrtoint ptr %enc_len.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %enc_len.i.i, align 4
  %skip_ctx.i = getelementptr i8, ptr %req, i32 260
  %45 = ptrtoint ptr %skip_ctx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %skip_ctx.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool8.not.i = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pool.i, align 4
  %tobool11.not.i = icmp eq ptr %48, null
  %49 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %32, align 4
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else18.i

if.then9.i:                                       ; preds = %if.end.i
  br i1 %tobool11.not.i, label %if.else14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = call ptr @memcpy(ptr %50, ptr %std.i, i32 128)
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmiocpy(ptr noundef %50, ptr noundef %std.i, i32 noundef 128) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then12.i
  %52 = ptrtoint ptr %skip_ctx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %skip_ctx.i, align 4
  br label %if.end26.i

if.else18.i:                                      ; preds = %if.end.i
  br i1 %tobool11.not.i, label %if.else23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call ptr @memcpy(ptr %50, ptr %std.i, i32 32)
  br label %if.end26.i

if.else23.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmiocpy(ptr noundef %50, ptr noundef %std.i, i32 noundef 32) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else23.i, %if.then21.i, %if.end16.i
  %int_mask1.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 9
  %54 = ptrtoint ptr %int_mask1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %int_mask1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 32
  br i1 %cmp.i.i, label %if.end26.i.mv_cesa_set_int_mask.exit.i_crit_edge, label %if.end.i.i

if.end26.i.mv_cesa_set_int_mask.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_set_int_mask.exit.i

if.end.i.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 1
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536870912) #8, !srcloc !38
  %58 = ptrtoint ptr %int_mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %int_mask1.i.i, align 4
  br label %mv_cesa_set_int_mask.exit.i

mv_cesa_set_int_mask.exit.i:                      ; preds = %if.end.i.i, %if.end26.i.mv_cesa_set_int_mask.exit.i_crit_edge
  %regs.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %60, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 2097152) #8, !srcloc !38
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %62, i32 56832
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool32.not.i = icmp eq i32 %64, 0
  br i1 %tobool32.not.i, label %mv_cesa_set_int_mask.exit.i.mv_cesa_skcipher_std_step.exit_crit_edge, label %do.end.i, !prof !41

mv_cesa_set_int_mask.exit.i.mv_cesa_skcipher_std_step.exit_crit_edge: ; preds = %mv_cesa_set_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_skcipher_std_step.exit

do.end.i:                                         ; preds = %mv_cesa_set_int_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #8
  br label %mv_cesa_skcipher_std_step.exit

mv_cesa_skcipher_std_step.exit:                   ; preds = %do.end.i, %mv_cesa_set_int_mask.exit.i.mv_cesa_skcipher_std_step.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %66, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 16777216) #8, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %mv_cesa_skcipher_std_step.exit, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_req_cleanup(ptr noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %__ctx.i.i = getelementptr i8, ptr %req, i32 112
  %chain.i.i = getelementptr i8, ptr %req, i32 116
  %0 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.mv_cesa_skcipher_cleanup.exit_crit_edge, label %if.then.i

entry.mv_cesa_skcipher_cleanup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_cesa_skcipher_cleanup.exit

if.then.i:                                        ; preds = %entry
  %dst.i.i = getelementptr i8, ptr %req, i32 -4
  %2 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst.i.i, align 4
  %src.i.i = getelementptr i8, ptr %req, i32 -8
  %4 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %3, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %6 = load ptr, ptr @cesa_dev, align 4
  %dev4.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4.i.i, align 4
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst_nents.i.i = getelementptr i8, ptr %req, i32 268
  %9 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %3, i32 noundef %10, i32 noundef 2, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %11 = load ptr, ptr @cesa_dev, align 4
  %dev2.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.i.i, align 4
  %14 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src.i.i, align 8
  %src_nents.i.i = getelementptr i8, ptr %req, i32 264
  %16 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #8
  br label %mv_cesa_skcipher_dma_cleanup.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %src_nents6.i.i = getelementptr i8, ptr %req, i32 264
  %18 = ptrtoint ptr %src_nents6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_nents6.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %3, i32 noundef %19, i32 noundef 0, i32 noundef 0) #8
  br label %mv_cesa_skcipher_dma_cleanup.exit.i

mv_cesa_skcipher_dma_cleanup.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  tail call void @mv_cesa_dma_cleanup(ptr noundef %__ctx.i.i) #8
  br label %mv_cesa_skcipher_cleanup.exit

mv_cesa_skcipher_cleanup.exit:                    ; preds = %mv_cesa_skcipher_dma_cleanup.exit.i, %entry.mv_cesa_skcipher_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_complete(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %req, i32 -16
  %__ctx.i = getelementptr i8, ptr %req, i32 112
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 128
  %load = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %load, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %load, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %load, ptr %load, i32 %3, ptr elementtype(i32) %load) #8, !srcloc !43
  %tfm.i = getelementptr i8, ptr %req, i32 16
  %5 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %8, i32 -100
  %9 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ivsize.i, align 4
  %chain.i = getelementptr i8, ptr %req, i32 116
  %11 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chain.i, align 4
  %tobool.not.i.not = icmp eq ptr %12, null
  br i1 %tobool.not.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iv = getelementptr i8, ptr %req, i32 -12
  %13 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iv, align 4
  %last = getelementptr i8, ptr %req, i32 120
  %15 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %last, align 4
  %17 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %iv8 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %19, i32 0, i32 1, i32 0, i32 0, i32 8
  %20 = call ptr @memcpy(ptr %14, ptr %iv8, i32 %10)
  br label %if.end14

if.else:                                          ; preds = %entry
  %pool = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pool, align 4
  %tobool.not = icmp eq ptr %22, null
  %iv12 = getelementptr i8, ptr %req, i32 -12
  %23 = ptrtoint ptr %iv12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iv12, align 4
  %25 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr13 = getelementptr i8, ptr %27, i32 64
  br i1 %tobool.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call ptr @memcpy(ptr %24, ptr %add.ptr13, i32 %10)
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmiocpy(ptr noundef %24, ptr noundef %add.ptr13, i32 noundef %10) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_sg_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @mv_cesa_ecb_des_alg, !1, !"mv_cesa_ecb_des_alg", i1 false, i1 false}
!1 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 512, i32 21}
!2 = !{ptr @mv_cesa_cbc_des_alg, !3, !"mv_cesa_cbc_des_alg", i1 false, i1 false}
!3 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 562, i32 21}
!4 = !{ptr @mv_cesa_ecb_des3_ede_alg, !5, !"mv_cesa_ecb_des3_ede_alg", i1 false, i1 false}
!5 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 621, i32 21}
!6 = !{ptr @mv_cesa_cbc_des3_ede_alg, !7, !"mv_cesa_cbc_des3_ede_alg", i1 false, i1 false}
!7 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 675, i32 21}
!8 = !{ptr @mv_cesa_ecb_aes_alg, !9, !"mv_cesa_ecb_aes_alg", i1 false, i1 false}
!9 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 749, i32 21}
!10 = !{ptr @mv_cesa_cbc_aes_alg, !11, !"mv_cesa_cbc_aes_alg", i1 false, i1 false}
!11 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 798, i32 21}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 435, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mv_cesa_skcipher_req_init._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mv_cesa_skcipher_req_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 440, i32 3}
!22 = !{ptr @mv_cesa_skcipher_req_init._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mv_cesa_skcipher_req_init._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mv_cesa_skcipher_req_ops, !25, !"mv_cesa_skcipher_req_ops", i1 false, i1 false}
!25 = !{!"../drivers/crypto/marvell/cesa/cipher.c", i32 234, i32 37}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2149230711}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148168509, i64 2148168535, i64 2148168564, i64 2148168598, i64 2148168629, i64 2148168652}
!38 = !{i64 6376538}
!39 = !{i64 6376956}
!40 = !{i64 2154113815}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2154114544}
!43 = !{i64 2148170974, i64 2148171000, i64 2148171029, i64 2148171063, i64 2148171094, i64 2148171117}
