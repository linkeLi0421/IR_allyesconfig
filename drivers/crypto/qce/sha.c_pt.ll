; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/sha.c_pt.bc'
source_filename = "../drivers/crypto/qce/sha.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qce_algo_ops = type { i32, ptr, ptr, ptr }
%struct.qce_ahash_def = type { i32, ptr, ptr, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qce_alg_template = type { %struct.list_head, i32, i32, ptr, [108 x i8], %union.anon.79, ptr, ptr, i32, [116 x i8] }
%union.anon.79 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.3, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.3 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.qce_device = type { %struct.crypto_queue, %struct.spinlock, %struct.tasklet_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.qce_dma_data, i32, i32, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%union.anon.2 = type { ptr }
%struct.qce_dma_data = type { ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.qce_sha_saved_state = type { [64 x i8], [32 x i8], [2 x i32], i32, i32, i64, i8 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.qce_result_dump = type { [16 x i32], [4 x i32], [4 x i32], i32, i32 }

@ahash_ops = dso_local constant { %struct.qce_algo_ops, [16 x i8] } { %struct.qce_algo_ops { i32 15, ptr @qce_ahash_register, ptr @qce_ahash_unregister, ptr @qce_ahash_async_req_handle }, [16 x i8] zeroinitializer }, align 32
@ahash_def = internal constant { [4 x %struct.qce_ahash_def], [48 x i8] } { [4 x %struct.qce_ahash_def] [%struct.qce_ahash_def { i32 8, ptr @.str.11, ptr @.str.8, i32 20, i32 64, i32 128, ptr @std_iv_sha1 }, %struct.qce_ahash_def { i32 16, ptr @.str.12, ptr @.str.9, i32 32, i32 64, i32 128, ptr @std_iv_sha256 }, %struct.qce_ahash_def { i32 32, ptr @.str.13, ptr @.str.14, i32 20, i32 64, i32 128, ptr @std_iv_sha1 }, %struct.qce_ahash_def { i32 64, ptr @.str.15, ptr @.str.16, i32 32, i32 64, i32 128, ptr @std_iv_sha256 }], [48 x i8] zeroinitializer }, align 32
@sha1_zero_message_hash = external dso_local constant [20 x i8], align 1
@sha256_zero_message_hash = external dso_local constant [32 x i8], align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@qce_ahash_register_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s registration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qce_ahash_register_one\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/crypto/qce/sha.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qce_ahash_register_one._entry_ptr = internal global ptr @qce_ahash_register_one._entry, section ".printk_index", align 4
@ahash_algs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ahash_algs, ptr @ahash_algs }, [24 x i8] zeroinitializer }, align 32
@qce_ahash_register_one.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcrypto\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s is registered\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha1-qce\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sha256-qce\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@std_iv_sha1 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@std_iv_sha256 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hmac-sha1-qce\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hmac-sha256-qce\00", [16 x i8] zeroinitializer }, align 32
@qce_ahash_async_req_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of src SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qce_ahash_async_req_handle\00", [37 x i8] zeroinitializer }, align 32
@qce_ahash_async_req_handle._entry_ptr = internal global ptr @qce_ahash_async_req_handle._entry, section ".printk_index", align 4
@qce_ahash_done.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qce_ahash_done\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ahash dma termination error (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@qce_ahash_done.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahash operation error (%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 32]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"ahash_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 538, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"ahash_def\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 411, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 490, i32 48 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 501, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ahash_algs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 25, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 507, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 350, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 352, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 87, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 414, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"std_iv_sha1\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 27, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 423, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"std_iv_sha256\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 31, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 432, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 433, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 441, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 442, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 95, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 51, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [28 x i8] c"../drivers/crypto/qce/sha.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 65, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @qce_ahash_async_req_handle._entry, ptr @qce_ahash_async_req_handle._entry_ptr, ptr @qce_ahash_register_one._entry, ptr @qce_ahash_register_one._entry_ptr, ptr @ahash_ops, ptr @ahash_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ahash_algs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @std_iv_sha1, ptr @.str.12, ptr @std_iv_sha256, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_def to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_ahash_register_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_algs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_iv_sha1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_iv_sha256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_ahash_async_req_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_register(ptr noundef %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_ahash_register_one(ptr noundef nonnull @ahash_def, ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @qce_ahash_register_one(ptr noundef getelementptr inbounds ([4 x %struct.qce_ahash_def], ptr @ahash_def, i32 0, i32 1), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @qce_ahash_register_one(ptr noundef getelementptr inbounds ([4 x %struct.qce_ahash_def], ptr @ahash_def, i32 0, i32 2), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.err_crit_edge

for.cond.1.err_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @qce_ahash_register_one(ptr noundef getelementptr inbounds ([4 x %struct.qce_ahash_def], ptr @ahash_def, i32 0, i32 3), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.2.err_crit_edge

for.cond.2.err_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %for.cond.2.err_crit_edge, %for.cond.1.err_crit_edge, %for.cond.err_crit_edge, %entry.err_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.err_crit_edge ], [ %call.1, %for.cond.err_crit_edge ], [ %call.2, %for.cond.1.err_crit_edge ], [ %call.3, %for.cond.2.err_crit_edge ]
  %0 = load ptr, ptr @ahash_algs, align 4
  %cmp.not17.i = icmp eq ptr %0, @ahash_algs
  br i1 %cmp.not17.i, label %err.cleanup_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %tmpl.018.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %err.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0.i = load ptr, ptr %tmpl.018.i, align 128
  %alg.i = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018.i, i32 0, i32 5
  tail call void @crypto_unregister_ahash(ptr noundef %alg.i) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmpl.018.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %tmpl.018.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmpl.018.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %tmpl.018.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %tmpl.018.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmpl.018.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %tmpl.018.i) #10
  %cmp.not.i = icmp eq ptr %n.0.i, @ahash_algs
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %err.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ %call.lcssa, %list_del.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_ahash_unregister(ptr nocapture noundef readnone %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ahash_algs, align 4
  %cmp.not17 = icmp eq ptr %0, @ahash_algs
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %tmpl.018 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0 = load ptr, ptr %tmpl.018, align 128
  %alg = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018, i32 0, i32 5
  tail call void @crypto_unregister_ahash(ptr noundef %alg) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmpl.018, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %tmpl.018 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmpl.018, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %tmpl.018 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %tmpl.018, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmpl.018, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmpl.018) #10
  %cmp.not = icmp eq ptr %n.0, @ahash_algs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_async_req_handle(ptr noundef %async_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce5 = getelementptr i8, ptr %3, i32 512
  %4 = ptrtoint ptr %qce5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce5, align 128
  %flags6 = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 4
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 4
  %8 = and i32 %7, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.else, label %entry.if.end17.sink.split_crit_edge

entry.if.end17.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.else:                                          ; preds = %entry
  %and10 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.if.end17_crit_edge, label %if.else.if.end17.sink.split_crit_edge

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %entry.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 64, %entry.if.end17.sink.split_crit_edge ], [ 16, %if.else.if.end17.sink.split_crit_edge ]
  %authkey15 = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 76
  %10 = ptrtoint ptr %authkey15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %__crt_ctx.i, ptr %authkey15, align 4
  %authklen16 = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 80
  %11 = ptrtoint ptr %authklen16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %authklen16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %src = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 0, i32 2
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 0, i32 1
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %15 to i64
  %call18 = tail call i32 @sg_nents_for_len(ptr noundef %13, i64 noundef %conv) #10
  %src_nents = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 8
  %16 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call18, ptr %src_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17) #13
  %19 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_nents, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 4
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %18, ptr noundef %22, i32 noundef %call18, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %result_sg = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 84
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %result_buf = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %result_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %result_buf, align 4
  tail call void @sg_init_one(ptr noundef %result_sg, ptr noundef %24, i32 noundef 128) #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call34 = tail call i32 @dma_map_sg_attrs(ptr noundef %26, ptr noundef %result_sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end31.error_unmap_src_crit_edge, label %if.end38

if.end31.error_unmap_src_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_unmap_src

if.end38:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src, align 4
  %29 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_nents, align 8
  %call43 = tail call i32 @qce_dma_prep_sgs(ptr noundef %dma, ptr noundef %28, i32 noundef %30, ptr noundef %result_sg, i32 noundef 1, ptr noundef nonnull @qce_ahash_done, ptr noundef %async_req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end38.error_unmap_dst_crit_edge

if.end38.error_unmap_dst_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_unmap_dst

if.end46:                                         ; preds = %if.end38
  tail call void @qce_dma_issue_pending(ptr noundef %dma) #10
  %crypto_alg_type = getelementptr i8, ptr %3, i32 -376
  %31 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crypto_alg_type, align 8
  %call48 = tail call i32 @qce_start(ptr noundef %async_req, i32 noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %error_terminate

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_terminate:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 @qce_dma_terminate_all(ptr noundef %dma) #10
  br label %error_unmap_dst

error_unmap_dst:                                  ; preds = %error_terminate, %if.end38.error_unmap_dst_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end38.error_unmap_dst_crit_edge ], [ %call48, %error_terminate ]
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %34, ptr noundef %result_sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %error_unmap_src

error_unmap_src:                                  ; preds = %error_unmap_dst, %if.end31.error_unmap_src_crit_edge
  %ret.1 = phi i32 [ %call34, %if.end31.error_unmap_src_crit_edge ], [ %ret.0, %error_unmap_dst ]
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src, align 4
  %39 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %error_unmap_src, %if.end46.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %20, %do.end ], [ %ret.1, %error_unmap_src ], [ %call27, %if.end23.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_ahash_register_one(ptr nocapture noundef readonly %def, ptr noundef %qce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %std_iv = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 6
  %1 = ptrtoint ptr %std_iv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %std_iv, align 4
  %std_iv1 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %std_iv1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %std_iv1, align 16
  %alg2 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %alg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qce_ahash_init, ptr %alg2, align 128
  %update = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qce_ahash_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qce_ahash_final, ptr %final, align 8
  %digest = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @qce_ahash_digest, ptr %digest, align 16
  %export = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 5
  %8 = ptrtoint ptr %export to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qce_ahash_export, ptr %export, align 4
  %import = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 6
  %9 = ptrtoint ptr %import to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qce_ahash_import, ptr %import, align 8
  %10 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %def, align 4
  %12 = and i32 %11, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %setkey = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 7
  %14 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qce_ahash_hmac_setkey, ptr %setkey, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %digestsize = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 3
  %15 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %digestsize, align 4
  %halg = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11
  %17 = ptrtoint ptr %halg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %halg, align 128
  %statesize = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 5
  %18 = ptrtoint ptr %statesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %statesize, align 4
  %statesize11 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %statesize11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %statesize11, align 4
  %and13 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.end8.if.end22.sink.split_crit_edge

if.end8.if.end22.sink.split_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end8
  %and17 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.if.end22_crit_edge, label %if.else.if.end22.sink.split_crit_edge

if.else.if.end22.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.sink.split

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22.sink.split:                              ; preds = %if.else.if.end22.sink.split_crit_edge, %if.end8.if.end22.sink.split_crit_edge
  %sha256_zero_message_hash.sink = phi ptr [ @sha1_zero_message_hash, %if.end8.if.end22.sink.split_crit_edge ], [ @sha256_zero_message_hash, %if.else.if.end22.sink.split_crit_edge ]
  %hash_zero20 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %hash_zero20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sha256_zero_message_hash.sink, ptr %hash_zero20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else.if.end22_crit_edge
  %blocksize = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 4
  %22 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocksize, align 4
  %cra_blocksize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 3
  %24 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cra_blocksize, align 4
  %cra_priority = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 6
  %25 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 300, ptr %cra_priority, align 32
  %cra_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 2
  %26 = ptrtoint ptr %cra_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4224, ptr %cra_flags, align 16
  %cra_ctxsize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 4
  %27 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 64, ptr %cra_ctxsize, align 8
  %cra_alignmask = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 5
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cra_alignmask, align 4
  %cra_module = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 15
  %29 = ptrtoint ptr %cra_module to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cra_module, align 4
  %cra_init = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 12
  %30 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qce_ahash_cra_init, ptr %cra_init, align 64
  %cra_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 8
  %name = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %32)
  %cra_driver_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 9
  %drv_name = getelementptr inbounds %struct.qce_ahash_def, ptr %def, i32 0, i32 2
  %33 = ptrtoint ptr %drv_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv_name, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %34)
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %crypto_alg_type = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 15, ptr %crypto_alg_type, align 8
  %38 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %def, align 4
  %alg_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %alg_flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %alg_flags, align 4
  %qce30 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %qce30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %qce, ptr %qce30, align 128
  %call31 = tail call i32 @crypto_register_ahash(ptr noundef %alg2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef %cra_name) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %44 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ahash_algs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %44, ptr noundef nonnull @ahash_algs) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end36.list_add_tail.exit_crit_edge

if.end36.list_add_tail.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ahash_algs, i32 0, i32 1), align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ahash_algs, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %prev.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end36.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_ahash_register_one.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_ahash_register_one, %if.then43)) #10
          to label %cleanup [label %if.then43], !srcloc !64

if.then43:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev44 = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %48 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_ahash_register_one.__UNIQUE_ID_ddebug251, ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef %cra_name) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qce_ahash_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %std_iv2 = getelementptr i8, ptr %3, i32 -368
  %4 = ptrtoint ptr %std_iv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %std_iv2, align 16
  %6 = call ptr @memset(ptr %__ctx.i, i32 0, i32 272)
  %first_blk = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 32
  %7 = ptrtoint ptr %first_blk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %first_blk, align 8
  %alg_flags = getelementptr i8, ptr %3, i32 -372
  %8 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alg_flags, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %11 = call ptr @memcpy(ptr %digest, ptr %5, i32 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_update(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce4 = getelementptr i8, ptr %3, i32 512
  %4 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce4, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i, align 4
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes7, align 8
  %conv = zext i32 %9 to i64
  %count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 24
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count, align 8
  %add = add i64 %11, %conv
  store i64 %add, ptr %count, align 8
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen, align 8
  %add9 = add i32 %13, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %7)
  %cmp.not = icmp ugt i32 %add9, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %__ctx.i, i32 %13
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %15, i32 noundef 0, i32 noundef %9, i32 noundef 0) #10
  %16 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes7, align 8
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buflen, align 8
  %add15 = add i32 %19, %17
  store i32 %add15, ptr %buflen, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %src16 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src16, align 4
  %src_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5
  %22 = ptrtoint ptr %src_orig to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %src_orig, align 8
  %nbytes_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 4
  %23 = ptrtoint ptr %nbytes_orig to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %nbytes_orig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then19

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tmpbuf = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %24 = call ptr @memcpy(ptr %tmpbuf, ptr %__ctx.i, i32 %13)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end.if.end24_crit_edge
  %rem = urem i32 %add9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool25.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %tobool25.not, i32 %7, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool28.not = icmp eq i32 %spec.select, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %9, %spec.select
  tail call void @scatterwalk_map_and_copy(ptr noundef %__ctx.i, ptr noundef %21, i32 noundef %sub, i32 noundef %spec.select, i32 noundef 0) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge
  %sub35 = sub i32 %add9, %spec.select
  %25 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buflen, align 8
  %27 = ptrtoint ptr %src16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub35)
  %cmp38139 = icmp uge i32 %26, %sub35
  %tobool40.not140 = icmp eq ptr %28, null
  %or.cond141 = select i1 %cmp38139, i1 true, i1 %tobool40.not140
  br i1 %or.cond141, label %while.end, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.end34.while.body_crit_edge
  %len.0144 = phi i32 [ %add41, %if.end45.while.body_crit_edge ], [ %26, %if.end34.while.body_crit_edge ]
  %sg.0143 = phi ptr [ %call48, %if.end45.while.body_crit_edge ], [ %28, %if.end34.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0143, i32 0, i32 4
  %29 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_length, align 4
  %add41 = add i32 %30, %len.0144
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %sub35)
  %cmp42 = icmp ugt i32 %add41, %sub35
  br i1 %cmp42, label %while.body.if.end51_crit_edge, label %if.end45

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end45:                                         ; preds = %while.body
  %call48 = tail call ptr @sg_next(ptr noundef nonnull %sg.0143) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %sub35)
  %cmp38 = icmp uge i32 %add41, %sub35
  %tobool40.not = icmp eq ptr %call48, null
  %or.cond = select i1 %cmp38, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.end45.if.end51_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

while.end:                                        ; preds = %if.end34
  %tobool49.not = icmp eq ptr %28, null
  br i1 %tobool49.not, label %while.end.cleanup_crit_edge, label %while.end.if.end51_crit_edge

while.end.if.end51_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %while.end.if.end51_crit_edge, %if.end45.if.end51_crit_edge, %while.body.if.end51_crit_edge
  %31 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool53.not = icmp eq i32 %32, 0
  br i1 %tobool53.not, label %if.end51.if.end68_crit_edge, label %if.then54

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then54:                                        ; preds = %if.end51
  %sg55 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 36
  tail call void @sg_init_table(ptr noundef %sg55, i32 noundef 2) #10
  %tmpbuf59 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %33 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buflen, align 8
  %35 = ptrtoint ptr %tmpbuf59 to i32
  %cmp.i = icmp ugt ptr %tmpbuf59, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then54.do.body5.i_crit_edge, !prof !65

if.then54.do.body5.i_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %36 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %36, %tmpbuf59
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !65

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %35, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %37 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %37, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !66

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then54.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %38 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %38, i32 %shr.i
  %39 = ptrtoint ptr %sg55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg55, align 4
  %41 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !65

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !65

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %35, 4095
  %and.i.i.i = and i32 %40, 3
  %or.i.i.i = or i32 %and.i.i.i, %41
  %42 = ptrtoint ptr %sg55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i.i, ptr %sg55, align 4
  %offset1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 40
  %43 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 44
  %44 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %34, ptr %length.i.i, align 4
  %45 = ptrtoint ptr %src16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %src16, align 4
  %arrayidx.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %offset.i.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 60
  %47 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i138 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 64
  %48 = ptrtoint ptr %length.i.i138 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %length.i.i138, align 4
  %49 = ptrtoint ptr %46 to i32
  %or.i.i = and i32 %49, -4
  %and.i.i = or i32 %or.i.i, 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  store ptr %sg55, ptr %src16, align 4
  br label %if.end68

if.end68:                                         ; preds = %sg_set_buf.exit, %if.end51.if.end68_crit_edge
  %51 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub35, ptr %nbytes7, align 8
  %52 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select, ptr %buflen, align 8
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 13
  %53 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %async_req_enqueue, align 4
  %55 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qce4, align 128
  %call73 = tail call i32 %54(ptr noundef %56, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %while.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call73, %if.end68 ], [ -22, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_final(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %hash_zero = getelementptr i8, ptr %3, i32 516
  %6 = ptrtoint ptr %hash_zero to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_zero, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %halg = getelementptr i8, ptr %3, i32 -128
  %10 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %halg, align 128
  %12 = call ptr @memcpy(ptr %9, ptr %7, i32 %11)
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %qce2 = getelementptr i8, ptr %3, i32 512
  %13 = ptrtoint ptr %qce2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qce2, align 128
  %last_blk = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 33
  %15 = ptrtoint ptr %last_blk to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %last_blk, align 1
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  %src_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5
  %18 = ptrtoint ptr %src_orig to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %src_orig, align 8
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbytes, align 8
  %nbytes_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 4
  %21 = ptrtoint ptr %nbytes_orig to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nbytes_orig, align 4
  %tmpbuf = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %22 = call ptr @memcpy(ptr %tmpbuf, ptr %__ctx.i, i32 %5)
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 36
  %23 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buflen, align 8
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %tmpbuf, i32 noundef %24) #10
  %25 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sg, ptr %src, align 4
  %26 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buflen, align 8
  %28 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nbytes, align 8
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %14, i32 0, i32 13
  %29 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async_req_enqueue, align 4
  %31 = ptrtoint ptr %qce2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qce2, align 128
  %call20 = tail call i32 %30(ptr noundef %32, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end6 ], [ 0, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce2 = getelementptr i8, ptr %3, i32 512
  %4 = ptrtoint ptr %qce2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce2, align 128
  %std_iv2.i = getelementptr i8, ptr %3, i32 -368
  %6 = ptrtoint ptr %std_iv2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %std_iv2.i, align 16
  %8 = call ptr @memset(ptr %__ctx.i, i32 0, i32 272)
  %first_blk.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 32
  %9 = ptrtoint ptr %first_blk.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %first_blk.i, align 8
  %alg_flags.i = getelementptr i8, ptr %3, i32 -372
  %10 = ptrtoint ptr %alg_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alg_flags.i, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %13 = call ptr @memcpy(ptr %digest.i, ptr %7, i32 32)
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %src_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5
  %16 = ptrtoint ptr %src_orig to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %src_orig, align 8
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 8
  %nbytes_orig = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 4
  %19 = ptrtoint ptr %nbytes_orig to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nbytes_orig, align 4
  store i8 1, ptr %first_blk.i, align 8
  %last_blk = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 33
  %20 = ptrtoint ptr %last_blk to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %last_blk, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %entry
  %hash_zero = getelementptr i8, ptr %3, i32 516
  %21 = ptrtoint ptr %hash_zero to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hash_zero, align 4
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %23 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %result, align 32
  %halg = getelementptr i8, ptr %3, i32 -128
  %25 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %halg, align 128
  %27 = call ptr @memcpy(ptr %24, ptr %22, i32 %26)
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %async_req_enqueue, align 4
  %30 = ptrtoint ptr %qce2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qce2, align 128
  %call14 = tail call i32 %29(ptr noundef %31, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ 0, %if.then8 ], [ 0, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qce_ahash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 8
  %2 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 %1)
  %partial_digest = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 1
  %digest = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %3 = call ptr @memcpy(ptr %partial_digest, ptr %digest, i32 32)
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 12
  %4 = ptrtoint ptr %byte_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_count, align 4
  %byte_count4 = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 2
  %6 = ptrtoint ptr %byte_count4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %byte_count4, align 8
  %arrayidx7 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 16
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.qce_sha_saved_state, ptr %out, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx9, align 4
  %10 = load i32, ptr %buflen, align 8
  %pending_buflen = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 3
  %11 = ptrtoint ptr %pending_buflen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pending_buflen, align 8
  %count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 24
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count, align 8
  %count11 = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 5
  %14 = ptrtoint ptr %count11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %count11, align 8
  %first_blk = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 32
  %15 = ptrtoint ptr %first_blk to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %first_blk, align 8, !range !70
  %first_blk12 = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 6
  %17 = ptrtoint ptr %first_blk12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %first_blk12, align 8
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %flags13 = getelementptr inbounds %struct.qce_sha_saved_state, ptr %out, i32 0, i32 4
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags13, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qce_ahash_import(ptr nocapture noundef %req, ptr nocapture noundef readonly %in) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 272)
  %count = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 5
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %count, align 8
  %count1 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 24
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %count1, align 8
  %pending_buflen = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 3
  %4 = ptrtoint ptr %pending_buflen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pending_buflen, align 8
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buflen, align 8
  %first_blk = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 6
  %7 = ptrtoint ptr %first_blk to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %first_blk, align 8, !range !70
  %first_blk2 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 32
  %9 = ptrtoint ptr %first_blk2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %first_blk2, align 8
  %flags = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 4
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags3, align 4
  %byte_count = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 2
  %13 = ptrtoint ptr %byte_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_count, align 8
  %byte_count4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 12
  %15 = ptrtoint ptr %byte_count4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %byte_count4, align 4
  %arrayidx7 = getelementptr %struct.qce_sha_saved_state, ptr %in, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 16
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx9, align 4
  %19 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 %5)
  %digest = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %partial_digest = getelementptr inbounds %struct.qce_sha_saved_state, ptr %in, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %digest, ptr %partial_digest, i32 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_ahash_hmac_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  %wait = alloca %struct.crypto_wait, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #10
  %4 = call ptr @memset(ptr %wait, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #10
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %5 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %6 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i, align 4
  %8 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 64)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %keylen)
  %cmp.not = icmp ult i32 %7, %keylen
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %key, i32 %keylen)
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 20, label %if.end.if.end12_crit_edge
    i32 32, label %if.then9
  ]

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %alg_name.0 = phi ptr [ @.str.9, %if.then9 ], [ @.str.8, %if.end.if.end12_crit_edge ]
  %call13 = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull %alg_name.0, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end8.i.i

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end12
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call13, i32 0, i32 8
  %12 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %13, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.err_free_ahash_crit_edge, label %if.end20, !prof !66

if.end8.i.i.err_free_ahash_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_ahash

if.end20:                                         ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call13, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #10
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %flags4.i, align 4
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %base.i.i.i, align 128
  %add = add i32 %keylen, 64
  %call9.i.i85 = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool22.not = icmp eq ptr %call9.i.i85, null
  br i1 %tobool22.not, label %if.end20.err_free_req_crit_edge, label %if.end24

if.end20.err_free_req_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_req

if.end24:                                         ; preds = %if.end20
  %20 = call ptr @memcpy(ptr %call9.i.i85, ptr %key, i32 %keylen)
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call9.i.i85, i32 noundef %keylen) #10
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %keylen, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %__crt_ctx.i, ptr %result3.i, align 32
  %call27 = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #10
  %24 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call27, label %if.end24.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end24.sw.bb.i_crit_edge
    i32 -16, label %if.end24.sw.bb.i_crit_edge96
  ]

if.end24.sw.bb.i_crit_edge96:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end24.sw.bb.i_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end24.crypto_wait_req.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end24.sw.bb.i_crit_edge, %if.end24.sw.bb.i_crit_edge96
  call void @wait_for_completion(ptr noundef nonnull %wait) #10
  %25 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %26 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end24.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call27, %if.end24.crypto_wait_req.exit_crit_edge ], [ %27, %sw.bb.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i85) #10
  br label %err_free_req

err_free_req:                                     ; preds = %crypto_wait_req.exit, %if.end20.err_free_req_crit_edge
  %ret.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit ], [ -12, %if.end20.err_free_req_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #10
  br label %err_free_ahash

err_free_ahash:                                   ; preds = %err_free_req, %if.end8.i.i.err_free_ahash_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_req ], [ -12, %if.end8.i.i.err_free_ahash_crit_edge ]
  %base.i.i89 = getelementptr inbounds %struct.crypto_ahash, ptr %call13, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call13, ptr noundef %base.i.i89) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_ahash, %if.then15, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %11, %if.then15 ], [ %ret.1, %err_free_ahash ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qce_ahash_cra_init(ptr nocapture noundef writeonly %tfm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 272, ptr %reqsize1.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 64)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_prep_sgs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_ahash_done(ptr noundef %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce4 = getelementptr i8, ptr %3, i32 512
  %4 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce4, align 128
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %result_buf = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %result_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %result_buf, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status, align 4, !annotation !71
  %call7 = tail call i32 @qce_dma_terminate_all(ptr noundef %dma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_ahash_done.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_ahash_done, %if.then12)) #10
          to label %if.end13 [label %if.then12], !srcloc !64

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_ahash_done.__UNIQUE_ID_ddebug249, ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %call7) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body, %entry.if.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %src_nents = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 8
  %17 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #10
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14, align 4
  %result_sg = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 84
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %result_sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  %digest = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2
  %21 = call ptr @memcpy(ptr %digest, ptr %7, i32 %9)
  %result17 = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %result17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %result17, align 32
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.end13.if.end24_crit_edge, label %land.lhs.true

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end13
  %last_blk = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 33
  %24 = ptrtoint ptr %last_blk to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_blk, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end24_crit_edge, label %if.then20

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memcpy(ptr %23, ptr %7, i32 %9)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %auth_byte_count = getelementptr inbounds %struct.qce_result_dump, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %auth_byte_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auth_byte_count, align 4
  %byte_count = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 12
  %29 = ptrtoint ptr %byte_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %byte_count, align 4
  %arrayidx27 = getelementptr %struct.qce_result_dump, ptr %7, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr %struct.ahash_request, ptr %data, i32 2, i32 5, i32 16
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx29, align 4
  %call30 = call i32 @qce_check_status(ptr noundef %5, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %do.body32, label %if.end24.if.end49_crit_edge

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_ahash_done.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_ahash_done, %if.then44)) #10
          to label %if.end49 [label %if.then44], !srcloc !64

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev14, align 4
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_ahash_done.__UNIQUE_ID_ddebug250, ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %36) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body32, %if.end24.if.end49_crit_edge
  %src_orig = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5
  %37 = ptrtoint ptr %src_orig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src_orig, align 8
  %39 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %src, align 4
  %nbytes_orig = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 4
  %40 = ptrtoint ptr %nbytes_orig to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbytes_orig, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %nbytes, align 8
  %last_blk51 = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 33
  %43 = ptrtoint ptr %last_blk51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %last_blk51, align 1
  %first_blk = getelementptr inbounds %struct.ahash_request, ptr %data, i32 2, i32 5, i32 32
  %44 = ptrtoint ptr %first_blk to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %first_blk, align 8
  %async_req_done = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 14
  %45 = ptrtoint ptr %async_req_done to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %async_req_done, align 4
  %47 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qce4, align 128
  call void %46(ptr noundef %48, i32 noundef %call30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qce_dma_issue_pending(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_start(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_terminate_all(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_check_status(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @ahash_ops, !1, !"ahash_ops", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/sha.c", i32 538, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/qce/sha.c", i32 490, i32 48}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/qce/sha.c", i32 501, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qce_ahash_register_one._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @qce_ahash_register_one._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/qce/sha.c", i32 507, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qce_ahash_register_one.__UNIQUE_ID_ddebug251, !13, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/qce/sha.c", i32 350, i32 14}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/qce/sha.c", i32 352, i32 14}
!20 = !{ptr @init_completion.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../include/linux/completion.h", i32 87, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ahash_algs, !24, !"ahash_algs", i1 false, i1 false}
!24 = !{!"../drivers/crypto/qce/sha.c", i32 25, i32 8}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/qce/sha.c", i32 414, i32 12}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/qce/sha.c", i32 423, i32 12}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/qce/sha.c", i32 432, i32 12}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/qce/sha.c", i32 433, i32 15}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/qce/sha.c", i32 441, i32 12}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/qce/sha.c", i32 442, i32 15}
!37 = !{ptr @ahash_def, !38, !"ahash_def", i1 false, i1 false}
!38 = !{!"../drivers/crypto/qce/sha.c", i32 411, i32 35}
!39 = !{ptr @std_iv_sha1, !40, !"std_iv_sha1", i1 false, i1 false}
!40 = !{!"../drivers/crypto/qce/sha.c", i32 27, i32 18}
!41 = !{ptr @std_iv_sha256, !42, !"std_iv_sha256", i1 false, i1 false}
!42 = !{!"../drivers/crypto/qce/sha.c", i32 31, i32 18}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/qce/sha.c", i32 95, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qce_ahash_async_req_handle._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qce_ahash_async_req_handle._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/qce/sha.c", i32 51, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qce_ahash_done.__UNIQUE_ID_ddebug249, !49, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/qce/sha.c", i32 65, i32 3}
!54 = !{ptr @qce_ahash_done.__UNIQUE_ID_ddebug250, !53, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148290168, i64 2148290173, i64 2148290186, i64 2148290230, i64 2148290264, i64 2148290285}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2153793885, i64 2153794377, i64 2153793922, i64 2153793978, i64 2153794012, i64 2153794036, i64 2153794077, i64 2153794098, i64 2153794126, i64 2153794160}
!68 = !{i64 2153787566, i64 2153788058, i64 2153787603, i64 2153787659, i64 2153787693, i64 2153787717, i64 2153787758, i64 2153787779, i64 2153787807, i64 2153787841}
!69 = !{i64 2153789176, i64 2153789668, i64 2153789213, i64 2153789269, i64 2153789303, i64 2153789327, i64 2153789368, i64 2153789389, i64 2153789417, i64 2153789451}
!70 = !{i8 0, i8 2}
!71 = !{!"auto-init"}
