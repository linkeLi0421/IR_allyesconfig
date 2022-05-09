; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/aead.c_pt.bc'
source_filename = "../drivers/crypto/qce/aead.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qce_algo_ops = type { i32, ptr, ptr, ptr }
%struct.qce_aead_def = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
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
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }

@aead_ops = dso_local constant { %struct.qce_algo_ops, [16 x i8] } { %struct.qce_algo_ops { i32 3, ptr @qce_aead_register, ptr @qce_aead_unregister, ptr @qce_aead_async_req_handle }, [16 x i8] zeroinitializer }, align 32
@aead_def = internal constant { [7 x %struct.qce_aead_def], [60 x i8] } { [7 x %struct.qce_aead_def] [%struct.qce_aead_def { i32 289, ptr @.str.8, ptr @.str.9, i32 8, i32 0, i32 8, i32 20 }, %struct.qce_aead_def { i32 290, ptr @.str.10, ptr @.str.11, i32 8, i32 0, i32 8, i32 20 }, %struct.qce_aead_def { i32 321, ptr @.str.12, ptr @.str.13, i32 8, i32 0, i32 8, i32 32 }, %struct.qce_aead_def { i32 322, ptr @.str.14, ptr @.str.15, i32 8, i32 0, i32 8, i32 32 }, %struct.qce_aead_def { i32 324, ptr @.str.16, ptr @.str.17, i32 16, i32 0, i32 16, i32 32 }, %struct.qce_aead_def { i32 4100, ptr @.str.18, ptr @.str.19, i32 1, i32 0, i32 16, i32 16 }, %struct.qce_aead_def { i32 12292, ptr @.str.20, ptr @.str.21, i32 1, i32 0, i32 8, i32 16 }], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@qce_aead_register_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s registration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qce_aead_register_one\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/qce/aead.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qce_aead_register_one._entry_ptr = internal global ptr @qce_aead_register_one._entry, section ".printk_index", align 4
@aead_algs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @aead_algs, ptr @aead_algs }, [24 x i8] zeroinitializer }, align 32
@qce_aead_register_one.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcrypto\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s is registered\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"authenc(hmac(sha1),cbc(des))\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"authenc-hmac-sha1-cbc-des-qce\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc-hmac-sha1-cbc-3des-qce\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha256),cbc(des))\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"authenc-hmac-sha256-cbc-des-qce\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"authenc-hmac-sha256-cbc-3des-qce\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"authenc(hmac(sha256),cbc(aes))\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"authenc-hmac-sha256-cbc-aes-qce\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ccm-aes-qce\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4309(ccm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfc4309-ccm-aes-qce\00", [44 x i8] zeroinitializer }, align 32
@qce_aead_prepare_dst_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of dst SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qce_aead_prepare_dst_buf\00", [39 x i8] zeroinitializer }, align 32
@qce_aead_prepare_dst_buf._entry_ptr = internal global ptr @qce_aead_prepare_dst_buf._entry, section ".printk_index", align 4
@qce_aead_prepare_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid numbers of src SG.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qce_aead_prepare_buf\00", [43 x i8] zeroinitializer }, align 32
@qce_aead_prepare_buf._entry_ptr = internal global ptr @qce_aead_prepare_buf._entry, section ".printk_index", align 4
@qce_aead_done.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qce_aead_done\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aead dma termination error (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@qce_aead_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 68, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aead operation error (%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@qce_aead_done._entry_ptr = internal global ptr @qce_aead_done._entry, section ".printk_index", align 4
@qce_aead_done._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013Bad message error\0A\00", [43 x i8] zeroinitializer }, align 32
@qce_aead_done._entry_ptr.31 = internal global ptr @qce_aead_done._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"aead_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 842, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"aead_def\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 700, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 771, i32 52 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 805, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"aead_algs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 21, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 811, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 703, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 704, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 711, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 712, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 719, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 720, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 727, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 728, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 735, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 736, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 743, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 744, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 751, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 752, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 127, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 318, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 46, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 68, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [29 x i8] c"../drivers/crypto/qce/aead.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 84, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @qce_aead_done._entry, ptr @qce_aead_done._entry.29, ptr @qce_aead_done._entry_ptr, ptr @qce_aead_done._entry_ptr.31, ptr @qce_aead_prepare_buf._entry, ptr @qce_aead_prepare_buf._entry_ptr, ptr @qce_aead_prepare_dst_buf._entry, ptr @qce_aead_prepare_dst_buf._entry_ptr, ptr @qce_aead_register_one._entry, ptr @qce_aead_register_one._entry_ptr, ptr @aead_ops, ptr @aead_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aead_algs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_def to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_aead_register_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_algs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_aead_prepare_dst_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_aead_prepare_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_aead_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qce_aead_done._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_register(ptr noundef %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_aead_register_one(ptr noundef nonnull @aead_def, ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 1), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 2), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.err_crit_edge

for.cond.1.err_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 3), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.err_crit_edge

for.cond.2.err_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 4), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.err_crit_edge

for.cond.3.err_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 5), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.err_crit_edge

for.cond.4.err_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call fastcc i32 @qce_aead_register_one(ptr noundef getelementptr inbounds ([7 x %struct.qce_aead_def], ptr @aead_def, i32 0, i32 6), ptr noundef %qce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.5.err_crit_edge

for.cond.5.err_crit_edge:                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %for.cond.5.err_crit_edge, %for.cond.4.err_crit_edge, %for.cond.3.err_crit_edge, %for.cond.2.err_crit_edge, %for.cond.1.err_crit_edge, %for.cond.err_crit_edge, %entry.err_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.err_crit_edge ], [ %call.1, %for.cond.err_crit_edge ], [ %call.2, %for.cond.1.err_crit_edge ], [ %call.3, %for.cond.2.err_crit_edge ], [ %call.4, %for.cond.3.err_crit_edge ], [ %call.5, %for.cond.4.err_crit_edge ], [ %call.6, %for.cond.5.err_crit_edge ]
  %0 = load ptr, ptr @aead_algs, align 4
  %cmp.not17.i = icmp eq ptr %0, @aead_algs
  br i1 %cmp.not17.i, label %err.cleanup_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %tmpl.018.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %err.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0.i = load ptr, ptr %tmpl.018.i, align 128
  %alg.i = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018.i, i32 0, i32 5
  tail call void @crypto_unregister_aead(ptr noundef %alg.i) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @kfree(ptr noundef %tmpl.018.i) #9
  %cmp.not.i = icmp eq ptr %n.0.i, @aead_algs
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %err.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ %call.lcssa, %list_del.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_aead_unregister(ptr nocapture noundef readnone %qce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aead_algs, align 4
  %cmp.not17 = icmp eq ptr %0, @aead_algs
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %tmpl.018 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %tmpl.018 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0 = load ptr, ptr %tmpl.018, align 128
  %alg = getelementptr inbounds %struct.qce_alg_template, ptr %tmpl.018, i32 0, i32 5
  tail call void @crypto_unregister_aead(ptr noundef %alg) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.018) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @kfree(ptr noundef %tmpl.018) #9
  %cmp.not = icmp eq ptr %n.0, @aead_algs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_async_req_handle(ptr noundef %async_req) #0 align 64 {
entry:
  %__sg.i.i = alloca [2 x %struct.scatterlist], align 4
  %msg_len.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce7 = getelementptr i8, ptr %3, i32 640
  %4 = ptrtoint ptr %qce7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce7, align 128
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ccm_rfc4309_iv = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 2, i32 6, i32 12
  %8 = call ptr @memset(ptr %ccm_rfc4309_iv, i32 0, i32 16)
  %9 = ptrtoint ptr %ccm_rfc4309_iv to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %ccm_rfc4309_iv, align 8
  %arrayidx10 = getelementptr %struct.aead_request, ptr %async_req, i32 2, i32 6, i32 13
  %ccm4309_salt = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2
  %10 = call ptr @memcpy(ptr %arrayidx10, ptr %ccm4309_salt, i32 3)
  %arrayidx13 = getelementptr %struct.aead_request, ptr %async_req, i32 2, i32 6, i32 16
  %iv = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 3
  %11 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iv, align 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %12, align 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %arrayidx13, align 4
  %iv16 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %iv16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ccm_rfc4309_iv, ptr %iv16, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 1
  %17 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoclen, align 8
  %sub = add i32 %18, -8
  br label %if.end29

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iv17 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 3
  %19 = ptrtoint ptr %iv17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv17, align 32
  %iv18 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %iv18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %iv18, align 4
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %23, i32 -104
  %24 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ivsize.i.i, align 8
  %assoclen27 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 1
  %26 = ptrtoint ptr %assoclen27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen27, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24
  %.sink = phi i32 [ %25, %if.else26 ], [ 16, %if.then24 ]
  %sub.sink = phi i32 [ %27, %if.else26 ], [ %sub, %if.then24 ]
  %28 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 8
  %30 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 52
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.sink, ptr %30, align 32
  %src = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 4
  %32 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 5
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 8
  %cmp.not = icmp eq ptr %33, %35
  %not.cmp.not = xor i1 %cmp.not, true
  %cond = zext i1 %not.cmp.not to i32
  %cond34 = select i1 %cmp.not, i32 0, i32 2
  %and36 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end29.if.end43_crit_edge, label %if.then38

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then38:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_len.i) #9
  %tobool.not.i = icmp eq ptr %__ctx.i, null
  br i1 %tobool.not.i, label %if.then38.qce_aead_create_ccm_nonce.exit.thread_crit_edge, label %lor.lhs.false.i

if.then38.qce_aead_create_ccm_nonce.exit.thread_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then38
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iv.i, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = add i8 %39, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %40)
  %41 = icmp ult i8 %40, -7
  br i1 %41, label %if.end.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge, label %if.end8.i

if.end.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %28, align 8
  br i1 %tobool.not, label %for.body.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i:                                       ; preds = %if.end8.i
  %44 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iv.i, align 4
  %sub15.i = add i32 %43, -1
  %arrayidx16.i = getelementptr i8, ptr %45, i32 %sub15.i
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %exitcond.i = icmp eq i8 %39, 0
  br i1 %exitcond.i, label %for.body.i.if.end17.i_crit_edge, label %for.body.i.1

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.1:                                     ; preds = %for.body.i
  %47 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iv.i, align 4
  %sub15.i.1 = add i32 %43, -2
  %arrayidx16.i.1 = getelementptr i8, ptr %48, i32 %sub15.i.1
  %49 = ptrtoint ptr %arrayidx16.i.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx16.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %exitcond.i.1 = icmp eq i8 %39, 1
  br i1 %exitcond.i.1, label %for.body.i.1.if.end17.i_crit_edge, label %for.body.i.2

for.body.i.1.if.end17.i_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %50 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iv.i, align 4
  %sub15.i.2 = add i32 %43, -3
  %arrayidx16.i.2 = getelementptr i8, ptr %51, i32 %sub15.i.2
  %52 = ptrtoint ptr %arrayidx16.i.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx16.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %exitcond.i.2 = icmp eq i8 %39, 2
  br i1 %exitcond.i.2, label %for.body.i.2.if.end17.i_crit_edge, label %for.body.i.3

for.body.i.2.if.end17.i_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %53 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iv.i, align 4
  %sub15.i.3 = add i32 %43, -4
  %arrayidx16.i.3 = getelementptr i8, ptr %54, i32 %sub15.i.3
  %55 = ptrtoint ptr %arrayidx16.i.3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx16.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %exitcond.i.3 = icmp eq i8 %39, 3
  br i1 %exitcond.i.3, label %for.body.i.3.if.end17.i_crit_edge, label %for.body.i.4

for.body.i.3.if.end17.i_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %56 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv.i, align 4
  %sub15.i.4 = add i32 %43, -5
  %arrayidx16.i.4 = getelementptr i8, ptr %57, i32 %sub15.i.4
  %58 = ptrtoint ptr %arrayidx16.i.4 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx16.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %exitcond.i.4 = icmp eq i8 %39, 4
  br i1 %exitcond.i.4, label %for.body.i.4.if.end17.i_crit_edge, label %for.body.i.5

for.body.i.4.if.end17.i_crit_edge:                ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %59 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iv.i, align 4
  %sub15.i.5 = add i32 %43, -6
  %arrayidx16.i.5 = getelementptr i8, ptr %60, i32 %sub15.i.5
  %61 = ptrtoint ptr %arrayidx16.i.5 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx16.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %exitcond.i.5 = icmp eq i8 %39, 5
  br i1 %exitcond.i.5, label %for.body.i.5.if.end17.i_crit_edge, label %for.body.i.6

for.body.i.5.if.end17.i_crit_edge:                ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %62 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iv.i, align 4
  %sub15.i.6 = add i32 %43, -7
  %arrayidx16.i.6 = getelementptr i8, ptr %63, i32 %sub15.i.6
  %64 = ptrtoint ptr %arrayidx16.i.6 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx16.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %exitcond.i.6 = icmp eq i8 %39, 6
  br i1 %exitcond.i.6, label %for.body.i.6.if.end17.i_crit_edge, label %for.body.i.7

for.body.i.6.if.end17.i_crit_edge:                ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iv.i, align 4
  %sub15.i.7 = add i32 %43, -8
  %arrayidx16.i.7 = getelementptr i8, ptr %66, i32 %sub15.i.7
  %67 = ptrtoint ptr %arrayidx16.i.7 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx16.i.7, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %for.body.i.7, %for.body.i.6.if.end17.i_crit_edge, %for.body.i.5.if.end17.i_crit_edge, %for.body.i.4.if.end17.i_crit_edge, %for.body.i.3.if.end17.i_crit_edge, %for.body.i.2.if.end17.i_crit_edge, %for.body.i.1.if.end17.i_crit_edge, %for.body.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %68 = call i8 @llvm.umin.i8(i8 %39, i8 3)
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %69 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cryptlen.i, align 4
  %71 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %msg_len.i, align 4
  %ccm_nonce.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 60
  %72 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iv.i, align 4
  %74 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %28, align 8
  %76 = call ptr @memcpy(ptr %ccm_nonce.i, ptr %73, i32 %75)
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %30, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool26.not.i = icmp eq i32 %78, 0
  br i1 %tobool26.not.i, label %if.end17.i.if.end32.i_crit_edge, label %if.then27.i

if.end17.i.if.end32.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %ccm_nonce.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ccm_nonce.i, align 8
  %81 = or i8 %80, 64
  store i8 %81, ptr %ccm_nonce.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %if.end17.i.if.end32.i_crit_edge
  %authsize.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 3
  %82 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %authsize.i, align 4
  %84 = ptrtoint ptr %ccm_nonce.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ccm_nonce.i, align 8
  %.tr.i = trunc i32 %83 to i8
  %86 = shl i8 %.tr.i, 2
  %87 = add i8 %86, -8
  %88 = and i8 %87, -8
  %conv38.i = or i8 %88, %85
  store i8 %conv38.i, ptr %ccm_nonce.i, align 8
  %89 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %msg_len.i, align 4
  %arrayidx47.i = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 75
  %91 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %exitcond80.i = icmp eq i8 %68, 0
  br i1 %exitcond80.i, label %if.end32.i.qce_aead_create_ccm_nonce.exit_crit_edge, label %for.body42.i.1

if.end32.i.qce_aead_create_ccm_nonce.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit

for.body42.i.1:                                   ; preds = %if.end32.i
  %arrayidx43.i.1 = getelementptr inbounds [4 x i8], ptr %msg_len.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx43.i.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx43.i.1, align 1
  %arrayidx47.i.1 = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 74
  %94 = ptrtoint ptr %arrayidx47.i.1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx47.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %exitcond80.i.1 = icmp eq i8 %68, 1
  br i1 %exitcond80.i.1, label %for.body42.i.1.qce_aead_create_ccm_nonce.exit_crit_edge, label %for.body42.i.2

for.body42.i.1.qce_aead_create_ccm_nonce.exit_crit_edge: ; preds = %for.body42.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit

for.body42.i.2:                                   ; preds = %for.body42.i.1
  %arrayidx43.i.2 = getelementptr inbounds [4 x i8], ptr %msg_len.i, i32 0, i32 2
  %95 = ptrtoint ptr %arrayidx43.i.2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx43.i.2, align 2
  %arrayidx47.i.2 = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 73
  %97 = ptrtoint ptr %arrayidx47.i.2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx47.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %exitcond80.i.2 = icmp eq i8 %68, 2
  br i1 %exitcond80.i.2, label %for.body42.i.2.qce_aead_create_ccm_nonce.exit_crit_edge, label %for.body42.i.3

for.body42.i.2.qce_aead_create_ccm_nonce.exit_crit_edge: ; preds = %for.body42.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_create_ccm_nonce.exit

for.body42.i.3:                                   ; preds = %for.body42.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx43.i.3 = getelementptr inbounds [4 x i8], ptr %msg_len.i, i32 0, i32 3
  %98 = ptrtoint ptr %arrayidx43.i.3 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx43.i.3, align 1
  %arrayidx47.i.3 = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 72
  %100 = ptrtoint ptr %arrayidx47.i.3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx47.i.3, align 1
  br label %qce_aead_create_ccm_nonce.exit

qce_aead_create_ccm_nonce.exit.thread:            ; preds = %if.end.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge, %lor.lhs.false.i.qce_aead_create_ccm_nonce.exit.thread_crit_edge, %if.then38.qce_aead_create_ccm_nonce.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_len.i) #9
  br label %cleanup

qce_aead_create_ccm_nonce.exit:                   ; preds = %for.body42.i.3, %for.body42.i.2.qce_aead_create_ccm_nonce.exit_crit_edge, %for.body42.i.1.qce_aead_create_ccm_nonce.exit_crit_edge, %if.end32.i.qce_aead_create_ccm_nonce.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_len.i) #9
  br label %if.end43

if.end43:                                         ; preds = %qce_aead_create_ccm_nonce.exit, %if.end29.if.end43_crit_edge
  %101 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %__ctx.i, align 128
  %and45 = and i32 %102, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %103 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tfm.i, align 16
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.end43
  %105 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %src, align 4
  %107 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dst, align 8
  %cmp.not.i = icmp eq ptr %106, %108
  %109 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %30, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool3.not.i = icmp eq i32 %110, 0
  br i1 %tobool3.not.i, label %if.end.i203, label %if.then.i

if.then.i:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %__sg.i.i) #9
  %111 = call ptr @memset(ptr %__sg.i.i, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %tobool.not.i.i = icmp sgt i32 %102, -1
  %cryptlen5.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %112 = ptrtoint ptr %cryptlen5.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cryptlen5.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %authsize.i.i = getelementptr i8, ptr %104, i32 268
  %114 = ptrtoint ptr %authsize.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %authsize.i.i, align 4
  %add.i.i = add i32 %115, %113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %cryptlen.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %113, %if.then.i.if.end.i.i_crit_edge ]
  %assoclen6.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 1
  %116 = ptrtoint ptr %assoclen6.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %assoclen6.i.i, align 8
  %add7.i.i = add i32 %117, %cryptlen.0.i.i
  %call9.i.i = call ptr @scatterwalk_ffwd(ptr noundef nonnull %__sg.i.i, ptr noundef %106, i32 noundef %117) #9
  %add10.i.i = add i32 %110, 15
  %and11.i.i = and i32 %add10.i.i, -16
  %add12.i.i = or i32 %and11.i.i, 6
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add12.i.i, i32 noundef 2848) #12
  %adata.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 56
  %118 = ptrtoint ptr %adata.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call9.i.i.i.i, ptr %adata.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool15.not.i.i, label %if.end.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge, label %if.end17.i.i

if.end.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %110)
  %cmp.i.i = icmp ult i32 %110, 65280
  br i1 %cmp.i.i, label %if.then18.i.i, label %if.else20.i.i

if.then18.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %110 to i16
  %119 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i.i, ptr %call9.i.i.i.i, align 128
  br label %if.end23.i.i

if.else20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -2, ptr %call9.i.i.i.i, align 128
  %add.ptr.i.i201 = getelementptr i8, ptr %call9.i.i.i.i, i32 2
  %121 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %110, ptr %add.ptr.i.i201, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else20.i.i, %if.then18.i.i
  %adata_header_len.0.i.i = phi i32 [ 2, %if.then18.i.i ], [ 6, %if.else20.i.i ]
  %122 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %src, align 4
  %conv26.i.i = zext i32 %110 to i64
  %call27.i.i = call i32 @sg_nents_for_len(ptr noundef %123, i64 noundef %conv26.i.i) #9
  %124 = ptrtoint ptr %adata.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adata.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %125, i32 %adata_header_len.0.i.i
  %call30.i.i = call i32 @sg_copy_to_buffer(ptr noundef %123, i32 noundef %call27.i.i, ptr noundef %add.ptr29.i.i, i32 noundef %110) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call30.i.i, i32 %110)
  %cmp31.not.i.i = icmp eq i32 %call30.i.i, %110
  br i1 %cmp31.not.i.i, label %if.end34.i.i, label %if.end23.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge

if.end23.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

if.end34.i.i:                                     ; preds = %if.end23.i.i
  %add36.i.i = add i32 %adata_header_len.0.i.i, %add10.i.i
  %and37.i.i = and i32 %add36.i.i, -16
  %126 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and37.i.i, ptr %30, align 32
  %127 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %src, align 4
  %129 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dst, align 8
  %cmp40.not.i.i = icmp eq ptr %128, %130
  %conv51.i.i = zext i32 %add7.i.i to i64
  %call52.i.i = call i32 @sg_nents_for_len(ptr noundef %128, i64 noundef %conv51.i.i) #9
  %..i.i = select i1 %cmp40.not.i.i, i32 2, i32 1
  %add53.i.i = add i32 %..i.i, %call52.i.i
  %131 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add53.i.i, ptr %131, align 4
  %flags56.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 4
  %133 = ptrtoint ptr %flags56.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags56.i.i, align 4
  %and57.i.i = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  %cond59.i.i = select i1 %tobool58.not.i.i, i32 2592, i32 3264
  %src_tbl.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 28
  %call61.i.i = call i32 @sg_alloc_table(ptr noundef %src_tbl.i.i, i32 noundef %add53.i.i, i32 noundef %cond59.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool62.not.i.i = icmp eq i32 %call61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.end64.i.i, label %if.end34.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge

if.end34.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

if.end64.i.i:                                     ; preds = %if.end34.i.i
  %adata_sg.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 5
  %135 = ptrtoint ptr %adata.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %adata.i.i, align 4
  %137 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %30, align 32
  call void @sg_init_one(ptr noundef %adata_sg.i.i, ptr noundef %136, i32 noundef %138) #9
  %139 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %30, align 32
  %call70.i.i = call ptr @qce_sgtable_add(ptr noundef %src_tbl.i.i, ptr noundef %adata_sg.i.i, i32 noundef %140) #9
  %cmp.i.i.i = icmp ugt ptr %call70.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end64.i.i.err_free.i.i_crit_edge, label %if.end74.i.i

if.end64.i.i.err_free.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.i.i

if.end74.i.i:                                     ; preds = %if.end64.i.i
  %call76.i.i = call ptr @qce_sgtable_add(ptr noundef %src_tbl.i.i, ptr noundef %call9.i.i, i32 noundef %cryptlen.0.i.i) #9
  %cmp.i210.i.i = icmp ugt ptr %call76.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.i.i, label %if.end74.i.i.err_free.i.i_crit_edge, label %if.end80.i.i

if.end74.i.i.err_free.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.i.i

if.end80.i.i:                                     ; preds = %if.end74.i.i
  br i1 %cmp40.not.i.i, label %if.then82.i.i, label %if.end80.i.i.if.end94.i.i_crit_edge

if.end80.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i

if.then82.i.i:                                    ; preds = %if.end80.i.i
  %141 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %tobool85.not.i.i = icmp sgt i32 %142, -1
  br i1 %tobool85.not.i.i, label %if.then86.i.i, label %if.then82.i.i.if.end94.i.i_crit_edge

if.then82.i.i.if.end94.i.i_crit_edge:             ; preds = %if.then82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i

if.then86.i.i:                                    ; preds = %if.then82.i.i
  %call88.i.i = call fastcc ptr @qce_aead_prepare_ccm_result_buf(ptr noundef %src_tbl.i.i, ptr noundef %async_req) #9
  %cmp.i211.i.i = icmp ugt ptr %call88.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211.i.i, label %if.then86.i.i.err_free.i.i_crit_edge, label %if.then86.i.i.if.end94.i.i_crit_edge

if.then86.i.i.if.end94.i.i_crit_edge:             ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i

if.then86.i.i.err_free.i.i_crit_edge:             ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.i.i

if.end94.i.i:                                     ; preds = %if.then86.i.i.if.end94.i.i_crit_edge, %if.then82.i.i.if.end94.i.i_crit_edge, %if.end80.i.i.if.end94.i.i_crit_edge
  %sg.0.i.i = phi ptr [ %call76.i.i, %if.end80.i.i.if.end94.i.i_crit_edge ], [ %call76.i.i, %if.then82.i.i.if.end94.i.i_crit_edge ], [ %call88.i.i, %if.then86.i.i.if.end94.i.i_crit_edge ]
  %143 = ptrtoint ptr %sg.0.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sg.0.i.i, align 4
  %or.i.i.i = and i32 %144, -4
  %and.i.i.i = or i32 %or.i.i.i, 2
  store i32 %and.i.i.i, ptr %sg.0.i.i, align 4
  %145 = ptrtoint ptr %src_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %src_tbl.i.i, align 8
  %src_sg.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %147 = ptrtoint ptr %src_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %src_sg.i.i, align 8
  %148 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %30, align 32
  %add97.i.i = add i32 %149, %cryptlen.0.i.i
  %conv99.i.i = zext i32 %add97.i.i to i64
  %call100.i.i = call i32 @sg_nents_for_len(ptr noundef %146, i64 noundef %conv99.i.i) #9
  %150 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call100.i.i, ptr %131, align 4
  br i1 %cmp40.not.i.i, label %if.else109.i.i, label %if.then103.i.i

if.then103.i.i:                                   ; preds = %if.end94.i.i
  %call104.i.i = call fastcc ptr @qce_aead_prepare_dst_buf(ptr noundef %async_req) #9
  %cmp.i212.i.i = icmp ugt ptr %call104.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212.i.i, label %if.then103.i.i.err_free.i.i_crit_edge, label %if.then103.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge

if.then103.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge: ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

if.then103.i.i.err_free.i.i_crit_edge:            ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free.i.i

if.else109.i.i:                                   ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %__ctx.i, align 128
  %and111.i.i = lshr i32 %152, 30
  %and111.lobit.i.i = and i32 %and111.i.i, 1
  %spec.select.i.i = add i32 %and111.lobit.i.i, %call100.i.i
  %153 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 3
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %spec.select.i.i, ptr %153, align 16
  %155 = ptrtoint ptr %src_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %src_sg.i.i, align 8
  %dst_sg.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 40
  %157 = ptrtoint ptr %dst_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %dst_sg.i.i, align 4
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

err_free.i.i:                                     ; preds = %if.then103.i.i.err_free.i.i_crit_edge, %if.then86.i.i.err_free.i.i_crit_edge, %if.end74.i.i.err_free.i.i_crit_edge, %if.end64.i.i.err_free.i.i_crit_edge
  %ret.0.in.i.i = phi ptr [ %call70.i.i, %if.end64.i.i.err_free.i.i_crit_edge ], [ %call76.i.i, %if.end74.i.i.err_free.i.i_crit_edge ], [ %call88.i.i, %if.then86.i.i.err_free.i.i_crit_edge ], [ %call104.i.i, %if.then103.i.i.err_free.i.i_crit_edge ]
  %ret.0.i.i = ptrtoint ptr %ret.0.in.i.i to i32
  call void @sg_free_table(ptr noundef %src_tbl.i.i) #9
  br label %qce_aead_ccm_prepare_buf_assoclen.exit.i

qce_aead_ccm_prepare_buf_assoclen.exit.i:         ; preds = %err_free.i.i, %if.else109.i.i, %if.then103.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge, %if.end34.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge, %if.end23.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge, %if.end.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i.i, %err_free.i.i ], [ -12, %if.end.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge ], [ -22, %if.end23.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge ], [ %call61.i.i, %if.end34.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge ], [ 0, %if.then103.i.i.qce_aead_ccm_prepare_buf_assoclen.exit.i_crit_edge ], [ 0, %if.else109.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %__sg.i.i) #9
  br label %if.end51

if.end.i203:                                      ; preds = %if.then47
  %and.i202 = and i32 %102, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool5.not.i = icmp eq i32 %and.i202, 0
  br i1 %tobool5.not.i, label %if.end8.i205, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i203
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %104, i32 12
  %158 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %qce3.i.i = getelementptr i8, ptr %159, i32 640
  %160 = ptrtoint ptr %qce3.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %qce3.i.i, align 128
  %cryptlen.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %162 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cryptlen.i.i, align 4
  %call4.i.i = tail call fastcc ptr @qce_aead_prepare_dst_buf(ptr noundef %async_req) #9
  %cmp.i.i60.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i60.i, label %if.then.i61.i, label %if.end.i62.i

if.then.i61.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %call4.i.i to i32
  br label %if.end51

if.end.i62.i:                                     ; preds = %if.then6.i
  br i1 %cmp.not.i, label %if.else.i66.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i62.i
  %165 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %src, align 4
  %conv.i63.i = zext i32 %163 to i64
  %call10.i.i = tail call i32 @sg_nents_for_len(ptr noundef %166, i64 noundef %conv.i63.i) #9
  %src_nents.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %167 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call10.i.i, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp12.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i, label %if.end15.i.i

do.end.i.i:                                       ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.qce_device, ptr %161, i32 0, i32 6
  %168 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %src, align 4
  %src_sg.i64.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %172 = ptrtoint ptr %src_sg.i64.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %src_sg.i64.i, align 8
  br label %if.end54

if.else.i66.i:                                    ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst_nents.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 3
  %173 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dst_nents.i.i, align 16
  %sub.i.i = add i32 %174, -1
  %src_nents17.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %175 = ptrtoint ptr %src_nents17.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %sub.i.i, ptr %src_nents17.i.i, align 4
  %dst_sg.i65.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 40
  %176 = ptrtoint ptr %dst_sg.i65.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dst_sg.i65.i, align 4
  %src_sg18.i.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %178 = ptrtoint ptr %src_sg18.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %177, ptr %src_sg18.i.i, align 8
  br label %if.end54

if.end8.i205:                                     ; preds = %if.end.i203
  %cryptlen9.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %179 = ptrtoint ptr %cryptlen9.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cryptlen9.i, align 4
  %authsize.i204 = getelementptr i8, ptr %104, i32 268
  %181 = ptrtoint ptr %authsize.i204 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %authsize.i204, align 4
  %add.i = add i32 %182, %180
  %conv21.i = zext i32 %add.i to i64
  %call22.i = tail call i32 @sg_nents_for_len(ptr noundef %106, i64 noundef %conv21.i) #9
  %src_nents23.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %183 = ptrtoint ptr %src_nents23.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call22.i, ptr %src_nents23.i, align 4
  %184 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %src, align 4
  %src_sg25.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %186 = ptrtoint ptr %src_sg25.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %src_sg25.i, align 8
  br i1 %cmp.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i205
  %call15.i = tail call fastcc ptr @qce_aead_prepare_dst_buf(ptr noundef %async_req) #9
  %cmp.i68.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  %187 = ptrtoint ptr %call15.i to i32
  br i1 %cmp.i68.i, label %if.then11.i.if.end51_crit_edge, label %if.then11.i.if.end54_crit_edge

if.then11.i.if.end54_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then11.i.if.end51_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.else.i:                                        ; preds = %if.end8.i205
  call void @__sanitizer_cov_trace_pc() #11
  %dst_nents.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 3
  %188 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call22.i, ptr %dst_nents.i, align 16
  %dst_sg.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 40
  %189 = ptrtoint ptr %dst_sg.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %185, ptr %dst_sg.i, align 4
  br label %if.end54

if.else49:                                        ; preds = %if.end43
  %__crt_alg.i.i.i = getelementptr i8, ptr %104, i32 12
  %190 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %qce3.i = getelementptr i8, ptr %191, i32 640
  %192 = ptrtoint ptr %qce3.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %qce3.i, align 128
  %194 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %src, align 4
  %196 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dst, align 8
  %cryptlen.i210 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %198 = ptrtoint ptr %cryptlen.i210 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cryptlen.i210, align 4
  %200 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %30, align 32
  %add.i212 = add i32 %201, %199
  %call4.i = tail call fastcc ptr @qce_aead_prepare_dst_buf(ptr noundef %async_req) #9
  %cmp.i.i213 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i213, label %if.then.i214, label %if.end.i216

if.then.i214:                                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %call4.i to i32
  br label %if.end51

if.end.i216:                                      ; preds = %if.else49
  %cmp.not.i215 = icmp eq ptr %195, %197
  br i1 %cmp.not.i215, label %if.else.i220, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i216
  %203 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %src, align 4
  %conv.i217 = zext i32 %add.i212 to i64
  %call10.i = tail call i32 @sg_nents_for_len(ptr noundef %204, i64 noundef %conv.i217) #9
  %src_nents.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %205 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call10.i, ptr %src_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp12.i = icmp slt i32 %call10.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.qce_device, ptr %193, i32 0, i32 6
  %206 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end15.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %208 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %src, align 4
  %src_sg.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %210 = ptrtoint ptr %src_sg.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %src_sg.i, align 8
  br label %if.end54

if.else.i220:                                     ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #11
  %dst_nents.i218 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 3
  %211 = ptrtoint ptr %dst_nents.i218 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dst_nents.i218, align 16
  %sub.i = add i32 %212, -1
  %src_nents17.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %213 = ptrtoint ptr %src_nents17.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub.i, ptr %src_nents17.i, align 4
  %dst_sg.i219 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 40
  %214 = ptrtoint ptr %dst_sg.i219 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dst_sg.i219, align 4
  %src_sg18.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %216 = ptrtoint ptr %src_sg18.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %215, ptr %src_sg18.i, align 8
  br label %if.end54

if.end51:                                         ; preds = %if.then.i214, %if.then11.i.if.end51_crit_edge, %if.then.i61.i, %qce_aead_ccm_prepare_buf_assoclen.exit.i
  %ret.0 = phi i32 [ %retval.0.i.i, %qce_aead_ccm_prepare_buf_assoclen.exit.i ], [ %164, %if.then.i61.i ], [ %202, %if.then.i214 ], [ %187, %if.then11.i.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool52.not = icmp eq i32 %ret.0, 0
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %if.end51.if.end54_crit_edge, %if.else.i220, %if.end15.i, %if.else.i, %if.then11.i.if.end54_crit_edge, %if.else.i66.i, %if.end15.i.i
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %217 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev, align 4
  %dst_sg = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 40
  %219 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dst_sg, align 4
  %dst_nents55 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 3
  %221 = ptrtoint ptr %dst_nents55 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dst_nents55, align 16
  %call56 = call i32 @dma_map_sg_attrs(ptr noundef %218, ptr noundef %220, i32 noundef %222, i32 noundef %cond34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.error_free_crit_edge, label %if.end59

if.end54.error_free_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free

if.end59:                                         ; preds = %if.end54
  br i1 %cmp.not, label %if.else68, label %if.then61

if.then61:                                        ; preds = %if.end59
  %223 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev, align 4
  %src_sg = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %225 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %src_sg, align 8
  %src_nents63 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %227 = ptrtoint ptr %src_nents63 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %src_nents63, align 4
  %call64 = call i32 @dma_map_sg_attrs(ptr noundef %224, ptr noundef %226, i32 noundef %228, i32 noundef %cond, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then61.error_unmap_dst_crit_edge, label %if.then61.if.end79_crit_edge

if.then61.if.end79_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then61.error_unmap_dst_crit_edge:              ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unmap_dst

if.else68:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %__ctx.i, align 128
  %231 = and i32 %230, -2147479552
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147479552, i32 %231)
  %.not = icmp ne i32 %231, -2147479552
  %sub77 = sext i1 %.not to i32
  %spec.select = add nsw i32 %call56, %sub77
  br label %if.end79

if.end79:                                         ; preds = %if.else68, %if.then61.if.end79_crit_edge
  %src_nents.0 = phi i32 [ %call64, %if.then61.if.end79_crit_edge ], [ %spec.select, %if.else68 ]
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %src_sg80 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 44
  %232 = ptrtoint ptr %src_sg80 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %src_sg80, align 8
  %234 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dst_sg, align 4
  %call82 = call i32 @qce_dma_prep_sgs(ptr noundef %dma, ptr noundef %233, i32 noundef %src_nents.0, ptr noundef %235, i32 noundef %call56, ptr noundef nonnull @qce_aead_done, ptr noundef %async_req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end79.error_unmap_src_crit_edge

if.end79.error_unmap_src_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unmap_src

if.end85:                                         ; preds = %if.end79
  call void @qce_dma_issue_pending(ptr noundef %dma) #9
  %crypto_alg_type = getelementptr i8, ptr %3, i32 -248
  %236 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %crypto_alg_type, align 8
  %call87 = call i32 @qce_start(ptr noundef %async_req, i32 noundef %237) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %error_terminate

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error_terminate:                                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call i32 @qce_dma_terminate_all(ptr noundef %dma) #9
  br label %error_unmap_src

error_unmap_src:                                  ; preds = %error_terminate, %if.end79.error_unmap_src_crit_edge
  %ret.1 = phi i32 [ %call82, %if.end79.error_unmap_src_crit_edge ], [ %call87, %error_terminate ]
  br i1 %cmp.not, label %error_unmap_src.error_unmap_dst_crit_edge, label %if.then94

error_unmap_src.error_unmap_dst_crit_edge:        ; preds = %error_unmap_src
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_unmap_dst

if.then94:                                        ; preds = %error_unmap_src
  call void @__sanitizer_cov_trace_pc() #11
  %238 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev, align 4
  %240 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %src, align 4
  %src_nents97 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 2
  %242 = ptrtoint ptr %src_nents97 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %src_nents97, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %239, ptr noundef %241, i32 noundef %243, i32 noundef %cond, i32 noundef 0) #9
  br label %error_unmap_dst

error_unmap_dst:                                  ; preds = %if.then94, %error_unmap_src.error_unmap_dst_crit_edge, %if.then61.error_unmap_dst_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then94 ], [ %ret.1, %error_unmap_src.error_unmap_dst_crit_edge ], [ %call64, %if.then61.error_unmap_dst_crit_edge ]
  %244 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev, align 4
  %246 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dst_sg, align 4
  %248 = ptrtoint ptr %dst_nents55 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dst_nents55, align 16
  call void @dma_unmap_sg_attrs(ptr noundef %245, ptr noundef %247, i32 noundef %249, i32 noundef %cond34, i32 noundef 0) #9
  br label %error_free

error_free:                                       ; preds = %error_unmap_dst, %if.end54.error_free_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error_unmap_dst ], [ %call56, %if.end54.error_free_crit_edge ]
  %250 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %__ctx.i, align 128
  %and103 = and i32 %251, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %error_free.if.else112_crit_edge, label %land.lhs.true105

error_free.if.else112_crit_edge:                  ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else112

land.lhs.true105:                                 ; preds = %error_free
  %252 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %30, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool107.not = icmp eq i32 %253, 0
  br i1 %tobool107.not, label %land.lhs.true105.if.else112_crit_edge, label %if.then108

land.lhs.true105.if.else112_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else112

if.then108:                                       ; preds = %land.lhs.true105
  %src_tbl = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 28
  call void @sg_free_table(ptr noundef %src_tbl) #9
  br i1 %cmp.not, label %if.then108.cleanup_crit_edge, label %if.then110

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then110:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  %dst_tbl = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 16
  call void @sg_free_table(ptr noundef %dst_tbl) #9
  br label %cleanup

if.else112:                                       ; preds = %land.lhs.true105.if.else112_crit_edge, %error_free.if.else112_crit_edge
  %dst_tbl113 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 16
  call void @sg_free_table(ptr noundef %dst_tbl113) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else112, %if.then110, %if.then108.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end.i, %do.end.i.i, %qce_aead_create_ccm_nonce.exit.thread
  %retval.0 = phi i32 [ %ret.0, %if.end51.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ %ret.3, %if.then108.cleanup_crit_edge ], [ %ret.3, %if.then110 ], [ %ret.3, %if.else112 ], [ -22, %qce_aead_create_ccm_nonce.exit.thread ], [ -22, %do.end.i.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_aead_register_one(ptr nocapture noundef readonly %def, ptr noundef %qce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg1 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5
  %cra_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 32
  %name = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %2)
  %cra_driver_name = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 8
  %drv_name = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 2
  %3 = ptrtoint ptr %drv_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_name, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %4)
  %blocksize = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 3
  %5 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocksize, align 4
  %cra_blocksize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 12
  %7 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cra_blocksize, align 4
  %chunksize = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 4
  %8 = ptrtoint ptr %chunksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunksize, align 4
  %chunksize7 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 8
  %10 = ptrtoint ptr %chunksize7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chunksize7, align 32
  %ivsize = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 5
  %11 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ivsize, align 4
  %ivsize8 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 6
  %13 = ptrtoint ptr %ivsize8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ivsize8, align 8
  %maxauthsize = getelementptr inbounds %struct.qce_aead_def, ptr %def, i32 0, i32 6
  %14 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxauthsize, align 4
  %maxauthsize9 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 7
  %16 = ptrtoint ptr %maxauthsize9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %maxauthsize9, align 4
  %17 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def, align 4
  %and = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %qce_aead_setkey.qce_aead_ccm_setkey = select i1 %tobool10.not, ptr @qce_aead_setkey, ptr @qce_aead_ccm_setkey
  %19 = ptrtoint ptr %alg1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %qce_aead_setkey.qce_aead_ccm_setkey, ptr %alg1, align 128
  %setauthsize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %setauthsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @qce_aead_setauthsize, ptr %setauthsize, align 4
  %encrypt = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %encrypt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qce_aead_encrypt, ptr %encrypt, align 8
  %decrypt = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  %22 = ptrtoint ptr %decrypt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qce_aead_decrypt, ptr %decrypt, align 4
  %init = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qce_aead_init, ptr %init, align 16
  %exit = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 5
  %24 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qce_aead_exit, ptr %exit, align 4
  %cra_priority = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 24
  %25 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 300, ptr %cra_priority, align 32
  %cra_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 8
  %26 = ptrtoint ptr %cra_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 70016, ptr %cra_flags, align 16
  %cra_ctxsize = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 16
  %27 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 152, ptr %cra_ctxsize, align 8
  %cra_alignmask = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 2, i32 20
  %28 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cra_alignmask, align 4
  %cra_module = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 11, i32 3, i32 9, i32 36
  %29 = ptrtoint ptr %cra_module to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cra_module, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %crypto_alg_type = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %crypto_alg_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %crypto_alg_type, align 8
  %alg_flags = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %alg_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %18, ptr %alg_flags, align 4
  %qce21 = getelementptr inbounds %struct.qce_alg_template, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %qce21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %qce, ptr %qce21, align 128
  %call22 = tail call i32 @crypto_register_aead(ptr noundef %alg1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %cra_name) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @aead_algs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef nonnull @aead_algs) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add_tail.exit_crit_edge

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @aead_algs, i32 0, i32 1), align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @aead_algs, ptr %call7.i.i, align 8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %prev.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end28.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_aead_register_one.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_aead_register_one, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !79

if.then35:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 6
  %41 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_aead_register_one.__UNIQUE_ID_ddebug250, ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef %cra_name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_ccm_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %alg_flags = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alg_flags, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %keylen, -3
  %ccm4309_salt = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %4 = call ptr @memcpy(ptr %ccm4309_salt, ptr %add.ptr, i32 3)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %keylen.addr.0 = phi i32 [ %sub, %if.end ], [ %keylen, %entry.if.end3_crit_edge ]
  %5 = zext i32 %keylen.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen.addr.0, label %if.end3.cleanup_crit_edge [
    i32 16, label %if.end3.if.end9_crit_edge
    i32 32, label %if.end3.if.end9_crit_edge46
    i32 24, label %if.end3.if.end9_crit_edge47
  ]

if.end3.if.end9_crit_edge47:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end3.if.end9_crit_edge46:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end3.if.end9_crit_edge, %if.end3.if.end9_crit_edge46, %if.end3.if.end9_crit_edge47
  %enc_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %keylen.addr.0, ptr %enc_keylen, align 4
  %auth_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 2
  %7 = ptrtoint ptr %auth_keylen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %keylen.addr.0, ptr %auth_keylen, align 4
  %8 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen.addr.0)
  %auth_key = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 56
  %9 = call ptr @memcpy(ptr %auth_key, ptr %key, i32 %keylen.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen.addr.0)
  %cmp12 = icmp eq i32 %keylen.addr.0, 24
  br i1 %cmp12, label %if.then13, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %need_fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4
  %10 = ptrtoint ptr %need_fallback to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %need_fallback, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %fallback18 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 4
  %11 = ptrtoint ptr %fallback18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fallback18, align 4
  %add = add nuw nsw i32 %keylen.addr.0, 3
  %add.sink = select i1 %tobool.not, i32 %keylen.addr.0, i32 %add
  %call17 = tail call i32 @crypto_aead_setkey(ptr noundef %12, ptr noundef %key, i32 noundef %add.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call17, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  %tmp.i.i = alloca %struct.des_ctx, align 4
  %authenc_keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %authenc_keys) #9
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %authenc_keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %authenc_keys, i32 0, i32 2
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %authenc_keys, i32 0, i32 3
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %3 = call ptr @memset(ptr %authenc_keys, i32 255, i32 16)
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %alg_flags = getelementptr i8, ptr %5, i32 -244
  %6 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alg_flags, align 4
  %call2 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %authenc_keys, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp = icmp ugt i32 %9, 64
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp3 = icmp ugt i32 %11, 64
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #9
  %14 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %13, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.verify_aead_des_key.exit_crit_edge

if.end.i.verify_aead_des_key.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des_key.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_aead_des_key.exit

verify_aead_des_key.exit:                         ; preds = %if.then.i.i, %if.end.i.verify_aead_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %if.end.i.verify_aead_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %17 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #9, !srcloc !80
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool10.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool10.not, label %verify_aead_des_key.exit.if.end68_crit_edge, label %verify_aead_des_key.exit.cleanup_crit_edge

verify_aead_des_key.exit.cleanup_crit_edge:       ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

verify_aead_des_key.exit.if.end68_crit_edge:      ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else:                                          ; preds = %if.end5
  %and13 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else48, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp.not.i108 = icmp eq i32 %9, 24
  br i1 %cmp.not.i108, label %if.end.i112, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i112:                                      ; preds = %if.then15
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %base.i.i109 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %20 = ptrtoint ptr %base.i.i109 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base.i.i109, align 128
  %and.i.i110 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i110)
  %tobool.not.i.i111 = icmp eq i32 %and.i.i110, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %22 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %23 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %24 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %K.i.i.i, ptr %19, i32 24)
  %26 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %K.i.i.i, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 4
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %22, align 4
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %34 = icmp eq i32 %27, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %35 = icmp eq i32 %31, %33
  %tobool.not.i.i.i = and i1 %34, %35
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i112
  %36 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %37 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %39)
  %42 = icmp ne i32 %29, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %41)
  %43 = icmp ne i32 %33, %41
  %tobool12.not.not.i.i.i = or i1 %42, %43
  %brmerge.i.i.i = or i1 %tobool.not.i.i111, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end21_crit_edge, label %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end21_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true.i.i.i:                              ; preds = %if.end.i112
  br i1 %tobool.not.i.i111, label %land.lhs.true.i.i.i.if.end21_crit_edge, label %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit.thread

land.lhs.true.i.i.i.if.end21_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

verify_aead_des3_key.exit.thread:                 ; preds = %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge
  %44 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.i.i.i.if.end21_crit_edge, %lor.lhs.false.i.i.i.if.end21_crit_edge
  %45 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %_key.sroa.0.0.copyload = load i32, ptr %47, align 1
  %_key.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 4
  %49 = ptrtoint ptr %_key.sroa.6.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %_key.sroa.6.0.copyload = load i32, ptr %_key.sroa.6.0..sroa_idx, align 1
  %_key.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 8
  %50 = ptrtoint ptr %_key.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %_key.sroa.9.0.copyload = load i32, ptr %_key.sroa.9.0..sroa_idx, align 1
  %_key.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 12
  %51 = ptrtoint ptr %_key.sroa.12.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %_key.sroa.12.0.copyload = load i32, ptr %_key.sroa.12.0..sroa_idx, align 1
  %_key.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 16
  %52 = ptrtoint ptr %_key.sroa.15.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %_key.sroa.15.0.copyload = load i32, ptr %_key.sroa.15.0..sroa_idx, align 1
  %_key.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 20
  %53 = ptrtoint ptr %_key.sroa.18.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %_key.sroa.18.0.copyload = load i32, ptr %_key.sroa.18.0..sroa_idx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.0.0.copyload, i32 %_key.sroa.9.0.copyload)
  %54 = icmp eq i32 %_key.sroa.0.0.copyload, %_key.sroa.9.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.6.0.copyload, i32 %_key.sroa.12.0.copyload)
  %55 = icmp eq i32 %_key.sroa.6.0.copyload, %_key.sroa.12.0.copyload
  %tobool27.not = and i1 %54, %55
  br i1 %tobool27.not, label %if.end21.if.end68.sink.split_crit_edge, label %lor.lhs.false28

if.end21.if.end68.sink.split_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

lor.lhs.false28:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.9.0.copyload, i32 %_key.sroa.15.0.copyload)
  %56 = icmp eq i32 %_key.sroa.9.0.copyload, %_key.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.12.0.copyload, i32 %_key.sroa.18.0.copyload)
  %57 = icmp eq i32 %_key.sroa.12.0.copyload, %_key.sroa.18.0.copyload
  %tobool36.not = and i1 %56, %57
  br i1 %tobool36.not, label %lor.lhs.false28.if.end68.sink.split_crit_edge, label %lor.lhs.false37

lor.lhs.false28.if.end68.sink.split_crit_edge:    ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

lor.lhs.false37:                                  ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.0.0.copyload, i32 %_key.sroa.15.0.copyload)
  %58 = icmp eq i32 %_key.sroa.0.0.copyload, %_key.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %_key.sroa.6.0.copyload, i32 %_key.sroa.18.0.copyload)
  %59 = icmp eq i32 %_key.sroa.6.0.copyload, %_key.sroa.18.0.copyload
  %tobool45.not = and i1 %58, %59
  br i1 %tobool45.not, label %lor.lhs.false37.if.end68.sink.split_crit_edge, label %lor.lhs.false37.if.end68_crit_edge

lor.lhs.false37.if.end68_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

lor.lhs.false37.if.end68.sink.split_crit_edge:    ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

if.else48:                                        ; preds = %if.else
  %and49 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else48.if.end68_crit_edge, label %if.then51

if.else48.if.end68_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then51:                                        ; preds = %if.else48
  %60 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %9, label %if.then51.cleanup_crit_edge [
    i32 24, label %if.then51.if.end68.sink.split_crit_edge
    i32 16, label %if.then51.if.end68_crit_edge
    i32 32, label %if.then51.if.end68_crit_edge120
  ]

if.then51.if.end68_crit_edge120:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then51.if.end68_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then51.if.end68.sink.split_crit_edge:          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.sink.split

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68.sink.split:                              ; preds = %if.then51.if.end68.sink.split_crit_edge, %lor.lhs.false37.if.end68.sink.split_crit_edge, %lor.lhs.false28.if.end68.sink.split_crit_edge, %if.end21.if.end68.sink.split_crit_edge
  %need_fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4
  %61 = ptrtoint ptr %need_fallback to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %need_fallback, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.then51.if.end68_crit_edge, %if.then51.if.end68_crit_edge120, %if.else48.if.end68_crit_edge, %lor.lhs.false37.if.end68_crit_edge, %verify_aead_des_key.exit.if.end68_crit_edge
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %2, align 4
  %enc_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 1
  %64 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %enc_keylen, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %auth_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 2
  %67 = ptrtoint ptr %auth_keylen to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %auth_keylen, align 4
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %0, align 4
  %70 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %69, i32 %63)
  %auth_key = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 56
  %71 = call ptr @memset(ptr %auth_key, i32 0, i32 64)
  %72 = ptrtoint ptr %authenc_keys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %authenc_keys, align 4
  %74 = call ptr @memcpy(ptr %auth_key, ptr %73, i32 %66)
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 4
  %75 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fallback, align 4
  %call78 = call i32 @crypto_aead_setkey(ptr noundef %76, ptr noundef %key, i32 noundef %keylen) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then51.cleanup_crit_edge, %verify_aead_des3_key.exit.thread, %if.then15.cleanup_crit_edge, %verify_aead_des_key.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %if.end68 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %err.0.i.i, %verify_aead_des_key.exit.cleanup_crit_edge ], [ -22, %if.then51.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -126, %verify_aead_des3_key.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %authenc_keys) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_setauthsize(ptr nocapture noundef %tfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %alg_flags = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %alg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alg_flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %4 = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %5 = icmp ult i32 %4, 13
  %rem = and i32 %authsize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  %or.cond27 = and i1 %5, %tobool4.not
  br i1 %or.cond27, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and6 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %authsize)
  %cmp8 = icmp ugt i32 %authsize, 7
  %rem10 = and i32 %authsize, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %tobool11.not = icmp eq i32 %rem10, 0
  %or.cond28 = and i1 %cmp8, %tobool11.not
  br i1 %or.cond28, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %authsize15 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 3
  %6 = ptrtoint ptr %authsize15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %authsize, ptr %authsize15, align 4
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 4
  %7 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fallback, align 4
  %call16 = tail call i32 @crypto_aead_setauthsize(ptr noundef %8, i32 noundef %authsize) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_aead_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qce_aead_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qce_aead_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %need_fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4
  %0 = ptrtoint ptr %need_fallback to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %need_fallback, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 4
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %fallback, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %6, 384
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %7 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %reqsize1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_aead_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 4
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qce_aead_crypt(ptr noundef %req, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
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
  %cryptlen8 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %cryptlen8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cryptlen8, align 4
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %authsize = getelementptr i8, ptr %1, i32 268
  %11 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %authsize, align 4
  %sub = sub i32 %10, %12
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %sub, %if.else ], [ %10, %entry.if.end_crit_edge ]
  %13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 48
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %tobool11.not = icmp eq i32 %.sink, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %if.end
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %tobool17.not = icmp sgt i32 %or, -1
  %or.cond = or i1 %tobool14.not, %tobool17.not
  br i1 %or.cond, label %if.then18, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %need_fallback = getelementptr i8, ptr %1, i32 272
  %15 = ptrtoint ptr %need_fallback to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %need_fallback, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %need_fallback21 = getelementptr i8, ptr %1, i32 272
  %16 = ptrtoint ptr %need_fallback21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_fallback21, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %if.end38, label %if.then23

if.then23:                                        ; preds = %if.end20
  %18 = ptrtoint ptr %need_fallback21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %need_fallback21, align 4
  %fallback_req = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %fallback = getelementptr i8, ptr %1, i32 276
  %19 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %20, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 3
  %21 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags26 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags26, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 2
  %29 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 0, i32 4
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %31 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst, align 8
  %cryptlen30 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %35 = ptrtoint ptr %cryptlen30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cryptlen30, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 4
  %39 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 5
  %40 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 2
  %41 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 3
  %42 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %43 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %assoclen, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 1
  %45 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %assoclen1.i, align 8
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @crypto_aead_encrypt(ptr noundef %fallback_req) #9
  br label %cleanup

cond.false:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @crypto_aead_decrypt(ptr noundef %fallback_req) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end20
  %46 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %__ctx.i, align 128
  %and40 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end47_crit_edge, label %land.lhs.true42

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true42:                                  ; preds = %if.end38
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %13, align 4
  %sub44 = add i32 %5, -1
  %and45 = and i32 %49, %sub44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp = icmp eq i32 %and45, 0
  br i1 %cmp, label %land.lhs.true42.if.end47_crit_edge, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true42.if.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %and49 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end57_crit_edge, label %if.then51

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then51:                                        ; preds = %if.end47
  %assoclen52 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %50 = ptrtoint ptr %assoclen52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %assoclen52, align 8
  %52 = add i32 %51, -16
  %switch.and.i = and i32 %52, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then51.if.end57_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %qce = getelementptr i8, ptr %3, i32 640
  %53 = ptrtoint ptr %qce to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %qce, align 128
  %async_req_enqueue = getelementptr inbounds %struct.qce_device, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %async_req_enqueue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %async_req_enqueue, align 4
  %call60 = tail call i32 %56(ptr noundef %54, ptr noundef %req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then51.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %cond.false, %cond.true
  %retval.0 = phi i32 [ %call60, %if.end57 ], [ %call34, %cond.true ], [ %call36, %cond.false ], [ -22, %land.lhs.true42.cleanup_crit_edge ], [ -22, %if.then51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_prep_sgs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qce_aead_done(ptr noundef %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %tag = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 7
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce5 = getelementptr i8, ptr %3, i32 640
  %4 = ptrtoint ptr %qce5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce5, align 128
  %dma = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10
  %result_buf6 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %result_buf6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %result_buf6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tag) #9
  %9 = call ptr @memset(ptr %tag, i32 0, i32 32)
  %src = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 8
  %cmp.not = icmp eq ptr %11, %13
  %not.cmp.not = xor i1 %cmp.not, true
  %cond = zext i1 %not.cmp.not to i32
  %cond10 = select i1 %cmp.not, i32 0, i32 2
  %call12 = tail call i32 @qce_dma_terminate_all(ptr noundef %dma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qce_aead_done.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qce_aead_done, %if.then19)) #9
          to label %if.end20 [label %if.then19], !srcloc !79

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qce_aead_done.__UNIQUE_ID_ddebug249, ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %call12) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body, %entry.if.end20_crit_edge
  br i1 %cmp.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 4
  %src_sg = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 6, i32 44
  %18 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_sg, align 8
  %src_nents = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef %cond, i32 noundef 0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %dev25 = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev25, align 4
  %dst_sg = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 6, i32 40
  %24 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst_sg, align 4
  %dst_nents = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_nents, align 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef %cond10, i32 noundef 0) #9
  %28 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end24.if.end43.sink.split_crit_edge, label %if.then27

if.end24.if.end43.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.sink.split

if.then27:                                        ; preds = %if.end24
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool28.not = icmp eq i32 %31, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then27
  %src_tbl = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 6, i32 28
  tail call void @sg_free_table(ptr noundef %src_tbl) #9
  br i1 %cmp.not, label %if.then29.if.end43_crit_edge, label %if.then29.if.end43.sink.split_crit_edge

if.then29.if.end43.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.sink.split

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %tobool35.not = icmp sgt i32 %29, -1
  %brmerge = select i1 %tobool35.not, i1 true, i1 %not.cmp.not
  br i1 %brmerge, label %if.else.if.end43.sink.split_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %if.then29.if.end43.sink.split_crit_edge, %if.end24.if.end43.sink.split_crit_edge
  %dst_tbl = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 6, i32 16
  tail call void @sg_free_table(ptr noundef %dst_tbl) #9
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge, %if.then29.if.end43_crit_edge
  %call44 = call i32 @qce_check_status(ptr noundef %5, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call44)
  %cmp47.not = icmp eq i32 %call44, -74
  %or.cond = or i1 %cmp45, %cmp47.not
  br i1 %or.cond, label %if.end43.if.end53_crit_edge, label %do.end51

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev25, align 4
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.28, i32 noundef %35) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end51, %if.end43.if.end53_crit_edge
  %36 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__ctx.i, align 128
  %and55 = and i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else69, label %if.then57

if.then57:                                        ; preds = %if.end53
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cryptlen, align 4
  %assoclen58 = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %assoclen58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %assoclen58, align 8
  %add = add i32 %41, %39
  %and60 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else64, label %if.then62

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %ccmresult_buf = getelementptr inbounds %struct.aead_request, ptr %data, i32 1, i32 6, i32 76
  %42 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst, align 8
  %authsize = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 3
  %44 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %authsize, align 4
  call void @scatterwalk_map_and_copy(ptr noundef %ccmresult_buf, ptr noundef %43, i32 noundef %add, i32 noundef %45, i32 noundef 1) #9
  br label %if.end95

if.else64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 8
  %authsize67 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 3
  %48 = ptrtoint ptr %authsize67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %authsize67, align 4
  call void @scatterwalk_map_and_copy(ptr noundef %7, ptr noundef %47, i32 noundef %add, i32 noundef %49, i32 noundef 1) #9
  br label %if.end95

if.else69:                                        ; preds = %if.end53
  %and71 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %if.else69.if.end95_crit_edge

if.else69.if.end95_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then73:                                        ; preds = %if.else69
  %cryptlen74 = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 2
  %50 = ptrtoint ptr %cryptlen74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cryptlen74, align 4
  %assoclen75 = getelementptr inbounds %struct.aead_request, ptr %data, i32 0, i32 1
  %52 = ptrtoint ptr %assoclen75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %assoclen75, align 8
  %add76 = add i32 %53, %51
  %authsize77 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 3
  %54 = ptrtoint ptr %authsize77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %authsize77, align 4
  %sub = sub i32 %add76, %55
  %56 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %src, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %57, i32 noundef %sub, i32 noundef %55, i32 noundef 0) #9
  %58 = ptrtoint ptr %authsize77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %authsize77, align 4
  %bcmp = call i32 @bcmp(ptr %7, ptr nonnull %tag, i32 %59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool86.not = icmp eq i32 %bcmp, 0
  br i1 %tobool86.not, label %if.then73.if.end95_crit_edge, label %do.end90

if.then73.if.end95_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.end90:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %if.end95

if.end95:                                         ; preds = %do.end90, %if.then73.if.end95_crit_edge, %if.else69.if.end95_crit_edge, %if.else64, %if.then62
  %error.0 = phi i32 [ %call44, %if.then62 ], [ %call44, %if.else64 ], [ %call44, %if.else69.if.end95_crit_edge ], [ -74, %do.end90 ], [ %call44, %if.then73.if.end95_crit_edge ]
  %async_req_done = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 14
  %60 = ptrtoint ptr %async_req_done to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %async_req_done, align 4
  call void %61(ptr noundef %5, i32 noundef %error.0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tag) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qce_dma_issue_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_dma_terminate_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qce_aead_prepare_dst_buf(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %__sg = alloca [2 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %qce3 = getelementptr i8, ptr %3, i32 640
  %4 = ptrtoint ptr %qce3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qce3, align 128
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %__sg) #9
  %6 = call ptr @memset(ptr %__sg, i32 255, i32 40)
  %assoclen4 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen4, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 48
  %9 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cryptlen, align 4
  %add = add i32 %10, %8
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 8
  %conv = zext i32 %add to i64
  %call5 = tail call i32 @sg_nents_for_len(ptr noundef %12, i64 noundef %conv) #9
  %dst_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5, ptr %dst_nents, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qce_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %storemerge.v = select i1 %tobool.not, i32 1, i32 2
  %storemerge = add nuw i32 %storemerge.v, %call5
  %18 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %dst_nents, align 16
  %flags15 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags15, align 4
  %and16 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond = select i1 %tobool17.not, i32 2592, i32 3264
  %dst_tbl = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %call19 = tail call i32 @sg_alloc_table(ptr noundef %dst_tbl, i32 noundef %storemerge, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = inttoptr i32 %call19 to ptr
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__ctx.i, align 128
  %and25 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.else48, label %if.then28

if.then28:                                        ; preds = %if.end23
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst, align 8
  %call30 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %__sg, ptr noundef %25, i32 noundef %8) #9
  %adata_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %assoclen32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 52
  %26 = ptrtoint ptr %assoclen32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen32, align 32
  %call33 = call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %adata_sg, i32 noundef %27) #9
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28.dst_tbl_free_crit_edge, label %if.end37

if.then28.dst_tbl_free_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_tbl_free

if.end37:                                         ; preds = %if.then28
  %28 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cryptlen, align 4
  %call40 = call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %call30, i32 noundef %29) #9
  %cmp.i134 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.end37.dst_tbl_free_crit_edge, label %if.end44

if.end37.dst_tbl_free_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_tbl_free

if.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cryptlen, align 4
  %32 = ptrtoint ptr %assoclen32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoclen32, align 32
  %add47 = add i32 %33, %31
  br label %if.end58

if.else48:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool49.not = icmp eq i32 %add, 0
  br i1 %tobool49.not, label %if.else48.if.end58_crit_edge, label %if.then50

if.else48.if.end58_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then50:                                        ; preds = %if.else48
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 8
  %call53 = tail call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %35, i32 noundef %add) #9
  %cmp.i135 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then50.dst_tbl_free_crit_edge, label %if.then50.if.end58_crit_edge

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then50.dst_tbl_free_crit_edge:                 ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_tbl_free

if.end58:                                         ; preds = %if.then50.if.end58_crit_edge, %if.else48.if.end58_crit_edge, %if.end44
  %totallen.0 = phi i32 [ %add47, %if.end44 ], [ %add, %if.then50.if.end58_crit_edge ], [ 0, %if.else48.if.end58_crit_edge ]
  %36 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__ctx.i, align 128
  %and60 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else65, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %result_sg.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %ccmresult_buf.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 76
  call void @sg_init_one(ptr noundef %result_sg.i, ptr noundef %ccmresult_buf.i, i32 noundef 64) #9
  %call2.i = call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %result_sg.i, i32 noundef 64) #9
  br label %if.end68

if.else65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %39, i32 12
  %40 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %qce3.i = getelementptr i8, ptr %41, i32 640
  %42 = ptrtoint ptr %qce3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qce3.i, align 128
  %result_sg.i136 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %result_buf.i = getelementptr inbounds %struct.qce_device, ptr %43, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %result_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %result_buf.i, align 4
  call void @sg_init_one(ptr noundef %result_sg.i136, ptr noundef %45, i32 noundef 128) #9
  %call5.i = call ptr @qce_sgtable_add(ptr noundef %dst_tbl, ptr noundef %result_sg.i136, i32 noundef 128) #9
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then62
  %sg.0 = phi ptr [ %call2.i, %if.then62 ], [ %call5.i, %if.else65 ]
  %cmp.i137 = icmp ugt ptr %sg.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.end68.dst_tbl_free_crit_edge, label %if.end71

if.end68.dst_tbl_free_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_tbl_free

if.end71:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %sg.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg.0, align 4
  %or.i = and i32 %47, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %sg.0, align 4
  %48 = ptrtoint ptr %dst_tbl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst_tbl, align 4
  %dst_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 40
  %50 = ptrtoint ptr %dst_sg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %dst_sg, align 4
  %conv74 = zext i32 %totallen.0 to i64
  %call75 = call i32 @sg_nents_for_len(ptr noundef %49, i64 noundef %conv74) #9
  %add76 = add i32 %call75, 1
  %51 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add76, ptr %dst_nents, align 16
  br label %cleanup

dst_tbl_free:                                     ; preds = %if.end68.dst_tbl_free_crit_edge, %if.then50.dst_tbl_free_crit_edge, %if.end37.dst_tbl_free_crit_edge, %if.then28.dst_tbl_free_crit_edge
  %sg.1 = phi ptr [ %sg.0, %if.end68.dst_tbl_free_crit_edge ], [ %call53, %if.then50.dst_tbl_free_crit_edge ], [ %call33, %if.then28.dst_tbl_free_crit_edge ], [ %call40, %if.end37.dst_tbl_free_crit_edge ]
  call void @sg_free_table(ptr noundef %dst_tbl) #9
  br label %cleanup

cleanup:                                          ; preds = %dst_tbl_free, %if.end71, %if.then21, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %21, %if.then21 ], [ %sg.1, %dst_tbl_free ], [ %sg.0, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %__sg) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qce_sgtable_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qce_aead_prepare_ccm_result_buf(ptr noundef %tbl, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %result_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %ccmresult_buf = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 76
  tail call void @sg_init_one(ptr noundef %result_sg, ptr noundef %ccmresult_buf, i32 noundef 64) #9
  %call2 = tail call ptr @qce_sgtable_add(ptr noundef %tbl, ptr noundef %result_sg, i32 noundef 64) #9
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qce_check_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @aead_ops, !1, !"aead_ops", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/aead.c", i32 842, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/qce/aead.c", i32 771, i32 52}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/qce/aead.c", i32 805, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qce_aead_register_one._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @qce_aead_register_one._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/qce/aead.c", i32 811, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qce_aead_register_one.__UNIQUE_ID_ddebug250, !13, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!16 = !{ptr @aead_algs, !17, !"aead_algs", i1 false, i1 false}
!17 = !{!"../drivers/crypto/qce/aead.c", i32 21, i32 8}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/qce/aead.c", i32 703, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/qce/aead.c", i32 704, i32 21}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/qce/aead.c", i32 711, i32 21}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/qce/aead.c", i32 712, i32 21}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/qce/aead.c", i32 719, i32 21}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/qce/aead.c", i32 720, i32 21}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/qce/aead.c", i32 727, i32 21}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/qce/aead.c", i32 728, i32 21}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/qce/aead.c", i32 735, i32 21}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/qce/aead.c", i32 736, i32 21}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/qce/aead.c", i32 743, i32 21}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/qce/aead.c", i32 744, i32 21}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/qce/aead.c", i32 751, i32 21}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/qce/aead.c", i32 752, i32 21}
!46 = !{ptr @aead_def, !47, !"aead_def", i1 false, i1 false}
!47 = !{!"../drivers/crypto/qce/aead.c", i32 700, i32 34}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/qce/aead.c", i32 127, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qce_aead_prepare_dst_buf._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @qce_aead_prepare_dst_buf._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/qce/aead.c", i32 318, i32 4}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qce_aead_prepare_buf._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qce_aead_prepare_buf._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/qce/aead.c", i32 46, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qce_aead_done.__UNIQUE_ID_ddebug249, !59, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/qce/aead.c", i32 68, i32 3}
!64 = !{ptr @qce_aead_done._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qce_aead_done._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/qce/aead.c", i32 84, i32 4}
!68 = !{ptr @qce_aead_done._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qce_aead_done._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148343518, i64 2148343523, i64 2148343536, i64 2148343580, i64 2148343614, i64 2148343635}
!80 = !{i64 2148074641}
!81 = !{i8 0, i8 2}
!82 = !{!"auto-init"}
