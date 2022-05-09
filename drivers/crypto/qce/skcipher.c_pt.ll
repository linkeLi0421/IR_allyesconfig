; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/skcipher.c_pt.bc'
source_filename = "../drivers/crypto/qce/skcipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.qce_algo_ops = type { i32, ptr, ptr, ptr }
%struct.qce_skcipher_def = type { i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qce_alg_template = type { %struct.list_head, i32, i32, ptr, [108 x i8], %union.anon.79, ptr, ptr, i32, [116 x i8] }
%union.anon.79 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.75, ptr, ptr, ptr, ptr, %union.anon.76, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.75 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.qce_device = type { %struct.crypto_queue, %struct.spinlock, %struct.tasklet_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.qce_dma_data, i32, i32, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.qce_dma_data = type { ptr, ptr, ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.des_ctx = type { [32 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.qce_result_dump = type { [16 x i32], [4 x i32], [4 x i32], i32, i32 }

@__param_str_aes_sw_max_len = internal constant [23 x i8] c"qcrypto.aes_sw_max_len\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@aes_sw_max_len = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_aes_sw_max_len = internal constant %struct.kernel_param { ptr @__param_str_aes_sw_max_len, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @aes_sw_max_len } }, section "__param", align 4
@__UNIQUE_ID_aes_sw_max_lentype236 = internal constant [37 x i8] c"qcrypto.parmtype=aes_sw_max_len:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_aes_sw_max_len237 = internal constant [146 x i8] c"qcrypto.parm=aes_sw_max_len:Only use hardware for AES requests larger than this [0=always use hardware; anything <16 breaks AES-GCM; default=512]\00", section ".modinfo", align 1
@skcipher_ops = dso_local constant { %struct.qce_algo_ops, [16 x i8] } { %struct.qce_algo_ops { i32 5, ptr @qce_skcipher_register, ptr @qce_skcipher_unregister, ptr @qce_skcipher_async_req_handle }, [16 x i8] zeroinitializer }, align 32
@skcipher_def = internal constant { [8 x %struct.qce_skcipher_def], [64 x i8] } { [8 x %struct.qce_skcipher_def] [%struct.qce_skcipher_def { i32 516, ptr @.str.8, ptr @.str.9, i32 16, i32 0, i32 0, i32 16, i32 32 }, %struct.qce_skcipher_def { i32 260, ptr @.str.10, ptr @.str.11, i32 16, i32 0, i32 16, i32 16, i32 32 }, %struct.qce_skcipher_def { i32 1028, ptr @.str.12, ptr @.str.13, i32 1, i32 16, i32 16, i32 16, i32 32 }, %struct.qce_skcipher_def { i32 2052, ptr @.str.14, ptr @.str.15, i32 16, i32 0, i32 16, i32 32, i32 64 }, %struct.qce_skcipher_def { i32 513, ptr @.str.16, ptr @.str.17, i32 8, i32 0, i32 0, i32 8, i32 8 }, %struct.qce_skcipher_def { i32 257, ptr @.str.18, ptr @.str.19, i32 8, i32 0, i32 8, i32 8, i32 8 }, %struct.qce_skcipher_def { i32 514, ptr @.str.20, ptr @.str.21, i32 8, i32 0, i32 0, i32 24, i32 24 }, %struct.qce_skcipher_def { i32 258, ptr @.str.22, ptr @.str.23, i32 8, i32 0, i32 8, i32 24, i32 24 }], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@qce_skcipher_register_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s registration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qce_skcipher_register_one\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/crypto/qce/skcipher.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qce_skcipher_register_one._entry_ptr = internal global ptr @qce_skcipher_register_one._entry, section ".printk_index", align 4
@skcipher_algs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @skcipher_algs, ptr @skcipher_algs }, [24 x i8] zeroinitializer }, align 32
@qce_skcipher_register_one.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcrypto\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s is registered\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecb-aes-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cbc-aes-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctr-aes-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xts(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xts-aes-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecb-des-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cbc-des-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecb(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ecb-3des-qce\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cbc-3des-qce\00", [19 x i8] zeroinitializer }, align 32
@qce_skcipher_async_req_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of src SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qce_skcipher_async_req_handle\00", [34 x i8] zeroinitializer }, align 32
@qce_skcipher_async_req_handle._entry_ptr = internal global ptr @qce_skcipher_async_req_handle._entry, section ".printk_index", align 4
@qce_skcipher_async_req_handle._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of dst SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@qce_skcipher_async_req_handle._entry_ptr.28 = internal global ptr @qce_skcipher_async_req_handle._entry.26, section ".printk_index", align 4
@qce_skcipher_done.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qce_skcipher_done\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"skcipher dma termination error (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@qce_skcipher_done.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"skcipher operation error (%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"aes_sw_max_len\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 18, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"skcipher_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 524, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"skcipher_def\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 360, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 449, i32 52 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 487, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"skcipher_algs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 25, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 493, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 363, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 364, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 372, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 373, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 381, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 382, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 391, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 392, i32 15 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 400, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 401, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 409, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 410, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 418, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 419, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 427, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 428, i32 15 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 91, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 95, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 46, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [33 x i8] c"../drivers/crypto/qce/skcipher.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 57, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_aes_sw_max_len237, ptr @__UNIQUE_ID_aes_sw_max_lentype236, ptr @__param_aes_sw_max_len, ptr @qce_skcipher_async_req_handle._entry, ptr @qce_skcipher_async_req_handle._entry.26, ptr @qce_skcipher_async_req_handle._entry_ptr, ptr @qce_skcipher_async_req_handle._entry_ptr.28, ptr @qce_skcipher_register_one._entry, ptr @qce_skcipher_register_one._entry_ptr, ptr @aes_sw_max_len, ptr @skcipher_ops, ptr @skcipher_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @skcipher_algs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_sw_max_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_def to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_skcipher_register_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_algs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_skcipher_async_req_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_skcipher_async_req_handle._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_register(ptr noundef %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef nonnull @skcipher_def, ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 1), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 2), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.err_crit_edge

for.cond.1.err_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 3), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.err_crit_edge

for.cond.2.err_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 4), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.err_crit_edge

for.cond.3.err_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 5), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.err_crit_edge

for.cond.4.err_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 6), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.err_crit_edge

for.cond.5.err_crit_edge:                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call fastcc i32 @qce_skcipher_register_one(ptr noundef getelementptr inbounds ([8 x %struct.qce_skcipher_def], ptr @skcipher_def, i32 0, i32 7), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.6.err_crit_edge

for.cond.6.err_crit_edge:                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %for.cond.6.err_crit_edge, %for.cond.5.err_crit_edge, %for.cond.4.err_crit_edge, %for.cond.3.err_crit_edge, %for.cond.2.err_crit_edge, %for.cond.1.err_crit_edge, %for.cond.err_crit_edge, %entry.err_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.err_crit_edge ], [ %call.1, %for.cond.err_crit_edge ], [ %call.2, %for.cond.1.err_crit_edge ], [ %call.3, %for.cond.2.err_crit_edge ], [ %call.4, %for.cond.3.err_crit_edge ], [ %call.5, %for.cond.4.err_crit_edge ], [ %call.6, %for.cond.5.err_crit_edge ], [ %call.7, %for.cond.6.err_crit_edge ]
  %0 = load ptr, ptr @skcipher_algs, align 4
  %cmp.not17.i = icmp eq ptr %0, @skcipher_algs
  br i1 %cmp.not17.i, label %err.cleanup_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %tmpl.018.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %err.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0.i = load ptr, ptr %tmpl.018.i, align 128
  %alg.i = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018.i, i32 0, i32 5
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @kfree(ptr noundef %tmpl.018.i) #8
  %cmp.not.i = icmp eq ptr %n.0.i, @skcipher_algs
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %err.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ %call.lcssa, %list_del.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_skcipher_unregister(ptr nocapture noundef readnone %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @skcipher_algs, align 4
  %cmp.not17 = icmp eq ptr %0, @skcipher_algs
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %tmpl.018 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0 = load ptr, ptr %tmpl.018, align 128
  %alg = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018, i32 0, i32 5
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @kfree(ptr noundef %tmpl.018) #8
  %cmp.not = icmp eq ptr %n.0, @skcipher_algs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_async_req_handle(ptr noundef %async_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %async_req, i32 -16
  %tfm.i = getelementptr i8, ptr %async_req, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce5 = getelementptr i8, ptr %3, i32 640
  %4 = ptrtoint ptr %qce5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce5, align 128
  %iv = getelementptr i8, ptr %async_req, i32 -12
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 4
  %iv6 = getelementptr i8, ptr %async_req, i32 116
  %8 = ptrtoint ptr %iv6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %iv6, align 4
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %9, i32 -100
  %10 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i, align 4
  %ivsize = getelementptr i8, ptr %async_req, i32 120
  %12 = ptrtoint ptr %ivsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ivsize, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 128
  %cryptlen8 = getelementptr i8, ptr %async_req, i32 172
  %15 = ptrtoint ptr %cryptlen8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cryptlen8, align 4
  %src = getelementptr i8, ptr %async_req, i32 -8
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %async_req, i32 -4
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %cmp.not = icmp eq ptr %17, %19
  %not.cmp.not = xor i1 %cmp.not, true
  %cond = zext i1 %not.cmp.not to i32
  %cond12 = select i1 %cmp.not, i32 0, i32 2
  %conv = zext i32 %14 to i64
  %call15 = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %conv) #8
  %src_nents16 = getelementptr i8, ptr %async_req, i32 124
  %20 = ptrtoint ptr %src_nents16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %src_nents16, align 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 128
  %conv20 = zext i32 %24 to i64
  %call21 = tail call i32 @sg_nents_for_len(ptr noundef %22, i64 noundef %conv20) #8
  %25 = ptrtoint ptr %src_nents16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %src_nents16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call21.sink = phi i32 [ %call21, %if.then ], [ %call15, %entry.if.end_crit_edge ]
  %26 = phi i32 [ %.pr, %if.then ], [ %call15, %entry.if.end_crit_edge ]
  %27 = getelementptr i8, ptr %async_req, i32 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call21.sink, ptr %27, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26 = icmp slt i32 %26, 0
  br i1 %cmp26, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.24) #11
  %31 = ptrtoint ptr %src_nents16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_nents16, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %27, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp32 = icmp slt i32 %34, 0
  br i1 %cmp32, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %35 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.27) #11
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %27, align 16
  %sub = sub i32 0, %38
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %add = add nuw i32 %34, 1
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %27, align 16
  %flags = getelementptr i8, ptr %async_req, i32 20
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  %cond43 = select i1 %tobool42.not, i32 2592, i32 3264
  %dst_tbl = getelementptr i8, ptr %async_req, i32 152
  %call45 = tail call i32 @sg_alloc_table(ptr noundef %dst_tbl, i32 noundef %add, i32 noundef %cond43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %result_sg = getelementptr i8, ptr %async_req, i32 132
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %result_buf = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10, i32 2
  %42 = ptrtoint ptr %result_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %result_buf, align 4
  tail call void @sg_init_one(ptr noundef %result_sg, ptr noundef %43, i32 noundef 128) #8
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 128
  %call52 = tail call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %45, i32 noundef %47) #8
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call52 to i32
  br label %error_free

if.end56:                                         ; preds = %if.end48
  %call59 = tail call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %result_sg, i32 noundef 128) #8
  %cmp.i207 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call59 to i32
  br label %error_free

if.end63:                                         ; preds = %if.end56
  %50 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call59, align 4
  %or.i = and i32 %51, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %call59, align 4
  %52 = ptrtoint ptr %dst_tbl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst_tbl, align 8
  %dst_sg = getelementptr i8, ptr %async_req, i32 164
  %54 = ptrtoint ptr %dst_sg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %dst_sg, align 4
  %dev65 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %55 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev65, align 4
  %57 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %27, align 16
  %call68 = tail call i32 @dma_map_sg_attrs(ptr noundef %56, ptr noundef %53, i32 noundef %58, i32 noundef %cond12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end63.error_free_crit_edge, label %if.end72

if.end63.error_free_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end72:                                         ; preds = %if.end63
  br i1 %cmp.not, label %if.else84, label %if.then74

if.then74:                                        ; preds = %if.end72
  %59 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev65, align 4
  %61 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %src, align 8
  %63 = ptrtoint ptr %src_nents16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_nents16, align 4
  %call78 = tail call i32 @dma_map_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef %cond, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then74.error_unmap_dst_crit_edge, label %if.end82

if.then74.error_unmap_dst_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unmap_dst

if.end82:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %src, align 8
  %src_sg = getelementptr i8, ptr %async_req, i32 168
  %67 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %src_sg, align 8
  br label %if.end88

if.else84:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst_sg, align 4
  %src_sg86 = getelementptr i8, ptr %async_req, i32 168
  %70 = ptrtoint ptr %src_sg86 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %src_sg86, align 8
  %sub87 = add nsw i32 %call68, -1
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.end82
  %src_nents.0 = phi i32 [ %call78, %if.end82 ], [ %sub87, %if.else84 ]
  %src_sg90 = getelementptr i8, ptr %async_req, i32 168
  %71 = ptrtoint ptr %src_sg90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %src_sg90, align 8
  %73 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dst_sg, align 4
  %call92 = tail call i32 @qce_dma_prep_sgs(ptr noundef %dma, ptr noundef %72, i32 noundef %src_nents.0, ptr noundef %74, i32 noundef %call68, ptr noundef nonnull @qce_skcipher_done, ptr noundef %async_req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end88.error_unmap_src_crit_edge

if.end88.error_unmap_src_crit_edge:               ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unmap_src

if.end95:                                         ; preds = %if.end88
  tail call void @qce_dma_issue_pending(ptr noundef %dma) #8
  %crypto_alg_type = getelementptr i8, ptr %3, i32 -248
  %75 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %crypto_alg_type, align 8
  %call97 = tail call i32 @qce_start(ptr noundef %async_req, i32 noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end95.cleanup_crit_edge, label %error_terminate

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_terminate:                                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %call102 = tail call i32 @qce_dma_terminate_all(ptr noundef %dma) #8
  br label %error_unmap_src

error_unmap_src:                                  ; preds = %error_terminate, %if.end88.error_unmap_src_crit_edge
  %ret.0 = phi i32 [ %call92, %if.end88.error_unmap_src_crit_edge ], [ %call97, %error_terminate ]
  br i1 %cmp.not, label %error_unmap_src.error_unmap_dst_crit_edge, label %if.then104

error_unmap_src.error_unmap_dst_crit_edge:        ; preds = %error_unmap_src
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unmap_dst

if.then104:                                       ; preds = %error_unmap_src
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev65, align 4
  %79 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %src, align 8
  %81 = ptrtoint ptr %src_nents16 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src_nents16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %78, ptr noundef %80, i32 noundef %82, i32 noundef %cond, i32 noundef 0) #8
  br label %error_unmap_dst

error_unmap_dst:                                  ; preds = %if.then104, %error_unmap_src.error_unmap_dst_crit_edge, %if.then74.error_unmap_dst_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then104 ], [ %ret.0, %error_unmap_src.error_unmap_dst_crit_edge ], [ %call78, %if.then74.error_unmap_dst_crit_edge ]
  %83 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev65, align 4
  %85 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dst_sg, align 4
  %87 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %27, align 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %84, ptr noundef %86, i32 noundef %88, i32 noundef %cond12, i32 noundef 0) #8
  br label %error_free

error_free:                                       ; preds = %error_unmap_dst, %if.end63.error_free_crit_edge, %if.then61, %if.then54
  %ret.2 = phi i32 [ %48, %if.then54 ], [ %49, %if.then61 ], [ %ret.1, %error_unmap_dst ], [ %call68, %if.end63.error_free_crit_edge ]
  tail call void @sg_free_table(ptr noundef %dst_tbl) #8
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end95.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ %32, %do.end ], [ %sub, %do.end37 ], [ %ret.2, %error_free ], [ %call45, %if.end40.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_skcipher_register_one(ptr nocapture noundef readonly %def, ptr noundef %qce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg1 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5
  %cra_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 32
  %name = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %2)
  %cra_driver_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 8
  %drv_name = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 2
  %3 = ptrtoint ptr %drv_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_name, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %4)
  %blocksize = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 3
  %5 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocksize, align 4
  %cra_blocksize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 12
  %7 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cra_blocksize, align 4
  %chunksize = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 4
  %8 = ptrtoint ptr %chunksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunksize, align 4
  %chunksize7 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 8
  %10 = ptrtoint ptr %chunksize7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chunksize7, align 32
  %ivsize = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 5
  %11 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ivsize, align 4
  %ivsize8 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 7
  %13 = ptrtoint ptr %ivsize8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ivsize8, align 4
  %min_keysize = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 6
  %14 = ptrtoint ptr %min_keysize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_keysize, align 4
  %min_keysize9 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %min_keysize9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %min_keysize9, align 4
  %max_keysize = getelementptr inbounds %struct.qce_skcipher_def, ptr %def, i32 0, i32 7
  %17 = ptrtoint ptr %max_keysize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_keysize, align 4
  %max_keysize10 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 6
  %19 = ptrtoint ptr %max_keysize10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_keysize10, align 8
  %20 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %def, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %and13 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool14.not, ptr @qce_skcipher_setkey, ptr @qce_des_setkey
  %cond15 = select i1 %tobool11.not, ptr %cond, ptr @qce_des3_setkey
  %22 = ptrtoint ptr %alg1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cond15, ptr %alg1, align 128
  %encrypt = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qce_skcipher_encrypt, ptr %encrypt, align 4
  %decrypt = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %24 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qce_skcipher_decrypt, ptr %decrypt, align 8
  %cra_priority = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 24
  %25 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 300, ptr %cra_priority, align 32
  %cra_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 8
  %26 = ptrtoint ptr %cra_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 69760, ptr %cra_flags, align 16
  %cra_ctxsize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 16
  %27 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 72, ptr %cra_ctxsize, align 8
  %cra_alignmask = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 20
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cra_alignmask, align 4
  %cra_module = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 9, i32 36
  %29 = ptrtoint ptr %cra_module to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cra_module, align 4
  %and22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.if.end28_crit_edge, label %if.then24

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %cra_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 70016, ptr %cra_flags, align 16
  %exit = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %31 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @qce_skcipher_exit, ptr %exit, align 16
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end.if.end28_crit_edge
  %qce_skcipher_init_fallback.sink = phi ptr [ @qce_skcipher_init_fallback, %if.then24 ], [ @qce_skcipher_init, %if.end.if.end28_crit_edge ]
  %32 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %qce_skcipher_init_fallback.sink, ptr %32, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %crypto_alg_type = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %crypto_alg_type, align 8
  %alg_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %alg_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %21, ptr %alg_flags, align 4
  %qce31 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %qce31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %qce, ptr %qce31, align 128
  %call32 = tail call i32 @crypto_register_skcipher(ptr noundef %alg1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end38, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef %cra_name) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @skcipher_algs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %41, ptr noundef nonnull @skcipher_algs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_add_tail.exit_crit_edge

if.end38.list_add_tail.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @skcipher_algs, i32 0, i32 1), align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @skcipher_algs, ptr %call7.i.i, align 8
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end38.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_skcipher_register_one.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_skcipher_register_one, %if.then45)) #8
          to label %cleanup [label %if.then45], !srcloc !85

if.then45:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %45 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_skcipher_register_one.__UNIQUE_ID_ddebug240, ptr noundef %46, ptr noundef nonnull @.str.7, ptr noundef %cra_name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_des3_setkey(ptr nocapture noundef %ablk, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  %26 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %_key.sroa.0.0.copyload = load i32, ptr %key, align 1
  %_key.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %key, i32 4
  %27 = ptrtoint ptr %_key.sroa.6.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %_key.sroa.6.0.copyload = load i32, ptr %_key.sroa.6.0..sroa_idx, align 1
  %_key.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %key, i32 8
  %28 = ptrtoint ptr %_key.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %_key.sroa.9.0.copyload = load i32, ptr %_key.sroa.9.0..sroa_idx, align 1
  %_key.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %key, i32 12
  %29 = ptrtoint ptr %_key.sroa.12.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %_key.sroa.12.0.copyload = load i32, ptr %_key.sroa.12.0..sroa_idx, align 1
  %_key.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %key, i32 16
  %30 = ptrtoint ptr %_key.sroa.15.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %_key.sroa.15.0.copyload = load i32, ptr %_key.sroa.15.0..sroa_idx, align 1
  %_key.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %key, i32 20
  %31 = ptrtoint ptr %_key.sroa.18.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %_key.sroa.18.0.copyload = load i32, ptr %_key.sroa.18.0..sroa_idx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.0.0.copyload, i32 %_key.sroa.9.0.copyload)
  %32 = icmp eq i32 %_key.sroa.0.0.copyload, %_key.sroa.9.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.6.0.copyload, i32 %_key.sroa.12.0.copyload)
  %33 = icmp eq i32 %_key.sroa.6.0.copyload, %_key.sroa.12.0.copyload
  %tobool6.not = and i1 %32, %33
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.9.0.copyload, i32 %_key.sroa.15.0.copyload)
  %34 = icmp eq i32 %_key.sroa.9.0.copyload, %_key.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.12.0.copyload, i32 %_key.sroa.18.0.copyload)
  %35 = icmp eq i32 %_key.sroa.12.0.copyload, %_key.sroa.18.0.copyload
  %tobool14.not = and i1 %34, %35
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.0.0.copyload, i32 %_key.sroa.15.0.copyload)
  %36 = icmp eq i32 %_key.sroa.0.0.copyload, %_key.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.6.0.copyload, i32 %_key.sroa.18.0.copyload)
  %37 = icmp eq i32 %_key.sroa.6.0.copyload, %_key.sroa.18.0.copyload
  %tobool23.not = and i1 %36, %37
  br i1 %tobool23.not, label %lor.lhs.false15.cleanup_crit_edge, label %if.end25

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  %enc_keylen = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1, i32 1, i32 60
  %38 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %keylen, ptr %enc_keylen, align 4
  %39 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %verify_skcipher_des3_key.exit.thread
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -126, %lor.lhs.false15.cleanup_crit_edge ], [ -126, %lor.lhs.false.cleanup_crit_edge ], [ -126, %if.end.cleanup_crit_edge ], [ -126, %verify_skcipher_des3_key.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_des_setkey(ptr nocapture noundef %ablk, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1
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
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #8, !srcloc !86
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  %enc_keylen = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1, i32 1, i32 60
  %4 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %keylen, ptr %enc_keylen, align 4
  %5 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_setkey(ptr nocapture noundef %ablk, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen)
  %tobool3.not = icmp eq i32 %keylen, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %alg_flags = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alg_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %shr = lshr i32 %keylen, 1
  %add.ptr = getelementptr i8, ptr %key, i32 %shr
  %bcmp = tail call i32 @bcmp(ptr nonnull %key, ptr %add.ptr, i32 %shr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %__keylen.0 = phi i32 [ %shr, %if.then5.if.end10_crit_edge ], [ %keylen, %if.end.if.end10_crit_edge ]
  %4 = zext i32 %__keylen.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__keylen.0, label %if.end10.cleanup_crit_edge [
    i32 16, label %if.end10.sw.bb_crit_edge
    i32 32, label %if.end10.sw.bb_crit_edge34
    i32 24, label %if.end10.sw.epilog_crit_edge
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10.sw.bb_crit_edge34:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge34
  %5 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %key, i32 %keylen)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end10.sw.epilog_crit_edge
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1, i32 1, i32 64
  %6 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fallback, align 4
  %call11 = tail call i32 @crypto_skcipher_setkey(ptr noundef %7, ptr noundef nonnull %key, i32 noundef %keylen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %enc_keylen = getelementptr inbounds %struct.crypto_skcipher, ptr %ablk, i32 1, i32 1, i32 60
  %8 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %keylen, ptr %enc_keylen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %sw.epilog.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -126, %if.then5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.then13 ], [ %call11, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_skcipher_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_skcipher_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_skcipher_init_fallback(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #8
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 64
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %fallback, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 128
  %add = add i32 %5, 256
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_skcipher_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 64
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qce_skcipher_init(ptr nocapture noundef writeonly %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %tfm, align 128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_skcipher_crypt(ptr noundef %req, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  %alg_flags = getelementptr i8, ptr %3, i32 -244
  %6 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alg_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool.not = icmp eq i32 %encrypt, 0
  %cond = select i1 %tobool.not, i32 -2147483648, i32 1073741824
  %or = or i32 %7, %cond
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %__ctx.i, align 128
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %enc_keylen8 = getelementptr i8, ptr %1, i32 192
  %9 = ptrtoint ptr %enc_keylen8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enc_keylen8, align 4
  %not.tobool7.not = xor i1 %tobool7.not, true
  %shr = zext i1 %not.tobool7.not to i32
  %cond9 = lshr i32 %10, %shr
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end.if.end22_crit_edge, label %if.then17

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.end
  %sub = add i32 %5, -1
  %and19 = and i32 %12, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp = icmp eq i32 %and19, 0
  br i1 %cmp, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %and24 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end58_crit_edge, label %land.lhs.true

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end22
  %15 = zext i32 %cond9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %cond9, label %land.lhs.true.if.then42_crit_edge [
    i32 16, label %land.lhs.true.lor.lhs.false29_crit_edge
    i32 32, label %land.lhs.true.lor.lhs.false29_crit_edge103
  ]

land.lhs.true.lor.lhs.false29_crit_edge103:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29

land.lhs.true.lor.lhs.false29_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false29:                                  ; preds = %land.lhs.true.lor.lhs.false29_crit_edge, %land.lhs.true.lor.lhs.false29_crit_edge103
  br i1 %tobool7.not, label %lor.lhs.false29.if.end58_crit_edge, label %land.lhs.true33

lor.lhs.false29.if.end58_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true33:                                  ; preds = %lor.lhs.false29
  %16 = load i32, ptr @aes_sw_max_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp35.not = icmp ugt i32 %12, %16
  br i1 %cmp35.not, label %lor.lhs.false36, label %land.lhs.true33.if.then42_crit_edge

land.lhs.true33.if.then42_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false36:                                  ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %12)
  %cmp38 = icmp ult i32 %12, 513
  %rem = and i32 %12, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool41.not = icmp eq i32 %rem, 0
  %or.cond101 = or i1 %cmp38, %tobool41.not
  br i1 %or.cond101, label %lor.lhs.false36.if.end58_crit_edge, label %lor.lhs.false36.if.then42_crit_edge

lor.lhs.false36.if.then42_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false36.if.end58_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then42:                                        ; preds = %lor.lhs.false36.if.then42_crit_edge, %land.lhs.true33.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 196
  %17 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %18, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %19 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags44 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags44, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %27 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %28 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %35 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %36 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %dst2.i, align 4
  %37 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %12, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %38 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %iv4.i, align 4
  br i1 %tobool.not, label %cond.false53, label %cond.true50

cond.true50:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #8
  br label %cleanup

cond.false53:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #8
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false36.if.end58_crit_edge, %lor.lhs.false29.if.end58_crit_edge, %if.end22.if.end58_crit_edge
  %qce = getelementptr i8, ptr %3, i32 640
  %39 = ptrtoint ptr %qce to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qce, align 128
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %async_req_enqueue, align 4
  %base60 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call61 = tail call i32 %42(ptr noundef %40, ptr noundef %base60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %cond.false53, %cond.true50, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end58 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then17.cleanup_crit_edge ], [ %call52, %cond.true50 ], [ %call55, %cond.false53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qce_sgtable_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_prep_sgs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_skcipher_done(ptr noundef %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %data, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce4 = getelementptr i8, ptr %3, i32 640
  %4 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce4, align 128
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %result_buf5 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %result_buf5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %result_buf5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status, align 4, !annotation !87
  %src = getelementptr i8, ptr %data, i32 -8
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %data, i32 -4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 4
  %cmp.not = icmp eq ptr %10, %12
  %not.cmp.not = xor i1 %cmp.not, true
  %cond = zext i1 %not.cmp.not to i32
  %cond9 = select i1 %cmp.not, i32 0, i32 2
  %call11 = tail call i32 @qce_dma_terminate_all(ptr noundef %dma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_skcipher_done.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_skcipher_done, %if.then18)) #8
          to label %if.end19 [label %if.then18], !srcloc !85

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_skcipher_done.__UNIQUE_ID_ddebug238, ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %call11) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.body, %entry.if.end19_crit_edge
  br i1 %cmp.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev22, align 4
  %src_sg = getelementptr i8, ptr %data, i32 168
  %17 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_sg, align 8
  %src_nents = getelementptr i8, ptr %data, i32 124
  %19 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef %cond, i32 noundef 0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev24, align 4
  %dst_sg = getelementptr i8, ptr %data, i32 164
  %23 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst_sg, align 4
  %dst_nents = getelementptr i8, ptr %data, i32 128
  %25 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_nents, align 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef %cond9, i32 noundef 0) #8
  %dst_tbl = getelementptr i8, ptr %data, i32 152
  tail call void @sg_free_table(ptr noundef %dst_tbl) #8
  %call25 = call i32 @qce_check_status(ptr noundef %5, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body28, label %if.end23.if.end45_crit_edge

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.body28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_skcipher_done.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_skcipher_done, %if.then40)) #8
          to label %if.end45 [label %if.then40], !srcloc !85

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24, align 4
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_skcipher_done.__UNIQUE_ID_ddebug239, ptr noundef %28, ptr noundef nonnull @.str.31, i32 noundef %30) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.body28, %if.end23.if.end45_crit_edge
  %iv = getelementptr i8, ptr %data, i32 116
  %31 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iv, align 4
  %encr_cntr_iv = getelementptr inbounds %struct.qce_result_dump, ptr %7, i32 0, i32 2
  %ivsize = getelementptr i8, ptr %data, i32 120
  %33 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ivsize, align 8
  %35 = call ptr @memcpy(ptr %32, ptr %encr_cntr_iv, i32 %34)
  %async_req_done = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %async_req_done to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %async_req_done, align 4
  %38 = ptrtoint ptr %qce4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qce4, align 128
  call void %37(ptr noundef %39, i32 noundef %call25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qce_dma_issue_pending(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_terminate_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_check_status(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__param_aes_sw_max_len, !1, !"__param_aes_sw_max_len", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/skcipher.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_aes_sw_max_lentype236, !1, !"__UNIQUE_ID_aes_sw_max_lentype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aes_sw_max_len237, !4, !"__UNIQUE_ID_aes_sw_max_len237", i1 false, i1 false}
!4 = !{!"../drivers/crypto/qce/skcipher.c", i32 20, i32 1}
!5 = !{ptr @skcipher_ops, !6, !"skcipher_ops", i1 false, i1 false}
!6 = !{!"../drivers/crypto/qce/skcipher.c", i32 524, i32 27}
!7 = !{ptr @__param_str_aes_sw_max_len, !1, !"__param_str_aes_sw_max_len", i1 false, i1 false}
!8 = !{ptr @aes_sw_max_len, !9, !"aes_sw_max_len", i1 false, i1 false}
!9 = !{!"../drivers/crypto/qce/skcipher.c", i32 18, i32 21}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/qce/skcipher.c", i32 449, i32 52}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/qce/skcipher.c", i32 487, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qce_skcipher_register_one._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qce_skcipher_register_one._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/qce/skcipher.c", i32 493, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qce_skcipher_register_one.__UNIQUE_ID_ddebug240, !21, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!24 = !{ptr @skcipher_algs, !25, !"skcipher_algs", i1 false, i1 false}
!25 = !{!"../drivers/crypto/qce/skcipher.c", i32 25, i32 8}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/qce/skcipher.c", i32 363, i32 12}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/qce/skcipher.c", i32 364, i32 15}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/qce/skcipher.c", i32 372, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/qce/skcipher.c", i32 373, i32 15}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/qce/skcipher.c", i32 381, i32 12}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/qce/skcipher.c", i32 382, i32 15}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/qce/skcipher.c", i32 391, i32 12}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/qce/skcipher.c", i32 392, i32 15}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/qce/skcipher.c", i32 400, i32 12}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/qce/skcipher.c", i32 401, i32 15}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/qce/skcipher.c", i32 409, i32 12}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/qce/skcipher.c", i32 410, i32 15}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/qce/skcipher.c", i32 418, i32 12}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/qce/skcipher.c", i32 419, i32 15}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/qce/skcipher.c", i32 427, i32 12}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/qce/skcipher.c", i32 428, i32 15}
!58 = !{ptr @skcipher_def, !59, !"skcipher_def", i1 false, i1 false}
!59 = !{!"../drivers/crypto/qce/skcipher.c", i32 360, i32 38}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/qce/skcipher.c", i32 91, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qce_skcipher_async_req_handle._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @qce_skcipher_async_req_handle._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/qce/skcipher.c", i32 95, i32 3}
!67 = !{ptr @qce_skcipher_async_req_handle._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @qce_skcipher_async_req_handle._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/qce/skcipher.c", i32 46, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qce_skcipher_done.__UNIQUE_ID_ddebug238, !70, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/qce/skcipher.c", i32 57, i32 3}
!75 = !{ptr @qce_skcipher_done.__UNIQUE_ID_ddebug239, !74, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148289840, i64 2148289845, i64 2148289858, i64 2148289902, i64 2148289936, i64 2148289957}
!86 = !{i64 2149250531}
!87 = !{!"auto-init"}
